import 'package:flutter/material.dart';
import 'package:wechat/component/my_button.dart';
import 'package:wechat/component/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confpassController = TextEditingController();
  void register() {
    //login action here
  }
  final void Function()? onTap;
  RegisterPage({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 25),
            //welcome back message
            Text(
              "Let's create an account",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 25),

            //email text field
            MyTextFiled(
              hintText: "Email",
              obscured: false,
              controller: _emailController,
            ),
            const SizedBox(height: 15),
            //password text field
            MyTextFiled(
              hintText: "Password",
              obscured: true,
              controller: _passwordController,
            ),
            MyTextFiled(
              hintText: "Confirm Password",
              obscured: true,
              controller: _confpassController,
            ),
            //register button
            const SizedBox(height: 25),
            //register now
            MyButton(
              text: "Register",
              onTap: register,
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already a member? ",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    )),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Login now ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
