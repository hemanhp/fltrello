import 'dart:async';

import 'package:fltrello/core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GlobalErrorHandler with AppLogger{
  GlobalErrorHandler({required Widget child}){
    if(kReleaseMode){
      ErrorWidget.builder = (_) => const SizedBox();
    }

    FlutterError.onError = _handleFlutterError;

    runZonedGuarded((){

      WidgetsFlutterBinding.ensureInitialized();

      runApp(child);
    }, (error, stack){
      log.severe(error);
    });

  }

  void _handleFlutterError(FlutterErrorDetails details) {
    log.severe("flutter error occurred");
    if(kReleaseMode){
      Zone.current.handleUncaughtError(details.exception, details.stack!);
    }
    else{
      FlutterError.dumpErrorToConsole(details);
    }
  }
}