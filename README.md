# NAME

Locale::Identifier - Locale identifier parser and formatter

# VERSION

This document describes Locale::Identifier v0.00\_1.

# SYNOPSIS

```perl
use Locale::Identifier;

$locale = Locale::Identifier->new('fr-CA');

say $locale->language;  # fr
say $locale->region;    # CA
```

# DESCRIPTION

...

## Attributes

- primary\_language
- extended\_language
- script
- region
- variant
- extension
- private\_use

# SEE ALSO

- [Unicode Language and Locale
Identifiers](http://unicode.org/reports/tr35/#Unicode_Language_and_Locale_Identifiers)
- [BCP 47: Tags for Identifying
Languages](http://tools.ietf.org/rfc/bcp/bcp47.txt)
- [Language Tags](http://www.langtag.net/)
- [Language tags in HTML and
XML](http://www.w3.org/International/articles/language-tags/Overview.en.php)
- [Language Subtag
Registry](http://www.iana.org/assignments/language-subtag-registry)

# AUTHOR

Nick Patch <patch@cpan.org>

# COPYRIGHT AND LICENSE

© 2013–2015 Nick Patch

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
