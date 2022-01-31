import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/flutter_firebase_site.dart';
import 'package:talker/talker.dart';

void main() {
  _configureTalker();
  runApp(FlutterFirebaseSite());
}

void _configureTalker() {
  Talker.instance.configure(
    settings: const TalkerSettings(
      maxHistoryItems: 100,
      useConsoleLogs: kDebugMode,
      useHistory: kDebugMode,
    ),
  );
}
