import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/featuers/auth/constantis/data/repo/auth_repo.dart';
import 'package:fruits/featuers/auth/login/cubit/login_state.dart';

class SignInCubit extends Cubit<SignInState> {
  final AuthRepo authRepo;

  SignInCubit(this.authRepo) : super(SignInState.initial());
  // Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  Future<void> signIn() async {
    if (!formKey.currentState!.validate()) return;

    emit(SignInState.loading());

    final result = await authRepo.signInWithEmailAndPass(
      emailController.text.trim(),
      passwordController.text.trim(),
    );

    result.fold(
      (failure) => emit(SignInState.failure(failure.message)),
      (user) => emit(SignInState.success(user)),
    );
  }

  // Sign in with Google
  Future<void> signInWithGoogle() async {
    emit(SignInState.loading());

    final result = await authRepo.signInWithGoogle();

    result.fold(
      (failure) => emit(SignInState.failure(failure.message)),
      (user) => emit(SignInState.success(user)),
    );
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    formKey.currentState?.dispose();
    return super.close();
  }
}
