#!/usr/bin/perl
use strict;
use warnings;

use Benchmark::Confirm qw/TAP no_plan timethese cmpthese/;

my $result = timethese( 1 => +{
    Name1 => sub { "something" },
    Name2 => sub { "something" },
    Name3 => sub { "something" },
});

cmpthese $result;

ok 1, 'additionaly';
