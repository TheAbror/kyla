import 'package:flutter/material.dart';

class SwipeChildren extends StatelessWidget {
  const SwipeChildren({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: const Icon(Icons.telegram, color: Colors.white),
          ),
          const SizedBox(
            height: 24,
            child: VerticalDivider(
              width: 1,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Icon(Icons.edit, color: Colors.white),
          ),
          const SizedBox(
            height: 24,
            child: VerticalDivider(
              width: 1,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Icon(Icons.delete, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
