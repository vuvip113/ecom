import 'package:ecom/core/common/widgets/ecomly.dart';
import 'package:ecom/core/res/styles/colours.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.blueNormalLogin,
      body: Center(child: EcomlyLogo()),
    );
  }
}
