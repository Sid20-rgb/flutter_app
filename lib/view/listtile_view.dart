import 'package:flutter/material.dart';

class ListTTile extends StatelessWidget {
  // final gap = const SizedBox(height: 1000)
  ListTTile({super.key});
  final List<String> entries = <String>[
    'Sparrow',
    'Elephant',
    'Lion',
    'Humming Bird'
  ];
  final List<int> colorCodes = <int>[100, 100, 100, 100];
  final List<String> images = <String>[
    'https://upload.wikimedia.org/wikipedia/commons/3/36/Sparrow.jpg',
    'https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/b/b5/Lion_d%27Afrique.jpg',
    'https://img.freepik.com/premium-photo/colorful-hummingbird-flying-closeup_691560-301.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card List'),
        // centerTitle: true,
      ),
      body: ListView.separated(
        // padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10),
                bottom: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                ),
              ],
            ),
            height: 300,
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    images[index],
                    // height: 150,
                    // width: 50,
                    // fit: BoxFit.cover,
                  ),
                ),
                Center(
                    child: Text(
                  entries[index],
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
