import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn more'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/oaknet.png'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            color: Colors.blueGrey,
            child: const Center(
              child: Text(
                'New page',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint('clicked Elevated button');
            },
            child: const Text('Elevated button'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('clicked Outlined button');
            },
            child: const Text('Outlined button'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('clicked Text button');
            },
            child: const Text('Text button'),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('row clicked');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.local_fire_department_outlined,
                  color: Colors.orange,
                ),
                Text('Hey and welcome'),
                Icon(
                  Icons.local_fire_department_outlined,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
