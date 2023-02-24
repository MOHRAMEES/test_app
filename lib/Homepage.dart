import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/providerdemo.dart';
import 'package:test_app/secondpage.dart';

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('page1 rebuild');
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreen,
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Secondpage()));
                },
                child: Text('Homepage')),
            Consumer<provividerdemo>(builder: (context, value, child) {
              return Text(value.text1);
            }),
            ElevatedButton(
                onPressed: () {
                  Provider.of<provividerdemo>(context, listen: false)
                      .changevalue('rambo');
                },
                child: Text('changevalue')),
            Provider.of<provividerdemo>(context).widget()
          ]),
        ),
      ),
    );
  }
}
