calc: calc.ypp scan.l parser.h
  flex -8 scan.l
  bison -v -d calc.ypp
  g++ -s -O2 -o calc.exe calc.tab.cpp lex.yy.c

clean:
  rm -f *.tab.cpp *.tab.hpp *.yy.c *.output *.o calc *\~
