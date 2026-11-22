 
# 🎬 Netflix Clone – Flutter

A Netflix-inspired movie streaming application built using **Flutter and Dart**, focusing on advanced Flutter development concepts, scalable application architecture, and clean code practices.

This project was developed as an advanced Flutter learning project to explore real-world application development beyond basic UI implementation. It demonstrates modular architecture, reusable widgets, state management, REST API integration, dependency injection, and structured error handling.

## ✨ Features

- **Home Screen:** Netflix-inspired movie browsing interface with featured content and movie collections.
- **Hot & New:** Dedicated section for exploring upcoming and newly released movies and shows.
- **Fast Laughs:** Entertainment-focused section with short-form video content.
- **Search:** Search for movies using remote API integration.
- **Downloads:** Movie discovery interface for exploring popular movie content.
- **Reusable UI Components:** Custom widgets for movie posters, titles, buttons, app bars, and other common UI elements.
- **Bottom Navigation:** Navigation between different application sections while maintaining their widget state.

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| Flutter | Cross-platform UI development |
| Dart | Application programming language |
| BLoC / flutter_bloc | State management |
| Freezed | Immutable models and state management |
| Dio | REST API integration and HTTP requests |
| Dartz (Either) | Functional error handling |
| GetIt | Dependency management |
| Injectable | Dependency injection and code generation |
| JSON Serializable | JSON serialization and deserialization |
| Cached Network Image | Efficient network image loading |
| Google Fonts | Custom typography |
| Video Player | Video playback support |

## 🏗️ Project Architecture

The application follows a modular, layered architecture to maintain separation of concerns and improve code organization, scalability, and maintainability.

### Folder Structure

```text
lib/
│
├── bloc/
│   ├── downloads_bloc/
│   ├── fast_laugh_bloc/
│   └── search_bloc/
│
├── core/
│   ├── constants/
│   ├── debouncer/
│   ├── di/
│   └── failures/
│
├── domain/
│   ├── downloads/
│   └── search/
│
├── infrastructure/
│   ├── downloads_service/
│   └── search_service/
│
├── presentation/
│   ├── bottomNavigation/
│   ├── downloads/
│   ├── fastLaughs/
│   ├── home/
│   ├── homeScreen/
│   ├── hotAndNew/
│   ├── search/
│   └── widgets/
│
├── main.dart
├── movies.dart
└── tv_shows.dart
```

### Architecture Overview

- **Presentation Layer:** Handles the UI, screens, navigation, and reusable widgets.
- **BLoC Layer:** Manages application state and handles user interactions through events and states.
- **Domain Layer:** Organizes application models and domain-related data structures.
- **Infrastructure Layer:** Handles API communication, service implementations, and remote data retrieval.
- **Core Layer:** Contains shared constants, dependency injection configuration, failure definitions, and utility classes.

## 🔄 State Management & Dependency Injection

- Implemented **BLoC architecture** to separate business logic from the presentation layer.
- Used **Freezed** to define immutable state and event classes.
- Integrated **GetIt and Injectable** for dependency registration and service management.
- Used dependency injection to provide BLoC instances and services throughout the application.

## 🌐 API Integration & Error Handling

Integrated the **The Movie Database (TMDB) API** to retrieve movie information and support movie search functionality.

- Used Dio for HTTP requests and API communication.
- Implemented service abstractions to separate API logic from UI components.
- Used JSON serialization to convert API responses into Dart models.
- Applied the Either pattern using Dartz to represent successful responses and failures.
- Organized failure handling using custom failure classes.

## 🚀 Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- Android Studio or VS Code
- TMDB API account and API key

### Installation

**1. Clone the repository**

```bash
git clone https://github.com/sukreth116/netflix-clone.git
```

**2. Navigate to the project directory**

```bash
cd netflix-clone
```

**3. Install dependencies**

```bash
flutter pub get
```

**4. Configure TMDB API credentials**

Obtain an API key from [The Movie Database](https://www.themoviedb.org/).

Configure the API key and relevant API endpoints in the application's API configuration.

For security, use a local configuration or environment-based setup and do not commit private credentials to GitHub.

**5. Generate required code**

```bash
dart run build_runner build --delete-conflicting-outputs
```

**6. Run the application**

```bash
flutter run
```

## 📚 Learning Outcomes

Through this project, I gained practical experience with:

- Building scalable Flutter applications using modular architecture.
- Designing reusable widgets and maintaining a structured folder hierarchy.
- Implementing BLoC state management with events and immutable states.
- Working with Freezed and code generation.
- Integrating REST APIs using Dio.
- Implementing functional error handling using the Either pattern.
- Managing dependencies using GetIt and Injectable.
- Handling asynchronous operations and API responses.
- Separating presentation, business logic, and data-handling responsibilities.

## 🎯 Project Purpose

This project is primarily an advanced Flutter learning project created to strengthen my understanding of production-oriented application architecture, state management, API integration, and maintainable mobile application development.

## 👨‍💻 Developer

**Sukreth O M**

- GitHub: [@sukreth116](https://github.com/sukreth116)
- Project Repository: [Netflix Clone](https://github.com/sukreth116/netflix-clone)

---

*This is an educational project inspired by Netflix's user interface and browsing experience. It is not affiliated with or endorsed by Netflix.*
