import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class UnityWrapperProvider with ChangeNotifier {
  late UnityWidgetController? unityWidgetController;
  late double sliderValue;

  UnityWrapperProvider() {
    sliderValue = 0.0;
  }

  void onUnityCreated(UnityWidgetController controller) {
    unityWidgetController = controller;
    notifyListeners();
  }

  void setRotationSpeed(double speed) {
    if (unityWidgetController != null) {
      unityWidgetController!.postMessage(
        'Cube',
        'SetRotationSpeed',
        speed.toString(),
      );
      sliderValue = speed;
      notifyListeners();
    }
  }
}
