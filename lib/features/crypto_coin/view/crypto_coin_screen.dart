import 'package:flutter/material.dart';

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key, required this.title});
  final String title;

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) => ListTile(
          title: Text("Bitcoin", style: theme.textTheme.labelSmall),
          subtitle: Text("2000", style: theme.textTheme.bodyMedium),
        ),
      ),
    );
  }
}
