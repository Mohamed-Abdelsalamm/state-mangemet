import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_with_provider/home_screen.dart';
import 'package:state_management_with_provider/provider.dart';
import 'package:state_management_with_provider/text_form_field.dart';
import 'button_reuse.dart';

class RegisterScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  TextEditingController? name;
  TextEditingController? email;
  TextEditingController? number;
  TextEditingController? password;

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const ScrollPhysics(),
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Consumer<ProviderState>(
                  builder: (context, value, child) => Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormFieldReuse(
                        controller: value.nameController,
                        label: 'Full Name',
                        hint: 'Your name',
                        textInputType: TextInputType.name,
                        validation: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Your Name ';
                          }
                          return null;
                        },
                        prefixIcon: const Icon(Icons.person_outline),
                        onTap: () {},
                      ),
                      TextFormFieldReuse(
                        controller: value.emailController,
                        label: 'Email',
                        hint: 'Example@gamil.com',
                        textInputType: TextInputType.emailAddress,
                        validation: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Your Email Address ';
                          }
                          return null;
                        },
                        prefixIcon: const Icon(Icons.email_outlined),
                        onTap: () {},
                      ),
                      TextFormFieldReuse(
                        controller: value.numberController,
                        label: 'Phone Number',
                        hint: '+02 **** *** ****',
                        textInputType: TextInputType.phone,
                        validation: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Your Phone Number';
                          }
                          return null;
                        },
                        prefixIcon: const Icon(Icons.phone_android),
                        onTap: () {},
                      ),
                      TextFormFieldReuse(
                        // hint: 'Example@gamil.com',
                        controller: value.passwordController,
                        label: 'Password',
                        textInputType: TextInputType.visiblePassword,
                        validation: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Your Password ';
                          }
                          return null;
                        },
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: const Icon(Icons.remove_red_eye),
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Consumer<ProviderState>(
                        builder: (context, value, child) => ButtonReuse(
                          buttonText: 'Sign up',
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an Account",
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 16.5, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
