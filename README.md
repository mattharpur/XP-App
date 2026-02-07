# EXP-App (UGAHacks Project)

## Project Overview

EXP-App is an iOS mobile to-do list application built with SwiftUI for
UGAHacks. The app allows users to create, track, and complete tasks
while viewing their completion progress through a circular indicator on
the home screen.

**Team Members:** - Matthew Harpur - Tyler Stewart 

**Tier:** Intermediate --- Mobile App

## Features

-   Create, complete, and delete to-do items
-   Real-time progress indicator based on completed tasks
-   Light/Dark mode toggle
-   Persistent data storage --- tasks remain saved after the app is
    closed
-   Multi-view layout using tabs and navigation
-   Custom app icon and UI styling
-   Profile page scaffold for future login functionality

## Technical Implementation

-   Built using SwiftUI in Xcode
-   Uses a `TodoStore` class to manage shared app state
-   Data persistence implemented with `JSONEncoder` and `JSONDecoder`
    via `saveTodos` and `loadTodos`
-   Shared state across views using `@EnvironmentObject`
-   Local storage used to retain user data between app launches

## Challenges & Lessons Learned

### Challenges

-   Setting up Git with Xcode and managing branches
-   Implementing persistent data storage
-   Synchronizing state across multiple views

### What We Learned

-   Using Git with Xcode
-   SwiftUI syntax and view structure
-   Deploying apps to a physical iPhone
-   Conceptually designing widgets for iOS (not actaully implemented)
-   Working with structs, classes, and functions in Swift
-   Building UI layouts in SwiftUI

## AI Usage

**Tool:** ChatGPT\
**Purpose:** Git commands, debugging, and understanding Swift/SwiftUI
syntax

## Project Timeline

### Friday

-   Set up GitHub repository and Xcode project
-   Began development of the core app structure

### Saturday

-   Completed core to-do list functionality
-   Implemented progress indicator and dark mode
-   Added persistent storage
-   Designed a profile page (login not implemented due to time
    constraints)
-   Submitted the project

### Sunday

-   No additional changes --- project already submitted
