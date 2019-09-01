import 'package:flutter_fimber/flutter_fimber.dart';
import 'package:flutter_fimber_filelogger/flutter_fimber_filelogger.dart';

void main() {
  Fimber.plantTree(
      FileLoggerTree(levels: FileLoggerLevels.ALL, numberOfDays: 5));
}
