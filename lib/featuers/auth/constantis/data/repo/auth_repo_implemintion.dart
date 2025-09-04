import 'package:dartz/dartz.dart';
import 'package:fruits/core/errors/custom_excption.dart';
import 'package:fruits/core/errors/failuers.dart';
import 'package:fruits/core/services/firebase_auth_services.dart';
import 'package:fruits/featuers/auth/constantis/data/model/user_model.dart';
import 'package:fruits/featuers/auth/constantis/data/repo/auth_repo.dart';
import 'package:fruits/featuers/auth/constantis/domain/entites/entitu_users.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;
  AuthRepoImpl({required this.firebaseAuthServices});
  @override
  // Sign Up
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPass(
      String email, String password, String name) async {
    try {
      final user = await firebaseAuthServices.CreateUserWithEmailAndPassword(
          email: email, password: password, name: name);

      return Right(UserModel.fromFireBase(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(
        ServerFailure('An unknown error occurred please try again later.'),
      );
    }
  }

  // Sign In
  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPass(
      String email, String password) async {
    try {
      final user = await firebaseAuthServices.SignInWithEmailAndPassword(
          email: email, password: password);

      return Right(UserModel.fromFireBase(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(
        ServerFailure('An unknown error occurred please try again later.'),
      );
    }
  }

  // Sign In With Google
  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      final user = await firebaseAuthServices.signInWithGoogle();

      return Right(UserModel.fromFireBase(user.user!));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(
        ServerFailure('An unknown error occurred please try again later.'),
      );
    }
  }
}
