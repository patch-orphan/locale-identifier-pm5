package Unicode::Locale;

use v5.8.1;
use utf8;

use Moo;
use namespace::clean;

our $VERSION = '0.00_1';

has _id => (
    is      => 'lazy',
    builder => sub {
        join '_',
        grep { defined }
         map { $_[0]->$_ }
          qw { language script region }
    },
);

has language => (
    is => 'ro',
);

has script => (
    is => 'ro',
);

has region => (
    is => 'ro',
);

sub from_string {
    my ($class, $id) = @_;

    my ($language, $script, $region) = $id =~ m{
        ^        ( [a-z]{2,8}          )     # language
        (?: [_-] ( [a-z]{4}            ) )?  # script
        (?: [_-] ( [a-z]{2} | [0-9]{3} ) )?  # region
        (?= _ | \b )
    }xi;

    $class->new(
        defined $language ? ( language =>         lc $language ) : (),
        defined $script   ? ( script   => ucfirst lc $script   ) : (),
        defined $region   ? ( region   =>         uc $region   ) : (),
    );
}

sub to_string {
    my ($self) = @_;

    return $self->_id;
}

1;

__END__

=encoding UTF-8

=head1 NAME

Unicode::Locale - Unicode locale identifier

=head1 VERSION

This document describes Unicode::Locale v0.00_1.

=head1 SYNOPSIS

    use Unicode::Locale;

    $locale = Unicode::Locale->from_string('fr-CA');

    say $locale->language;  # fr
    say $locale->region;    # CA

=head1 DESCRIPTION

...

=head2 Attributes

=over

=item language

=item script

=item region

=back

=head2 Methods

=over

=item new

=item from_string

=item to_string

=back

=head1 SEE ALSO

=over

=item * L<Unicode Language and Locale
Identifiers|http://unicode.org/reports/tr35/#Unicode_Language_and_Locale_Identifiers>

=item * L<BCP 47: Tags for Identifying
Languages|http://tools.ietf.org/rfc/bcp/bcp47.txt>

=item * L<Language Tags|http://www.langtag.net/>

=item * L<Language tags in HTML and
XML|http://www.w3.org/International/articles/language-tags/Overview.en.php>

=item * L<Language Subtag
Registry|http://www.iana.org/assignments/language-subtag-registry>

=back

=head1 AUTHOR

Nick Patch <patch@cpan.org>

=head1 COPYRIGHT AND LICENSE

© 2013–2015 Nick Patch

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
