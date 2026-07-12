import 'package:flutter/material.dart';
import 'package:note_app/core/router/router.dart';
import 'package:note_app/core/router/routes.dart';
import 'package:note_app/core/theme/app_colors.dart';
import 'package:note_app/core/utils/constants/app_images.dart';
import 'package:note_app/core/utils/extensions/extension.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _navigateDelayed();
    super.initState();
  }

  void _navigateDelayed() async {
    await Future.delayed(const Duration(seconds: 3), () {
      router.replaceNamed(Routes.homeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splash1,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 220,
              child: Text(
                "Paper who? Notepad’s got you covered!",
                style: context.textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
            ),
            Image.asset(AppImages.splashLogo, height: 270, width: 300),
          ],
        ),
      ),
    );
  }
}
