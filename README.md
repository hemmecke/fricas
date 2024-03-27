# FriCAS

[![Build and Test](https://github.com/gvanuxem/fricas/actions/workflows/linuxJulia_sbcl.yml/badge.svg)](https://github.com/gvanuxem/fricas/actions/workflows/linuxJulia_sbcl.yml)\
[![Build and Test](https://github.com/gvanuxem/fricas/actions/workflows/linuxJulia_ccl.yml/badge.svg)](https://github.com/gvanuxem/fricas/actions/workflows/linuxJulia_ccl.yml)\
[![Build and Test](https://github.com/gvanuxem/fricas/actions/workflows/macOSJulia_sbcl.yml/badge.svg)](https://github.com/gvanuxem/fricas/actions/workflows/macOSJulia_sbcl.yml)\
[![Build and Test](https://github.com/gvanuxem/fricas/actions/workflows/windowsJulia_sbcl.yml/badge.svg)](https://github.com/gvanuxem/fricas/actions/workflows/windowsJulia_sbcl.yml)

[FriCAS](https://fricas.github.io) is a general purpose computer algebra
system (CAS).

In this work-in-progress repository, wrappers to some [Julia](https://julialang.org)
specific operations are added to FriCAS. It supports SBCL or Clozure CL build but, as of now, only Julia 1.10.0 is
supported for a SBCL based FriCAS, see [Caveats](#caveats). It should not be considered production-ready.

## Building and Installing

For general installation instructions see INSTALL. For general documentation
consult <https://fricas.github.io>.

To build FriCAS with Julia support, a simple
<code>./configure --enable-julia</code> should do the trick. The required Julia packages are Nemo, Plots and SpecialFunctions.
Note that with SBCL (default) you will have to increase its dynamic space size use, see [Caveats](#caveats).
The <code>julia</code> executable needs to be available in your PATH.
If you want to add Jupyter support with a SBCL based FriCAS, make sure [Hunchentoot](https://edicl.github.io/hunchentoot/) is installed.
On a Debian like system add it with <code>sudo apt install cl-hunchentoot</code>
and issue, for example,
<code>./configure --enable-gmp --enable-julia --enable-hunchentoot</code>.
To know which categories/domains/packages are added to FriCAS issue in the
FriCAS interpreter <code>)what things julia</code> or use HyperDoc:

```
(1) -> )what things julia

Operations whose names satisfy the above pattern(s):

juliaCMPrint    juliaCVPrint    juliaIVPrint    juliaMPrint
juliaVPrint

      To get more information about an operation such as juliaIVPrint ,
      issue the command )display op juliaIVPrint
------------------------------- Categories --------------------------------

Categories with names matching patterns:
     julia

 JMATCAT  JuliaMatrixCategory          JRING    JuliaRing
 JTYPE    JuliaType                    JVECCAT  JuliaVectorCategory
--------------------------------- Domains ---------------------------------

Domains with names matching patterns:
     julia

 JCF      JuliaComplexField            JCF64    JuliaComplexF64
 JCF64MAT JuliaComplexF64Matrix        JCF64SMA JuliaComplexF64SquareMatrix
 JCF64VEC JuliaComplexF64Vector        JF64     JuliaFloat64
 JF64MAT  JuliaFloat64Matrix           JF64SMAT JuliaF64SquareMatrix
 JF64VEC  JuliaFloat64Vector           JFINT    JuliaFractionInteger
 JFLOAT   JuliaFloat                   JFPCB    JuliaFPComplexBall
 JFPRB    JuliaFPRealBall              JGF      JuliaGaloisField
 JI64     JuliaInt64                   JI64VEC  JuliaInt64Vector
 JINT     JuliaInteger                 JRF      JuliaRealField
 JSTR     JuliaString                  JSYM     JuliaSymbol
 JUP      JuliaUnivariatePolynomial    JZMOD    JuliaIntegerMod
-------------------------------- Packages ---------------------------------

Packages with names matching patterns:
     julia

 JCF64MTF JuliaComplexF64MatrixTranscendentalFunctions
 JCLA     JuliaComplexLinearAlgebra    JDRAW    JuliaDrawFunctions
 JF64MTF  JuliaF64MatrixTranscendentalFunctions
 JF64SF   JuliaFloat64SpecialFunctions
 JF64SF2  JuliaFloat64SpecialFunctions2
 JPLOT    JuliaPlotFunctions           JRLA     JuliaRealLinearAlgebra
 JUF      JuliaUtilityFunctions
--------------- System Commands for User Level: development ---------------

System commands at this level matching patterns:
     julia

julia     juliad

------------------------- System Command Synonyms -------------------------

user-defined synonyms satisfying patterns:
     ju

 )ju ............................ )julia
 )jud ........................... )juliad

```

If you want to build and install locally the HTML documentation,
you need to install Sphinx. On a Debian like system to add it, issue in a
terminal <code>sudo apt install python3 python3-pip && pip3 install -U Sphinx</code>.
After building FriCAS, and before the installation, issue in the terminal
<code>make htmldoc</code>.

## Description

The basic goal of [FriCAS](https://fricas.github.io) is to create a free
advanced world-class CAS. In 2007 [FriCAS](https://fricas.github.io)
forked from [Axiom](http://axiom-developer.org). Currently the
[FriCAS](https://fricas.github.io) algebra library is one of the largest
and most advanced free general purpose computer algebra systems \-- this
gives a good foundation to build on. Additionally, the
[FriCAS](https://fricas.github.io) algebra library is written in a high
level strongly typed language (Spad), which allows natural expression of
mathematical algorithms. This makes [FriCAS](https://fricas.github.io)
easier to understand and extend.

[FriCAS](https://fricas.github.io) uses lightweight development
methodology. Compared to [Axiom](http://axiom-developer.org),
[FriCAS](https://fricas.github.io) is significantly restructured \-- it
is more portable and fixed several defects.
[FriCAS](https://fricas.github.io) removed rather large unused parts
(without removing functionality).

## Goals

Current development goals:

-   continue structural improvements
-   add new mathematical algorithms
-   develop better user interface
-   develop improved Spad compiler
-   make it easier for external programs to interface with FriCAS
-   support for using external mathematical routines from Spad

## Caveats

With SBCL, you will need to increase the original dynamic space size, so, if your SBCL uses the original dynamic space size, increase it at configure time with <code>./configure --with-lisp='sbcl --dynamic-space-size=2048'</code> or whatever you want as dynamic space size. For more information, see the [SBCL documentation](https://www.sbcl.org/manual/index.html) or the INSTALL file.

Julia support with SBCL is erratic, depending on the Julia version used. The 1.10.0 version seems to have solved problems related to memory management interactions with SBCL, but with Julia 1.10.1 and 1.10.2 problems occur again. Note that with Julia 1.11.0-alpha2, FriCAS seems to work fine. More work needs to be done in this regards. So use Clozure CL or, imperatively, use a version of Julia that is known to be compatible.
