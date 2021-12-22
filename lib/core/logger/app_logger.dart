import 'package:logging/logging.dart';

mixin AppLogger {
  Logger get log =>  Logger('$runtimeType');
}