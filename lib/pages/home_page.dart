import 'package:flutter/material.dart';
import 'package:wechat/component/my_drawer.dart';
import 'package:wechat/component/user_tile.dart';
import 'package:wechat/pages/chat_page.dart';
import 'package:wechat/services/auth/auth_service.dart';
import 'package:wechat/services/chat/chat_service.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey,
        elevation: 0,
      ),
      drawer: const MyDrawer(),
      body: _buildUserList(),
    );
  }

  //build a list of users except for the current logged in user

  Widget _buildUserList() {
    return StreamBuilder(
        stream: _chatService.getUsersStream(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text("Error");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading..");
          }
          return ListView(
            children: snapshot.data!
                .map<Widget>(
                    (userData) => _buildUserlistItem(userData, context))
                .toList(),
          );
        });
  }

  //build individual list tile for user
  Widget _buildUserlistItem(
      Map<String, dynamic> userdata, BuildContext context) {
    if (userdata["email"] != _authService.getCurrentUser()!.email) {
      return UserTile(
          text: userdata["email"],
          onTap: () {
            //go to chat page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatPage(
                  receiverEmail: userdata["email"],
                  receiverId: userdata["uid"],
                ),
              ),
            );
          });
    } else {
      return Container();
    }
    //display all users except current user
  }
}
