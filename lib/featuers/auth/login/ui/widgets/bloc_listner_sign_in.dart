import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/helper/navigation.dart';
import 'package:fruits/core/routing/routers.dart';
import 'package:fruits/core/widgets/show_dailod_error.dart';
import 'package:fruits/core/widgets/show_loading_dialog.dart';
import 'package:fruits/featuers/auth/login/cubit/login_cubit.dart';
import 'package:fruits/featuers/auth/login/cubit/login_state.dart';

class SignInBlocListener extends StatelessWidget {
  const SignInBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listenWhen: (previous, current) =>
          current is SignInLoading ||
          current is SignInSuccess ||
          current is SignInFailure,
      listener: (context, state) {
        if (state is SignInLoading) {
          showLoadingDialog(context);
        } else if (state is SignInSuccess) {
          context.pop();
          context.pushNamed(Routers.homeScreen);
        } else if (state is SignInFailure) {
          context.pop();

          // add Lottie
          showDialogError(context, state.message);
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
