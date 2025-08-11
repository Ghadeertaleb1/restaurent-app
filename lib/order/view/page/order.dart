import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/constant/shared.dart';
import 'package:flutter_application_1/order/view/components/circular_button.dart';
import 'package:flutter_application_1/order/view/components/edit_locatio_button.dart';
import 'package:flutter_application_1/shared/widgets/appBar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: EdgeInsets.only(top: 20, left: 24, right: 24, bottom: 24),
      child: Column(
        children: [
          CustomAppBar(
            isDetail: false,
            title: "Order",
          ),
          SizedBox(height: 24),
          SizedBox(
            width: 327,
            height: 43,
            child: Center(
              child: ToggleSwitch(
                minWidth: 327,
                minHeight: 43,
                fontSize: 16.0,
                initialLabelIndex: 0,
                activeBgColor: [AppColors.primaryColor],
                activeFgColor: Colors.white,
                inactiveBgColor: AppColors.normalActiveGreyColor,
                inactiveFgColor: AppColors.backgroundColor,
                totalSwitches: 2,
                labels: [
                  'Deliver',
                  'Pickup',
                ],
                onToggle: (index) {
                  print('switched to: $index');
                },
                radiusStyle: true,
              ),
            ),
          ),
          SizedBox(height: 24),
          Align(
              alignment: Alignment.centerLeft,
              child: mainTextStyle(
                  16, "Delivery Address", AppColors.backgroundColor)),
          SizedBox(height: 16),
          Align(
              alignment: Alignment.centerLeft,
              child: mainTextStyle(
                  14, "Jl. Kpg Sutoyo", AppColors.backgroundColor)),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                style: secondTextStyle(1.2, FontWeight.normal, 12),
              )),
          SizedBox(height: 16),
          const Row(
            children: [
              InkWell(
                  child: EditLocationButton(
                      icon: "asset/icons/editSquare.svg",
                      title: "Edit Address")),
              SizedBox(width: 8),
              InkWell(
                child: EditLocationButton(
                  icon: "asset/icons/document.svg",
                  title: "Add Note",
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 16, bottom: 16),
            width: 295,
            child: Divider(
              color: AppColors.normalActiveGreyColor,
              thickness: 1,
            ),
          ),
          Container(
              width: 327,
              height: 60,
              child: Row(
                children: [
                  Image.asset("asset/images/catogarytest.png"),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 6),
                      mainTextStyle(
                          16, "Coffe Mocha ", AppColors.backgroundColor),
                      SizedBox(height: 4),
                      Text(
                        "Deep Foam",
                        style: secondTextStyle(1.2, FontWeight.normal, 12),
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      CircularButtonWidget(
                        icon: Icons.add,
                        onPressed: () {},
                      ),
                      SizedBox(width: 18),
                      mainTextStyle(14, "1", AppColors.backgroundColor),
                      SizedBox(width: 18),
                      CircularButtonWidget(
                        icon: Icons.remove,
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              )),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            width: double.infinity,
            child: Divider(
              height: 4,
              color: AppColors.lineColor,
              thickness: 4,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: 327,
            height: 56,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: AppColors.normalActiveGreyColor,
                width: 1,
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: SvgPicture.asset("asset/icons/discount.svg"),
                ),
                SizedBox(
                  width: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: mainTextStyle(
                      16, "1 Discount is Applies", AppColors.backgroundColor),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios,
                        color: AppColors.backgroundColor, size: 16))
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mainTextStyle(16, "Payment Summary", AppColors.backgroundColor),
              SizedBox(height: 16),
              PaymentRow()
            ],
          ),
        ],
      ),
    )));
  }
}
