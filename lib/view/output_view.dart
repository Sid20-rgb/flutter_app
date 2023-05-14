import 'package:flutter/material.dart';

import '../model/student.dart';

class OutputView extends StatefulWidget {
  const OutputView({super.key});

  @override
  State<OutputView> createState() => _OutputViewState();
}

class _OutputViewState extends State<OutputView> {
  final gap = const SizedBox(width: 50);
  List<Student>? lstStudents;
  @override
  void didChangeDependencies() {
    lstStudents = ModalRoute.of(context)!.settings.arguments as List<Student>?;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Output View'),
          centerTitle: true,
        ),
        body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
            const Divider(),
          itemCount: lstStudents!.length,
          itemBuilder: (context, index) {
            var firstname = lstStudents![index].fname;
            var lastname = lstStudents![index].lname;
            var add = lstStudents![index].address;
            return ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://prd-rteditorial.s3.us-west-2.amazonaws.com/wp-content/uploads/2021/01/30155602/harry-potter-and-the-sorcerers-stone-700x380.jpg'),
              ),
              title: Text(firstname!),
              subtitle: Text(add!),
              trailing: Wrap(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        lstStudents!.removeAt(index);
                      });
                    },
                    icon: const Icon(Icons.delete),
                  ),
                  IconButton(
                    onPressed: () {
                      
                    },
                    icon: const Icon(Icons.edit),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
