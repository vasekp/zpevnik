#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: b.pl
#
#        USAGE: ./b.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 8.7.2017 03:46:04
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

my ($a, $b);

while(<>) {
  if(($a, $b) = (/(.*)____(.*)\n/)) {
    print $b . "____" . $a . "\n";
  } else {
    print;
  }
}
