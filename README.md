# Clock Analog

Clock analog allow you select time of day to your Flutter app.

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  clock_analog: ^0.0.2
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:clock_analog/clock_analog.dart';
```

## Example

```dart
class ClockAnalog extends StatelessWidget {
  const ClockAnalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:ClockAnalog(
          initialTime: TimeOfDay.now(),
          onChanged: (value) {

          },
        ),
      ),
    );
  }
}
```
# clock_analog
