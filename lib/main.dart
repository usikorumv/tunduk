// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'features/main/presentation/screens/splash_screen.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // runApp(MaterialApp.router(routerConfig: router));

  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
