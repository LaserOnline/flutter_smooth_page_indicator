import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageContainer extends StatelessWidget {
  final Colors;
  const PageContainer({super.key, required this.Colors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        height: 50,
        width: 50,
        color: Colors,
      ),
    );
  }
}
