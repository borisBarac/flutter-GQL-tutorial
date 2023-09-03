import 'package:graphql/client.dart';

GraphQLClient createLiveClient() => GraphQLClient(
      link: HttpLink('https://rickandmortyapi.com/graphql'),
      cache: GraphQLCache(store: InMemoryStore()),
    );
