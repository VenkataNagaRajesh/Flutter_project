import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IncrementIntent extends Intent{}
class DecrementIntent extends Intent{}
class ShortcutsDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _ShortcutsDemo();

}

class _ShortcutsDemo extends State<ShortcutsDemo>{
int count =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keyboard Shortcuts Demo'),
      ),
      body: Container(
        child: Shortcuts(
          shortcuts: <LogicalKeySet, Intent>{
            LogicalKeySet(LogicalKeyboardKey.arrowLeft):  IncrementIntent(),
            LogicalKeySet(LogicalKeyboardKey.arrowRight):  DecrementIntent(),
          },
          child: Actions(
            actions: {
              IncrementIntent: CallbackAction(
                onInvoke: (Intent intent) {
                  setState(() {
                    count += 1;
                  });
                  return KeyEventResult.handled;
                },
              ),
              DecrementIntent: CallbackAction(
                onInvoke: (Intent intent) {
                  setState(() {
                    count -= 1;
                  });
                  return KeyEventResult.handled;
                },
              ),
            },
            child: Focus(
              onKey: (FocusNode node, RawKeyEvent event) {
                if (event is RawKeyDownEvent) {
                  // Handle global key events here if needed
                  return KeyEventResult.ignored; // Or handled based on your logic
                }
                return KeyEventResult.ignored; // Or handled based on your logic
              },
              child: Center(
                child: Text(
                  'Counter $count',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}