import 'package:flutter/material.dart';

class DisplayStudentView extends StatelessWidget {
  const DisplayStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Sid SS',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 4),
                        Text('Kathmandu'),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit,
                      color: Color.fromARGB(255, 122, 122, 122),
                    ),
                  ),
                  IconButton(
                    onPressed: () {}, 
                    icon: const Icon(
                      Icons.delete,
                      color: Color.fromARGB(255, 122, 122, 122),
                    )
                  )
                ],
              ),

              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Dsd SS',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 4),
                        Text('Kathmandu'),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit,
                      color: Color.fromARGB(255, 122, 122, 122),
                    ),
                  ),
                  IconButton(
                    onPressed: () {}, 
                    icon: const Icon(
                      Icons.delete,
                      color: Color.fromARGB(255, 122, 122, 122),
                    )
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}