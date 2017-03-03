#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

use lib '/app';
use MyApp;

my $application = MyApp->new();
my $app = sub { $application->run_psgi(@_) };
