import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits/featuers/auth/constantis/domain/entites/entitu_users.dart';

class UserModel extends UserEntity {
  UserModel(
      {required super.fullName, required super.email, required super.password});

  factory UserModel.fromFireBase(User user) {
    return UserModel(
      fullName: user.displayName ?? '',
      email: user.email ?? '',
      password:
          user.uid ?? 'password', // You may want to handle password differently
    );
  }
}
