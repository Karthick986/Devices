import 'package:cluematrix_devices/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cluematrix Technologies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Card(
            margin: EdgeInsets.all(50.0),
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 10.0,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Image.asset('images/login_image.jpg', fit: BoxFit.fill, height: MediaQuery.of(context).size.height,),
                ),
                Expanded(flex: 3, child: Column(children: <Widget>[
                  Image.asset('images/cluematrix.png', width: 200.0, height: 200.0,),
                  Container(padding: EdgeInsets.all(10.0), child: Text('Login', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),),
                  Container(margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0), child: TextFormField(
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.blue)),
                        hintText: 'Enter email',
                        labelText: 'Email',
                        prefixIcon: const Icon(
                          Icons.person_pin,
                          color: Colors.black54,
                        ),),
                  ),
                  ),
                  Container(margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0), child: TextFormField(
                    obscureText: _isHidden,
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.blue)),
                      hintText: 'Enter password',
                      labelText: 'Password',
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black54,
                      ),
                      suffix: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(
                          _isHidden
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                  ),
                  ),
                  Container(margin: EdgeInsets.only(top: 25.0),
                    child: ElevatedButton(
                    child: Text('Signin', style: TextStyle(color: Colors.white, fontSize: 14.0),),
                      style: ElevatedButton.styleFrom(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          padding: EdgeInsets.only(left: 75.0, right: 75.0, top: 25.0, bottom: 25.0)),
                      onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
                      },
                    ),
                  ),
                  ]
                ))
              ],
            )),
      ),
    );
  }
}
