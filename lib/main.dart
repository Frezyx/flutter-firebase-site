import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/flutter_firebase_site.dart';
import 'package:talker/talker.dart';

void main() {
  Talker.instance.configure(
    settings: const TalkerSettings(maxHistoryItems: 100),
  );
  runApp(FlutterFirebaseSite());
}
