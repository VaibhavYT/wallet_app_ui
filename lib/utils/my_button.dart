import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
final String iconImagepath;
 final String buttonText;

  const MyButton(
    // ignore: use_function_type_syntax_for_parameters
    {Key ? key,
   required this.iconImagepath,
    required this.buttonText,
    }) :
    super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                  children: [
                    Container(
                      height: 90,
                      width: 100,
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
                          iconImagepath,
                        ),
                      ),
                    ),
                    Text(
                     buttonText,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700),
                    ),
                  ],
                );
  }
}