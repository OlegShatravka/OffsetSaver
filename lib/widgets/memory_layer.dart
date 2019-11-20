import 'package:flutter/material.dart';

class MemoryLayer extends StatelessWidget {
  const MemoryLayer({this.storeKey, this.child});

  final String storeKey;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(key: PageStorageKey(storeKey), child: child);
  }
}
