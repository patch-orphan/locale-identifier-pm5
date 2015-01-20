use utf8;
use open qw( :encoding(UTF-8) :std );
use English;
use Test::Most tests => 3;

BEGIN { use_ok 'Unicode::Locale' }

diag join ', ' => (
    "Unicode::Locale v$Unicode::Locale::VERSION",
    "Moo v$Moo::VERSION",
    "Perl $PERL_VERSION ($EXECUTABLE_NAME)",
);

my $obj = new_ok 'Unicode::Locale';

can_ok $obj, qw(
    new
    language script region
    u_extension u_extension
    from_string to_string
);
