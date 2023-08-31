import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple/src/bloc/app_bloc_observer.dart';
import 'package:simple/src/bloc/counter_a/bloc/counter_a_bloc.dart';
import 'package:simple/src/pages/home_page.dart';

void main() {
  // runApp(const MyApp());
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final counterABloc = BlocProvider(create: (context) => CounterABloc());

    // final counterBBloc = BlocProvider(create: (context) => CounterBBloc());

    return BlocProvider(
      create: (BuildContext context) => CounterABloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Home Page'),
      ),
    );
  }
}
