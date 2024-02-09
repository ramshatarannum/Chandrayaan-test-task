# Chandrayaan 3 TDD Assessment
## Problem Statement
**Chandrayaan 3 Lunar Craft: Galactic Space Craft Control**

#### Description
As a scientist at ISRO controlling the latest lunar spacecraft Chandrayaan 3, your task is to develop a program that translates commands sent from Earth into instructions understood by the spacecraft. The spacecraft navigates through the galaxy using galactic coordinates, represented by x, y, z coordinates (x for east or west location, y for north or south location, and z for distance above or below the galactic plane).

#### Requirements
You will be given the initial starting point (x, y, z) of the spacecraft and the direction it is facing (N, S, E, W, Up, Down). The spacecraft receives a character array of commands, and you are required to implement the following functionalities:

Move the spacecraft forward/backward (f, b): The spacecraft moves one step forward or backward based on its current direction.
Turn the spacecraft left/right (l, r): The spacecraft rotates 90 degrees to the left or right, changing its facing direction.
Turn the spacecraft up/down (u, d): The spacecraft changes its angle, rotating upwards or downwards.
#### Note:

The spacecraft’s initial direction (N, S, E, W, Up, Down) represents the reference frame for movement and rotation.
The spacecraft cannot move or rotate diagonally; it can only move in the direction it is currently facing.
Assume that the spacecraft’s movement and rotations are rigid, and it cannot move beyond the galactic boundaries.
#### Example
Given the starting point (0, 0, 0) following (x, y, z) and initial direction N, the following commands should result in the indicated final position and direction:

Commands: [“f”, “r”, “u”, “b”, “l”]

Starting Position: (0, 0, 0)

Initial Direction: N

“f” - (0, 1, 0) - N
“r” - (0, 1, 0) - E
“u” - (0, 1, 0) - U
“b” - (0, 1, -1) - U
“l” - (0, 1, -1) - N
**Final Position:** (0, 1, -1)

**Final Direction:** N
## Project Setup

### Clone the Repository

To get started with the Chandrayaan 3 Lunar Craft Control project, clone the repository:

```bash
git clone https://github.com/ramshatarannum/Chandrayaan-test-task.git
```

### Navigate to the Project Directory

Change into the project directory:

```bash
cd Chandrayaan-test-task
```

### Install Dependencies

Install the necessary dependencies using Bundler:

```bash
bundle install
```

### Database Setup

Create and migrate the database:

```bash
rails db:create
rails db:migrate
```

### Run the Server

Start the Rails server:

```bash
rails server
```
or
```bash
rails s
```

## Testing

### Add RSpec to the Gemfile

Open your project's Gemfile and add the `rspec-rails` gem to the `:development, :test` group:

```ruby
gem 'rspec-rails', group: [:development, :test]
```

Install the gem:

```bash
bundle install
```

### Initialize RSpec

Generate the RSpec configuration files:

```bash
rails generate rspec:install
```

### Run RSpec

Execute RSpec to run your tests:

```bash
rspec
```
or
```bash
rspec spec/models
```

## Contribution

Thank you for exploring the Chandrayaan 3 Lunar Craft Control project! Contributions, feedback, and further exploration into space exploration in software development are welcome. Feel free to contribute and engage in the exciting journey of coding for the cosmos! 🚀 Happy coding!
