import 'package:app/pages/test_page.dart';
import 'package:flutter/material.dart';
import 'package:app/pages/sign_in.dart';
import 'package:app/pages/create_group.dart';
import 'package:app/pages/first_login.dart';
import 'package:app/routes/routes_generator.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:app/services/graphql_conf.dart';

GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

void main() => runApp(
      GraphQLProvider(
        client: graphQLConfiguration.client,
        child: CacheProvider(child: MyApp()),
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: null,
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: SignInPage(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
