import 'package:flutter/material.dart';
import 'github_oauth_credentials.dart';
import 'src/github_login.dart';
import 'src/github_summary.dart';
import 'package:github/github.dart';
import 'package:window_to_front/window_to_front.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub Client',
      theme: ThemeData(useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GithubLoginWidget(
      githubClientId: githubClientId,
      githubClientSecret: githubClientSecret,
      githubScopes: githubScopes,
      builder: (context, httpClient) {
        WindowToFront.activate();
        final gitHub = GitHub(auth: Authentication.withToken(
            httpClient.credentials.accessToken));
        return Scaffold(
          appBar: AppBar(title: const Text('GitHub Client')),
          body: GitHubSummary(gitHub: gitHub),
        );
      },
    );
  }
}
