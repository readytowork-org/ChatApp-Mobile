import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'src/core/utils/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor.fromHex('#eeeeee'),
        body: ListView(
          shrinkWrap: true,
          reverse: true,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: HexColor.fromHex('#ffffff'),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),

                        child: FormBuilder(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'LogIn',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: HexColor.fromHex('#4f4f4f'),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Email'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              FormBuilderTextField(
                                name: 'email',
                                decoration: const InputDecoration(
                                  hintText: 'hello@email.com',
                                  icon: Icon(Icons.email),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return '*email is required';
                                  }
                                  bool emailValid = RegExp(
                                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                      .hasMatch(value);
                                  if (emailValid == false) {
                                    return '*invalid email';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Password'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              FormBuilderTextField(
                                name: 'password',
                                decoration: const InputDecoration(
                                  hintText: '********',
                                  icon: Icon(Icons.lock),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const ElevatedButton(
                                onPressed: null,
                                child: Text('Submit'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
