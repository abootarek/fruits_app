import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/helper/navigation.dart';
import 'package:fruits/core/routing/routers.dart';
import 'package:fruits/core/widgets/show_dailod_error.dart';
import 'package:fruits/core/widgets/show_loading_dialog.dart';
import 'package:fruits/featuers/auth/register/logic/cubit/sign_up_cubit.dart';
import 'package:fruits/featuers/auth/register/logic/cubit/sign_up_state.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is SignUpLoading ||
          current is SignUpSuccess ||
          current is SignUpFailure,
      listener: (context, state) {
        if (state is SignUpLoading) {
          showLoadingDialog(context);
        } else if (state is SignUpSuccess) {
          context.pop(); //

          context.pushNamed(Routers.loginScreen);
        } else if (state is SignUpFailure) {
          context.pop(); //

          // add Lottie
          showDialogError(context, state.message);
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
