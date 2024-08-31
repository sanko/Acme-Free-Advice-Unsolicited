
# NAME

Acme::Free::Advice::Unsolicited - Solicit Unsolicited Advice from the Unsolicited Advice API

# SYNOPSIS

```perl
use Acme::Free::Advice::Unsolicited;
say advice( 224 )->{advice};
```

# DESCRIPTION

Acme::Free::Advice::Unsolicited provides wisdom from [AdviceSlip.com](https://adviceslip.com/)

# METHODS

These functions may be imported by name or with the `:all` tag.

## `advice( [...] )`

Seek wisdom.

```perl
my $slip = advice(); # Random advice
my $slip = advice( 20 ); # Advice by ID
```

You may request specific advice by ID.

Advice is provided as a hash reference containing the following keys:

- `advice`

    The sage advice you were looking for.

- `id`

    The advice's ID in case you'd like to request it again in the future.

- `source`

    The source of the wisdom. Typically a URL on Kevin's block.

## `all( )`

```perl
my @advice = all(  );
```

Seek all advice.

Advice is provided as a list of hash references containing the following keys:

- `advice`

    The sage advice you were looking for.

- `id`

    The advice's ID in case you'd like to request it again in the future.

- `source`

    The source of the wisdom. Typically a URL on Kevin's block.

# LICENSE & LEGAL

Copyright (C) Sanko Robinson.

This library is free software; you can redistribute it and/or modify it under the terms found in the Artistic License
2\. Other copyrights, terms, and conditions may apply to data transmitted through this module.

Unsolicited advice provided by [Kevin Kelly](https://kk.org/).

# AUTHOR

Sanko Robinson <sanko@cpan.org>
