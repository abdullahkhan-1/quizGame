INCLUDE Irvine32.inc
.data
welcome_msg BYTE "Welcome to the Ultimate Quiz Game!", 0
mode_choice BYTE "Choose game mode:", 13,10
           BYTE "1. Single Player",13,10
           BYTE "2. Two Players", 0
prompt_mode BYTE "Enter choice (1-2): ", 0
categories BYTE "Categories:", 13, 10
           BYTE "1. Cricket", 13, 10
           BYTE "2. Physics", 13, 10
           BYTE "3. General Knowledge", 0
prompt_category BYTE "Select a category (1-3): ", 0
invalid_choice BYTE "Invalid choice! Please try again.", 0
score_msg BYTE "your final score is: ", 0
winner_msg BYTE " won the game!", 0
tie_msg BYTE "It's a tie!", 0

player1_name BYTE 30 DUP(0)
player2_name BYTE 30 DUP(0)
player1_name_prompt BYTE "Enter Player 1 Name: ", 0
player2_name_prompt BYTE "Enter Player 2 Name: ", 0

invalid_input_msg BYTE "Invalid input! Please enter a, b, c, or d.", 0
answer_key_prompt BYTE "Do you want to see the answer key before starting the quiz? (Y/N): ", 0
play_again_msg BYTE "Do you want to play again? (Y/N): ", 0

input_answer BYTE ?
input_play_again BYTE ?
answers_key DWORD ?

cricket_questions db "1. Who won the ICC Cricket World Cup 2019?", 0
                  db "2. Which cricketer has the highest individual score in ODIs?", 0
                  db "3. What is the maximum number of players allowed on a cricket team?", 0
                  db "4. Where is the headquarters of the International Cricket Council (ICC)?", 0
                  db "5. Who is known as the 'God of Cricket'?", 0
                  db "6. What is the length of a cricket pitch in yards?", 0
                  db "7. Who holds the record for the fastest century in ODIs?", 0
                  db "8. Which country has won the most ICC Cricket World Cups?", 0
                  db "9. What does LBW stand for in cricket?", 0
                  db "10. How many balls are there in an over?", 0

cricket_options db "a) England b) Australia c) India d) New Zealand", 0
                db "a) Sachin Tendulkar b) Chris Gayle c) Rohit Sharma d) Martin Guptill", 0
                db "a) 10 b) 11 c) 12 d) 13", 0
                db "a) Dubai b) London c) Melbourne d) Mumbai", 0
                db "a) Virat Kohli b) Ricky Ponting c) Sachin Tendulkar d) Brian Lara", 0
                db "a) 20 b) 22 c) 24 d) 25", 0
                db "a) AB de Villiers b) Corey Anderson c) Shahid Afridi d) Virat Kohli", 0
                db "a) India b) Australia c) West Indies d) England", 0
                db "a) Leg Before Wicket b) Long Boundary Wicket c) Line Ball Wicket d) Leg Beyond Wicket", 0
                db "a) 5 b) 6 c) 8 d) 10", 0

cricket_answers db "a", "d", "b", "a", "c", "b", "c", "b", "a", "b", 0

physics_questions db "1. What is the speed of light in a vacuum?", 0
                  db "2. Who developed the theory of relativity?", 0
                  db "3. What is the unit of force?", 0
                  db "4. What is the acceleration due to gravity on Earth?", 0
                  db "5. What is the SI unit of electric current?", 0
                  db "6. Who is known as the father of modern physics?", 0
                  db "7. What is the formula for kinetic energy?", 0
                  db "8. What is the law of inertia?", 0
                  db "9. What is the unit of frequency?", 0
                  db "10. What is the charge of an electron?", 0

