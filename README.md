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

### Assignment 7

1. A widget tree is a hierarchical structure of widget that defines the layout, color, allignment of a user interface. Parents widget is broken down into child widget using child property. The child widget will inherit from the parent widget.
2. MyApp widget: configures MaterialApp, apply the app's theme, and load MyHomePage. It use several material component such as scaffold and snackbar. InfoCard widget: display user's personal information. ItemCard: dynamic button and trigger snackbar feedback.
3. MaterialApp: manage design styling, global theme, and navigation routes. This widget use several components such as scaffold and sncakbar.
4. StatelessWidget used for a static widget: MyHomePage, InfoCard, and ItemCard. StatefulWidget maintains mutable state object for widget that frequently have internal data changes.
5. BuildContext is an object to find widget's location in widget tree. This is crucial because it can access shared data or service without manually passing parameter through every layer.
6. The concept of hot reload is update the Dart source code while the Dart Virtual Machine is still running. Meanwhile, for the hot restart is destroys the existing code and restart the code from main(). The developer can not rely on hot reload when modifying main(), initstate() logic, and global or static variables.

[AI disclosure]
I use Ai assistant to help me understand further regard the class in menu.dart and main.dart.

### Assignment 8
1. Imagine the route is works as a stack concept, the top is what user will see. Navigator.push() is to add the route to the stack. Navigator.pop() is remove the route from the stack. Navigator.pushReplacement() is replace the route on the top with the new route. To go back to the home page, the program use Navigator.pushReplacement().

2. Scaffold is act as a structure for layout consistency. AppBar is for header and functional button. Drawer is a sliding page to show a shortcut: home, add project, add education. Using inheritance, Colors.indigo is inheried to main page via appbar, background's sidebar, and save button in forms.

3. Flutter using column to adjust each widget's position. Padding helps to set spacing and gap between widget.

4. GlobalKey<FormState> giving a unique sign when triggering onPressed event. validator checks input value for each answer, if it doesn't satisfy the requirement, it raise an error message. validate() function will checks all user input from validator.

[AI disclosure]
AI assistant guiding me to explain further about debugging education_form route.