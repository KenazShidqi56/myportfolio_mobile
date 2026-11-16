# myportfolio_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Tugas 7

1. A widget tree is a hierarchical structure of widget that defines the layout, color, allignment of a user interface. Parents widget is broken down into child widget using child property. The child widget will inherit from the parent widget.
2. MyApp widget: configures MaterialApp, apply the app's theme, and load MyHomePage. It use several material component such as scaffold and snackbar. InfoCard widget: display user's personal information. ItemCard: dynamic button and trigger snackbar feedback.
3. MaterialApp: manage design styling, global theme, and navigation routes. This widget use several components such as scaffold and sncakbar.
4. StatelessWidget used for a static widget: MyHomePage, InfoCard, and ItemCard. StatefulWidget maintains mutable state object for widget that frequently have internal data changes.
5. BuildContext is an object to find widget's location in widget tree. This is crucial because it can access shared data or service without manually passing parameter through every layer.
6. The concept of hot reload is update the Dart source code while the Dart Virtual Machine is still running. Meanwhile, for the hot restart is destroys the existing code and restart the code from main(). The developer can not rely on hot reload when modifying main(), initstate() logic, and global or static variables.

[AI disclosure]
I use Ai assistant to help me understand further regard the class in menu.dart and main.dart.