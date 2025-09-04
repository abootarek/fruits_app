import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits/core/errors/custom_excption.dart';

class FirebaseAuthServices {
  // Create a new user with email and password
  Future<User> CreateUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException('The account already exists for that email.');
      } else {
        throw CustomException(
            'An unknown error occurred please try again later.');
      }
    } catch (e) {
      throw CustomException(
          'An unknown error occurred please try again later.');
    }
  }

// Sign in with email and password
  Future<User> SignInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw CustomException('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw CustomException('Wrong password provided.');
      } else {
        throw CustomException(
            'An unknown error occurred please try again later.');
      }
    } catch (e) {
      throw CustomException(
          'An unknown error occurred please try again later.');
    }
  }

  // Sign In With Google
  Future<UserCredential> signInWithGoogle() async {
    final googleProvider = GoogleAuthProvider();

    googleProvider.addScope('email');
    googleProvider.addScope('profile');

    return await FirebaseAuth.instance.signInWithProvider(googleProvider);
  }
}
