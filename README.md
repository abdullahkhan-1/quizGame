# Ultimate Quiz Game - README

Welcome to the **Ultimate Quiz Game** repository! This project is an interactive quiz game written in **x86 Assembly Language**, using the Irvine32 library. The game supports **single-player** and **two-player** modes and offers a variety of quiz categories.

---

## How to Use the Code

### Prerequisites
1. Install a compatible **x86 Assembly language development environment** (e.g., MASM).
2. Ensure the **Irvine32.inc** and related Irvine libraries are correctly installed.
3. Use a **32-bit Windows environment** or an appropriate emulator.

---

## Features
- **Two game modes:** Single Player and Two Players.
- **Three quiz categories:**
  - Cricket
  - Physics
  - General Knowledge
- Scoring and result announcement.
- Input validation for player responses.
- Option to replay the game.

---

## Step-by-Step Guide

### 1. Compilation and Setup
- Compile the code using MASM or an appropriate assembler:
  ```bash
  ml /c /coff QuizGame.asm
  link /subsystem:console QuizGame.obj Irvine32.lib
  ```
- Ensure all library dependencies (e.g., Irvine32.lib) are available in the same directory or correctly linked.

### 2. Run the Program
- Execute the compiled `.exe` file in a 32-bit Windows environment.

### 3. Starting the Game
- A welcome message will greet you.
- Choose the game mode:
  - **1** for Single Player.
  - **2** for Two Players.

### 4. Enter Player Details (Two-Player Mode Only)
- Enter the names for Player 1 and Player 2 when prompted.

### 5. Choose a Category
- Select a quiz category by entering the corresponding number:
  - **1** for Cricket.
  - **2** for Physics.
  - **3** for General Knowledge.

### 6. Answer Questions
- A series of multiple-choice questions will be displayed.
- Input your answer as **a, b, c, or d**.
- Invalid inputs will prompt you to try again.

### 7. Scoring
- For single-player mode:
  - Your final score is displayed after all questions.
- For two-player mode:
  - Each player’s score is calculated separately.
  - The game announces the winner or a tie.

### 8. Play Again
- At the end of the game, you'll be asked if you want to play again:
  - Enter **Y/y** to restart the game.
  - Enter any other key to exit.

---

## Code Overview

### Key Procedures
- **ValidateInput:** Ensures player answers are valid (a, b, c, or d).
- **SinglePlayerQuiz:** Handles gameplay for single-player mode.
- **TwoPlayerQuiz:** Handles gameplay for two-player mode, including comparing scores.

### Key Data Segments
- **Categories and Questions:** Organized into arrays for Cricket, Physics, and General Knowledge.
- **Options and Answers:** Corresponding options and correct answers for each category.

---

## Notes
- Input is case-sensitive for "Yes" or "No" responses (e.g., **Y** or **N**).
- Invalid inputs in any step will prompt the user to retry.
- The game loop allows multiple rounds without restarting the program.

---

Enjoy the **Ultimate Quiz Game**! 🎮
