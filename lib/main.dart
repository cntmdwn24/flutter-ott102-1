import 'package:flutter/material.dart';
import 'package:ott102/data/repositories/shared_pref_repository.dart';
import 'package:ott102/presentation/screens/launch_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

late final SharedPrefRepository sharedPrefRepository;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  sharedPrefRepository = SharedPrefRepository(await SharedPreferences.getInstance());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LaunchScreen());
  }
}
