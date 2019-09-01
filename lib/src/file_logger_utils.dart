import 'dart:async';
import 'dart:io';

class FileLoggerUtils {
  const FileLoggerUtils._();

  /// List the content of a directory [dir]
  static Future<List<FileSystemEntity>> listDirContentsAsync(Directory dir) {
    var files = <FileSystemEntity>[];
    var completer = Completer<List<FileSystemEntity>>();
    var lister = dir.list(recursive: false);
    lister.listen((file) => files.add(file),
        onDone: () => completer.complete(files));
    return completer.future;
  }

  /// Returns if two [DateTime] are on the same day
  static bool isSameDay(DateTime d1, DateTime d2) {
    return d1.day == d2.day && d1.month == d2.month && d1.year == d2.year;
  }
}
