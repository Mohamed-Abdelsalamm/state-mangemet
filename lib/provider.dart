import 'package:flutter/cupertino.dart';

class ProviderState extends ChangeNotifier {
  int cartIndex = 0;

  TextEditingController? nameController;
  TextEditingController? emailController;
  TextEditingController? numberController;
  TextEditingController? passwordController;

  // ProviderState({
  //   this.nameController,
  //   this.emailController,
  //   this.numberController,
  //   this.passwordController});

  incCart() {
    cartIndex++;
    notifyListeners();
  }

  decCart() {
    if(cartIndex > 0) {
      cartIndex--;
    }
    notifyListeners();
  }




}
