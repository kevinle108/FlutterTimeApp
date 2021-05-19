import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;



  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: TextButton.icon(
          onPressed: (){
            setState(() {
              counter++;
            });
          },
          icon: Icon(Icons.edit_location),
          label: Text('Counter is $counter')
      ),
    );
  }
}
