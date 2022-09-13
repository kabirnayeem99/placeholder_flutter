import 'package:flutter/material.dart';

import 'app/servicelocator/dependency.dart';
import 'app/servicelocator/servicelocator.dart';
import 'presentation/app.dart';

void main() async {
  DependencyCreator.init();
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const PlaceholderApp());
}
