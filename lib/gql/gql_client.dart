import 'package:graphql/client.dart';

GraphQLClient createLiveClient() => GraphQLClient(
      link: HttpLink("https://example.com"),
      cache: GraphQLCache(store: InMemoryStore()),
    );
