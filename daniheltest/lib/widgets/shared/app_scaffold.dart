import 'package:daniheltest/util/styles/colors.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.child, this.appBar});

  final Widget child;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          
          child: Image.asset(
            'assets/images/bg_blotches.png',
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: AppColors.scaffoldBackground,

          appBar: appBar,
          body: child,
        ),
      ],
    );
  }
}