physics_options db "a) 3x10^8 m/s b) 1x10^8 m/s c) 5x10^8 m/s d) 9x10^8 m/s", 0
                db "a) Newton b) Einstein c) Galileo d) Tesla", 0
                db "a) Joule b) Newton c) Watt d) Pascal", 0
                db "a) 9.8 m/s^2 b) 8.9 m/s^2 c) 10 m/s^2 d) 7.8 m/s^2", 0
                db "a) Volt b) Ampere c) Ohm d) Coulomb", 0
                db "a) Galileo b) Newton c) Einstein d) Faraday", 0
                db "a) 1/2mv^2 b) mgh c) mv d) ma", 0
                db "a) F=ma b) W=Fd c) E=mc^2 d) V=IR", 0
                db "a) Hertz b) Joule c) Pascal d) Ohm", 0
                db "a) -1.6x10^-19 C b) +1.6x10^-19 C c) 0 C d) 1 C", 0

physics_answers db "a", "b", "b", "a", "b", "c", "a", "a", "a", "a", 0

gk_questions db "1. What is the capital of France?", 0
             db "2. Who wrote 'Hamlet'?", 0
             db "3. What is the largest planet in our solar system?", 0
             db "4. Who painted the Mona Lisa?", 0
             db "5. What is the smallest country in the world?", 0
             db "6. Who discovered penicillin?", 0
             db "7. What is the chemical symbol for water?", 0
             db "8. What is the tallest mountain in the world?", 0
             db "9. What is the largest ocean on Earth?", 0
             db "10. Who was the first President of the United States?", 0

gk_options db "a) London b) Rome c) Paris d) Madrid", 0
           db "a) Shakespeare b) Dickens c) Chaucer d) Milton", 0
           db "a) Jupiter b) Mars c) Earth d) Venus", 0
           db "a) Leonardo da Vinci b) Michelangelo c) Raphael d) Donatello", 0
           db "a) Monaco b) Liechtenstein c) Vatican City d) Malta", 0
           db "a) Fleming b) Curie c) Darwin d) Newton", 0
           db "a) H2O b) H2 c) O2 d) CO2", 0
           db "a) Mount Everest b) K2 c) Kangchenjunga d) Lhotse", 0
           db "a) Atlantic b) Pacific c) Indian d) Arctic", 0
           db "a) George Washington b) Thomas Jefferson c) Abraham Lincoln d) John Adams", 0

gk_answers db "c", "a", "a", "a", "c", "a", "a", "a", "b", "a", 0
counter BYTE 3
msg1 BYTE " your turn." , 0
endingmsg BYTE "Thanks for playing." , 0
playAgain BYTE 10 DUP(?)
player1_score DWORD 0
player2_score DWORD 0

score DWORD 0
question_ptr DWORD 0
options_ptr DWORD 0
answers_ptr DWORD 0
opt DWORD ?
game_mode DWORD ?
count DWORD 10

.code
ValidateInput PROC
    push eax
    mov al, input_answer
    cmp al, 'a'
    je valid_input
    cmp al, 'b'
    je valid_input
    cmp al, 'c'
    je valid_input
    cmp al, 'd'
    je valid_input

    mov edx, OFFSET invalid_input_msg
    call WriteString
    call CRLF
    pop eax
    mov al, 0
    ret

valid_input:
    pop eax
    mov al, 1
    ret
ValidateInput ENDP

SinglePlayerQuiz PROC
    mov score, 0
    mov ecx, count
    mov esi, question_ptr
    mov edi, options_ptr
    mov ebx, answers_ptr
    cmp counter , 1
    je player1_game
    cmp counter , 2
    je player2_game
    jmp loooooooop
    player1_game:
    mov edx , OFFSET player1_name
    call writestring
    mov edx , OFFSET msg1
    call writestring
    call CRLF
    jmp loooooooop
    player2_game:
    mov edx , OFFSET player2_name
    call writestring
    mov edx , OFFSET msg1
    call writestring
    call CRLF
    jmp loooooooop
loooooooop:
quiz_loop:
    mov edx, esi
    call WriteString
    call CRLF
    mov edx, edi
    call WriteString
    call CRLF

