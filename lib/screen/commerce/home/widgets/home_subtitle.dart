

import 'package:flutter/cupertino.dart';

class HomeSubtitle extends StatelessWidget {
  const HomeSubtitle({required this.label, super.key});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 16,),
        Text(
          label,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
