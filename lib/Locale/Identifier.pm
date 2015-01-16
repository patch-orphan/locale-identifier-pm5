package Locale::Identifier;

use 5.006;
use strict;
use warnings;
use utf8;

our $VERSION = '0.00_1';

1;

__END__

=encoding UTF-8

=head1 NAME

Locale::Identifier - Locale identifier parser and formatter

=head1 VERSION

This document describes Locale::Identifier version 0.00_1.

=head1 SYNOPSIS

    use Locale::Identifier;

    $locale = Locale::Identifier->new('fr-CA');

    say $locale->language;  # fr
    say $locale->region;    # CA

=head1 DESCRIPTION

...

=head2 Attributes

=over

=item primary_language

=item extended_language

=item script

=item region

=item variant

=item extension

=item private_use

=back

=head1 SEE ALSO

=over

=item * Unicode Language and Locale Identifiers –
<http://unicode.org/reports/tr35/#Unicode_Language_and_Locale_Identifiers>

=item * BCP 47: Tags for Identifying Languages –
<http://tools.ietf.org/rfc/bcp/bcp47.txt>

=item * Language Tags – <http://www.langtag.net/>

=item * Language tags in HTML and XML –
<http://www.w3.org/International/articles/language-tags/Overview.en.php>

=item * Language Subtag Registry –
<http://www.iana.org/assignments/language-subtag-registry>

=back

=head1 AUTHOR

Nick Patch <patch@cpan.org>

=head1 COPYRIGHT AND LICENSE

© 2013–2015 Nick Patch

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
