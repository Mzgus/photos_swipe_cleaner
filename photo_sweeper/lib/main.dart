import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:photo_sweeper/app.dart';

void main() {
  runApp(
    const ProviderScope(
      child: PhotoSweeperApp(),
    ),
  );
}