import 'package:flutter/material.dart';

class FadeAnimationNotifier extends ValueNotifier {
  FadeAnimationNotifier(value) : super(value);

  showContainers() {
    value = Alignment.centerRight;
  }
}
