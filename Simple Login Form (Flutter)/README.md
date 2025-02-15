# Flutter Login Form

This Flutter project demonstrates how to properly space widgets using `SizedBox` and manage padding inside `TextField` using `contentPadding`. It also includes custom font integration for styling the app.

## Features
- Uses `SizedBox` for spacing between widgets.
- Implements `contentPadding` for proper padding inside `TextField`.
- Custom font **GreatVibes-Regular** applied to the title text.

## Installation

### 1. Clone the Repository
```sh
git clone https://github.com/Shema-glitch/flutter_repo.git
cd <repository_name>
```

### 2. Add Font Asset
Download **GreatVibes-Regular.ttf** from [Google Fonts](https://fonts.google.com/specimen/Great+Vibes) and place it in the `assets/fonts/` directory.

### 3. Update `pubspec.yaml`
Modify `pubspec.yaml` to register the font:

```yaml
flutter:
  fonts:
    - family: GreatVibes
      fonts:
        - asset: assets/fonts/GreatVibes-Regular.ttf
```

Run:
```sh
flutter pub get
```

### 4. Run the App
```sh
flutter run
```

## Fixing Asset Loading Issues
If fonts or assets are not loading correctly, try the following:
```sh
flutter clean
flutter pub get
```
This refreshes the project and ensures all dependencies are properly loaded.

## Implementation Overview

### Spacing Widgets with `SizedBox`
To add spacing between widgets, use `SizedBox` with `height` for vertical spacing and `width` for horizontal spacing.

```dart
SizedBox(height: 20),
SizedBox(width: 10),
```

### Padding Inside `TextField`
To adjust padding inside a `TextField`, use `contentPadding`:

```dart
TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Username',
    contentPadding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 15.0),
  ),
),
```

Now your project is set up with proper spacing, padding, and custom font! 🚀

