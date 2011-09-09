nvcc -m=32 --cubin -Xptxas=-v -D SCATTER_INPLACE -D NUM_THREADS=128 -D VALUES_PER_THREAD=8 -D VALUE_TYPE_NONE -arch=compute_20 -code=sm_20 -o ../cubin/sort_128_8_key_inplace.cubin sortgen.cu
IF %ERRORLEVEL% EQU 0 cuobjdump -sass ../cubin/sort_128_8_key_inplace.cubin > ../isa/sort_128_8_key_inplace.isa


