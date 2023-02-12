import 'package:flutter/material.dart';

class ButtonReuse extends StatelessWidget {
  double? width;
  double? height ;
  String? buttonText;
  bool? isBold;
  Function()? onPressed;
  Gradient? gradient;
  bool? addIcon;
  double? fontSize;

  ButtonReuse({
    this.width  = double.infinity,
    this.height = 60,
    required this.buttonText,
    this.isBold = true,
    required this.onPressed,
    this.gradient = const LinearGradient(
      colors: [Colors.greenAccent, Colors.teal],
    ),
    this.addIcon = false,
    this.fontSize = 18,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: gradient,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
          MaterialStateProperty.all<Color>(Colors.blue.withOpacity(0)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
        ),
        onPressed: onPressed,
        child: addIcon! ? Center(
          child: Row(
            children: [
              Icon(Icons.shopping_cart_outlined),
              SizedBox(width: 4,),
              Text(
                '$buttonText',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                  fontWeight: isBold == true ? FontWeight.bold : null,
                ),
              ),
            ],
          ),
        ) : Center(
          child: Text(
            '$buttonText',
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontWeight: isBold == true ? FontWeight.bold : null,
            ),
          ),
        ) ,
      ),
    );
  }
}
