import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -5,
      right: -50,
      child: GestureDetector(
        onTap: () {
          //
        },
        child: Container(
          height: 80,
          width: 150,
          padding: const EdgeInsets.only(left: 30),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
            ),
          ),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Icon(Icons.remove, size: 50),
          ),
        ),
      ),
    );
  }
}
