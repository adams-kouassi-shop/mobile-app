import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/constants.dart';
class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                    Text("Code de vérification", style: Theme.of(context).textTheme.headlineSmall),
                    const SizedBox(height: defaultPadding / 2),
                    Column(
                      children: [
                        const Text("Nous avons envoyé la vérification du code à                ",),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("0545205917",style: TextStyle(fontWeight: FontWeight.bold,color: blackColor),),
                            const Text("changer de numéro de téléphone",style: TextStyle(fontWeight: FontWeight.bold,color: primaryColor),),
                          ],
                        ),
                      ],
                    ),
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
                              prefixIcon: Padding(padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
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
                      child: const Text("Confirmer"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Code non reçu?"),
                        TextButton(
                          onPressed: () {

                          },
                          child: const Text("renvoyer le code"),
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
