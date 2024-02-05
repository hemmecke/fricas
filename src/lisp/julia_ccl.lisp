(in-package "BOOT")
(export (import (find-symbol "FIXNUMP" 'ccl)) 'boot)

(defconstant positive-infinity ccl::double-float-positive-infinity)
(defconstant negative-infinity ccl::double-float-negative-infinity)
(defconstant nan ccl::double-float-nan)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Vectors
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun |jl_1difunction| (func array)
    (let ((size (array-dimension array 0)))
        (ccl::with-encoded-cstrs :utf-8 ((s func))
            (ccl:with-pointer-to-ivector (ptr array)
                (ccl::external-call "jl_call_1difunction"
                    :address s :address ptr :int size :void)))))

(defun |jl_1dfunction| (cplx func array)
    (let ((size (get_vnrows cplx array)))
        (ccl::with-encoded-cstrs :utf-8 ((s func))
            (ccl:with-pointer-to-ivector (ptr array)
                (ccl::external-call "jl_call_1dfunction"
                    :int cplx :address s :address ptr :int size :void)))))

(defun |jl_dbl_1dfunction| (cplx func array)
    (let ((size (get_vnrows cplx array)))
        (ccl::with-encoded-cstrs :utf-8 ((s func))
            (ccl:with-pointer-to-ivector (ptr array)
                (ccl::external-call "jl_call_dbl_1dfunction"
                    :int cplx :address s :address ptr :int size
                        :double-float)))))

(defun |jl_dbl_1dfunction_dbl| (cplx func array val)
    (let ((size (get_vnrows cplx array)))
        (ccl::with-encoded-cstrs :utf-8 ((s func))
            (ccl:with-pointer-to-ivector (ptr array)
                (ccl::external-call "jl_call_dbl_1dfunction_dbl"
                    :int cplx :address s :address ptr :int size
                        :double-float val :double-float)))))

(defun |jl_1d2function| (cplx func array1 array2)
    (let ((size1 (get_vnrows cplx array1))
          (size2 (get_vnrows cplx array2))) 
        (ccl::with-encoded-cstrs :utf-8 ((s func))
          (ccl::with-pointer-to-ivector (ptr1 array1)
              (ccl::with-pointer-to-ivector (ptr2 array2)
                (ccl::external-call "jl_call_1d2function"
                    :int cplx :address s :address ptr1 :int size1 
                    :address ptr2 :int size2 :void))))))

 (defun |jl_bool_1d2function| (cplx func array1 array2)
    (let ((size1 (get_vnrows cplx array1))
          (size2 (get_vnrows cplx array2)))
        (if (eq
                (ccl::with-encoded-cstrs :utf-8 ((s func))
                    (ccl::with-pointer-to-ivector (ptr1 array1)
                        (ccl::with-pointer-to-ivector (ptr2 array2)
                           (ccl::external-call "jl_call_bool_1d2function"
                               :int cplx :address s :address ptr1 :int size1 
                               :address ptr2 :int size2 :signed-byte)))) 0)
                               nil t)))

 (defun |jl_dbl_1d2function| (cplx func array1 array2)
    (let ((size1 (get_vnrows cplx array1))
          (size2 (get_vnrows cplx array2))) 
        (ccl::with-encoded-cstrs :utf-8 ((s func))
          (ccl::with-pointer-to-ivector (ptr1 array1)
              (ccl::with-pointer-to-ivector (ptr2 array2)
                (ccl::external-call "jl_call_1d2function"
                    :int cplx :address s :address ptr1 :int size1
                    :address ptr2 :int size2 :double-float))))))


(defun |jl_1d3function| (func array1 array2 array3)
    (let ((size1 (array-dimension array1 0))
          (size2 (array-dimension array2 0))
          (size3 (array-dimension array3 0)))
        (ccl::with-encoded-cstrs :utf-8 ((s func))
            (ccl::with-pointer-to-ivector (ptr1 array1)
              (ccl::with-pointer-to-ivector (ptr2 array2)
                (ccl::with-pointer-to-ivector (ptr3 array3)
                  (ccl::external-call "jl_call_1d3function"
                    :address s :address ptr1 :int size1 
                    :address ptr2 :int size2
                    :address ptr3 :int size3 :void)))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Matrices
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun |jl_2dfunction| (cplx func array m)
    (let ((n (get_ncols cplx array m)))
        (ccl::with-encoded-cstrs :utf-8 ((s func))
            (ccl:with-pointer-to-ivector (ptr array)
                (ccl::external-call "jl_call_2dfunction"
                    :int cplx :address s :address ptr :int m :int n
                        :void)))))

(defun |jl_2d2function| (cplx func array m array1 o)
    (let ((n (get_ncols cplx array m))
          (p (get_ncols cplx array1 o)))
        (ccl::with-encoded-cstrs :utf-8 ((s func))
            (ccl:with-pointer-to-ivector (ptr array)
              (ccl:with-pointer-to-ivector (ptr1 array1)
                (ccl::external-call "jl_call_2d2function"
                    :int cplx :address s :address ptr :int m :int n
                               :address ptr1 :int o :int p
                        :void))))))

(defun |jl_bool_2d2function| (cplx func array m array1 o)
    (let ((n (get_ncols cplx array m))
          (p (get_ncols cplx array1 o)))
    (if (eq
        (ccl::with-encoded-cstrs :utf-8 ((s func))
            (ccl:with-pointer-to-ivector (ptr array)
            (ccl:with-pointer-to-ivector (ptr1 array1)
                (ccl::external-call "jl_call_bool_2d2function"
                    :int cplx :address s :address ptr :int m :int n
                    :address ptr1 :int o :int p :signed-byte)))) 0) nil t)))

(defun |jl_2d3function| (cplx func array m array1 o array2 q)
    (let ((n (get_ncols cplx array m))
          (p (get_ncols cplx array1 o))
          (r (get_ncols cplx array2 q)))
        (ccl::with-encoded-cstrs :utf-8 ((s func))
            (ccl:with-pointer-to-ivector (ptr array)
            (ccl:with-pointer-to-ivector (ptr1 array1)
            (ccl:with-pointer-to-ivector (ptr2 array2)
                (ccl::external-call "jl_call_2d3function"
                    :int cplx :address s :address ptr :int m :int n
                               :address ptr1 :int o :int p
                               :address ptr2 :int q :int r
                        :void)))))))

(defun |jl_bool_2dfunction| (cplx func array m)
    (let ((n (get_ncols cplx array m)))
    (if (eq
        (ccl::with-encoded-cstrs :utf-8 ((s func))
            (ccl:with-pointer-to-ivector (ptr array)
                (ccl::external-call "jl_call_bool_2dfunction"
                    :int cplx :address s :address ptr :int m :int n
                        :signed-byte))) 0) nil t)))

(defun |jl_dbl_2dfunction| (cplx func array m)
    (let ((n (get_ncols cplx array m)))
        (ccl::with-encoded-cstrs :utf-8 ((s func))
            (ccl:with-pointer-to-ivector (ptr array)
                (ccl::external-call "jl_call_dbl_2dfunction"
                    :int cplx :address s :address ptr :int m :int n
                        :double-float)))))

(defun |jl_dbl_2dfunction_dbl| (cplx func array m val)
    (let ((n (get_ncols cplx array m)))
        (ccl::with-encoded-cstrs :utf-8 ((s func))
            (ccl:with-pointer-to-ivector (ptr array)
                (ccl::external-call "jl_call_dbl_2dfunction_dbl"
                    :int cplx :address s :address ptr :int m :int n
                        :double-float val :double-float)))))

(defun |jl_iarray_2dfunction| (cplx func ipiv array m)
    (let ((n (get_ncols cplx array m)))
        (ccl::with-encoded-cstrs :utf-8 ((s func))
            (ccl:with-pointer-to-ivector (ptr array)
              (ccl:with-pointer-to-ivector (ptri ipiv)
                (ccl::external-call "jl_call_iarray_2dfunction"
                    :int cplx :address s :address ptri 
                    :address ptr :int m :int n
                        :void))))))

(defun |jl_array_2dfunction| (acplx cplx func vec array m)
    (let ((n (get_ncols cplx array m)))
        (ccl::with-encoded-cstrs :utf-8 ((s func))
            (ccl:with-pointer-to-ivector (ptra array)
                (ccl:with-pointer-to-ivector (pvec vec)
                    (ccl::external-call "jl_call_array_2dfunction"
                        :int acplx :int cplx
                        :address s :address pvec :address ptra
                        :int m :int n :void))))))

(defun |jl_svd_function| (cplx func u s v array m)
    (let ((n (get_ncols cplx array m)))
        (ccl::with-encoded-cstrs :utf-8 ((str func))
            (ccl:with-pointer-to-ivector (ptr array)
            (ccl:with-pointer-to-ivector (ptru u)
            (ccl:with-pointer-to-ivector (ptrs s)
            (ccl:with-pointer-to-ivector (ptrv v)
                (ccl::external-call "jl_call_svd"  :int cplx :address str
                    :address ptru :address ptrs :address ptrv
                    :address ptr :int m :int n
                        :void))))))))

(defun |jl_eigen_function| (cplx func val vec array m)
    (let ((n (get_ncols cplx array m)))
        (ccl::with-encoded-cstrs :utf-8 ((s func))
            (ccl:with-pointer-to-ivector (ptr array)
            (ccl:with-pointer-to-ivector (ptrval val)
            (ccl:with-pointer-to-ivector (ptrvec vec)
                (ccl::external-call "jl_call_eigen" :int cplx :address s
                    :address ptrval :address ptrvec
                    :address ptr :int m :int n
                        :void)))))))

(defun |jl_eigen_system_function| (cplx func val lvec rvec array m)
    (let ((n (get_ncols cplx array m)))
        (ccl::with-encoded-cstrs :utf-8 ((s func))
            (ccl:with-pointer-to-ivector (ptr array)
            (ccl:with-pointer-to-ivector (ptrval val)
            (ccl:with-pointer-to-ivector (ptrlvec lvec)
            (ccl:with-pointer-to-ivector (ptrrvec rvec)
                (ccl::external-call "jl_call_eigen_system" :int cplx :address s
                    :address ptrval :address ptrlvec :address ptrrvec
                    :address ptr :int m :int n
                        :void))))))))

(defun |jl_2v2dfunction| (func vec1 vec2 array m)
    (let ((size (array-dimension vec1 0))
          (n (/ (array-dimension array 0) m)))
        (ccl::with-encoded-cstrs :utf-8 ((s func))
            (ccl::with-pointer-to-ivector (ptr1 vec1)
              (ccl::with-pointer-to-ivector (ptr2 vec2)
                (ccl::with-pointer-to-ivector (ptr3 array)
                  (ccl::external-call "jl_call_2v2dfunction"
                    :address s :int size :address ptr1
                        :address ptr2 :address ptr3
                        :int m :int n :void)))))))

(defun |init_julia_env| ()
    (if (not *julia-initialized*)
        (progn
            (ccl::external-call "jl_init_env" :void)
            (setf *julia-initialized* t))
        *julia-initialized*))

(defun |clear_julia_env| ()
    (if *julia-initialized*
        (progn
            (ccl::external-call "jl_clear_env" :void)
            (setf  *julia-initialized* nil))
        *julia-initialized*))
