/*
* #12 - Rock Paper Scissors
* Rock beats scissors, scissors beats paper, paper beats rock. 
* Implement the method rockPaperScissors that takes as parameters 
* two strings player1 and player2 representing the moves played 
* by player 1 and player 2, valid moves being 'rock', 'paper', and 'scissors'. 
* Return 1 if player 1 wins, 2 if player 2 wins, and 0 if no one wins.
*
* rockPaperScissors('rock', 'paper') = 2
* rockPaperScissors('scissors', 'paper') = 1
* rockPaperScissors('paper', 'paper') = 0
*/

public Integer rockPaperScissors(String player1, String player2) {
    return 
    (        
        (player1=='rock'     && player2=='scissors') ? 1 :
        (player1=='paper'    && player2=='rock') ? 1 :
        (player1=='scissors' && player2=='paper') ? 1 :
        (player1=='scissors' && player2=='rock') ? 2 :
        (player1=='rock'     && player2=='paper') ? 2 :
        (player1=='paper'    && player2=='scissors') ? 2 : 0
    );
}


Integer result = rockPaperScissors('rock', 'rock');
System.debug('Result: ' + result + ' >> Rock ties with rock');

result = rockPaperScissors('rock', 'paper');
System.debug('Result: ' + result + ' >> Rock loses to paper');

result = rockPaperScissors('rock', 'scissors');
System.debug('Result: ' + result + ' >> Rock beats scissors');

result = rockPaperScissors('paper', 'rock');
System.debug('Result: ' + result + ' >> Paper beats rock');

result = rockPaperScissors('paper', 'paper');
System.debug('Result: ' + result + ' >> Paper ties with paper');

result = rockPaperScissors('paper', 'scissors');
System.debug('Result: ' + result + ' >> Paper loses to scissors');

result = rockPaperScissors('scissors', 'rock');
System.debug('Result: ' + result + ' >> Scissors loses to rock');

result = rockPaperScissors('scissors', 'paper');
System.debug('Result: ' + result + ' >> Scissors beats paper');

result = rockPaperScissors('scissors', 'scissors');
System.debug('Result: ' + result + ' >> Scissors ties with scissors');