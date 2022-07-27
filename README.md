# Clock Analog

Clock analog allow you select time of day(Time Picker) to your Flutter app without dialog box.
One can add it as widgets on screen and select time.

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  clock_analog: ^0.0.3
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
