import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Praktikum 3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Praktikum3(),
    );
  }
}
class Praktikum3 extends StatelessWidget {
  const Praktikum3 ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold (appBar: AppBar(title: const Text('Alert Dialog') ),
      body: Container(
        color: Colors.red,
        child: MaterialButton(
          textColor: Colors.white,
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) {
                  return GiffyDialog.image(
                      Image.asset(
                        'assets/images/gambarbergerak.gif',
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      title: const Text(
                        'Men Wearing Jakets',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w100),
                      ),
                      content: const Text(
                        'This is a men wearning jakets',
                        textAlign: TextAlign.center,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'CANCEL'),
                          child: const Text(
                            'CANCEL',
                            textAlign: TextAlign.center,
                          ),
                        ),
                         TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text(
                            'OK',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]);
                });
          },
          child: const Text("Alert Dialog"),
           ),
      )
    );
  }
  }