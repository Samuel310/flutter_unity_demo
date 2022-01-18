import 'package:flutter/material.dart';
import 'package:flutter_unity_demo/slider_widget.dart';
import 'package:flutter_unity_demo/unity_wrapper_provider.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:provider/provider.dart';

class UnityWrapper extends StatefulWidget {
  const UnityWrapper({Key? key}) : super(key: key);

  @override
  State<UnityWrapper> createState() => _UnityWrapperState();
}

class _UnityWrapperState extends State<UnityWrapper> {
  @override
  void dispose() {
    context.read<UnityWrapperProvider>().unityWidgetController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          UnityWidget(
            onUnityCreated: context.read<UnityWrapperProvider>().onUnityCreated,
            borderRadius: BorderRadius.circular(0),
            onUnityMessage: (dynamic message) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message.toString())));
            },
          ),
          const Positioned(bottom: 20, left: 20, right: 20, child: SliderWidget()),
        ],
      ),
    );
  }
}
