use strict;
use warnings;

use Mo::utils::Cefact;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Mo::utils::Cefact::VERSION, 0.01, 'Version.');
