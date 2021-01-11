import 'package:flutter/material.dart';
import 'package:log_in/class/secondPage_Arguments.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userValue;
  String passValue;
  final formKey = GlobalKey<FormState>();
  final userControler = TextEditingController(text: "");
  final passControler = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 60),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.redAccent[700], Colors.redAccent[200]])),
              child: Icon(
                Icons.people,
                color: Colors.white,
                size: 180,
              )),
          Transform.translate(
            offset: Offset(0, -80),
            child: Center(
              child: SingleChildScrollView(
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 260, bottom: 10),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Form(
                            key: formKey,
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  controller: userControler,
                                  decoration:
                                      InputDecoration(labelText: "Usuario:"),
                                  validator: (value) {
                                    if (value.isEmpty)
                                      // ignore: missing_return
                                      return "Este campo no puede estar vacío.";
                                    else
                                      return null;
                                  },
                                  onSaved: (value) {
                                    userValue = value;
                                  },
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TextFormField(
                                  obscureText: true,
                                  controller: passControler,
                                  decoration:
                                      InputDecoration(labelText: "Contraseña:"),
                                  validator: (value) {
                                    if (value.isEmpty)
                                      // ignore: missing_return
                                      return "Este campo no puede estar vacío.";
                                    else
                                      return null;
                                  },
                                  onSaved: (value) {
                                    passValue = value;
                                  },
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                RaisedButton(
                                    color: Theme.of(context).primaryColor,
                                    child: Text("Iniciar Sesion"),
                                    onPressed: () {
                                      show_secondPage(context);
                                    })
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void show_secondPage(BuildContext context) {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();

      Navigator.of(context).pushNamed("/second",
          arguments: SecondPage_Arguments(this.userValue, this.passValue));
    }
  }
}
