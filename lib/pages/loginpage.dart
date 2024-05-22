import 'package:flutter/material.dart';

import 'home.dart';

class Loginpg extends StatefulWidget {
  const Loginpg({super.key});

  @override
  State<Loginpg> createState() => _LoginpgState();
}

class _LoginpgState extends State<Loginpg> {
  TextEditingController EmailAddress = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController fullname = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController bloodgroup = TextEditingController();
  TextEditingController age = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(
          "FITNESS X",
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              color: Colors.white),
        ),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 300.0,
        toolbarOpacity: 0.8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(170)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.deepPurple[300],
      ),
      backgroundColor: Colors.purple[900],//AppBar
      body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: (Column(children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: EmailAddress,
                  validator: (value) {
                    if (value!.isEmpty || EmailAddress == null) {
                      return 'this field is required';
                    }
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(20),
                      labelText: "EMAIL ADDRESS",
                      prefixIcon: Icon(Icons.person),
                      hintText: "enter your email address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: password,
                  validator: (value) {
                    if (value!.isEmpty || password == null) {
                      return 'this field is required';
                    }
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(20),
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock_rounded),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      hintText: "enter your password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account ?"),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Register",
                              style: TextStyle(fontStyle: FontStyle.italic),
                            )),
                      ]))
            ])),
          )));
}
