use strict;
use warnings;
use v5.10;

use Games::Cards;

package Snap;

use Moose;

has 'player1' => (
    is  => 'rw',
    isa => 'Str'
);

has 'player2' => (
    is  => 'rw',
    isa => 'Str'
);

1;
