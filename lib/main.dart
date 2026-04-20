import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(const GithubPusherApp());
}

class GithubPusherApp extends StatelessWidget {
  const GithubPusherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub Pusher',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      home: const Scaffold(
        body: Center(
          child: Text('GitHub Pusher'),
        ),
      ),
    );
  }
}
