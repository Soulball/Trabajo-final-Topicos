import 'package:flutter/material.dart';
import 'package:log_in/class/secondPage_Arguments.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    final SecondPage_Arguments arguments = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
          title: Text('Segunda pantalla')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(arguments.usuario),
            Text(arguments.contra)
          ],
        ),
      ),
    );
  }
}

