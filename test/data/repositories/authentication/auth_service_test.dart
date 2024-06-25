// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:t_store/data/repositories/authentication/auth_service.dart';
// class MockFirebaseAuth extends Mock implements FirebaseAuth {}
//
// class MockUserCredential extends Mock implements UserCredential {}
//
// void main() {
//   group('AuthenticationService', () {
//     late AuthenticationService authService;
//     late MockFirebaseAuth mockFirebaseAuth;
//
//     setUp(() {
//       mockFirebaseAuth = MockFirebaseAuth();
//       authService = AuthenticationService(mockFirebaseAuth);
//     });
//
//     test('signInWithEmailAndPassword - valid credentials', () async {
//       // Arrange
//       when(mockFirebaseAuth.signInWithEmailAndPassword(
//         email: 'dishawn5@skycrossmail.com',
//         password: '123456Y@',
//       )).thenAnswer((_) async => MockUserCredential());
//
//       // Act
//       bool result = await authService.signInWithEmailAndPassword('dishawn5@skycrossmail.com', '123456Y@');
//
//       // Assert
//       expect(result, true); // Se espera que las credenciales válidas sean aceptadas
//     });
//
//     test('signInWithEmailAndPassword - invalid credentials', () async {
//       // Arrange
//       when(mockFirebaseAuth.signInWithEmailAndPassword(
//         email: 'dishawn5@skycrossmail.com',
//         password: '123456Y',
//       )).thenThrow(FirebaseAuthException(code: 'ERROR_WRONG_PASSWORD', message: 'The password is invalid'));
//
//       // Act
//       bool result = await authService.signInWithEmailAndPassword('dishawn5@skycrossmail.com', '123456Y');
//
//       // Assert
//       expect(result, false); // Se espera que las credenciales inválidas sean rechazadas
//     });
//   });
// }


import 'package:flutter_test/flutter_test.dart';
import 'package:t_store/data/repositories/authentication/auth_service.dart';

void main() {
  group('AuthenticationService', () {
    late AuthenticationService authService;

    setUp(() {
      authService = AuthenticationService();
    });

    test('verifyCredentials - valid credentials', () async {
      // Arrange
      String username = 'admin';
      String password = 'password';

      // Act
      bool result = await authService.verifyCredentials(username, password);

      // Assert
      expect(result, true); // Se espera que las credenciales válidas sean aceptadas
    });

    test('verifyCredentials - invalid credentials', () async {
      // Arrange
      String username = 'user';
      String password = 'wrongpassword';

      // Act
      bool result = await authService.verifyCredentials(username, password);

      // Assert
      expect(result, false); // Se espera que las credenciales inválidas sean rechazadas
    });
  });
}
