import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/view/components/components.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: (value) {},
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      dividerHeight: 0,
      indicator: BoxDecoration(),
      tabs: [
        Tab(
          child: CatogaryContainerTab(
            title: "All Coffee",
            isSelected: true,
          ),
        ),
        Tab(
          child: CatogaryContainerTab(
            title: "Machiato",
            isSelected: false,
          ),
        ),
        Tab(
          child: CatogaryContainerTab(
            title: "Latte",
            isSelected: false,
          ),
        ),
        Tab(
          child: CatogaryContainerTab(
            title: "Americano",
            isSelected: false,
          ),
        ),
      ],
    );
  }
}
