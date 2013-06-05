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


$player1->hand(new Games::Cards::Hand $Snap, "Player 1");
$Deck->give_cards($player1->hand, 26);

$player2->hand(new Games::Cards::Hand $Snap, "Player 2");
$Deck->give_cards($player2->hand, 26);

say $player1->hand->print("short");
say $player1->hand->print("short");
