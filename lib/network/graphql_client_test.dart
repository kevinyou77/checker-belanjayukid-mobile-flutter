import 'dart:io';
import 'package:belanjayuk_mobile_flutter/constants/constants.dart';
import 'package:graphql/client.dart';
import 'package:path_provider/path_provider.dart';

final HttpLink _httpLink = HttpLink(
  uri: Apis.githubApi,
);

final AuthLink _authLink = AuthLink(
  getToken: () async => 'Bearer ' + Apis.githubApiKey,
);

final Link _link = _authLink.concat(_httpLink as Link);

GraphQLClient _client;

GraphQLClient getGraphQLClient() {
  _client ??= GraphQLClient(
    link: _link,
    cache: InMemoryCache(storageProvider: () {
      return getTemporaryDirectory();
    }),
  );

  return _client;
}