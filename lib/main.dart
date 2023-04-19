import 'package:flutter/material.dart';

final num1 = TextEditingController();
final num2 = TextEditingController();
int result = 0;
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 32),
            child: Column
            (
              children: [
                TextFormField(
                  controller: num1,
                  decoration: InputDecoration(
                    hintText: 'Enter first number',
                    border: OutlineInputBorder(),
                    labelText: 'Num1',
                  ),
                  // onChanged: (value)
                  // {
                  //   num1 = value;
                  //   // setState();
                  // }
                ),
        
                SizedBox(height: 20.0),
        
                TextFormField(
                  controller: num2,
                  decoration: InputDecoration(
                    hintText: 'Enter second number',
                    border: OutlineInputBorder(),
                    labelText: 'Num2',
                  ),
                  // onChanged: (value)
                  // {
                  //   num2 = value;
                  //   // setState();
                  // }
                ),
                SizedBox(height: 20.0),
        
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    shadowColor: Colors.grey,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(500, 50),
                  ),
                  
                  onPressed: (){
                    // num1 + num2 = result;
                  }, 
                child: Text('Add',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    )
                )
                ),
        
                SizedBox(height: 20.0),
        
                Text("Sum is {$result}",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue,
                ),
                ),
            
              ],
              ),
          ),
        ),

    ),
  ),
  );
}
