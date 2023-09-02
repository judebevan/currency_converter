import 'package:flutter/cupertino.dart';

class CupertinoHomePage extends StatefulWidget {
  const CupertinoHomePage({super.key});

  @override
  State<CupertinoHomePage> createState() => _CupertinoHomePageState();
}

class _CupertinoHomePageState extends State<CupertinoHomePage> {

  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color.fromARGB(255, 15, 15, 15),
        middle: Center(
          child: Text("Currency Converter",
          style: TextStyle(
            color: CupertinoColors.white,
          ),
          ),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LKR ${result !=0 ? result.toStringAsFixed(2) : result.toStringAsFixed(1)}",
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
              color: CupertinoColors.white,
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(60),
                ),
                placeholder: 'Enter the amount in USD',
                placeholderStyle: const TextStyle(
                  color: CupertinoColors.black,
                ),
                prefix: const Icon(
                  CupertinoIcons.money_dollar_circle,
                  color: CupertinoColors.black,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CupertinoButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 320;       
                  });
                },
                color: CupertinoColors.white,
                child: const Text("Convert",
                style: TextStyle(
                  fontSize: 18.0,
                  color: CupertinoColors.black,
                ),
                ), 
              ),
            ),
          ],
        ),
      )
    );
  }
}