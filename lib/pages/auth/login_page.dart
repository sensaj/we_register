import 'package:demo/pages/auth/sign_up.dart';
import 'package:demo/widgets/app_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //  TextEditingController text = TextEditingController();
  //  String? error;

  final _formKey = GlobalKey<FormState>();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemGrey5,
        toolbarHeight: 30,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.person,
                          size: 60,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("WeRegister"),
                          Text("Lorem ipsum dolor sit amet")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300,
                margin: EdgeInsets.only(top: 100),
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: CupertinoColors.systemGrey5,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Column(
                      spacing: 10,
                      children: [
                        AppTextFormField(
                          labelText: "Email...",
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null ||
                                !value.contains('@gmail.com')) {
                              return "Enter a valid Email";
                            }
                            return null;
                          },
                        ),
                        AppTextFormField(
                          obscureText: true,
                          labelText: "Password...",
                          validator: (value) {
                            if (value == null || value.length < 4) {
                              return "Enter a password with at least 5 characters";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            _formKey.currentState?.validate();
                            formKey.currentState?.validate();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red[900],
                              foregroundColor: Colors.white,
                              fixedSize: Size(200, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          child: Text(
                            "Login",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ));
                    },
                    child: Text("Sign up"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
