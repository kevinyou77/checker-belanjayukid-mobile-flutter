import 'package:meta/meta.dart';

class GitHubRepoViewModel {
  final String repoName;
  final String creationDate;
  final String forkCount;

  GitHubRepoViewModel({
    @required this.repoName,
    @required this.creationDate,
    @required this.forkCount,
  });
}