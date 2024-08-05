import 'package:ecommerce/presentation/components/theme/input_decoration_theme.dart';
import 'package:ecommerce/presentation/const/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationPermissonStoreAvailabilityScreen extends StatelessWidget {
  const LocationPermissonStoreAvailabilityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: defaultPadding),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 40,
                    child: BackButton(),
                  ),
                  Text("Disponibilité du retrait en magasin", style: Theme.of(context).textTheme.titleSmall,),
                  const SizedBox(width: 40),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Form(
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.transparent,
                          hintText: "Trouver quelque chose...",
                          border: secodaryOutlineInputBorder(context),
                          enabledBorder: secodaryOutlineInputBorder(context),
                          focusedBorder: secodaryOutlineInputBorder(context),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(defaultPadding / 2),
                            child: SvgPicture.asset("assets/icons/Search.svg", height: 24, color: Theme.of(context).inputDecorationTheme.hintStyle!.color,),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding * 1.5),
                        child: Image.asset(
                          Theme.of(context).brightness == Brightness.light ? "assets/Illustration/Illustration-4.png" : "assets/Illustration/Illustration_darkTheme_4.png", height: MediaQuery.of(context).size.height * 0.3,),
                      ),
                    ),
                    Text("Vos services de localisation sont désactivés.", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Theme.of(context).textTheme.bodyLarge!.color),),
                    const SizedBox(height: defaultPadding),
                    const Text("Activez les services de localisation dans les paramètres de votre appareil pour rechercher des magasins par emplacement actuel. Vous pouvez toujours effectuer une recherche par pays/région, ville ou code postal.",),
                    const SizedBox(height: defaultPadding * 1.5),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Paramètres"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
