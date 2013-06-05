#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;

use Games::Cards;
my $Snap = new Games::Cards::Game;
my $Deck = new Games::Cards::Deck( $Snap, "Deck" );

