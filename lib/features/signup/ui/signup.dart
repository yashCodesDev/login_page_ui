import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:login_page_ui/common/form_divider/form_divider.dart';
import 'package:login_page_ui/common/form_elevated_button/form-elevated_button.dart';
import 'package:login_page_ui/common/form_text_button/form_text_button.dart';
import 'package:login_page_ui/common/form_widget/text_field.dart';
import 'package:login_page_ui/features/login/ui/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                const SizedBox(
                  height: 120,
                ),
                const Text(
                  "Signup",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40),
                Form(
                    child: Column(
                  children: [
                    const TextFields(title: 'Enter Your Username'),
                    const SizedBox(height: 20),
                    const TextFields(title: 'Enter Your Email'),
                    const SizedBox(height: 20),
                    const TextFields(title: 'Enter Your Phone Number'),
                    const SizedBox(height: 20),
                    const TextFields(
                      title: 'Enter Your Password',
                      icon: Icon(Iconsax.eye_slash),
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: FormElevatedButton(
                        title: 'Signup',
                      ),
                    ),
                    const SizedBox(height: 20),
                    FormTextButton(
                        title: 'Login',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                        },
                        subtitle: 'Already have account?'),
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
                    const SizedBox(height: 20),
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
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
