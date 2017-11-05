#!/usr/bin/env perl
use v5.10;
use strict;
use warnings;

use FFI::Raw;

my $lib_path = "target/debug/";
my $prefix = "lib"; # same for linux, empty for win32
my $extension = ".dylib"; # ".dll" for win32 / ".so" for linux
$lib_path = $lib_path . $prefix . "integers" . $extension;

my $rust = FFI::Raw->new (
    $lib_path, # library
    "addition", # function
    FFI::Raw::int, # return type
    FFI::Raw::int, FFI::Raw::int # argument types
);

print "rust.addition(1,2) = " . $rust->call(1,2) . "\n";