import 'package:e_commerce_app/constance.dart';
import 'package:e_commerce_app/view/view_auth/login_screen.dart';
import 'package:e_commerce_app/view/widgets/custom_button.dart';
import 'package:e_commerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(elevation: 0.0, backgroundColor: primaryColor,
          automaticallyImplyLeading: false,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: [
              CustomText(text: "we will add this feature as soon as possible", color: primaryColor, alignment: Alignment.center, fontsize: 20,),
              CustomButton(
                  OnPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                  text: "Back to login screen")
            ],
          ),
        ),
      ),
    );
  }
}
