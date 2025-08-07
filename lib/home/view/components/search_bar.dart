import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/constant/shared.dart';

class CustopmSearchBar extends StatelessWidget {
  const CustopmSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        children: [
          Container(
            width: 259,
            height: 52,
            decoration: BoxDecoration(
              color: Color(0xff2A2A2A),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [sharedShadow()],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    weight: 20,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  textStyle(14, AppColors.lighterGreyColor, FontWeight.normal,
                      "Search Coffee", 1.2, 0)
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24),
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: AppColors.buttonColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [sharedShadow()],
            ),
            child: const Icon(
              Icons.tune,
              weight: 20,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
