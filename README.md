# Flutter GraphQL tutorial

### #TDD #GraphQL #WidgetTests

In this project you can see how to use GraphQL in a flutter application in a testable way that can be easily incorporated in a modular app following concepts of Domain Drive Design.

### GraphQl set up
We need [graphql-flutter](https://github.com/zino-hofmann/graphql-flutter/) and [graphql-code-gen](https://github.com/heftapp/graphql_codegen/tree/main/packages/graphql_codegen). After installing this 2 libraries you need to set up the `build.yaml`.
```
# build.yaml

targets:
  $default:
    builders:
      graphql_codegen:
        options:
          # all options go here
```
After you have this tools set up you can generate your GraphQL layer based on the GraphsQL spec and query files.
You can see all the details about this implementation in the [GraphQL folder](./lib/gql/)
Just make sure after every change to the ***.graphql** files you run:
```
flutter pub run build_runner build --delete-conflicting-outputs
```

### Domain / Infra structure Layer - Usage example
Here you can see how can you build Repository and Provider classes using the generated graphQl data layer. This is only a general approach designed to be easy to understand, and easy to tweak to specific architecture.
Code examples for this can be seen [here](./lib/providers/)

## Testing
Now for the fun and tricky part
### Mocks and Fixture
This is a tricky one in GraphQl until you do it. All clients inject extra type definitions in the qery and the response, so using a response from a GraphQL console is not gonna work. 
<br>**So the trick is to use json from live network calls from your app when making the fixtures.**
<br>You can see how is this done in the tests folder [here](./test/)

### Unit tests
Providers and repositories are covered with unit tests. 
<br>This tests would need to be extended to support the application logic, but the general approach would be the same.
<br>You can follow the code from [here](./test/provider_test.dart).
Mocks are [here](./test/repository_mock.dart).

### WidgetTests
Widget tests can not have a live network connection, so we need to mock all calls. Also i had a bunch of troubles using MockTail here, especially when you need to inject the mocked component in the tree.
<br>So my preferred approach is to make **MockProviders** specifically for the test. And make subversions of them according to how many and what kind of tests we want to run on that widget.
Example how i did this can be seen [here](./test/widget_test.dart)

## Hope you found this useful