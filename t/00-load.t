use utf8;
use open qw( :encoding(UTF-8) :std );
use English;
use Test::Most tests => 2;

BEGIN { use_ok 'Locale::Identifier' }

diag join ', ' => (
    "Locale::Identifier v$Locale::Identifier::VERSION",
    "Moo v$Moo::VERSION",
    "Perl $PERL_VERSION ($EXECUTABLE_NAME)",
);

my $obj = new_ok 'Locale::Identifier';
