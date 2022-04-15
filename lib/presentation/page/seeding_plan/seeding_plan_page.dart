import 'package:flutter/material.dart';

class SeedingPlanPage extends StatefulWidget {
  const SeedingPlanPage({Key? key}) : super(key: key);

  @override
  State<SeedingPlanPage> createState() => _SeedingPlanPageState();
}

class _SeedingPlanPageState extends State<SeedingPlanPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('План посева'),
    );
  }
}
