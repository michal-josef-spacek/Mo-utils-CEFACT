use strict;
use warnings;

use English;
use Error::Pure::Utils qw(clean);
use Mo::utils::CEFACT qw(check_cefact_unit);
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $self = {
	'key' => 'KGM',
};
my $ret = check_cefact_unit($self, 'key');
is($ret, undef, "Unit 'KGM' is valid.");

# Test.
$self = {
	'key' => 'XXX',
};
eval {
	check_cefact_unit($self, 'key');
};
is($EVAL_ERROR, "UN/CEFACT unit common code isn't valid.\n",
	"UN/CEFACT unit common code isn't valid (XXX).");
clean();
