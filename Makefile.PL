use 5.008;
use strict;
use warnings;
use ExtUtils::MakeMaker 6.64;

WriteMakefile(
    NAME          => 'App::Base',
    AUTHOR        => q{Binary.com <binary@cpan.org>},
    VERSION_FROM  => 'lib/App/Base.pm',
    ABSTRACT_FROM => 'lib/App/Base.pm',
    LICENSE       => 'perl',
    PL_FILES      => {},
    PREREQ_PM     => {
        'File::Flock::Tiny'    => 0,
        'List::Util'           => 0,
        'Log::Log4perl'        => 0,
        'Moose'                => 0,
        'Moose::Role'          => 0,
        'MooseX::Types'        => 0,
        'namespace::autoclean' => 0,
        'Path::Class'          => 0,
        'Path::Tiny'           => 0,
        'Text::Reform'         => 0,
        'Try::Tiny'            => 0,
    },
    TEST_REQUIRES => {
        'Test::More'       => 0.94,
        'File::Slurp'      => 0,
        'Test::Most'       => 0.21,
        'Test::NoWarnings' => 0,
        'Text::Trim'       => 0,
    },
    CONFIGURE_REQUIRES => { 'ExtUtils::MakeMaker' => 6.64, },
    dist               => { COMPRESS              => 'gzip -9f', SUFFIX => 'gz', },
    clean              => { FILES                 => 'App-Base-*' },
    META_MERGE => {
        requires  => { perl => 5.010 },
        resources => {
            homepage   => 'https://github.com/binary-com/perl-App-Base',
            bugtracker => 'https://github.com/binary-com/perl-App-Base/issues',
            repository => 'git://github.com/binary-com/perl-App-Base',
            license    => 'http://dev.perl.org/licenses/',
        },
    },
);