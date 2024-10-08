
import 'package:flutter/material.dart';
import 'package:new_flutter1/constants/routes.dart';
import 'package:new_flutter1/enums/menu_action.dart';
import 'package:new_flutter1/services/auth/auth_service.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main UI'),
        actions: [
          PopupMenuButton<MenuAction>(onSelected: (value) async {
            switch (value) {
              
              case MenuAction.logout:
              final shouldLogout = await showLogOutDialog(context);
              
              if(shouldLogout) {
                await AuthService.Firebase().logout();
                Navigator.of(context).pushNamedAndRemoveUntil(
                  loginRoute,
                   (_) => false,
                );
              }
            }
          },itemBuilder: (context) {
            return [
               const PopupMenuItem<MenuAction>(
              value: MenuAction.logout,
              child: Text('Log out'),    
             ),
            ];
           },
          )
        ],
      ),
      body: const Text('Hello Wolrd'),
    );
  }
}

Future<bool>showLogOutDialog(BuildContext context) {
  return showDialog<bool>(
  context: context, 
  builder:(context) {
    return AlertDialog(
      title: const Text('Sign Out'),
      content: const Text('Are You Sure you want to sign Out'),
      actions: [
        TextButton(onPressed: () {
          Navigator.of(context).pop(false);

        }, child: const Text('Cancel'),),
          TextButton(onPressed: () {
          Navigator.of(context).pop(true);
          }, child: const Text('Log Out'),),
      ],
     );
    },
  ).then((value) => value ?? false);
}
