import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

void showMessage(String text, {bool isError = false}) {
  BotToast.showAttachedWidget(
    attachedBuilder: (_) {
      return Column(
        // mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            color: isError ? Colors.red : Colors.green,
            child: Container(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 8,
                left: 16,
                right: 11,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              constraints: const BoxConstraints(minHeight: 64),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Icon(
                      isError ? Icons.error : Icons.done,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      child: const Icon(
                        Icons.close,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      BotToast.cleanAll();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    },
    duration: const Duration(seconds: 5),
    target: const Offset(600, 600),
  );
}
