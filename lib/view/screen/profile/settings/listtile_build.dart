import 'package:flutter/material.dart';

class ListTileBuild extends StatelessWidget {
  const ListTileBuild({
    Key? key,
    required this.text,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final String subtitle;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(fontSize: 11, color: Colors.grey),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 20,
      ),
      onTap: onTap,
    );
  }
}
