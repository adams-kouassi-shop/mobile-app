import 'package:ecommerce/presentation/components/BottomNavigationBar/bottomNavigationBar.dart';
import 'package:flutter/material.dart';
class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar(selectedIndex: 4,),
    );
  }
}
