import 'package:flutter/material.dart';

import 'app/app.dart';
import 'bootstrap/bootstrap.dart';

Future<void> main() async {
  await Bootstrap.initialize();

  runApp(const OnyxApp());
}
