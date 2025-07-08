#!/usr/bin/env perl

use strict;
use warnings;

use Error::Pure;
use Mo::utils::CEFACT qw(check_cefact_unit);

$Error::Pure::TYPE = 'Error';

my $self = {
        'key' => 'xx',
};
check_cefact_unit($self, 'key');

# Print out.
print "ok\n";

# Output like:
# #Error [...utils.pm:?] UN/CEFACT unit common code isn't valid.