import 'package:belanjayuk_mobile_flutter/data_models/github_repo.dart';
import 'package:belanjayuk_mobile_flutter/network/graphql_client_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:graphql/client.dart';

class GitHubRepoProvider {
  Future<List<GithubRepo>> getCurrentUserRepos() {
    return getGraphQLClient().query(_queryOptions()).then(_toGitHubRepo);
  }

  QueryOptions _queryOptions() {
    return QueryOptions(
      document: readRepositories,
      variables: <String, dynamic>{
        'nRepositories': 50,
      },
    );
  }

  List<GithubRepo> _toGitHubRepo(QueryResult queryResult) {
    if (queryResult.hasErrors) {
      throw Exception();
    }

    var lists = queryResult.data['repository'];
    debugPrint('$lists');

    final list =
        queryResult.data['viewer']['repositories']['nodes'] as List<dynamic>;

    return list
        .map((repoJson) => GithubRepo.fromJson(repoJson))
        .toList(growable: false);
  }
}

const String readRepositories = r'''
  query {
    repository(owner:"octocat", name:"Hello-World") {
      issues(last:20, states:CLOSED) {
        edges {
          node {
            title
            url
            labels(first:5) {
              edges {
                node {
                  name
                }
              }
            }
          }
        }
      }
    }
  }
''';
