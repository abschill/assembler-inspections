# we use the -S option to tell the compiler to stop after the compilation proper stage, and to not assemble the .s file
# O3 is an optimization flag
# optimization flags make the compiler attempt to improve performance and/or code size at the expense of compilation time and possibly the ability to debug the program 
gcc -S -O3 -fno-asynchronous-unwind-tables $1
