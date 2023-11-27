import 'package:flutter/material.dart';

class DollarToEuro extends StatefulWidget {
  const DollarToEuro({super.key});

  @override
  State<DollarToEuro> createState() => _DollarToEuroState();
}

class _DollarToEuroState extends State<DollarToEuro> {
  TextEditingController dollarController=TextEditingController();
  double euro=0.0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Dollar To Euro Converter '),

      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            TextField(
              keyboardType: TextInputType.number,
              controller:dollarController ,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Dollar  need to convert'
              ),

            ),

            const SizedBox(height: 30.0,),

            ElevatedButton(
              onPressed: (){
                setState(() {
                  euro=double.parse(dollarController.text) * 0.91;
                });
              },
              child: const Text("Convert"),
            ),

            const SizedBox(
              height: 30.0,
            ),

            Text("Result :  $euro€",
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
