// abstract class
import 'package:dartz/dartz.dart';
import 'package:fruits/core/errors/failuers.dart';
import 'package:fruits/featuers/auth/constantis/domain/entites/entitu_users.dart';

abstract class AuthRepo {
  // Sign Up
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPass(
      String email, String password, String name);
  // Sign In
  Future<Either<Failure, UserEntity>> signInWithEmailAndPass(
      String email, String password);
  // Sign With Google
  Future<Either<Failure, UserEntity>> signInWithGoogle();
}
