import 'package:flutter/widgets.dart';
import 'package:fruits/core/helper/app_regx.dart';
import 'package:fruits/core/widgets/text_form_field_app.dart';

class FormFieldForgetPassword extends StatelessWidget {
  const FormFieldForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      keyboardType: TextInputType.phone,
      hintText: 'رقم الهاتف',
      textDirection: TextDirection.rtl,
      validator: (String? value) {
        if (value == null ||
            value.isEmpty ||
            !AppRegex.isPhoneNumberValid(value)) {
          return 'يرجى إدخال رقم الهاتف';
        }
        return null;
      },
    );
  }
}