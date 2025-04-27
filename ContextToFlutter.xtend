package camsf.transformations

class ContextToFlutter {
  
  def generateFlutterScreen(String screenName) '''
    import 'package:flutter/material.dart';

    class «screenName»Screen extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: Text('«screenName»')),
          body: Center(child: Text('Welcome to «screenName» context!')),
        );
      }
    }
  '''
}
