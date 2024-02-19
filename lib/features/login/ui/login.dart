import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:iconsax/iconsax.dart';
import 'package:login_page_ui/common/form_divider/form_divider.dart';
import 'package:login_page_ui/common/form_elevated_button/form-elevated_button.dart';
import 'package:login_page_ui/common/form_text_button/form_text_button.dart';
import 'package:login_page_ui/common/form_widget/text_field.dart';
import 'package:login_page_ui/common/title_widget/title_widget.dart';
import 'package:login_page_ui/features/signup/ui/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 135,
            ),
            const titleText(title: 'Login'),
            const titleText(title: 'Welcome back!'),
            const SizedBox(height: 25),
            Form(
                child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const TextFields(title: "Enter Your Username / Email"),
                  const SizedBox(height: 30),
                  const TextFields(
                      title: "Enter Your Password",
                      icon: Icon(Iconsax.eye_slash)),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Colors.blue[500],
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: FormElevatedButton(
                      title: 'Login',
                    ),
                  ),
                  FormTextButton(
                    title: 'Signup',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                    subtitle: 'Don\'t have account?',
                  ),

                  ///  Divider
                  const FormDivider(),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 18, 125, 213))),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(
                            image: AssetImage("assets/facebook.webp"),
                            height: 50,
                            width: 30,
                          ),
                          Text(
                            'Login with Facebook',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(
                            image: AssetImage("assets/google.webp"),
                            height: 50,
                            width: 30,
                          ),
                          Text(
                            'Login with Google',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    ));
  }
}
