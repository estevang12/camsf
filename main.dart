import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cams_f/core/auth/auth_bloc.dart'; // Ejemplo de import

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Inicializa Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Configuración desde flutterfire_cli
  );

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc(AuthRepository())),
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
      home: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is Authenticated) {
            return const HomeScreen(); // Pantalla post-login
          }
          return const LoginScreen(); // Pantalla de inicio
        },
      ),
    );
  }
}