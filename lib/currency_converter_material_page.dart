import 'package:flutter/material.dart';

// 1.Create a variable that stores the converted currency.
// 2. Create a function that multiplies the value given by textfield with 81
// 3. Store the value in the variable that we created
// 4. Display the variable

class CurrencyConverterMaterialPage extends StatefulWidget{
   const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() =>
   _CurrencyConverterMaterialPage();
  }
class _CurrencyConverterMaterialPage
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController  = TextEditingController();

  void convert (){
    result = double.parse(textEditingController.text)*84.58;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      // Color(00AARRGGBB)
      // 0xFF000000
      borderSide: const BorderSide(
          width: 2.0,
          style: BorderStyle.solid
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor:Colors.blueGrey ,
        elevation: 0,
        title: const Text('Currency Converter',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body:  Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // int --> string intergervalue.toString()
            // string --> int int.parse(stringvalue)
            Text(
              'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            /// padding
            /// container
            /// hint to wrap a widget --> alt + enter
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                  hintText: 'Enter the Amount in USD',

                  // --> Border properties
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder:border,
                  enabledBorder:border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                    decimal: true
                ),
              ),
            ),
            // buttons
            // 1. raised
            // 2.appears like text
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: convert,
                style:TextButton.styleFrom(
                    backgroundColor:Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize:const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                ),
                child: Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
