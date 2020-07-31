import 'package:digipay/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SingInPage extends StatefulWidget {
  @override
  _SingInPageState createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo and title
              Container(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlutterLogo(
                          size: 150.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Text(
                            'DigiPay',
                            style: TextStyle(
                                color: secundaryBlue,
                                fontSize: 34.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            'Digital Wallet App',
                            style: TextStyle(
                                color: primaryGrey,
                                fontSize: 20.0,
                                letterSpacing: 2.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              // inputs

             Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          isCollapsed: false,
                          suffixIcon: Icon(
                            Icons.check,
                            size: 12.0,
                          ),
                          // hintText: 'Enter your email',
                          hintMaxLines: 2,
                          labelText: 'Email Address',
                          labelStyle: TextStyle(color: Colors.grey),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          isCollapsed: false,
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            size: 16.0,
                          ),
                          hintMaxLines: 2,
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.grey),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(color: secundaryBlue),
                        ),
                      ),
                    ],
                  ),
                ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,                    
                      color: primaryBlue,
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        child: Center(child: Text('Sing In',)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: Text('Or'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Register a'),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          child: Text('new account', style: TextStyle(color: primaryBlue),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
