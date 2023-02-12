import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_with_provider/provider.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.teal,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              width: MediaQuery.of(context).size.width - 140,
              height: MediaQuery.of(context).size.height / 2 - 80,
              child: Image.asset('lib/assets/5.png'),
            ),
          ),
          SizedBox(
            height: 80,
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
                    icon: Icon(
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
              SizedBox(
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
                    icon: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
