import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/featuers/auth/constantis/data/repo/auth_repo.dart';
import 'package:fruits/featuers/auth/register/logic/cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpState.initial());

  final AuthRepo authRepo;

  // Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> signUp() async {
    // تحقق من الفورم
    if (!formKey.currentState!.validate()) return;

    emit(SignUpState.loading());

    final result = await authRepo.createUserWithEmailAndPass(
      emailController.text.trim(),
      passwordController.text.trim(),
      nameController.text.trim(),
    );

    result.fold(
      (failure) => emit(SignUpState.failure(failure.message)),
      (user) => emit(SignUpState.success(user)),
    );
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    return super.close();
  }
}
