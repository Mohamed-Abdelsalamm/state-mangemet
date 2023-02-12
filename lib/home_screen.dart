import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_with_provider/button_reuse.dart';
import 'package:state_management_with_provider/provider.dart';
import 'package:state_management_with_provider/rigister_screen.dart';
import 'package:state_management_with_provider/third_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[100],
        elevation: 0,
        toolbarHeight: 85,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.teal,
              radius: 35,
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                  'Hi, Mohamed',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Stack(alignment: Alignment.topLeft, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: IconButton(
                    color: Colors.black,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      size: 38,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6.0, left: 6.0),
                child: CircleAvatar(
                  backgroundColor: Colors.teal,
                  radius: 11,
                  child: Consumer<ProviderState>(
                    builder: (context, value, child) => Text(
                      '${value.cartIndex}',
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 25,
              height: MediaQuery.of(context).size.height / 3.5,
              color: Colors.grey[300],
              child: Image.asset('lib/assets/5.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 25,
              height: MediaQuery.of(context).size.height / 3.8,
              color: Colors.grey[300],
              child: Center(
                child: Consumer<ProviderState>(
                  builder: (context, value, child) => Text(
                    'Welcome ${value.nameController} your email is ${value.emailController} and your mobile number is ${value.numberController} .',
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 2),
                  ),
                  child: Consumer<ProviderState>(
                    builder: (context, value, child) => IconButton(
                      onPressed: () {
                        value.decCart();
                      },
                      icon: const Icon(
                        Icons.remove,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 14,
                ),
                Consumer<ProviderState>(
                  builder: (context, value, child) => Container(
                    height: 80,
                    width: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                        child: Text(
                      '${value.cartIndex}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 2),
                  ),
                  child: Consumer<ProviderState>(
                    builder: (context, value, child) => IconButton(
                      onPressed: () {
                        value.incCart();
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ButtonReuse(
                width: 200,
                addIcon: true,
                buttonText: 'Add To Cart',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ThirdScreen(),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
