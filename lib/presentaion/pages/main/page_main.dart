import 'package:flutter/material.dart';
import 'package:solid_test/presentaion/pages/main/widgets/main_body.dart';

/// main page
class PageMain extends StatelessWidget {
  /// constructor
  const PageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random colors generator'),
      ),
      body: const MainBody(),
    );
  }
}
