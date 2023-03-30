import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_smooth_page_indicator/widget/page/Container.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PgaeHome extends StatefulWidget {
  const PgaeHome({Key? key}) : super(key: key);

  @override
  State<PgaeHome> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PgaeHome> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                PageContainer(Colors: Colors.black),
                PageContainer(Colors: Colors.amber),
                PageContainer(Colors: Colors.blue),
                PageContainer(Colors: Colors.brown),
                PageContainer(Colors: Colors.blueGrey),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 5,
            effect: JumpingDotEffect(
              activeDotColor: Colors.deepPurple,
              dotColor: Colors.deepPurple.shade300,
              dotHeight: 15,
              dotWidth: 15,
              spacing: 10,
              jumpScale: 5,
            ),
          ),
        ],
      ),
    );
  }
}
