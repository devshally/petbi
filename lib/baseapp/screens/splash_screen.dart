import 'package:petbi/baseapp/utils/utils.dart';
import 'package:petbi/utilities/colors.dart';
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
      backgroundColor: Theme.of(context).primaryColor,
      body: const Center(
        child: Text.rich(
          TextSpan(
            text: 'Pet',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
            children: [
              TextSpan(
                text: 'Bi',
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    // Future.delayed(
    //   const Duration(seconds: 3),
    //   () => context.replace(
    //     'Add a route',
    //   ),
    // );
    super.initState();
  }
}
