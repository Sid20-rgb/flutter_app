import 'package:flutter/material.dart';

class StudentDetailsView extends StatefulWidget {
  const StudentDetailsView({super.key});

  @override
  State<StudentDetailsView> createState() => _StudentDetailsViewState();
}

class _StudentDetailsViewState extends State<StudentDetailsView> {
  final myKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final ageController = TextEditingController();
  final addressController = TextEditingController();
  String gender = "male";
  String location = "Kathmandu";
  var items = [
    'Kathmandu',
    'Lalitpur',
    'Bhaktapur',
  ];

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    ageController.dispose();
    addressController.dispose();
    super.dispose();
  }

  void saveDetails(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: myKey,
            child: Column(
              children: [
                const SizedBox(height: 8),
                TextFormField(
                  controller: firstNameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty){
                      return('please enter first name');
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 8),
                TextFormField(
                  controller: lastNameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty){
                      return('please enter last name');
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 8),
                TextFormField(
                  controller: ageController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Age',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)
                      )
                  ),
                  validator: (value) {
                    if (value!.isEmpty){
                      return('please enter your age');
                    }
                    final age = int.tryParse(value);
                    if(age == null || age<=0){
                      return 'please enter valid age';
                    }
                    return null;
                  },
                ),
                
                const SizedBox(height: 8),
                Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Select Gender',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
                RadioListTile(
                  title: const Text('Male'),
                  value: "male",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
                RadioListTile(
                    title: const Text('Female'),
                    value: "female",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    }
                ),

                const SizedBox(height: 8),
                TextFormField(
                  controller: addressController,
                  keyboardType: TextInputType.streetAddress,
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty){
                      return('please enter your address');
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 8),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    labelText: 'Select your city',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                  ),
                  value: location,
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(), 
                  onChanged: (String? newValue){
                    setState(() {
                      location = newValue!;
                    });
                  }
                ),
               
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          saveDetails();
                        });
                      }, 
                      child: const Text('Save Student')
                  ),
                ),

                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(context, '/displayStudentRoute');
                        });
                      }, 
                      child: const Text('Display Student')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}