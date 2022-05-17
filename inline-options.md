# General Options for compiling with gcc

` `-c` compile or assemble source files but do not link, it simply ignores the linking stage. The ultimate output is in the form of an object file for each source. By default, the object filename is a source file just replaces the suffix of that source file.

- `-S` stop after the stage of compilation proper, do not assemble. The output is in the form of an assembler code file for each non-assembler input file specified. By default, the assembler filename is made by replacing the extension with 's'. Input files that don't require compilation are ignored.

- `-E` stop after preprocessing, do not assemble. The output is in the form of preprocessed source code, which is sent to standard out. 

- `-o <file>` place the primary output in the file <file>. If unspecified, it uses `a.out` as the default output file for the executable, `source.o` for the object file for `source.suffix` and `source.s` for the assembler file. A precompiled header will be output as `source.suffix.gch`


- `-dumpbase <dumpbase>` this option sets the base name for aux and dump output files. it does not affect the name of the primary output file. Intermediate outputs, when preserved, are not regarded as primary outputs, but aux outputs.

For example:

`gcc -save-temps -S foo.c`

saves the (no longer) temporary preprocessed file in `foo.i` then compiles the output of `foo.s` whereas:

`gcc -save-temps -dumpbase -save-foo -c foo.c`

preprocesses into `save-foo.i` and compiles to `save-foo.s` then assembles the implied output file to `foo.o`


If *dumpbase* is explicitly specified with any directory component, any *dumppfx* specification is ignored and instead of appending to it, *dumpbase* overrides it. For example:

`gcc foo.c -c -o dit/foo.o -dumpbase alt/foo -dumpdir pfx- -save-temps=cwd`

creates aux and dump outputs named alt/foo.*, disregarding `/dir` in the `-o`

- `-v` print to standard error the commands executed to run the stages of compilation, and print the version number of the compiler driver and preprocessor of the proper.

- `-###` like `-v` except the commands are not executed and the arguments are quoted, useful for capturing driver-generated command lines from shell scripts

- `-pipe` use pipes rather than dump/aux files for various stages of compilation

- `-specs=file` process `file` after the compiler reads the standard specs file in order to override the defaults which the gcc driver uses when determining what switches to pass back to `cc1`, `cc1plus`, `as`, `ld`, etc. 