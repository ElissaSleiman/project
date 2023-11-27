import 'package:untitled/dollar_to_euro.dart';
import 'package:untitled/euro_to_dollar.dart';

import 'lbp_to_euro.dart';
import 'euro_to_lbp.dart';
import 'dollar_to_lbp.dart';
import 'lbp_to_dollar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: CurrencyConverter(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency Exchange",
        style: TextStyle(fontSize:30.0,
          color:Colors.white,

      ),
      ),
      centerTitle:true,
      backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const EuroToDollar())
                );
              },
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade900,
                textStyle:const TextStyle(fontSize:30.0),
                padding: const EdgeInsets.all(40.0),
              ),
              child: const Text(
                "Euro To Dollar", style: TextStyle(fontSize: 18.0 , color:Colors.white),
              ),),

            const SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const DollarToEuro())
                );
              },
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade800,
                textStyle:const TextStyle(fontSize:30.0),
                padding: const EdgeInsets.all(40.0),
              ),
              child: const Text(
                "Dollar To Euro", style: TextStyle(fontSize: 18.0 , color:Colors.white),
              ),),

            const SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const DollarToLbp())
                  );
                },
                style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade700,
                  textStyle:const TextStyle(fontSize:30.0),
                  padding: const EdgeInsets.all(40.0),

                ),
                child: const Text(
                    'Dollar To LBP', style: TextStyle(fontSize: 18.0, color:Colors.white),),
            ),

            const SizedBox(
              height: 16.0,
            ),

            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const LbpToDollar())
                  );
                },
              style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade600,
                  textStyle:const TextStyle(fontSize:30.0),
                  padding: const EdgeInsets.all(40.0),
              ),
                child: const Text(
                    'LBP To Dollar', style: TextStyle(fontSize: 18.0, color:Colors.white),),),

            const SizedBox(
              height: 16.0,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const LbpToEuro())
                );
              },
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade500,
                textStyle:const TextStyle(fontSize:30.0),
                padding: const EdgeInsets.all(40.0),
              ),
              child: const Text(
                  "LBP To Euro", style: TextStyle(fontSize: 18.0 , color:Colors.white),
              ),),

            const SizedBox(
              height: 16.0,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const EuroToLbp())
                );
              },
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade400,
                textStyle:const TextStyle(fontSize:30.0),
                padding: const EdgeInsets.all(40.0),
              ),
              child: const Text(
                  "Euro To LBP", style: TextStyle(fontSize: 18.0, color:Colors.white),),
            ),
          ],
        ),
      ),
    );
  }


}

