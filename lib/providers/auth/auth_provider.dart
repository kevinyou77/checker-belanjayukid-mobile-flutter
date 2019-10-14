import 'package:belanjayuk_mobile_flutter/data_models/user_auth_model.dart';
import 'package:belanjayuk_mobile_flutter/network/graphql_client.dart';
import 'package:belanjayuk_mobile_flutter/providers/auth/auth_mutations.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class AuthProvider {
  Future<UserAuthModel> login (String username, String password) {
    return getGraphQLClient()
          .mutate(_login(username, password))
          .then(_toUserAuthModel);
  }

  MutationOptions _login(String username, String password) {
    return MutationOptions(
      document: AuthMutations.login,
      variables: {
        'username': username,
        'password': password
      }
    );
  }

  UserAuthModel _toUserAuthModel(QueryResult mutationResult) {
    if (mutationResult.hasErrors) {
      throw Exception();
    }

    var bearerToken = mutationResult.data['login']['bearerToken'];
    var username = mutationResult.data['login']['username'];
    var roleName = mutationResult.data['login']['roleName'];

    var model =  UserAuthModel(
      bearerToken: bearerToken,
      username: username,
      roleName: roleName
    );

    return model;
  }
}