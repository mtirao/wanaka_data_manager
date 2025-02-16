import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class HomeItemDetailsView extends StatelessWidget {
  const HomeItemDetailsView({super.key});

  static const routeName = '/homeitemdetails';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: const Center(
        child: Text('More Information Here'),
      ),
    );
  }
}
