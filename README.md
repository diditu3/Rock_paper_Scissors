# Flutter Rock-Paper-Scissors Game

A simple practice project built in Flutter to create a Rock-Paper-Scissors game. It focuses on practicing basic state management, handling user click events, and working with async Timers.

## How it works
* **Player Selection:** Clicking one of the lower image assets (`0` for Rock, `1` for Paper, `2` for Scissors) triggers your selection.
* **Delayed AI Turn:** An asynchronous `Timer` introduces a 1-second delay before the computer randomly throws its move using `Random().nextInt(3)`.
* **Game Logic:** Compares choices to evaluate wins, losses, or ties, dynamically incrementing the persistent tracking scoreboard on screen.

## Project Structure
* `main.dart` - Standard application bootstrapper pointing directly to the main layout.
* `HomePage.dart` - Controls the core visual layout grid, win/loss state properties, and operational game logic loops.
* `assets/images/` - Target path holding the game graphics (`0.png`, `1.png`, `2.png`, and a placeholder asset `3.png`).

## How to run it
1. Make sure you map your image assets correctly inside your local `pubspec.yaml` file.
2. Resolve packages: `flutter pub get`
3. Launch on your emulator or connected device: `flutter run`
