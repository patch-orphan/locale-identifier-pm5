use strict;
use warnings;
use utf8;
use Test::More tests => 7;
use Lingua::Tag;

my $langtag;

$langtag = Lingua::Tag->new('ar-Cyrl-CO');
is $langtag->primary_language, 'ar';
is $langtag->script,           'Cyrl';
is $langtag->region,           'CO';

$langtag = Lingua::Tag->new('tlh-Kore-AQ-fonipa');
is $langtag->primary_language, 'tlh';
is $langtag->script,           'Kore';
is $langtag->region,           'AQ';
is $langtag->variant,          'fonipa';
