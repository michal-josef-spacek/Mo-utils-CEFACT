use lib '.';
use strict;
use warnings;

use inc::Module::Install;

# Definition.
abstract 'Mo UN/CEFACT Common Code utilities.';
author 'Michal Josef Spacek <skim@cpan.org>';
author_requires 'English' => 0;
author_requires 'File::Object' => 0.05;
author_requires 'Test::More' => 0;
author_requires 'Test::NoWarnings' => 0;
author_requires 'Test::Pod' => 0;
author_requires 'Test::Pod::Coverage' => 0;
license 'bsd';
name 'Mo-utils-CEFACT';
perl_version 5.006002;
readme_from 'CEFACT.pm';
recursive_author_tests('xt');
requires 'CEFACT::Unit' => 0;
requires 'Error::Pure' => 0.15;
requires 'Exporter' => 0;
requires 'Readonly' => 0;
resources 'bugtracker' => 'https://github.com/michal-josef-spacek/Mo-utils-CEFACT/issues',
resources 'homepage' => 'https://github.com/michal-josef-spacek/Mo-utils-CEFACT';
resources 'repository' => 'git://github.com/michal-josef-spacek/Mo-utils-CEFACT';
test_requires 'English' => 0;
test_requires 'Error::Pure::Utils' => 0;
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
tests_recursive;
version '0.04';

# Run.
WriteAll();
