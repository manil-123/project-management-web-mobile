import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F9FF),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width * 0.8,
              maxHeight: MediaQuery.sizeOf(context).height * 0.8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                height: double.infinity,
                width: MediaQuery.sizeOf(context).width * 0.4,
              ),
              Container(
                height: double.infinity,
                width: MediaQuery.sizeOf(context).width * 0.4,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
