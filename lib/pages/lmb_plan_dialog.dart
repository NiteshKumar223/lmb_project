import 'package:flutter/material.dart';

import '../CustomUi/custom_color.dart';
import '../CustomUi/main_button.dart';

class LmbPlanDialog extends StatefulWidget {
  const LmbPlanDialog({super.key});

  @override
  State<LmbPlanDialog> createState() => _LmbPlanDialogState();
}

class _LmbPlanDialogState extends State<LmbPlanDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
            title: const Text('Choose Any One Plan',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: WebColors.bgcolor1,
                ),
                textAlign: TextAlign.center),
            alignment: Alignment.center,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            content: Container(
              height: 300,
              width: 270,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ListTile(
                    title: const Text('Rs.**** for 1 Month'),
                    trailing: TextButton(
                      style: TextButton.styleFrom(
                        elevation: 10,
                        foregroundColor: Colors.white,
                        backgroundColor: WebColors.bgcolor1,
                        padding: const EdgeInsets.all(12.0),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      onPressed: () {},
                      child: const Text('Pay'),
                    ),
                  ),
                  ListTile(
                    title: const Text('Rs.**** for 3 Month'),
                    trailing: TextButton(
                      style: TextButton.styleFrom(
                        elevation: 10,
                        foregroundColor: Colors.white,
                        backgroundColor: WebColors.bgcolor1,
                       padding: const EdgeInsets.all(12.0),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      onPressed: () {},
                      child: const Text('Pay'),
                    ),
                  ),
                  ListTile(
                    title: const Text('Rs.**** for 6 Month'),
                    trailing: TextButton(
                      style: TextButton.styleFrom(
                        elevation: 10,
                        foregroundColor: Colors.white,
                        backgroundColor: WebColors.bgcolor1,
                        padding: const EdgeInsets.all(12.0),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      onPressed: () {},
                      child: const Text('Pay'),
                    ),
                  ),
                  ListTile(
                    title: const Text('Rs.**** for 12 Month'),
                    trailing: TextButton(
                      style: TextButton.styleFrom(
                        elevation: 10,
                        foregroundColor: Colors.white,
                        backgroundColor: WebColors.bgcolor1,
                        padding: const EdgeInsets.all(12.0),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      onPressed: () {},
                      child: const Text('Pay'),
                    ),
                  ),
                ],
              ),
            ));
  }
}
