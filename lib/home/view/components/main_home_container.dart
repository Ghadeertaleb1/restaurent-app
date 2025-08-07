import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/constant/shared.dart';

class MainHomeContainer extends StatelessWidget {
  final Widget child;
  const MainHomeContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 68),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: BoxDecoration(
            color: AppColors.backgroundColor, boxShadow: [sharedShadow()]),
        child: child);
  }
}
