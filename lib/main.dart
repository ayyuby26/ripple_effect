import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:ripple_effect/ripple_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get decor => BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
      );

  get textStyle => const TextStyle(
        fontWeight: FontWeight.bold,
        letterSpacing: 4,
      );

  static const src =
      "https://images.unsplash.com/photo-1643819131797-46919f3009f7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=200&q=40";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: decor,
            child: RippleButton(
              height: 250,
              width: 400,
              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image.network(
                      src,
                      width: 200,
                    ),
                    Text(
                      "judul",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
