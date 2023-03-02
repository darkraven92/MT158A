% Definiera knapparna
rock_button = button('Rock');
paper_button = button('Paper');
scissors_button = button('Scissors');
play_button = button('Play');

% Definiera lamporna
player_score_lamp = lamp();
computer_score_lamp = lamp();

% Startvärden
player_score = 0;
computer_score = 0;

% Huvudloop
while true
    % Vänta på att spelaren klickar på en knapp
    clicked_button = waitforbuttonpress([rock_button, paper_button, scissors_button, play_button]);
    
    % Om spelaren klickade på "Play"
    if clicked_button == play_button
        % Generera datorns val
        computer_choice = randi(3);
        % Omvandla datorns val till text
        if computer_choice == 1
            computer_choice_text = 'rock';
        elseif computer_choice == 2
            computer_choice_text = 'paper';
        else
            computer_choice_text = 'scissors';
        end
        
        % Avgör vinnaren
        if strcmp(clicked_button.Text, computer_choice_text)
            % Oavgjort
            winner = 'Tie!';
        elseif (strcmp(clicked_button.Text, 'rock') && strcmp(computer_choice_text, 'scissors')) || (strcmp(clicked_button.Text, 'paper') && strcmp(computer_choice_text, 'rock')) || (strcmp(clicked_button.Text, 'scissors') && strcmp(computer_choice_text, 'paper'))
            % Spelaren vinner
            winner = 'Player wins!';
            player_score = player_score + 1;
        else
            % Datorn vinner
            winner = 'Computer wins!';
            computer_score = computer_score + 1;
        end
        
        % Uppdatera lamporna med poängen
        player_score_lamp.set(player_score);
        computer_score_lamp.set(computer_score);
        
        % Visa resultatet
        disp(winner);
    end
end
