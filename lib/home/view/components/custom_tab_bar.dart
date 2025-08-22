import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/text.dart';
import 'package:flutter_application_1/home/controller/home_bloc.dart';
import 'package:flutter_application_1/home/controller/home_events.dart';
import 'package:flutter_application_1/home/controller/home_state.dart';
import 'package:flutter_application_1/home/view/components/components.dart';
import 'package:flutter_application_1/onboarding/controller/on_boarding_bloc.dart';
import 'package:flutter_application_1/onboarding/controller/on_boarding_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return TabBar(
          onTap: (value) {
            context.read<HomeBloc>().add(HomeTabChangeEvent(index: value));
            print("============================$value");
          },
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          dividerHeight: 0,
          indicator: BoxDecoration(),
          tabs: [
            Tab(
              child: CatogaryContainerTab(
                  title: TextApp.allCoffee,
                  isSelected: state.selectedIndexTabBar == 0),
            ),
            Tab(
              child: CatogaryContainerTab(
                title: TextApp.machiato,
                isSelected: state.selectedIndexTabBar == 1,
              ),
            ),
            Tab(
              child: CatogaryContainerTab(
                title: TextApp.latte,
                isSelected: state.selectedIndexTabBar == 2,
              ),
            ),
            Tab(
              child: CatogaryContainerTab(
                title: TextApp.americano,
                isSelected: state.selectedIndexTabBar == 3,
              ),
            ),
          ],
        );
      },
    );
  }
}


// class CustomTabBar extends StatelessWidget {
//   const CustomTabBar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<HomeBloc, HomeState>(
//       listener: (context, state) {
        
//         TabBar(
//           onTap: (value) {
//             context
//                 .read<HomeBloc>()
//                 .add(HomeTabChangeEvent(index: value, isSelected: true));
//             print("============================$value");
//           },
//           isScrollable: true,
//           tabAlignment: TabAlignment.start,
//           dividerHeight: 0,
//           indicator: BoxDecoration(),
//           tabs: [
//             Tab(
//               child: CatogaryContainerTab(
//                 title: TextApp.allCoffee,
//                 isSelected: state.isSelected,
//               ),
//             ),
//             Tab(
//               child: CatogaryContainerTab(
//                 title: TextApp.machiato,
//                 isSelected: state.isSelected,
//               ),
//             ),
//             Tab(
//               child: CatogaryContainerTab(
//                 title: TextApp.latte,
//                 isSelected: state.isSelected,
//               ),
//             ),
//             Tab(
//               child: CatogaryContainerTab(
//                 title: TextApp.americano,
//                 isSelected: state.isSelected,
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
