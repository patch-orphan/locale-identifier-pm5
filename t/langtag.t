use strict;
use warnings;
use utf8;
use Test::More tests => 30;
use Lingua::Tag;

my $tag;

$tag = Lingua::Tag->new('en');
can $tag, 'primary_language';
can $tag, 'canextended_language';
can $tag, 'script';
can $tag, 'region';
can $tag, 'variant';
can $tag, 'extension';
can $tag, 'private_use';
is $tag->primary_language, 'en';
ok !defined $tag->canextended_language;
ok !defined $tag->script;
ok !defined $tag->region;
ok !defined $tag->variant;
ok !defined $tag->extension;
ok !defined $tag->private_use;

$tag = Lingua::Tag->new('en-US');
is $tag->primary_language, 'en';
is $tag->region,           'US';

$tag = Lingua::Tag->new('ar-Cyrl-CO');
is $tag->primary_language, 'ar';
is $tag->script,           'Cyrl';
is $tag->region,           'CO';

$tag = Lingua::Tag->new('tlh-Kore-AQ-fonipa');
is $tag->primary_language, 'tlh';
is $tag->script,           'Kore';
is $tag->region,           'AQ';
is $tag->variant,          'fonipa';

$tag = Lingua::Tag->new('TLH-kORE-aq-FONIPA');
is $tag->primary_language, 'tlh';
is $tag->script,           'Kore';
is $tag->region,           'AQ';
is $tag->variant,          'fonipa';

$tag = Lingua::Tag->new(
    primary_language => 'ar',
    script           => 'Cyrl',
    region           => 'CO',
);
is $tag->tag, 'ar-Cyrl-CO';

$tag = Lingua::Tag->new(
    primary_language => 'tlh',
    script           => 'Kore',
    region           => 'AQ',
    variant          => 'fonipa',
);
is $tag->tag, 'tlh-Kore-AQ-fonipa';

$tag = Lingua::Tag->new(
    primary_language => 'TLH',
    script           => 'kORE',
    region           => 'aq',
    variant          => 'FONIPA',
);
is $tag->tag, 'tlh-Kore-AQ-fonipa';
