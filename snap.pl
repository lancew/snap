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
my $turn = 1;

my $pile = new Games::Cards::Stack $Snap, "Pile";
my $temp_pile = new Games::Cards::Stack $Snap, "Temp";
say "pile: ", $pile->print("short");

$player1->hand( new Games::Cards::Hand $Snap, "Player 1" );
$Deck->give_cards( $player1->hand, 26 );

$player2->hand( new Games::Cards::Hand $Snap, "Player 2" );
$Deck->give_cards( $player2->hand, 26 );

say $player1->hand->print("short");
say $player1->hand->size;
say $player1->hand->print("short");


if($turn == 1)
{
   # First Turn, so drop a card to start with
   $player1->hand->give_a_card($pile,0);
}


while ( $player1->hand->size > 0 && $player1->hand->size > 0 ) {
    	
    if ($turn % 2) 
    {
	#Divides by 2, i.e. Player 2s turn
	$player2->hand->give_a_card($temp_pile,0);
	
    	if($pile->top_card->value == $temp_pile->top_card->value)	
    	{
		$pile->give_cards($player2->hand, 'all');
		$temp_pile->give_cards($pile,"all");
    	} else {
		$temp_pile->give_cards($pile,"all");
	}
	
    } else {
	# Does not divide evenily by 2 so player 1
	$player1->hand->give_a_card($temp_pile,0);

    	if($pile->top_card->value == $temp_pile->top_card->value)	
    	{
		$pile->give_cards($player1->hand, 'all');
		$temp_pile->give_cards($pile,"all");
    	}else{
		$temp_pile->give_cards($pile,"all");
	}
    }	



   say "Turn: ",$turn," Pile: ",$pile->size," P1: ",$player1->hand->size," P2: ",$player2->hand->size;
	sleep(1);
   $turn++;

}

say "";
say "-----------------------------------------";
say "Player 1: ", $player1->hand->size;
say "Player 2: ", $player2->hand->size;

if ($player1->hand->size > $player2->hand->size)
{
	say "PLAYER 1 Wins!!!";
} else {
        say "PLAYER 2 Wins!!!";
}
say "-----------------------------------------";
