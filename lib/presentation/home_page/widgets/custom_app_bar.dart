import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '24',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'FEB',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(),
                  const Spacer(flex: 1),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: const Text(
                          'ISAAC NORMAN',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Row(
                        children: [
                          Text(
                            '5555 **** **** 2342',
                            style: TextStyle(fontSize: 8),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.add_card_rounded, size: 16)
                        ],
                      ),
                    ],
                  ),
                  const Spacer(flex: 3),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: const Color(0XFF404D8E),
                        width: 0.4,
                      ),
                    ),
                    child: const Icon(Icons.keyboard_arrow_down_sharp),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              //
            },
            child: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
