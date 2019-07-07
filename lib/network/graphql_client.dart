import 'package:belanjayuk_mobile_flutter/constants/apis.dart';
import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final HttpLink _httpLink = HttpLink(
  uri: graphQlApi,
);

final AuthLink _authLink = AuthLink(getToken: () async => "Bearer $apiKey");

final Link _link = _authLink.concat(_httpLink as Link);

ValueNotifier<GraphQLClient> client = ValueNotifier(
  GraphQLClient(
    cache: InMemoryCache(),
    link: _link,
  ),
);
