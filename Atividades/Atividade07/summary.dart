import 'package:flutter/material.dart';
import 'package:github/github.dart';

class GitHubSummary extends StatelessWidget {
  final GitHub gitHub;

  const GitHubSummary({super.key, required this.gitHub});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: gitHub.repositories.listRepositories().toList(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
        final repos = snapshot.data!;
        return ListView(
          children: [
            for (final repo in repos)
              ListTile(
                title: Text(repo.fullName ?? ''),
                subtitle: Text(repo.description ?? ''),
              ),
          ],
        );
      },
    );
  }
