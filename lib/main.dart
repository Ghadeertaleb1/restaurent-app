import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/view/pages/home_page.dart';
import 'package:flutter_application_1/onboarding/view/pages/onboarding_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/onboarding/controller/on_boarding_bloc.dart';
import 'package:flutter_application_1/onboarding/controller/on_boarding_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnBoardingBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocSelector<OnBoardingBloc, OnBoardingState,bool>(
          selector: (state) => state.isOnBoardingComplete,
          builder: (context, state) {
            if (state) {
              return const HomePage();
            } else {
              return const OnBoardingBage();
            }
          },
        ),
      ),
    );
  }
}
