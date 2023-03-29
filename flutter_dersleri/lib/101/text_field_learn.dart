import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldLearnView extends StatefulWidget {
  const TextFieldLearnView({super.key});

  @override
  State<TextFieldLearnView> createState() => _TextFieldLearnViewState();
}

class _TextFieldLearnViewState extends State<TextFieldLearnView> {
  final key = GlobalKey();
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            TextField(
              maxLength: 20,
              buildCounter: (BuildContext context,
                  {int? currentLength, bool? isFocused, int? maxLength}) {
                return _animatedContainer(currentLength);
              },
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              inputFormatters: [TextProjectInputFormatter()._formatter],
              focusNode: focusNodeTextFieldOne,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail),
                border: OutlineInputBorder(),
                hintText: 'Mail',
                labelText: 'Mail',
                fillColor: Color.fromARGB(255, 162, 217, 242),
                filled: true,
                // errorText: 'wrong '),
              ),
            ),
            TextFormField(
              focusNode: focusNodeTextFieldTwo,
              minLines: 2,
              maxLines: 4,
            )
          ],
        ));
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      key: key,
      duration: const Duration(seconds: 1),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.green,
    );
  }
}

class TextProjectInputFormatter {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (oldValue.text == "a") {
      return oldValue;
    }
    return oldValue;
  });
}
