import 'package:e_commerce_app/constance.dart';
import 'package:e_commerce_app/view/widgets/custom_button.dart';
import 'package:e_commerce_app/view/widgets/custom_text.dart';
import 'package:e_commerce_app/view/widgets/custom_text_fiekd.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0.0, backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          spacing: 10,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "Welcome,", fontsize: 30),
                CustomText(text: "Sign UP", color: primaryColor, fontsize: 18),
              ],
            ),
            CustomText(text: "sign in to continue", color: Colors.grey, fontsize: 14,),
            SizedBox(height: 20,),
            CustomTextField(text: "Email", hint: "example@gmail.com", onSave: (value){}, validator: (value){},),
            SizedBox(height: 10,),
            CustomTextField(text: "Password", hint: "*******", onSave: (value){}, validator: (value){},),
            CustomText(text: "Forgot Password?", fontsize: 14, color: Colors.grey, alignment: Alignment.topRight,),
            SizedBox(height: 10,),
            CustomButton(OnPressed: (){}, text: "SIGN IN"),

            CustomText(text: "-OR-", alignment: Alignment.center, color: Colors.grey, fontsize: 20,),
            CustomButton(
              OnPressed: (){},
              textColor: Colors.black,
              text: "Sign in using Google",
              icon: Icon(Icons.account_circle_sharp, size: 30,),
              backGroundColor: Colors.grey.shade300,

            ),
            CustomButton(
              OnPressed: (){},
              textColor: Colors.black,
              text: "Sign in using Facebook",
              icon: Icon(Icons.facebook_outlined, color: Colors.blueAccent, size: 30,),
              backGroundColor: Colors.grey.shade300,
            ),
          ],
        ),
      ),
    );
  }
}

/** --Editing in Ui--
 * color for hint text must be grey
 * make forgot password more clear
 */
