import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/constants.dart';
import 'package:shop/route/route_constants.dart';
import 'package:shop/screens/auth/views/otp_screen.dart';

class PasswordRecoveryScreen extends StatefulWidget {
  const PasswordRecoveryScreen({super.key});

  @override
  State<PasswordRecoveryScreen> createState() => _PasswordRecoveryScreenState();
}

class _PasswordRecoveryScreenState extends State<PasswordRecoveryScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Rénitialiser votre mot de passe !", style: Theme.of(context).textTheme.headlineSmall),
                    const SizedBox(height: defaultPadding / 2),
                    const Text("Entrez votre adresse email pour récupérer votre mot de passe",),
                    const SizedBox(height: defaultPadding),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            onSaved: (emal) {
                              // Email
                            },
                            validator: emaildValidator.call,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Addresse Email",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: primaryColor,
                                ),
                              ),
                              contentPadding: EdgeInsets.all(12),
                              suffixIcon: Padding(padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                                child: SvgPicture.asset("assets/icons/Message.svg", height: 24, width: 24,
                                  colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3), BlendMode.srcIn),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height > 700
                          ? size.height * 0.1
                          : defaultPadding,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                        }
                      },
                      child: const Text("Se connecter"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account ?"),
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
        ],
      ),
    );
  }
}

