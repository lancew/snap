use strict;
use warnings;
use v5.10;

package Player;

use Moose;

has 'hand' => (
    is  => 'rw',
    isa => 'Games::Cards::Hand'
);

1;
