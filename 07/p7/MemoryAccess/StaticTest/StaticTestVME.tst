// This file is part of the materials accompanying the book
// "The Elements of Computing Systems" by Nisan and Schocken, 
// MIT Press 2004. Book site: http://www.idc.ac.il/tecs
// File name: projects/07/MemoryAccess/StaticTest/StaticTestVME.tst.
// Version: beta 1.4.

load StaticTest.vm,
output-file StaticTest.out,
compare-to StaticTest.cmp,
output-list RAM[256]%D1.6.1;

set SP 256,

repeat 11 {
  vmstep;
}

output;
