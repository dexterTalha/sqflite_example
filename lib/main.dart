import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sqflite_example/db/sqflite_helper.dart';
import 'package:sqflite_example/screens/auth/auth_provider.dart';
import 'package:sqflite_example/screens/auth/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //home work
  Provider.debugCheckInvalidValueType = null;
  SqfLiteHelper.initDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthProvider>(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
