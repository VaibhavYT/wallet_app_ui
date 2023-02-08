// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  final String iconImagePath;
  final String tileName;
  final String tileSubName;

  const MyList({
    Key?key,
    required this.iconImagePath,
    required this.tileName,
    required this.tileSubName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          blurRadius: 15,
                          spreadRadius: 8,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(5),
                    child: Center(
                      child: Image.asset(
                        iconImagePath,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          tileName,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(tileSubName),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(Icons.arrow_forward_ios_sharp)
            ],
          ),
        )
      ],
    );
  }
}
