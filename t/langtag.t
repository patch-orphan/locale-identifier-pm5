use utf8;
use open qw( :encoding(UTF-8) :std );
use Test::Most tests => 30;
use Locale::Identifier;

my $locale;

$locale = Locale::Identifier->from_string('en');
can $locale, 'primary_language';
can $locale, 'canextended_language';
can $locale, 'script';
can $locale, 'region';
can $locale, 'variant';
can $locale, 'extension';
can $locale, 'private_use';
is $locale->primary_language, 'en';
ok !defined $locale->canextended_language;
ok !defined $locale->script;
ok !defined $locale->region;
ok !defined $locale->variant;
ok !defined $locale->extension;
ok !defined $locale->private_use;

$locale = Locale::Identifier->from_string('en-US');
is $locale->primary_language, 'en';
is $locale->region,           'US';

$locale = Locale::Identifier->from_string('ar-Cyrl-CO');
is $locale->primary_language, 'ar';
is $locale->script,           'Cyrl';
is $locale->region,           'CO';

$locale = Locale::Identifier->from_string('tlh-Kore-AQ-fonipa');
is $locale->primary_language, 'tlh';
is $locale->script,           'Kore';
is $locale->region,           'AQ';
is $locale->variant,          'fonipa';

$locale = Locale::Identifier->from_string('TLH-kORE-aq-FONIPA');
is $locale->primary_language, 'tlh';
is $locale->script,           'Kore';
is $locale->region,           'AQ';
is $locale->variant,          'fonipa';

$locale = Locale::Identifier->new(
    primary_language => 'ar',
    script           => 'Cyrl',
    region           => 'CO',
);
is $locale->tag, 'ar-Cyrl-CO';

$locale = Locale::Identifier->new(
    primary_language => 'tlh',
    script           => 'Kore',
    region           => 'AQ',
    variant          => 'fonipa',
);
is $locale->tag, 'tlh-Kore-AQ-fonipa';

$locale = Locale::Identifier->new(
    primary_language => 'TLH',
    script           => 'kORE',
    region           => 'aq',
    variant          => 'FONIPA',
);
is $locale->tag, 'tlh-Kore-AQ-fonipa';
