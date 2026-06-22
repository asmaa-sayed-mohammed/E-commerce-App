import 'package:e_commerce_app/constance.dart';
import 'package:e_commerce_app/view/view_auth/login_screen.dart';
import 'package:e_commerce_app/view/widgets/custom_button.dart';
import 'package:e_commerce_app/view/widgets/custom_text.dart';
import 'package:e_commerce_app/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(elevation: 0.0, backgroundColor: primaryColor,
          leading: IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              icon: Icon(Icons.arrow_back_ios_new)
          ),
        ),),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
        child: Column(
          spacing: 10,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "Welcome,", fontsize: 30),
                CustomText(text: "Register", color: primaryColor, fontsize: 18),
              ],
            ),
            CustomText(text: "Register to continue", color: Colors.grey, fontsize: 14,),
            SizedBox(height: 20,),
            CustomTextField(text: "Email", hint: "example@gmail.com"),
            SizedBox(height: 10,),
            CustomTextField(text: "Password", hint: "******"),
            SizedBox(height: 10,),
            CustomTextField(text: "confirm your password", hint: "******"),
            SizedBox(height: 10,),
            CustomButton(OnPressed: (){}, text: "Register"),
            TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: CustomText(
                  text: "already have an account?",
                  color: Colors.grey,
                  alignment: Alignment.center,
                  fontsize: 14,)
            )
          ],
        ),
      ),
    );
  }
}
