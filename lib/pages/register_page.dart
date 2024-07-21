import 'package:flutter/material.dart';
import 'package:wechat/services/auth/auth_service.dart';
import 'package:wechat/component/my_button.dart';
import 'package:wechat/component/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confpassController = TextEditingController();

  void register(BuildContext context) {
    //login action here
    final auth = AuthService();

    //create user
    if (_passwordController.text == _confpassController.text) {
      try {
        auth.signUpWithEmailPassword(
            _emailController.text, _passwordController.text);
      } catch (e) {
        showDialog(
            // ignore: use_build_context_synchronously
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.toString()),
                ));
      }
    }
    // unmatch pass word
    else {
      showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (context) => const AlertDialog(
                title: Text("Password don't match"),
              ));
    }
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
            const SizedBox(height: 15),
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
              onTap: () => register(context),
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
