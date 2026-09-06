# Soe Myint | Flutter Portfolio

A responsive personal portfolio built with Flutter. The site presents Soe Myint's introduction, skills, projects, and contact details in a single scrollable experience that adapts to desktop and mobile layouts.

## Features

- Responsive desktop and mobile navigation
- Introduction and profile section
- Skills section with responsive layouts
- Project cards with repository and web links
- Contact form interface
- Social links for GitHub, LinkedIn, Facebook, Instagram, and Telegram
- Flutter web support with bundled project and social-media assets

## Projects

The portfolio currently showcases:

- **OfficeEase**: A multilingual learning platform for Microsoft Word, PowerPoint, and Excel.
- **Tic Tac Toe**: A terminal-based Python game for two players.

Project metadata and links are maintained in [`lib/utils/project_utils.dart`](lib/utils/project_utils.dart). Images are stored in [`assets/projects/`](assets/projects/).

## Requirements

- Flutter SDK with Dart `3.12.2` or later
- A configured Flutter device or browser

Check the local Flutter installation with:

```bash
flutter doctor
```

## Getting Started

1. Clone the repository and enter the project directory.
2. Install the Flutter dependencies:

	 ```bash
	 flutter pub get
	 ```

3. Run the application:

	 ```bash
	 flutter run -d chrome
	 ```

	 To run on a connected mobile or desktop device, replace `chrome` with the device name or omit `-d` and select a target interactively.

## Build

Build a production web bundle with:

```bash
flutter build web
```

The generated files are written to `build/web`.

## Project Structure

```text
lib/
	constants/   Theme colors, sizes, navigation, skills, and social links
	pages/       Page-level widgets
	styles/      Shared styling
	utils/       Project data and helper models
	widgets/     Responsive sections and reusable UI components
	main.dart    Application entry point
assets/
	projects/    Project artwork used by the portfolio cards
```

## Current Notes

- The Blog navigation item is reserved for a future page.
- The contact form is currently a visual interface; its submit button does not send messages to a backend.
- Social links and project links are configured in the constants and utility files under `lib/`.

## Flutter Resources

- [Flutter documentation](https://docs.flutter.dev/)
- [Flutter cookbook](https://docs.flutter.dev/cookbook)
- [Dart documentation](https://dart.dev/guides)
