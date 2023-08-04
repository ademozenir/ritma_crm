import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ritma_crm/view/login_view.dart';
import 'package:ritma_crm/view/main_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginView())));
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/ritma.crm.jpg'),
              ),
              const SizedBox(
                height: 260,
              ),
              SpinKitFadingCircle(
                color: Colors.blue[900],
                size: 50.0,
              ),
            ],
          ),
        ),
      );
    }
  }

