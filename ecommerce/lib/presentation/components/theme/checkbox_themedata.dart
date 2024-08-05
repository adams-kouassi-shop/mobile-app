import 'package:ecommerce/presentation/const/constants.dart';
import 'package:flutter/material.dart';


CheckboxThemeData checkboxThemeData = CheckboxThemeData(
  checkColor: MaterialStateProperty.all(Colors.white),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadious / 2),),
  ),
  side: const BorderSide(color: whileColor40),
);
