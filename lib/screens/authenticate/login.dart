import 'package:flutter/material.dart';
import 'package:postcrap/services/auth.dart';
import 'package:postcrap/shared/constants.dart';
import 'package:postcrap/shared/loading.dart';
import 'package:postcrap/widget/alert.dart';
import 'package:postcrap/widget/text.dart';
import 'package:postcrap/shared/input_constant.dart';

class Login extends StatefulWidget {
  final Function change;
  const Login({Key? key, required this.change}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final Authservice _auth = Authservice();

  bool loading = false;

  String email = '';
  String password = '';

  final textFieldFocusNode = FocusNode();
  bool _obscured = true;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus)
        return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus = true; // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading ? const Loading() : Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            animtext1,
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Hello again, you’ve been missed!',
              style: TextStyle(
                  fontFamily: 'Mabry-Pro',
                  color: textColor60,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 40,
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFormField(
                    cursorColor: primary100,
                    validator: (val) =>
                        val!.isEmpty ? 'Enter your email' : null,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: textColor100,
                        fontFamily: 'Aeonik'),
                    decoration: emailInputDecoration,
                    onChanged: (val) {
                      setState(() => email = val);
                    },
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  TextFormField(
                    cursorColor: primary100,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _obscured,
                    focusNode: textFieldFocusNode,
                    validator: (val) => val!.length < 6
                        ? 'Password should be 5+ characters long'
                        : null,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: textColor100,
                        fontFamily: 'Aeonik'),
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: textColor100, width: 1.3),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: textColor20, width: 0.7)),
                      hintText: 'Enter password',
                      hintStyle: const TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: textColor20),
                      suffixIcon: GestureDetector(
                          onTap: _toggleObscured,
                          child: Icon(
                            _obscured
                                ? Icons.visibility_off_rounded
                                : Icons.visibility_rounded,
                            size: 20,
                            color: _obscured ? textColor40 : textColor100,
                          )),
                    ),
                    onChanged: (val) {
                      setState(() => password = val);
                    },
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  TextButton(
                      onPressed: (() async {}),
                      child: const Text(
                        'Forgot password',
                        style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: primary100),
                      )),
                  const SizedBox(
                    height: 22,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: textColor100,
                    child: TextButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            setState(() => loading = true);
                            dynamic result =
                                await _auth.signIn(email, password);
                            if (result == null) {
                              setState(() {
                                signInError(context);
                                loading = false;
                              });
                            } else {
                              signInSuccess(context);
                              
                            }
                          }
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontFamily: 'Mabry-Pro',
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: background),
                        )),
                  )
                ],
              ),
            ),
            const Spacer(),
            Center(
              child: GestureDetector(
                onTap: () {
                  widget.change();
                },
                child: RichText(
                  text: const TextSpan(
                      style: TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 14,
                          color: textColor40,
                          fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(text: 'Don’t have an account ?'),
                        WidgetSpan(
                            child: SizedBox(
                          width: 8,
                        )),
                        TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(color: primary100)),
                      ]),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      )),
    );
  }
}
