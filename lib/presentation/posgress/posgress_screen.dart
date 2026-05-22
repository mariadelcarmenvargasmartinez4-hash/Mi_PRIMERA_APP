import 'package:flutter/material.dart';

class ProgressScreen extends StatefulWidget {
  static const String name = 'progress-indicator';

  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicator'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      children: [
        const SizedBox(height: 30),
        Text('Circular Progress Indicator'),
        SizedBox(height: 10),
        CircularProgressIndicator(
          strokeWidth: 2,
          backgroundColor: Colors.black45,
          


        ),
        StreamBuilder(
          stream: Stream.periodic(const Duration(seconds: 1), (value) => value).take(11),
          builder: (context, snapshot) {
            final progressValue = snapshot.data ?? 0;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: LinearProgressIndicator(
                value: progressValue / 10,
                backgroundColor: Colors.black45,
              ),
            );
          },
        ),
       
      ],
      ),
    );
  }
}

