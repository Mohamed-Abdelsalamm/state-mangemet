import 'package:flutter/cupertino.dart';

class ProviderState extends ChangeNotifier {
  int cartIndex = 0;

  TextEditingController nameController  = TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController numberController=TextEditingController();
  TextEditingController passwordController=TextEditingController();


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

  /*changeName(String? value){
    name = value;
    notifyListeners();
  }

  changeEmail(String? value){
    email = value;
    notifyListeners();
  }
  changeNumber(String? value) {
    number = value;
    notifyListeners();
  }
  changePass(String? value){
    password = value;
    notifyListeners();
  }
*/

}
