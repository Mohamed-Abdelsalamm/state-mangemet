import 'package:flutter/material.dart';

class TextFormFieldReuse extends StatelessWidget {
  TextEditingController? controller;
  String? label;
  String? hint;
  TextInputType? textInputType;
  String? Function(String?)? validation;
  Function()? onTap;
  Function(String)? onChange;
  Icon? prefixIcon;
  Icon? suffixIcon;
  double? borderRadius;
  double? height;
  Color? color;
  bool? border;

  TextFormFieldReuse({
  super.key,
  required this.controller,
  required this.label,
  required this.textInputType,
  required this.validation,
  required this.onTap,
  this.borderRadius = 14,
  this.onChange,
  this.prefixIcon,
  this.suffixIcon,
  this.hint,
  this.height = 70,
  this.color,
  this.border = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            borderRadius!,
          ),
          color: color,
        ),
        child: TextFormField(
          cursorColor: Colors.purple,
          controller: controller,
          keyboardType: textInputType,
          validator: validation,
          onTap: onTap,
          onChanged: onChange,
          readOnly: false,
          decoration: InputDecoration(
            disabledBorder: InputBorder.none,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            label: Text('$label'),
            hintText: hint,
            focusedBorder: OutlineInputBorder( borderSide: BorderSide(color: Colors.black,width: 1,),),
            border:  OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  borderRadius!,
                ),
              ),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 30,
              ),
            ) ,
          ),
        ),
      ),
    );
  }
}
