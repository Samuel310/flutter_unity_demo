import 'package:flutter/material.dart';
import 'package:flutter_unity_demo/unity_wrapper_provider.dart';
import 'package:provider/provider.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text("Rotation speed:"),
          ),
          Consumer<UnityWrapperProvider>(
            builder: (context, unityWrapperProvider, child) {
              return Slider(
                onChanged: unityWrapperProvider.setRotationSpeed,
                value: unityWrapperProvider.sliderValue,
                min: 0,
                max: 100,
              );
            },
          ),
        ],
      ),
    );
  }
}
