#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;

use Games::Cards;
use Player;

my $Snap = new Games::Cards::Game;
my $Deck = new Games::Cards::Deck( $Snap, "Deck" );
$Deck->shuffle;

my $player1     = Player->new;
my $player2     = Player->new;
my $player_turn = 1;

my $pile = new Games::Cards::Queue $Snap, "Pile";
say "pile: ", $pile->print("short");

$player1->hand( new Games::Cards::Hand $Snap, "Player 1" );
$Deck->give_cards( $player1->hand, 26 );

$player2->hand( new Games::Cards::Hand $Snap, "Player 2" );
$Deck->give_cards( $player2->hand, 26 );

say $player1->hand->print("short");
say $player1->hand->size;
say $player1->hand->print("short");

while ( $player1->hand->size > 0 && $player1->hand->size > 0 ) {

    if ( $player_turn == 1 ) {
        $player_turn = 2;
        $player1->hand->give_a_card( $pile, 0 );
    }
    else {
        $player_turn = 1;
        $player2->hand->give_a_card( $pile, 0 );
    }

    
}

