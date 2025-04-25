import 'package:firebase_auth/firebase_auth.dart';  

class AuthRepository {  
  final FirebaseAuth _auth = FirebaseAuth.instance;  

  Future<User?> signInWithEmailAndPassword(String email, String password) async {  
    try {  
      final result = await _auth.signInWithEmailAndPassword(  
        email: email,  
        password: password,  
      );  
      return result.user;  
    } catch (e) {  
      throw Exception('Error en autenticación: $e');  
    }  
  }  
}  