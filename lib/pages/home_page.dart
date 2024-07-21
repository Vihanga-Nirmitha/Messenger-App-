import 'package:flutter/material.dart';
import 'package:wechat/auth/auth_sarvice.dart';
import 'package:wechat/component/my_drawer.dart';

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
        title: Text("Home"),
        actions: [IconButton(onPressed: logout, icon: Icon(Icons.logout))],
      ),
      drawer: const MyDrawer(),
    );
  }
}
