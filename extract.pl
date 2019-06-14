#!/usr/bin/perl

 open(EIFILE,"out");
 open(OUTFILE,">disp.dat");
 LINE: while (<EIFILE>) {
 last LINE if /Frequencies/;
 }
  $_=<EIFILE>;
for ($nk = 1 ; $nk <= 61 ; $nk++) {
  print OUTFILE $nk,' ';
  $_=<EIFILE>;
#  print $_;
  @fields = split;
  for ($nmod = 1; $nmod <= 6; $nmod++) {
    print OUTFILE $fields[$nmod-1],' ';
  }
  print OUTFILE "\n";
  $_=<EIFILE>;
  $_=<EIFILE>;
  $_=<EIFILE>;
  $_=<EIFILE>;
  $_=<EIFILE>;
  $_=<EIFILE>;
  $_=<EIFILE>;
  $_=<EIFILE>;
}
close(EIFILE);
close(OUTFILE);
