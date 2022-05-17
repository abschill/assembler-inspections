# Output Control

Compilation can involve up to four stages: preprocessing, compilation proper, assembly and linking, always in that order. GCC is capable of preprocessing and compiling several files either into several assembler input files, or into one assembler input file, then each assembler input file produces an object file, and linking combines those object files (those specified as input) into an executable.

For a given file, the file suffix determines what kind of compilation is done:


`file.c`

c source code to be preprocessed

`file.i`

c source code that should not be preprocessed

`file.ii`

c++ source code that should not be preprocessed

`file.m`

objective-c source code, you must link with `libobjc` to make an objective c program work


`file.mi`

objective-c that should not be preprocessed

`file.mm` or `file.M`

objective-c++ source code must link with `libobjc`

`file.mii`

objective-c++ that should not be preprocessed


`file.h`

C,C++,Objective-C, or Objective-C++ header file to be turned into a precompiled header (default) or c/c++ header file to be turned into an ada spec (via the `-fdump-ada-spec` switch)

`file.cc`, `file.cp`, `file.cxx`, `file.cpp`, `file.CPP`, file.c++, file.C

c++ source code that must be preprocessed


`file.hh`, `file.H`, `file.hp`, `file.hxx`, `file.hpp`, `file.HPP`, `file.h++`, `file.tcc`

c++ header to be turned into a precompiled header or ada spec

`file.f`, `file.for`, `file.ftn`

fixed form fortran source code that should not be preprocessed

`file.F`, `file.FOR`, `file.fpp`, `file.FPP`, `file.FTN`

fixed form fortran source code that must be preprocessed (with traditional preprocessor)

`file.f90`, `file.f95`, `file.f03`, `file.f08`

free form fortran source code that should not be preprocessed

`file.F90`, `file.F95`, `file.F03`, file.F08`

free form fortran source code that must be preprocessed with traditional preprocessor


`file.go`

go source code

`file.d`

d source code

`file.di`

d interface file

`file.dd`

d documentation code (ddoc)

`file.ads`

ada source code file that contains a library unit declaration (package, subprogram, generic, or generic instantiation), or a library unit renamig declaration (package, generic, or subprogram renaming declaration). such files are called *specs*.

`file.adb`

Ada source code file containing a library unit body (a subprogram or package body), such files are called *bodies*

`file.s`

assembler code

`file.S`, `file.sx`

assembler code that must be preprocessed

`other`
an object file to be fed straight to linking, any file name with no recognized suffix is  treated this way.