import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: formLogin(),
    );
  }
}

class formLogin extends StatefulWidget {
  const formLogin({super.key});

  @override
  State<formLogin> createState() => _formLoginState();
}

class _formLoginState extends State<formLogin> {
  TextEditingController var_username = TextEditingController();
  TextEditingController var_pass = TextEditingController();

  Future<void> kirimData(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              height: 200,
              child: Column(children: <Widget>[
                Text("Ussername : ${var_username.text}"),
                Text("Password : ${var_pass.text}"),
              ]),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text(
          "Form Login_ 21312024-RichardRicardo",
          style: TextStyle(color: Colors.yellow),
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/tekno.png',
                  width: 130,
                  height: 200,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Universitas Teknokrat Indonesia",
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "ASEAN's Best Private University",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            TextField(
              controller: var_username,
              decoration: InputDecoration(
                hintText: "Username",
                labelText: "Username",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: var_pass,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                kirimData(context);
              },
              child: Text(
                "Simpan",
                style: TextStyle(color: Colors.yellow),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  "Lupa Password?,",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "klik disini",
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 200,
            ),
            Row(
              children: [
                Text(
                  "Develop by ",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Richard Ricardo(21312024)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
