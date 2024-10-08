import 'package:flutter/material.dart';
import 'package:new_flutter1/constants/routes.dart';
import 'package:new_flutter1/services/auth/auth_service.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({Key? key}) : super(key: key);

  @override
  _VerifyEmailViewState createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify email'),
      ),
      body: Column(
        children: [
          const Text("we've sent you an email verification,please check your email"),
          const Text("if you haven't received a verification email yet,press the button below"),
          TextButton(
            onPressed: () async {
              await AuthService.Firebase().sendEmailVerification();
            },
            child: const Text('Send email verification'),
          ),
          TextButton(
            onPressed:() async {
              AuthService.Firebase().logout();
              Navigator.of(context).pushNamedAndRemoveUntil(
                registerRoute,
                (Route) => false,
              );           
           }, 
            child: const Text('Restart'),
          )
        ],
      ),
    );
  }
}