use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Module::Build;

my $builder = Module::Build->new(
    module_name   => 'Locale::Identifier',
    license       => 'Perl_5',
    create_readme => 1,
    configure_requires => {
        'Module::Build'     => '0.4004',
        'Software::License' => 0,
    },
    build_requires => {
        'Pod::Man' => '2.04',
    },
    test_requires => {
        'open'       => 0,
        'English'    => 0,
        'Test::Most' => '0.22',
    },
    requires => {
        'perl'             => '5.8.1',
        'namespace::clean' => 0,
        'utf8'             => 0,
        'Moo'              => '1.001000',
    },
    meta_merge => {
        resources => {
            repository => 'git://github.com/patch/locale-identifier-pm5.git',
            homepage   => 'https://github.com/patch/locale-identifier-pm5',
            bugtracker => 'https://github.com/patch/locale-identifier-pm5/issues',
        },
    },
);

$builder->create_build_script;
