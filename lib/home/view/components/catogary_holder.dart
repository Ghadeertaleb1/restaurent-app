import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/home/view/components/item.dart';

class CatogarysHolder extends StatelessWidget {
  const CatogarysHolder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: GridView.builder(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
          scrollDirection: Axis.vertical,
          itemCount: 6,
          itemBuilder: (context, index) {
            return const CatogarysItem();
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 24,
            crossAxisSpacing: 15,
            childAspectRatio: 156 / 238,
          )),
    );
  }
}
