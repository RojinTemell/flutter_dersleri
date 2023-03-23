import 'package:flutter/material.dart';

class NoteApp extends StatelessWidget {
  NoteApp({Key? key}) : super(key: key);
  final ProjectTexts texts = ProjectTexts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: _ProjectPadding.horizontalPadding,
        child: Column(
          children: [
            SizedBox(height: SizedBoxHeights().sbheight),
            ImagePath(name: ProjectName().imgName),
            SizedBox(height: SizedBoxHeights().sbheight),
            Padding(
              padding: _ProjectPadding.verticalPadding,
              child: ProjectText(name_: texts._title),
            ),
            _subtitleWidget(
              description: texts.desc,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                    height: ButtonHeights().buttonmd,
                    child: Center(child: Text(texts.button_name1)))),
            TextButton(onPressed: () {}, child: Text(texts.button_name2))
          ],
        ),
      ),
    );
  }
}

class ButtonHeights {
  final double buttonmd = 50;
}

class SizedBoxHeights {
  final double sbheight = 50;
}

class _subtitleWidget extends StatelessWidget {
  const _subtitleWidget(
      {Key? key, required this.description, required this.textAlign})
      : super(key: key);

  final description;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(fontWeight: FontWeight.w400),
    );
  }
}

class _ProjectPadding {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ProjectText extends StatelessWidget {
  const ProjectText({Key? key, required this.name_}) : super(key: key);

  final name_;

  @override
  Widget build(BuildContext context) {
    return Text(
      name_,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black87, fontWeight: FontWeight.w500),
    );
  }
}

class ProjectName {
  final String imgName = 'flutter';
}

class ProjectTexts {
  final String _title = 'Create Your First Note';
  final String desc =
      "Add a note about anything (your thoughts on climate change, or your history essay and share it witht the world.";
  final String button_name1 = "Create A Note";
  final String button_name2 = "Import Notes";
}

class ImagePath extends StatelessWidget {
  const ImagePath({Key? key, required this.name}) : super(key: key);
  final name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/$name.png",
      fit: BoxFit.cover,
    );
  }
}
