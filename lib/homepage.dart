import 'package:flutter/material.dart';
import 'package:projectsample/more.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const More();
              },
            ),
          );
        },
        child: const Text('Learn more'),
      ),
    );
  }
}
