import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/home/controller/home_bloc.dart';
import 'package:flutter_application_1/home/controller/home_events.dart';
import 'package:flutter_application_1/home/view/components/item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            return InkWell(
                onTap: () {
                  context
                      .read<HomeBloc>()
                      .add((HomeItemClickEvent(index: index)));

                  print("============================Item Clicked $index");
                },
                child: const CatogarysItem());
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
