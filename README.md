
# File Logger Tree for Fimber  
  
A tree for the [Fimber Flutter library](https://pub.dev/packages/flutter_fimber) that will write the logs to a File.  

## Getting started
### 1) Dependency setup
  
First import the library to your project in your `pubspec.yaml`:  
  
```yaml
  flutter_fimber_filelogger: 1.0.0
```

### 2) Import the library in your Dart code

```dart
import 'package:flutter_fimber_filelogger/flutter_fimber_filelogger.dart';
```  

### 3) Plant the tree  
  
```dart
Fimber.plantTree(FileLoggerTree());  
```  
  
## Files

The files will be stored in the `[getApplicationDocumentsDirectory]/logs` directory.

For each day, a new File will be created.
An auto-clean mechanism is available, where you have to specify the number of days to keep the files onto the disk:

```dart
Fimber.plantTree(FileLoggerTree(numberOfDays: 5));  
```  