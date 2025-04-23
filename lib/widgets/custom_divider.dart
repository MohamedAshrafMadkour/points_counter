import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .48,
      child: const VerticalDivider(
        indent: 10,
        color: Colors.grey,
        thickness: 3,
        width: 20,
      ),
    );
  }
}
