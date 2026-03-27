import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'auth_repository.dart';
import 'lib/bloc/auth_bloc.dart';
import 'lib/screens/login_screen.dart';
import 'lib/screens/register_screen.dart';
import 'lib/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthBloc(AuthRepository())),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CAMS-F Framework',
      initialRoute: '/',
      routes: {
        '/': (context) => BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                if (state is Authenticated) return const HomeScreen();
                return const LoginScreen();
              },
            ),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
