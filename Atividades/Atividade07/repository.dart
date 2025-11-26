class GitHubRepository {
  final GitHubService _service;

  Future<List<GitHubRepo>> getUserRepos(String username) => _service.fetchRepos(username);
}
