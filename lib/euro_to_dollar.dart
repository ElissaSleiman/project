import 'package:flutter/material.dart';

class EuroToDollar extends StatefulWidget {
  const EuroToDollar({super.key});

  @override
  State<EuroToDollar> createState() => _EuroToDollarState();
}

class _EuroToDollarState extends State<EuroToDollar> {
  TextEditingController euroController=TextEditingController();
  double dollar=0.0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Euro To Dollar Converter"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [

            TextField(
              keyboardType: TextInputType.number,
              controller:euroController ,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Euro need to convert'
              ),

            ),


            const SizedBox(height: 20.0,),

            ElevatedButton(
              onPressed: (){
                setState(() {
                  dollar=double.parse(euroController.text) / 1.0952975;
                });
              },
              child: const Text("Convert"),
            ),

            const SizedBox(
              height: 30.0,
            ),

            Text("Result : $dollar \$",
              style: const TextStyle(
                fontSize: 30.0,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
