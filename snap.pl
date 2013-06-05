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


my $hand1 = new Games::Cards::Hand $Snap, "Player 1";
$Deck->give_cards($hand1, 26);

my $hand2 = new Games::Cards::Hand $Snap, "Player 2";
$Deck->give_cards($hand2, 26);

say $hand1->print("short");
say $hand2->print("short");
