import 'package:flutter/material.dart';

class SearchTextFieldWidget extends StatelessWidget {
  const SearchTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: const Icon(Icons.qr_code),
            hintText: 'Search Product',
            hintStyle: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w600),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400] as Color),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400] as Color),
            )),
      ),
    );
  }
}