input_loop:
    call ReadChar
    mov input_answer , al
    call ValidateInput
    cmp al, 0
    je input_loop

    mov al, input_answer
    cmp al, [ebx]
    jne next_question
    add score , 1

next_question:
        mov al, [esi]
        inc esi
        cmp al, 0
        jne next_question

    next_option:
        mov al, [edi]
        inc edi
        cmp al, 0
        jne next_option
        inc ebx
    loop quiz_loop

    mov edx, OFFSET score_msg
    call WriteString
    mov eax , score
    call WriteDec
    call CRLF
    ret
SinglePlayerQuiz ENDP

TwoPlayerQuiz PROC
    mov counter , 1
    call SinglePlayerQuiz
    mov player1_score , eax
    mov counter , 2
    call SinglePlayerQuiz
    mov player2_score , eax
    mov eax , player1_score
    mov ebx , player2_score
    cmp eax , ebx
    ja player1_won
    jl player2_won
    mov edx , OFFSET tie_msg
    call writestring
    call CRLF
    jmp endddddd
    player1_won:
    mov edx , OFFSET player1_name
    call writestring
    mov edx , OFFSET winner_msg
    call writestring
    call CRLF
    jmp endddddd
    player2_won:
    mov edx , OFFSET player2_name
    call writestring
    mov edx , OFFSET winner_msg
    call writestring
    call CRLF
    endddddd:
    mov counter , 3
    ret
TwoPlayerQuiz ENDP

main PROC
    mov edx, OFFSET welcome_msg
    call WriteString
    call CRLF

game_start:
    call CRLF
    mov edx, OFFSET mode_choice
    call WriteString
    call CRLF
    mov edx, OFFSET prompt_mode
    call WriteString
    call ReadDec
    mov game_mode, eax

    cmp game_mode, 1
    je single_player_mode
    cmp game_mode, 2
    je two_player_mode

    mov edx, OFFSET invalid_choice
    call WriteString
    call CRLF
    jmp game_start

single_player_mode:
    jmp category_selection

two_player_mode:
    mov edx, OFFSET player1_name_prompt
    call WriteString
    mov edx, OFFSET player1_name
    mov ecx , 29
    call ReadString
    call CRLF

    mov edx, OFFSET player2_name_prompt
    call WriteString
    mov edx,OFFSET player2_name
    mov ecx , 29
    call ReadString
    call CRLF

category_selection:
    mov edx, OFFSET categories
    call WriteString
    call CRLF
    mov edx, OFFSET prompt_category
    call WriteString
    call ReadDec
    mov opt, eax

    cmp opt, 1
    je cricket_category
    cmp opt, 2
    je physics_category
    cmp opt, 3
    je gk_category

    mov edx, OFFSET invalid_choice
    call WriteString
    call CRLF
    jmp category_selection

cricket_category:
    mov question_ptr, OFFSET cricket_questions
    mov options_ptr, OFFSET cricket_options
    mov answers_ptr, OFFSET cricket_answers
    jmp start_quiz

physics_category:
    mov question_ptr, OFFSET physics_questions
    mov options_ptr, OFFSET physics_options
    mov answers_ptr, OFFSET physics_answers
    jmp start_quiz

gk_category:
    mov question_ptr, OFFSET gk_questions
    mov options_ptr, OFFSET gk_options
    mov answers_ptr, OFFSET gk_answers
    jmp start_quiz

start_quiz:
    cmp game_mode, 1
    je single_player_start
    cmp game_mode , 2
    je two_player_start

single_player_start:
    call SinglePlayerQuiz
    jmp end_game

two_player_start:
    call TwoPlayerQuiz
    jmp end_game

end_game:
    mov edx, OFFSET play_again_msg
    call WriteString
    call ReadChar
    mov input_play_again , al
    cmp al, 'Y'
    je game_start
    cmp al, 'y'
    je game_start
    mov edx , OFFSET endingmsg
    call writestring
main ENDP
END main