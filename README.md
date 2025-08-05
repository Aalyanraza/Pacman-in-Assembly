# 🎮 PacMan Game - Assembly Language Implementation

A classic PacMan game implementation using Assembly Language (8086) in Visual Studio with MASM615, featuring three progressive difficulty levels, AI-powered ghost movement, and comprehensive file handling for score management.

## 📋 Table of Contents
- [Features](#features)
- [Game Levels](#game-levels)
- [Screenshots](#screenshots)
- [Technical Specifications](#technical-specifications)
- [Installation & Setup](#installation--setup)
- [How to Play](#how-to-play)
- [Game Controls](#game-controls)
- [File Structure](#file-structure)
- [Development Guidelines](#development-guidelines)
- [Scoring System](#scoring-system)
- [Contributing](#contributing)

## ✨ Features

- **Three Progressive Levels**: Each with unique challenges and complexity
- **AI Ghost Movement**: Intelligent ghost behavior with different personalities
- **Lives System**: Strategic gameplay with three lives per game
- **Power Pellets**: Temporary ghost-eating ability with time-limited effects
- **File Handling**: Persistent high score storage with player names
- **Sound Effects**: Immersive audio experience
- **Custom Graphics**: Hand-drawn maze layouts and character sprites
- **Pause Functionality**: Game state management
- **Multiple Screen Types**: Welcome, menu, gameplay, instructions, and high scores

## 🎯 Game Levels

### Level 1: The Beginning
- **Objective**: Collect all dots in a straightforward maze
- **Ghost Behavior**: Basic chasing patterns, predictable movement
- **Features**: Simple navigation, no power pellets
- **Difficulty**: Beginner-friendly introduction

### Level 2: The Challenge
- **Objective**: Collect dots and strategically eat fruit bonuses
- **Ghost Behavior**: Introduction of Pinky with unpredictable movements
- **Features**: Power pellets (20-second ghost-eating ability), bonus fruits
- **Difficulty**: Intermediate with strategic elements

### Level 3: The Showdown
- **Objective**: Navigate complex maze with teleportation and hidden shortcuts
- **Ghost Behavior**: Coordinated AI with Inky and Clyde, boss ghost encounter
- **Features**: Cherry power-ups (extra life), faster ghosts, higher point values
- **Difficulty**: Advanced with ultimate challenge

## 📸 Screenshots

### Loading Screen
![alt text](<Screenshot 2025-08-05 133731.png>)

### Main Menu
![alt text](<Screenshot 2025-08-05 133746.png>)

### Gameplay
![alt text](<Screenshot 2025-08-05 133803.png>)

## 🔧 Technical Specifications

- **Language**: Assembly Language (8086)
- **Development Environment**: Visual Studio with MASM615
- **Screen Resolution**: 640x480 pixels
- **Graphics Library**: Irvine Library (input/graphics only)
- **File Handling**: Custom implementation for score persistence
- **Sound System**: Integrated audio features

## 🚀 Installation & Setup

### Prerequisites
- Visual Studio with MASM615 support
- Irvine Library installed
- Windows operating system

### Setup Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/pacman-assembly.git
   ```
2. Open the project in Visual Studio
3. Ensure MASM615 is properly configured: https://www.youtube.com/watch?v=4XH_iEehGZ0&ab_channel=DailyProgramming
4. Build and run the project

## 🎮 How to Play

1. **Start Game**: Launch the executable and enter your name
2. **Navigation**: Use arrow keys to move PacMan through the maze
3. **Collect Dots**: Gather all dots to advance to the next level
4. **Avoid Ghosts**: Navigate carefully to avoid losing lives
5. **Power Pellets**: Eat special pellets to temporarily consume ghosts
6. **Score Points**: Collect fruits and defeat ghosts for bonus points

## 🎯 Game Controls

- **Arrow Keys**: Move PacMan (Up, Down, Left, Right)
- **P Key**: Pause/Resume game
- **ESC Key**: Return to main menu
- **Enter**: Confirm selections in menus

## 📁 File Structure

```
PacManGame/
├── main.asm              # Main game logic and entry point
├── graphics.asm          # Graphics rendering procedures
├── gamelogic.asm         # Game mechanics and collision detection
├── ghost_ai.asm          # Artificial intelligence for ghost movement
├── file_handler.asm      # Score and player data management
├── sound.asm             # Audio system implementation
├── levels/
│   ├── level1.asm        # Level 1 specific code
│   ├── level2.asm        # Level 2 specific code
│   └── level3.asm        # Level 3 specific code
├── assets/
│   ├── sounds/           # Game audio files
│   └── sprites/          # Character and UI graphics
└── data/
    └── highscores.txt    # Persistent score storage
```

## 🛠️ Development Guidelines

### Code Standards
- **Well-commented code**: Clear explanations for complex logic
- **Meaningful variable names**: Self-documenting identifiers
- **Proper indentation**: Consistent code formatting
- **Modular design**: Separate procedures for different functionalities

### Key Procedures
- `MainMenu`: Main menu interface and navigation
- `Level1/Level2/Level3`: Individual level implementations
- `DrawPlayer`: Player character rendering
- `DrawGhost`: Ghost sprite management
- `DrawEatables`: Dot and power pellet graphics
- `RandomPlayerPosition`: Spawn point management

### Technical Constraints
- **No high-level directives**: Avoid if-else, while loops
- **Stack-based parameters**: Use push/pop for procedure calls
- **Irvine Library only**: Limited to specified graphics functions
- **Custom wall patterns**: Based on roll number algorithm

## 📊 Scoring System

- **Dots**: 10 points each
- **Power Pellets**: 50 points each
- **Ghosts (powered mode)**: 200-800 points (increasing value)
- **Fruit Bonuses**: 100-1000 points (level dependent)
- **Bonus Lives**: Cherry collection in Level 3

## 🏆 High Score System

The game features persistent high score tracking with:
- Player name storage
- Sorted score display
- File-based data persistence
- Top player rankings

## 🎵 Audio Features

- Background music for each level
- Sound effects for:
  - Dot collection
  - Power pellet consumption
  - Ghost encounters
  - Level completion
  - Game over scenarios

## 🐛 Error Handling

- Input validation for player names
- Collision detection accuracy
- File I/O error management
- Memory allocation safety
- Game state consistency checks

## 🤝 Contributing

This project was developed as part of the Computer Organization & Assembly Language course (Fall 2023). While primarily an academic project, contributions for educational purposes are welcome.

### Development Process
1. Fork the repository
2. Create a feature branch
3. Implement changes following coding standards
4. Test thoroughly across all levels
5. Submit pull request with detailed description

## 📝 License

This project is developed for educational purposes as part of the COAL course curriculum. Please respect academic integrity guidelines when referencing or building upon this work.

## 🙏 Acknowledgments

- Course: Computer Organization & Assembly Language (Fall 2023)
- Development Environment: Visual Studio with MASM615
- Graphics Support: Irvine Library
- Inspiration: Classic PacMan arcade game

---

