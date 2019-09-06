

class AuthMutations {
  static String login = r'''
    mutation login($username: String!, $password: String!){
      login(username: $username, password: $password){
          bearerToken
          roleName
          username
      }
    }
  ''';
}