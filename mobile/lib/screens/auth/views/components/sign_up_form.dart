import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (nom) {
              // Email
            },
            validator: textfiledValidator.call,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Nom",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
              contentPadding: EdgeInsets.all(12),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                child: SvgPicture.asset("assets/icons/Profile.svg", height: 24, width: 24, colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3), BlendMode.srcIn,),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          TextFormField(
            onSaved: (prenoms) {},
            validator: textfiledValidator.call,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Prénoms",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
              contentPadding: EdgeInsets.all(12),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                child: SvgPicture.asset("assets/icons/Profile.svg", height: 24, width: 24, colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3), BlendMode.srcIn,),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          TextFormField(
            onSaved: (emal) {},
            validator: emaildValidator.call,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Adresse Email",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
              contentPadding: EdgeInsets.all(12),
              suffixIcon: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                child: SvgPicture.asset("assets/icons/Message.svg", height: 24, width: 24, colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3), BlendMode.srcIn,),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          TextFormField(
            onSaved: (prenoms) {
              // Email
            },
            validator: textfiledValidator.call,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Téléphone",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
              contentPadding: EdgeInsets.all(12),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                child: SvgPicture.asset("assets/icons/Call.svg", height: 24, width: 24, colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3), BlendMode.srcIn,),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          TextFormField(
            onSaved: (pass) { },
            validator: passwordValidator.call,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Mot de passe",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
              contentPadding: EdgeInsets.all(12),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                child: SvgPicture.asset("assets/icons/Lock.svg", height: 24, width: 24, colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3), BlendMode.srcIn,),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          TextFormField(
            onSaved: (pass) { },
            validator: passwordValidator.call,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Confirmer mot de passe",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
              contentPadding: EdgeInsets.all(12),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                child: SvgPicture.asset("assets/icons/Lock.svg", height: 24, width: 24, colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3), BlendMode.srcIn,),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
