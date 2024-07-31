import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/screens/auth/views/components/sign_up_form.dart';
import 'package:shop/route/route_constants.dart';



class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/welcome.png", height: MediaQuery.of(context).size.height * 0.35, width: double.infinity, fit: BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Commençons !", style: Theme.of(context).textTheme.headlineSmall,),
                  const SizedBox(height: defaultPadding / 2),
                  const Text("Veuillez saisir vos données valides afin de créer un compte.",),
                  const SizedBox(height: defaultPadding),
                  SignUpForm(formKey: _formKey),
                  const SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      Checkbox(
                        onChanged: (value) {},
                        value: false,
                      ),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            text: "Je suis d'accord avec le",
                            children: [
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                        context, termsOfServicesScreenRoute);
                                  },
                                text: " Conditions d'utilisation ", style: const TextStyle(color: primaryColor, fontWeight: FontWeight.w500,),
                              ),
                              const TextSpan(
                                text: "& politique de confidentialité.",
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: defaultPadding * 2),
                  ElevatedButton(
                    onPressed: () {
                      // There is 2 more screens while user complete their profile
                      // afre sign up, it's available on the pro version get it now
                      // 🔗 https://theflutterway.gumroad.com/l/fluttershop
                      Navigator.pushNamed(context, entryPointScreenRoute);
                    },
                    child: const Text("Continuer"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Do you have an account ?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, logInScreenRoute);
                        },
                        child: const Text("Se connecter"),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
