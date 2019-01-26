#!/usr/bin/env perl 

use strict;
use warnings;
use utf8;
use open ":std", ":encoding(UTF-8)";

my $autor;
my @autori;

while(<>) {
  next if /^%/;
  next if not /(pisnicky.*____.*tex)/;
  $autor = "";
  open FILE, "../" . $1;
  while(<FILE>) {
    last if(($autor) = /\\pisen\{(.*)\}\{.*\}/);
    last if(($autor) = /\\zp\{.*\}\{(.*)\}/);
  }
  close FILE;
  next if $autor eq "";
  # Rozdělíme vícenásobné autory
  push @autori, split(/, /, $autor)
}

foreach $autor (@autori) {
  # Odstraníme iniciály
  if($autor =~ /^(.\. ?)+ (.*)$/) {
    $autor = $2;
  }
  $autor = "Nedvědi" if $autor eq "Bratři Nedvědové";
  $autor = "Beatles" if $autor eq "The Beatles";
}

foreach $autor (@autori) {
  next if $autor eq "Bonus";
  print $autor, "\n";
}
