import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ibilling/core/extension/string_extension.dart';
import 'package:ibilling/core/files_path.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "page_not_found".locale,
              style: FontStyleConst.instance.appBar,
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: Check token and go to home page
              },
              child: const Text("Go to home page"),
            ),
          ],
        ),
      ),
    );
  }
}
