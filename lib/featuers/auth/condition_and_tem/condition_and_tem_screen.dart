import 'package:flutter/material.dart';
import 'package:fruits/core/theming/colors_app.dart';
import 'package:fruits/core/theming/style_app.dart';

class ConditionAndTemScreen extends StatelessWidget {
  const ConditionAndTemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsApp.backGroundWhite,
          centerTitle: true,
          scrolledUnderElevation: 0,
          title: Text(
            'الشروط و الأحكام',
            style: TextStyles.font19BlackBold,
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            textDirection: TextDirection.rtl,
            '''
     مرحبًا بك في تطبيقنا!

    باستخدامك لهذا التطبيق، فإنك توافق على الالتزام بالشروط والأحكام التالية:
    
    1. **الاستخدام الصحيح**  
       لا يُسمح باستخدام التطبيق لأي أنشطة غير قانونية أو ضارة.
    
    2. **الملكية الفكرية**  
       جميع الحقوق محفوظة للتطبيق. لا يحق لك نسخ أو إعادة توزيع المحتوى.
    
    3. **حماية البيانات**  
       نلتزم بحماية بياناتك الشخصية وعدم مشاركتها مع أي طرف ثالث إلا بموافقتك.
    
    4. **التحديثات**  
       قد نقوم بتعديل الشروط في أي وقت. استمرارك باستخدام التطبيق يعني موافقتك على التعديلات.
    
    5. **الدعم الفني**  
    يمكنك التواصل مع فريق الدعم عبر البريد الإلكتروني: MMM123@gmail.com

    شكرًا لاستخدامك تطبيقنا ❤️
          ''',
            style: TextStyles.font16BlackSemiBold,
            textAlign: TextAlign.right,
          ),
        ),
      ),
    );
  }
}
