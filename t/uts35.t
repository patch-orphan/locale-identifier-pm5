use utf8;
use open qw( :encoding(UTF-8) :std );
use Test::Most tests => 13;
use Locale::Identifier;

# Tests adapted from examples in:
# UTS #35: Unicode LDML, Part 1: Core
# http://www.unicode.org/reports/tr35/tr35.html

# 3.1 Unicode Language Identifier

subtest 'root' => sub {
    plan tests => 4;
    my $locale = Locale::Identifier->from_string('root');
    is $locale->id,       'root', 'id';
    is $locale->language, 'root', 'language';
    is $locale->script,   undef,  'script';
    is $locale->region,   undef,  'region';
};

subtest 'en-US' => sub {
    plan tests => 4;
    my $locale = Locale::Identifier->from_string('en-US');
    is $locale->id,       'en-US', 'id';
    is $locale->language, 'en',    'language';
    is $locale->script,   undef,   'script';
    is $locale->region,   'US',    'region';
};

subtest 'en_GB' => sub {
    plan tests => 4;
    my $locale = Locale::Identifier->from_string('en_GB');
    is $locale->id,       'en_GB', 'id';
    is $locale->language, 'en',    'language';
    is $locale->script,   undef,   'script';
    is $locale->region,   'GB',    'region';
};

subtest 'es-419' => sub {
    plan tests => 4;
    my $locale = Locale::Identifier->from_string('es-419');
    is $locale->id,       'es-419', 'id';
    is $locale->language, 'es',     'language';
    is $locale->script,   undef,    'script';
    is $locale->region,   '419',    'region';
};

subtest 'uz-Cyrl' => sub {
    plan tests => 4;
    my $locale = Locale::Identifier->from_string('uz-Cyrl');
    is $locale->id,       'uz-Cyrl', 'id';
    is $locale->language, 'uz',      'language';
    is $locale->script,   'Cyrl',    'script';
    is $locale->region,   undef,     'region';
};

# 3.4 Language Identifier Field Definitions

subtest 'en' => sub {
    plan tests => 4;
    my $locale = Locale::Identifier->from_string('en');
    is $locale->id,       'en',  'id';
    is $locale->language, 'en',  'language';
    is $locale->script,   undef, 'script';
    is $locale->region,   undef, 'region';
};

subtest 'fr_BE' => sub {
    plan tests => 4;
    my $locale = Locale::Identifier->from_string('fr_BE');
    is $locale->id,       'fr_BE', 'id';
    is $locale->language, 'fr',    'language';
    is $locale->script,   undef,   'script';
    is $locale->region,   'BE',    'region';
};

subtest 'zh-Hant-HK' => sub {
    plan tests => 4;
    my $locale = Locale::Identifier->from_string('zh-Hant-HK');
    is $locale->id,       'zh-Hant-HK', 'id';
    is $locale->language, 'zh',         'language';
    is $locale->script,   'Hant',       'script';
    is $locale->region,   'HK',         'region';
};

# 3.5.1 Unknown or Invalid Identifiers

subtest 'und' => sub {
    plan tests => 4;
    my $locale = Locale::Identifier->from_string('und');
    is $locale->id,       'und', 'id';
    is $locale->language, 'und', 'language';
    is $locale->script,   undef, 'script';
    is $locale->region,   undef, 'region';
};

subtest 'und_Grek' => sub {
    plan tests => 4;
    my $locale = Locale::Identifier->from_string('und_Grek');
    is $locale->id,       'und_Grek', 'id';
    is $locale->language, 'und',      'language';
    is $locale->script,   'Grek',     'script';
    is $locale->region,   undef,      'region';
};

subtest 'und_US' => sub {
    plan tests => 4;
    my $locale = Locale::Identifier->from_string('und_US');
    is $locale->id,       'und_US', 'id';
    is $locale->language, 'und',    'language';
    is $locale->script,   undef,    'script';
    is $locale->region,   'US',     'region';
};

# 3.6.4 U Extension Data Files

subtest 'en-u-vt-00A4' => sub {
    plan tests => 4;
    my $locale = Locale::Identifier->from_string('en-u-vt-00A4');
    is $locale->id,       'en-u-vt-00A4', 'id';
    is $locale->language, 'en',           'language';
    is $locale->script,   undef,          'script';
    is $locale->region,   undef,          'region';
};

# 5 XML Format

subtest 'af-t-k0-android' => sub {
    plan tests => 4;
    my $locale = Locale::Identifier->from_string('af-t-k0-android');
    is $locale->id,       'af-t-k0-android', 'id';
    is $locale->language, 'af',              'language';
    is $locale->script,   undef,             'script';
    is $locale->region,   undef,             'region';
};
