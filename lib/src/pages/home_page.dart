import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple/src/bloc/counter_a/bloc/counter_a_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: BlocBuilder<CounterABloc, CounterAState>(
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'CounterA',
                  ),
                  Text(
                    '${state.count}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  )
                ],
              ),
            );
          },
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () =>
                  context.read<CounterABloc>().add(CounterEventReset()),
              tooltip: 'Reset',
              child: const Icon(Icons.restore),
            ),
            SizedBox(
              height: 18,
            ),
            FloatingActionButton(
              onPressed: () =>
                  context.read<CounterABloc>().add(CounterEventAdd()),
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ));
  }
}
