import 'package:flutter/material.dart';
import 'package:wechat/auth/auth_sarvice.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  void logout() {
    final auth = AuthSarvice();
    auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: logout, icon: Icon(Icons.logout))],
      ),
    );
  }
}
