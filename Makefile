compile_hs: surparser.hs
		ghc -c -O surparser.hs
		ghc --make -no-hs-main -optc-O test.c Surparser -o test
