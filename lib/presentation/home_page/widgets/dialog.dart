import 'package:flutter/material.dart';

void showTopToast(BuildContext context) {
  final overlay = Overlay.of(context);
  late OverlayEntry overlayEntry;
  final animationController = AnimationController(
    vsync: Overlay.of(context),
    duration: const Duration(milliseconds: 300),
  );

  final animation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(-1, 0),
  ).animate(CurvedAnimation(
    parent: animationController,
    curve: Curves.easeInOut,
  ));

  overlayEntry = OverlayEntry(
    builder: (context) {
      return SlideTransition(
        position: animation,
        child: GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity != null && details.primaryVelocity! < 0) {
              animationController.forward().then((_) {
                overlayEntry.remove();
              });
            }
          },
          child: Material(
            color: Colors.transparent,
            child: Align(
              alignment: Alignment.topCenter,
              child: AnimatedContainer(
                width: MediaQuery.of(context).size.width * 0.5,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.17),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(50),
                ),
                duration: const Duration(milliseconds: 300),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.fireplace_outlined, color: Colors.white),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'You are too close to the daily limit. Only \$5.34 left',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Icon(Icons.close, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );

  overlay.insert(overlayEntry);
}
