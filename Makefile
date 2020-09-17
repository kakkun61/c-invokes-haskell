PWSH = pwsh

c-invokes-haskell.exe: main.c Lib_stub.h Lib.hi Lib.o
	ghc --make -no-hs-main -optc-O main.c Lib -o c-invokes-haskell.exe

Lib_stub.h Lib.hi Lib.o&: Lib.hs
	ghc -c -O Lib.hs

.PHONY: clean
clean:
	- $(PWSH) -Command "& { Remove-Item -Force -ErrorAction Ignore c-invokes-haskell.exe, Lib_stub.h, Lib.hi, Lib.o, main.o }"
