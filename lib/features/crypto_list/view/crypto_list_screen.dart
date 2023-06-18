import 'package:flutter/material.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key, required this.title});
  final String title;

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 10,
        itemBuilder: (context, i) => ListTile(
          title: Text("Bitcoin", style: theme.textTheme.labelSmall),
          subtitle: Text("2000", style: theme.textTheme.bodyMedium),
          onTap: () {
            Navigator.of(context).pushNamed("/coin");
          },
        ),
      ),
    );
  }
}
