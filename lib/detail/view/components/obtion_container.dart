import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/icons.dart';

class ObtionContainer extends StatelessWidget {
  final int index;
  const ObtionContainer({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
      margin: EdgeInsets.only(right: index == 2 ? 0 : 14),
      decoration: BoxDecoration(
          color: Color(0xffEDEDED).withOpacity(0.3),
          borderRadius: BorderRadius.circular(12)),
      width: 44,
      height: 44,
      child: Image.asset(index == 0
          ? "asset/images/fastDelivery.png"
          : index == 1
              ? "asset/images/qualityBean.png"
              : "asset/images/extraMilk.png"),
      // child: SvgPicture.asset(index == 0
      //     ? AppIcons.heart
      //     : index == 1
      //         ? AppIcons.heart
      //         : AppIcons.home),
    );
  }
}
