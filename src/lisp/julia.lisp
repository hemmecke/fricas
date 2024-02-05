;(locally
;  (declare (optimize (speed 3) (safety 0)))

(in-package "FRICAS-LISP")

(defun init-julia (wrapper-lib)
    (if (ignore-errors (|quiet_load_alien| wrapper-lib) t)
            #+:darwin (|quiet_load_alien| "libjulia.dylib")
            #+:win32  (|quiet_load_alien| "libjulia.dll")
            #-(or :darwin :win32) (|quiet_load_alien| "libjulia.so")
        ))

(foreign-defs
(fricas-foreign-call boot::|jl_eval_string| "jl_eval_str" void
        (command c-string))
(fricas-foreign-call boot::|jl_delete_wrapped_hash| "jl_delete_wrapped_hash"
        void (immut int) (hash c-string))
(fricas-foreign-call boot::|jl_int64_eval_string| "jl_int64_eval_string" int
        (command c-string))
(fricas-foreign-call boot::|jl_dbl_eval_string| "jl_dbl_eval_string" double
        (command c-string))
(fricas-foreign-call boot::|jl_function_dbl| "jl_call_function_dbl" void
        (func c-string) (arg double))
(fricas-foreign-call boot::|jl_function_dbl_dbl| "jl_call_function_dbl_dbl" void
        (func c-string) (arg1 double) (arg2 double))
(fricas-foreign-call boot::|jl_function_dbl_dbl_dbl| "jl_call_function_dbl_dbl_dbl" void
        (func c-string) (arg1 double) (arg2 double) (arg3 double))
(fricas-foreign-call boot::|jl_int64_function_dbl| "jl_call_int64_function_dbl" int
        (func c-string) (arg double))
(fricas-foreign-call boot::|jl_dbl_function_dbl| "jl_call_dbl_function_dbl" double
        (func c-string) (arg double))
(fricas-foreign-call boot::|jl_dbl_function_dbl_dbl| "jl_call_dbl_function_dbl_dbl" double
        (func c-string) (arg1 double) (arg2 double))
(fricas-foreign-call boot::|jl_dbl_function_dbl_dbl_dbl| "jl_call_dbl_function_dbl_dbl_dbl" double
        (func c-string) (arg1 double) (arg2 double) (arg3 double))
(fricas-foreign-call boot::|jl_dbl_function_dbl_int| "jl_call_dbl_function_dbl_int" double
        (func c-string) (arg1 double) (arg2 int))
(fricas-foreign-call boot::|jl_dbl_function_int_dbl| "jl_call_dbl_function_int_dbl" double
        (func c-string) (arg1 int) (arg2 double))
#+:sbcl
(progn
(fricas-foreign-call boot::|jl_bool_eval_string| "jl_bool_eval_string" bool
        (command c-string))
(fricas-foreign-call boot::|jl_bool_function_dbl_dbl| "jl_call_bool_function_dbl_dbl" bool
        (func c-string) (arg1 double) (arg2 double))
(fricas-foreign-call boot::|jl_string_eval_string| "jl_string_eval_string" c-string
        (command c-string))
(fricas-foreign-call boot::|jl_setindex_wrap_eval_string| "jl_setindex_wrap_eval_string"
    c-string (immut int) (command c-string))
(fricas-foreign-call boot::|jl_getindex_wrapped_hash| "jl_getindex_wrapped_hash"
    c-string (immut int) (hash c-string))
)

#+:openmcl
(progn
(fricas-foreign-call jl_bool_eval_string "jl_bool_eval_string" bool
        (command c-string))
(fricas-foreign-call jl_bool_function_dbl_dbl "jl_call_bool_function_dbl_dbl" bool
        (func c-string) (arg1 double) (arg2 double))
(fricas-foreign-call jl_string_eval_string "jl_string_eval_string" c-string
        (command c-string))
(fricas-foreign-call jl_setindex_wrap_eval_string "jl_setindex_wrap_eval_string"
    c-string (immut int) (command c-string))
(fricas-foreign-call jl_getindex_wrapped_hash "jl_getindex_wrapped_hash"
    c-string (immut int) (hash c-string))
)
)

; ccl:def-foreign-type-s?
#+:openmcl
(progn
(defmacro boot::|jl_bool_eval_string| (str)
    `(if (eq (jl_bool_eval_string ,str)  0) nil t))
(defmacro boot::|jl_bool_function_dbl_dbl| (func arg1 arg2)
    `(if (eq (jl_bool_function_dbl_dbl ,func ,arg1 ,arg2)  0) nil t))
(defmacro boot::|jl_string_eval_string| (str)
    `(ccl::%get-cstring (jl_string_eval_string ,str)))
(defmacro boot::|jl_setindex_wrap_eval_string| (immut cmd)
    `(ccl::%get-cstring (jl_setindex_wrap_eval_string ,immut ,cmd)))
(defmacro boot::|jl_getindex_wrapped_hash| (immut hash)
    `(ccl::%get-cstring (jl_getindex_wrapped_hash ,immut ,hash)))
)

(in-package "BOOT")

(defparameter *julia-initialized* nil)

; For immutables
;(to encapsulate it in a mutable structure - other memory scheme)
(defclass jliref ()
    ((id  :accessor jlrefId   :initarg :id)
    (val  :accessor jlrefVal  :initarg :val)
    (type :reader   jlrefType :initarg :type))
    (:default-initargs :id nil :type nil :val nil))

(defmethod print-object((obj jliref) stream)
    (print-unreadable-object (obj stream :type t :identity t)
        (princ (jlrefVal obj) stream)
        (princ (concatenate 'string " " (jlrefType obj)) stream)
        (princ (concatenate 'string " " (jlrefId obj)) stream)))

(defun |make_jliref| (str type)
    (let ((ret (make-instance 'jliref :type type))
          (hash (|jl_setindex_wrap_eval_string| 1 str)))
        (setf (jlrefVal ret) (|jl_getindex_wrapped_hash| 1 hash))
        (setf (jlrefId ret) hash)
        #+:lispworks (flag-special-free-action 1 hash)
        #+:cmu (ext:finalize ret (lambda () (free_jlref 1 ret)))
        #+:sbcl (sb-ext:finalize ret (lambda () (free_jlref 1 ret)))
        #+:allegro (excl:schedule-finalization ret (lambda () (free_jlref 1 ret)))
        ret))

(defclass jlref ()
    ((id  :accessor jlrefId   :initarg :id)
    (val  :reader   jlrefVal  :initarg :val)
    (type :reader   jlrefType :initarg :type))
    (:default-initargs :id nil :type nil :val nil))

(defmethod print-object((obj jlref) stream)
    (print-unreadable-object (obj stream :type t :identity t)
        (princ (jlrefVal obj) stream)
        (princ (concatenate 'string " " (jlrefType obj)) stream)
        (princ (concatenate 'string " " (jlrefId obj)) stream)))

; TODO: add Clozure CL 'terminate'
; https://ccl.clozure.com/manual/chapter13.11.html
; https://github.com/trivial-garbage/trivial-garbage
(defun |make_jlref| (str type)
    (let ((ret (make-instance 'jlref :type type))
          (hash (|jl_setindex_wrap_eval_string| 0 str)))
        (setf (jlrefVal ret) (|jl_getindex_wrapped_hash| 0 hash))
        (setf (jlrefId ret) hash)
        #+:lispworks (flag-special-free-action 0 hash)
        #+:cmu (ext:finalize ret (lambda () (free_jlref 0 ret)))
        #+:sbcl (sb-ext:finalize ret (lambda () (free_jlref 0 ret)))
        #+:allegro (excl:schedule-finalization ret (lambda () (free_jlref 0 ret)))
        ret))

(defun free_jlref (immut hash)
    (progn
        (format t "freeing... ~x~%" hash)
        (|jl_delete_wrapped_hash| immut hash)))

; Is this correct or should I use trivial-garbage? GV
#+:lispworks
(add-special-free-action 'boot::free_jlref)

(defun |jl_using_package|(pack)
    (|jl_bool_eval_string| (concatenate 'string "try using " pack
        " catch;  return false else return true end")))

(defun |jl_import_symbol|(sym)
    (|jl_bool_eval_string| (concatenate 'string "try import " sym
        " catch; return false else return true end")))

(defmacro get_ncols (cplx a nrows)
    `(if (zerop ,cplx)
        (/ (array-dimension ,a 0) ,nrows)
        (/ (/ (array-dimension ,a 0) 2) ,nrows)))

(defmacro get_vnrows (cplx v)
    `(if (zerop ,cplx)
        (array-dimension ,v 0)
        (/ (array-dimension ,v 0) 2)))

; double-float array creation
; 1D

(defmacro |make_df_array1| (size)
    `(make-array ,size :element-type 'double-float))

(defmacro |make_df_iarray1| (size val)
    `(make-array ,size :element-type 'double-float :initial-element ,val))

; int 64 array creation
; 1D

(defmacro |make_int64_array1| (size)
    `(make-array ,size :element-type '(signed-byte 64)))

(defmacro |make_int64_iarray1| (size val)
    `(make-array ,size :element-type '(signed-byte 64) :initial-element ,val))

; double-float array creation
; 2D
(defmacro |make_df_array2| (sizea sizeb)
     `(make-array (* (the fixnum ,sizea) (the fixnum ,sizeb)) :element-type 'double-float))
;    (make-array (list sizeb sizea) :element-type 'double-float))

(defmacro |make_df_iarray2| (sizea sizeb val)
    `(make-array (* (the fixnum ,sizea) (the fixnum ,sizeb))
        :element-type 'double-float :initial-element ,val))

; Double-float 1D array access - 1 based index

(defmacro dfvsize (x)
 `(the fixnum (length (the (simple-array double-float (*)) ,x))))

(defmacro dfaref11(v i)
`(aref (the (simple-array double-float (*)) ,v) (1- (the fixnum ,i))))

(defmacro dfsetaref11(v i s)
    `(setf (aref (the (simple-array double-float (*)) ,v)
        (1- (the fixnum ,i))) (the double-float ,s)))

; Int64 array access

(defmacro int64vsize (x)
 `(the fixnum (length (the (simple-array (signed-byte 64) (*)) ,x))))

(defmacro int64aref11(v i)
`(aref (the (simple-array (signed-byte 64) (*)) ,v) (1- (the (signed-byte 64) ,i))))

(defmacro int64setaref11(v i s)
    `(setf (aref (the (simple-array (signed-byte 64) (*)) ,v)
        (1- (the (signed-byte 64) ,i))) (the (signed-byte 64) ,s)))


; 2D array emulation - 1 based index - row major ordering access
; column major order done in Spad

; sizea: row length
; sizeb: col length
; i: rown
; j: coln
(defmacro dfaref21(v sizea sizeb i j)
    (declare (ignore sizeb))
    `(aref (the (simple-array double-float (*)) ,v)
        (1- (+ (* (the fixnum ,sizea) (1- (the fixnum ,i)))
                (the fixnum ,j)))))

(defmacro dfsetaref21(v sizea sizeb i j s)
    (declare (ignore sizeb))
    `(setf
        (aref (the (simple-array double-float (*)) ,v)
            (1- (+ (* (the fixnum ,sizea) (1- (the fixnum ,i)))
                    (the fixnum ,j))))
        (the double-float ,s)))


; Complex double float vectors
; 1-based index

(defmacro jcdelt(ov oi)
   (let ((v (gensym))
         (i (gensym)))
   `(let ((,v ,ov)
          (,i ,oi))
      (cons
          (aref (the (simple-array double-float (*)) ,v) (- (* 2 ,i) 2))
          (aref (the (simple-array double-float (*)) ,v) (1- (* 2 ,i)))))))

(defmacro jcdsetelt(ov oi os)
   (let ((v (gensym))
         (i (gensym))
         (s (gensym)))
   `(let ((,v ,ov)
          (,i ,oi)
          (,s ,os))
        (setf (aref (the (simple-array double-float (*)) ,v) (- (* 2 ,i) 2))
           (car ,s))
        (setf (aref (the (simple-array double-float (*)) ,v) (1- (* 2 ,i)))
           (cdr ,s))
        ,s)))

; Complex double float matrices
; Row major access - 1-based index

(defmacro jcdelt2(ov osizea oi oj)
   (let ((v (gensym))
         (sizea (gensym))
         (i (gensym))
         (j (gensym)))
   `(let ((,v ,ov)
          (,sizea ,osizea)
          (,i ,oi)
          (,j ,oj))
        (cons
            (aref (the (simple-array double-float (*)) ,v)
                (- (+ (* (the fixnum ,sizea) (1- (the fixnum ,i)) 2)
                    (* (the fixnum ,j) 2)) 2))
            (aref (the (simple-array double-float (*)) ,v)
                (1- (+ (* (the fixnum ,sizea) (1- (the fixnum ,i)) 2)
                    (* (the fixnum ,j) 2))))))))

(defmacro jcdsetelt2(ov osizea oi oj os)
   (let ((v (gensym))
         (sizea (gensym))
         (i (gensym))
         (j (gensym))
         (s (gensym)))
   `(let ((,v ,ov)
          (,sizea ,osizea)
          (,i ,oi)
          (,j ,oj)
          (,s ,os))
        (setf (aref (the (simple-array double-float (*)) ,v)
            (- (+ (* (the fixnum ,sizea) (1- (the fixnum ,i)) 2)
                (* (the fixnum ,j) 2)) 2))
            (car ,s))
        (setf (aref (the (simple-array double-float (*)) ,v)
            (1- (+ (* (the fixnum ,sizea) (1- (the fixnum ,i)) 2)
                (* (the fixnum ,j) 2))))
            (cdr ,s))
        ,s)))
