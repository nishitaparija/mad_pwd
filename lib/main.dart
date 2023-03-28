import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreen(),
    );

  }
}
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.start,
      //the above command overrides the other alignment element if not commented
      children: [
        Text("  MAD_PWA Academy",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(
          height: 18.0,
        ),
        Text("  Login to access",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize:30.0,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(
          height: 18.0,
        ),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: "Enter Email Address",
              prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              )
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        TextField(
          keyboardType: TextInputType.text,
          obscureText: true,
          decoration: InputDecoration(
              hintText: "Enter Password",
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.black,
              )
          ),
        ),
        SizedBox(
          height: 58.0,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 20.0,
          ),

          child: RawMaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            fillColor: Colors.blue[900],
            onPressed: (){},
            child: Text ("Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        )

      ],
    );
  }
}