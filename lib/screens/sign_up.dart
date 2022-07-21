// ignore: file_names
import 'package:chat_app/widgets/text_field_input.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        alignment: Alignment.center,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldInput(
                textEditingController: emailController,
                hintText: "Enter your Email",
                textInputType: TextInputType.emailAddress),
            const SizedBox(
                  height: 20,
                ),
            TextFieldInput(textEditingController: passwordController,
               hintText: "Enter your Password",
                textInputType:TextInputType.text,
                isPass: true),
                const SizedBox(
                  height:20 ,
                ),
             Container(
               padding: const EdgeInsets.symmetric(vertical: 12),
              alignment: Alignment.center,
              decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),),
              color: Colors.blue),
              width: double.infinity,
               child: MaterialButton(onPressed: (){},
               child: const Text("Register"),),
             ),
            


          ],
        ),
      ),
    );
  }
}
