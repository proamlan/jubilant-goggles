import 'package:flutter/material.dart';
import 'package:jubilant/home/utils/comma_formatter.dart';
import 'package:jubilant/home/utils/constants.dart';

class TextFieldWithHint extends StatefulWidget {
  @override
  _TextFieldWithHintState createState() =>
      _TextFieldWithHintState();
}

class _TextFieldWithHintState extends State<TextFieldWithHint> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_handleTextChanged);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTextChanged() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      if (_controller.text.isEmpty)
        Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: const Text(
            'Enter number',
            style: TextStyle(fontSize: 40.0, color: Colors.grey),
          ),
        ),
      TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        inputFormatters: [CommaTextInputFormatter()],
        style: const TextStyle(fontSize: 40.0),
        decoration: const InputDecoration(
          prefix: Text(rupeeSymbol),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
        ),
      )
    ]);
  }
}
