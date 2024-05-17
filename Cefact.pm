package Mo::utils::Cefact;

use base qw(Exporter);
use strict;
use warnings;

use Error::Pure qw(err);
use Readonly;

Readonly::Array our @EXPORT_OK => qw(check_cefact_unit);

our $VERSION = 0.01;

sub check_cefact_unit {
	my ($self, $key) = @_;

	_check_key($self, $key) && return;

#	if (! valid_barcode($self->{$key})) {
#		err "UN/CEFACT Common Code unit doesn't valid.";
#	}

	return;
}

sub _check_key {
	my ($self, $key) = @_;

	if (! exists $self->{$key} || ! defined $self->{$key}) {
		return 1;
	}

	return 0;
}

1;

__END__

=pod

=encoding utf8

=head1 NAME

Mo::utils::Cefact - Mo UN/CEFACT Common Code utilities.

=head1 SYNOPSIS

 use Mo::utils::Cefact qw(check_cefact_unit);

 check_cefact_unit($self, $key);

=head1 DESCRIPTION

Mo Cefact utilities for checking of data objects.

=head1 SUBROUTINES

=head2 C<check_cefact_unit>

 check_cefact_unit($self, $key);

Check parameter defined by C<$key> if it's UN/CEFACT Common Code.
Value could be undefined.

Returns undef.

=head1 ERRORS

 check_cefact_unit():
         UN/CEFACT Common Code unit doesn't valid.

=head1 EXAMPLE1

=for comment filename=check_cefact_unit_ok.pl

 use strict;
 use warnings;

 use Mo::utils::Cefact qw(check_cefact_unit);

 my $self = {
         'key' => 'DLT',
 };
 check_cefact_unit($self, 'key');

 # Print out.
 print "ok\n";

 # Output:
 # ok

=head1 EXAMPLE2

=for comment filename=check_cefact_unit_fail.pl

 use strict;
 use warnings;

 use Error::Pure;
 use Mo::utils::Cefact qw(check_cefact_unit);

 $Error::Pure::TYPE = 'Error';

 my $self = {
         'key' => 'xx',
 };
 check_cefact_unit($self, 'key');

 # Print out.
 print "ok\n";

 # Output like:
 # #Error [...utils.pm:?] UN/CEFACT Common Code unit doesn't valid.

=head1 DEPENDENCIES

L<Error::Pure>,
L<Exporter>,
L<Readonly>.

=head1 SEE ALSO

=over

=item L<Mo>

Micro Objects. Mo is less.

=item L<Mo::utils>

Mo utilities.

=back

=head1 REPOSITORY

L<https://github.com/michal-josef-spacek/Mo-utils-Cefact>

=head1 AUTHOR

Michal Josef Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

© 2024 Michal Josef Špaček

BSD 2-Clause License

=head1 VERSION

0.01

=cut
