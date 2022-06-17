import 'package:flutter/material.dart';

class CustomInputFiel extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputFiel({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon, 
    this.suffixIcon, 
    this.keyboardType,
    this.obscureText, 
    required this.formProperty, 
    required this.formValues

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText == null ? false : true,
      onChanged: ( value ) {
        // Apuntem al formValues que conte tots els tipus de formProperty y depenent quina es doni pasem la data que li correspon
        formValues[formProperty] = value;
      },

      validator: (value) {
        if (value == null ) return 'Este campo es requrido';
        return value.length < 3 ? 'Mínimo de 3 letras' : null;
      },

      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: 'User Name ',
        // prefixIcon: Icon(Icons.verified),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}