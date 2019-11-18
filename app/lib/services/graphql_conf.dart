import "package:flutter/material.dart";
import "package:graphql_flutter/graphql_flutter.dart";

class GraphQLConfiguration {
  static HttpLink httpLink = HttpLink(
    uri: 'http://localhost:8000/graphql/',
  );

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject),
    ),
  );

  GraphQLClient clientToQuery() {
    return GraphQLClient(
      link: httpLink,
      cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject),
    );
  }
}
