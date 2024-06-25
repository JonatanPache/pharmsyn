// import 'package:firebase_auth/firebase_auth.dart';
//
// class AuthenticationService {
//   final FirebaseAuth firebaseAuth;
//
//   AuthenticationService(this.firebaseAuth);
//
//   Future<bool> signInWithEmailAndPassword(String email, String password) async {
//     try {
//       UserCredential userCredential = await firebaseAuth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return userCredential.user != null;
//     } catch (e) {
//       print('Error signing in with email and password: $e');
//       return false;
//     }
//   }
// }




// Clase de autenticación simplificada
class AuthenticationService {
  // Función para verificar las credenciales
  Future<bool> verifyCredentials(String username, String password) async {
    // Simular una verificación de autenticación
    await Future.delayed(Duration(seconds: 1)); // Simulando una operación asíncrona

    // Verificación básica: usuario "admin", contraseña "password"
    if (username == 'admin' && password == 'password') {
      return true; // Credenciales válidas
    } else {
      return false; // Credenciales inválidas
    }
  }
}
