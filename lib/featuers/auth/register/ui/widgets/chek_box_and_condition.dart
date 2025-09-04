import 'package:flutter/material.dart';
import 'package:fruits/core/helper/navigation.dart';
import 'package:fruits/core/routing/routers.dart';
import 'package:fruits/core/theming/colors_app.dart';
import 'package:fruits/core/theming/style_app.dart';

class CheckBoxAndCondition extends StatefulWidget {
  const CheckBoxAndCondition({super.key, required this.onChanged});
  final ValueChanged<bool>? onChanged;

  @override
  State<CheckBoxAndCondition> createState() => _CheckBoxAndConditionState();
}

class _CheckBoxAndConditionState extends State<CheckBoxAndCondition> {
  bool isChecked = false;
  // check Condition

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(12.5, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        textDirection: TextDirection.rtl,
        children: [
          Checkbox(
            side: BorderSide(color: ColorsApp.gray, width: 1.5),
            activeColor: ColorsApp.green,
            checkColor: ColorsApp.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value ?? false;
                widget.onChanged?.call(isChecked);
              });
            },
          ),
          Expanded(
            // all Size
            child: Wrap(
              alignment: WrapAlignment.end,
              children: [
                Text(
                  'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: TextStyles.font13Gray,
                ),
                GestureDetector(
                  onTap: () {
                    context.pushNamed(Routers.conditionAndTermsScreen);
                  },
                  child: Text(
                    ' الشروط و الأحكام الخاصة بنا',
                    style: TextStyles.font13GreenSemiBold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
