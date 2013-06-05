#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;

use Games::Cards;
use Player;

my $Snap = new Games::Cards::Game;
my $Deck = new Games::Cards::Deck( $Snap, "Deck" );
$Deck->shuffle;

my $player1 = Player->new;
my $player2 = Player->new;

#$player1->hand(new Games::Cards::Hand "Player1");


$Deck->give_cards($hand1, 25);

say $hand1;
