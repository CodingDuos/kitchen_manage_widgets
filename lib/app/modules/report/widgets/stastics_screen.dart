import 'package:flutter/material.dart';

class StasticsScreenPage extends StatelessWidget {
  const StasticsScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [0, 1, 2, 3]
          .map((e) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '49',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 60,
                            color: Color.fromARGB(255, 25, 63, 94),
                          ),
                        ),
                        Text(
                          'Transactions',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                            color: Color.fromARGB(255, 25, 63, 94),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }
}
