#!/usr/bin/perl -w   
#use strict;

$SIG{ALRM} = sub {
  die "timeout\n";
};

alarm 3;

die "No argument was given.\n" unless @ARGV;

$com=join(' ',@ARGV);

print "exec $com\n";
`$com`


