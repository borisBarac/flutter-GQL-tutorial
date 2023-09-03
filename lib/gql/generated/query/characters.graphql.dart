import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$CharacterSubversions {
  Fragment$CharacterSubversions({
    this.name,
    this.species,
    this.location,
    this.$__typename = 'Character',
  });

  factory Fragment$CharacterSubversions.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$species = json['species'];
    final l$location = json['location'];
    final l$$__typename = json['__typename'];
    return Fragment$CharacterSubversions(
      name: (l$name as String?),
      species: (l$species as String?),
      location: l$location == null
          ? null
          : Fragment$CharacterSubversions$location.fromJson(
              (l$location as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? species;

  final Fragment$CharacterSubversions$location? location;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$species = species;
    _resultData['species'] = l$species;
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$species = species;
    final l$location = location;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$species,
      l$location,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CharacterSubversions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$species = species;
    final lOther$species = other.species;
    if (l$species != lOther$species) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CharacterSubversions
    on Fragment$CharacterSubversions {
  CopyWith$Fragment$CharacterSubversions<Fragment$CharacterSubversions>
      get copyWith => CopyWith$Fragment$CharacterSubversions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CharacterSubversions<TRes> {
  factory CopyWith$Fragment$CharacterSubversions(
    Fragment$CharacterSubversions instance,
    TRes Function(Fragment$CharacterSubversions) then,
  ) = _CopyWithImpl$Fragment$CharacterSubversions;

  factory CopyWith$Fragment$CharacterSubversions.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CharacterSubversions;

  TRes call({
    String? name,
    String? species,
    Fragment$CharacterSubversions$location? location,
    String? $__typename,
  });
  CopyWith$Fragment$CharacterSubversions$location<TRes> get location;
}

class _CopyWithImpl$Fragment$CharacterSubversions<TRes>
    implements CopyWith$Fragment$CharacterSubversions<TRes> {
  _CopyWithImpl$Fragment$CharacterSubversions(
    this._instance,
    this._then,
  );

  final Fragment$CharacterSubversions _instance;

  final TRes Function(Fragment$CharacterSubversions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? species = _undefined,
    Object? location = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CharacterSubversions(
        name: name == _undefined ? _instance.name : (name as String?),
        species:
            species == _undefined ? _instance.species : (species as String?),
        location: location == _undefined
            ? _instance.location
            : (location as Fragment$CharacterSubversions$location?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$CharacterSubversions$location<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Fragment$CharacterSubversions$location.stub(_then(_instance))
        : CopyWith$Fragment$CharacterSubversions$location(
            local$location, (e) => call(location: e));
  }
}

class _CopyWithStubImpl$Fragment$CharacterSubversions<TRes>
    implements CopyWith$Fragment$CharacterSubversions<TRes> {
  _CopyWithStubImpl$Fragment$CharacterSubversions(this._res);

  TRes _res;

  call({
    String? name,
    String? species,
    Fragment$CharacterSubversions$location? location,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$CharacterSubversions$location<TRes> get location =>
      CopyWith$Fragment$CharacterSubversions$location.stub(_res);
}

const fragmentDefinitionCharacterSubversions = FragmentDefinitionNode(
  name: NameNode(value: 'CharacterSubversions'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Character'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'species'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'location'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentCharacterSubversions = DocumentNode(definitions: [
  fragmentDefinitionCharacterSubversions,
]);

extension ClientExtension$Fragment$CharacterSubversions
    on graphql.GraphQLClient {
  void writeFragment$CharacterSubversions({
    required Fragment$CharacterSubversions data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CharacterSubversions',
            document: documentNodeFragmentCharacterSubversions,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CharacterSubversions? readFragment$CharacterSubversions({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CharacterSubversions',
          document: documentNodeFragmentCharacterSubversions,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$CharacterSubversions.fromJson(result);
  }
}

class Fragment$CharacterSubversions$location {
  Fragment$CharacterSubversions$location({
    this.name,
    this.$__typename = 'Location',
  });

  factory Fragment$CharacterSubversions$location.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$CharacterSubversions$location(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CharacterSubversions$location) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CharacterSubversions$location
    on Fragment$CharacterSubversions$location {
  CopyWith$Fragment$CharacterSubversions$location<
          Fragment$CharacterSubversions$location>
      get copyWith => CopyWith$Fragment$CharacterSubversions$location(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CharacterSubversions$location<TRes> {
  factory CopyWith$Fragment$CharacterSubversions$location(
    Fragment$CharacterSubversions$location instance,
    TRes Function(Fragment$CharacterSubversions$location) then,
  ) = _CopyWithImpl$Fragment$CharacterSubversions$location;

  factory CopyWith$Fragment$CharacterSubversions$location.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CharacterSubversions$location;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CharacterSubversions$location<TRes>
    implements CopyWith$Fragment$CharacterSubversions$location<TRes> {
  _CopyWithImpl$Fragment$CharacterSubversions$location(
    this._instance,
    this._then,
  );

  final Fragment$CharacterSubversions$location _instance;

  final TRes Function(Fragment$CharacterSubversions$location) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CharacterSubversions$location(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CharacterSubversions$location<TRes>
    implements CopyWith$Fragment$CharacterSubversions$location<TRes> {
  _CopyWithStubImpl$Fragment$CharacterSubversions$location(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetVersionsOfCharacter {
  factory Variables$Query$GetVersionsOfCharacter({
    required String name,
    required int page,
  }) =>
      Variables$Query$GetVersionsOfCharacter._({
        r'name': name,
        r'page': page,
      });

  Variables$Query$GetVersionsOfCharacter._(this._$data);

  factory Variables$Query$GetVersionsOfCharacter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$page = data['page'];
    result$data['page'] = (l$page as int);
    return Variables$Query$GetVersionsOfCharacter._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  int get page => (_$data['page'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$page = page;
    result$data['page'] = l$page;
    return result$data;
  }

  CopyWith$Variables$Query$GetVersionsOfCharacter<
          Variables$Query$GetVersionsOfCharacter>
      get copyWith => CopyWith$Variables$Query$GetVersionsOfCharacter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetVersionsOfCharacter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (l$page != lOther$page) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$page = page;
    return Object.hashAll([
      l$name,
      l$page,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetVersionsOfCharacter<TRes> {
  factory CopyWith$Variables$Query$GetVersionsOfCharacter(
    Variables$Query$GetVersionsOfCharacter instance,
    TRes Function(Variables$Query$GetVersionsOfCharacter) then,
  ) = _CopyWithImpl$Variables$Query$GetVersionsOfCharacter;

  factory CopyWith$Variables$Query$GetVersionsOfCharacter.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetVersionsOfCharacter;

  TRes call({
    String? name,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$GetVersionsOfCharacter<TRes>
    implements CopyWith$Variables$Query$GetVersionsOfCharacter<TRes> {
  _CopyWithImpl$Variables$Query$GetVersionsOfCharacter(
    this._instance,
    this._then,
  );

  final Variables$Query$GetVersionsOfCharacter _instance;

  final TRes Function(Variables$Query$GetVersionsOfCharacter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$GetVersionsOfCharacter._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (page != _undefined && page != null) 'page': (page as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetVersionsOfCharacter<TRes>
    implements CopyWith$Variables$Query$GetVersionsOfCharacter<TRes> {
  _CopyWithStubImpl$Variables$Query$GetVersionsOfCharacter(this._res);

  TRes _res;

  call({
    String? name,
    int? page,
  }) =>
      _res;
}

class Query$GetVersionsOfCharacter {
  Query$GetVersionsOfCharacter({
    this.characters,
    this.$__typename = 'Query',
  });

  factory Query$GetVersionsOfCharacter.fromJson(Map<String, dynamic> json) {
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$GetVersionsOfCharacter(
      characters: l$characters == null
          ? null
          : Query$GetVersionsOfCharacter$characters.fromJson(
              (l$characters as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetVersionsOfCharacter$characters? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$characters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetVersionsOfCharacter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetVersionsOfCharacter
    on Query$GetVersionsOfCharacter {
  CopyWith$Query$GetVersionsOfCharacter<Query$GetVersionsOfCharacter>
      get copyWith => CopyWith$Query$GetVersionsOfCharacter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetVersionsOfCharacter<TRes> {
  factory CopyWith$Query$GetVersionsOfCharacter(
    Query$GetVersionsOfCharacter instance,
    TRes Function(Query$GetVersionsOfCharacter) then,
  ) = _CopyWithImpl$Query$GetVersionsOfCharacter;

  factory CopyWith$Query$GetVersionsOfCharacter.stub(TRes res) =
      _CopyWithStubImpl$Query$GetVersionsOfCharacter;

  TRes call({
    Query$GetVersionsOfCharacter$characters? characters,
    String? $__typename,
  });
  CopyWith$Query$GetVersionsOfCharacter$characters<TRes> get characters;
}

class _CopyWithImpl$Query$GetVersionsOfCharacter<TRes>
    implements CopyWith$Query$GetVersionsOfCharacter<TRes> {
  _CopyWithImpl$Query$GetVersionsOfCharacter(
    this._instance,
    this._then,
  );

  final Query$GetVersionsOfCharacter _instance;

  final TRes Function(Query$GetVersionsOfCharacter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetVersionsOfCharacter(
        characters: characters == _undefined
            ? _instance.characters
            : (characters as Query$GetVersionsOfCharacter$characters?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetVersionsOfCharacter$characters<TRes> get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Query$GetVersionsOfCharacter$characters.stub(
            _then(_instance))
        : CopyWith$Query$GetVersionsOfCharacter$characters(
            local$characters, (e) => call(characters: e));
  }
}

class _CopyWithStubImpl$Query$GetVersionsOfCharacter<TRes>
    implements CopyWith$Query$GetVersionsOfCharacter<TRes> {
  _CopyWithStubImpl$Query$GetVersionsOfCharacter(this._res);

  TRes _res;

  call({
    Query$GetVersionsOfCharacter$characters? characters,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetVersionsOfCharacter$characters<TRes> get characters =>
      CopyWith$Query$GetVersionsOfCharacter$characters.stub(_res);
}

const documentNodeQueryGetVersionsOfCharacter = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetVersionsOfCharacter'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'characters'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'name'),
                value: VariableNode(name: NameNode(value: 'name')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'info'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'count'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'results'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'CharacterSubversions'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionCharacterSubversions,
]);
Query$GetVersionsOfCharacter _parserFn$Query$GetVersionsOfCharacter(
        Map<String, dynamic> data) =>
    Query$GetVersionsOfCharacter.fromJson(data);
typedef OnQueryComplete$Query$GetVersionsOfCharacter = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetVersionsOfCharacter?,
);

class Options$Query$GetVersionsOfCharacter
    extends graphql.QueryOptions<Query$GetVersionsOfCharacter> {
  Options$Query$GetVersionsOfCharacter({
    String? operationName,
    required Variables$Query$GetVersionsOfCharacter variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetVersionsOfCharacter? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetVersionsOfCharacter? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$GetVersionsOfCharacter(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetVersionsOfCharacter,
          parserFn: _parserFn$Query$GetVersionsOfCharacter,
        );

  final OnQueryComplete$Query$GetVersionsOfCharacter? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetVersionsOfCharacter
    extends graphql.WatchQueryOptions<Query$GetVersionsOfCharacter> {
  WatchOptions$Query$GetVersionsOfCharacter({
    String? operationName,
    required Variables$Query$GetVersionsOfCharacter variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetVersionsOfCharacter? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetVersionsOfCharacter,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetVersionsOfCharacter,
        );
}

class FetchMoreOptions$Query$GetVersionsOfCharacter
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetVersionsOfCharacter({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetVersionsOfCharacter variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetVersionsOfCharacter,
        );
}

extension ClientExtension$Query$GetVersionsOfCharacter
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetVersionsOfCharacter>>
      query$GetVersionsOfCharacter(
              Options$Query$GetVersionsOfCharacter options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetVersionsOfCharacter>
      watchQuery$GetVersionsOfCharacter(
              WatchOptions$Query$GetVersionsOfCharacter options) =>
          this.watchQuery(options);
  void writeQuery$GetVersionsOfCharacter({
    required Query$GetVersionsOfCharacter data,
    required Variables$Query$GetVersionsOfCharacter variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetVersionsOfCharacter),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetVersionsOfCharacter? readQuery$GetVersionsOfCharacter({
    required Variables$Query$GetVersionsOfCharacter variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetVersionsOfCharacter),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetVersionsOfCharacter.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetVersionsOfCharacter>
    useQuery$GetVersionsOfCharacter(
            Options$Query$GetVersionsOfCharacter options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetVersionsOfCharacter>
    useWatchQuery$GetVersionsOfCharacter(
            WatchOptions$Query$GetVersionsOfCharacter options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetVersionsOfCharacter$Widget
    extends graphql_flutter.Query<Query$GetVersionsOfCharacter> {
  Query$GetVersionsOfCharacter$Widget({
    widgets.Key? key,
    required Options$Query$GetVersionsOfCharacter options,
    required graphql_flutter.QueryBuilder<Query$GetVersionsOfCharacter> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetVersionsOfCharacter$characters {
  Query$GetVersionsOfCharacter$characters({
    this.info,
    this.results,
    this.$__typename = 'Characters',
  });

  factory Query$GetVersionsOfCharacter$characters.fromJson(
      Map<String, dynamic> json) {
    final l$info = json['info'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query$GetVersionsOfCharacter$characters(
      info: l$info == null
          ? null
          : Query$GetVersionsOfCharacter$characters$info.fromJson(
              (l$info as Map<String, dynamic>)),
      results: (l$results as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$CharacterSubversions.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetVersionsOfCharacter$characters$info? info;

  final List<Fragment$CharacterSubversions?>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$info = info;
    _resultData['info'] = l$info?.toJson();
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$info = info;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$info,
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetVersionsOfCharacter$characters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$info = info;
    final lOther$info = other.info;
    if (l$info != lOther$info) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetVersionsOfCharacter$characters
    on Query$GetVersionsOfCharacter$characters {
  CopyWith$Query$GetVersionsOfCharacter$characters<
          Query$GetVersionsOfCharacter$characters>
      get copyWith => CopyWith$Query$GetVersionsOfCharacter$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetVersionsOfCharacter$characters<TRes> {
  factory CopyWith$Query$GetVersionsOfCharacter$characters(
    Query$GetVersionsOfCharacter$characters instance,
    TRes Function(Query$GetVersionsOfCharacter$characters) then,
  ) = _CopyWithImpl$Query$GetVersionsOfCharacter$characters;

  factory CopyWith$Query$GetVersionsOfCharacter$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$GetVersionsOfCharacter$characters;

  TRes call({
    Query$GetVersionsOfCharacter$characters$info? info,
    List<Fragment$CharacterSubversions?>? results,
    String? $__typename,
  });
  CopyWith$Query$GetVersionsOfCharacter$characters$info<TRes> get info;
  TRes results(
      Iterable<Fragment$CharacterSubversions?>? Function(
              Iterable<
                  CopyWith$Fragment$CharacterSubversions<
                      Fragment$CharacterSubversions>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetVersionsOfCharacter$characters<TRes>
    implements CopyWith$Query$GetVersionsOfCharacter$characters<TRes> {
  _CopyWithImpl$Query$GetVersionsOfCharacter$characters(
    this._instance,
    this._then,
  );

  final Query$GetVersionsOfCharacter$characters _instance;

  final TRes Function(Query$GetVersionsOfCharacter$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? info = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetVersionsOfCharacter$characters(
        info: info == _undefined
            ? _instance.info
            : (info as Query$GetVersionsOfCharacter$characters$info?),
        results: results == _undefined
            ? _instance.results
            : (results as List<Fragment$CharacterSubversions?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetVersionsOfCharacter$characters$info<TRes> get info {
    final local$info = _instance.info;
    return local$info == null
        ? CopyWith$Query$GetVersionsOfCharacter$characters$info.stub(
            _then(_instance))
        : CopyWith$Query$GetVersionsOfCharacter$characters$info(
            local$info, (e) => call(info: e));
  }

  TRes results(
          Iterable<Fragment$CharacterSubversions?>? Function(
                  Iterable<
                      CopyWith$Fragment$CharacterSubversions<
                          Fragment$CharacterSubversions>?>?)
              _fn) =>
      call(
          results: _fn(_instance.results?.map((e) => e == null
              ? null
              : CopyWith$Fragment$CharacterSubversions(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetVersionsOfCharacter$characters<TRes>
    implements CopyWith$Query$GetVersionsOfCharacter$characters<TRes> {
  _CopyWithStubImpl$Query$GetVersionsOfCharacter$characters(this._res);

  TRes _res;

  call({
    Query$GetVersionsOfCharacter$characters$info? info,
    List<Fragment$CharacterSubversions?>? results,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetVersionsOfCharacter$characters$info<TRes> get info =>
      CopyWith$Query$GetVersionsOfCharacter$characters$info.stub(_res);
  results(_fn) => _res;
}

class Query$GetVersionsOfCharacter$characters$info {
  Query$GetVersionsOfCharacter$characters$info({
    this.count,
    this.$__typename = 'Info',
  });

  factory Query$GetVersionsOfCharacter$characters$info.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$GetVersionsOfCharacter$characters$info(
      count: (l$count as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetVersionsOfCharacter$characters$info) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetVersionsOfCharacter$characters$info
    on Query$GetVersionsOfCharacter$characters$info {
  CopyWith$Query$GetVersionsOfCharacter$characters$info<
          Query$GetVersionsOfCharacter$characters$info>
      get copyWith => CopyWith$Query$GetVersionsOfCharacter$characters$info(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetVersionsOfCharacter$characters$info<TRes> {
  factory CopyWith$Query$GetVersionsOfCharacter$characters$info(
    Query$GetVersionsOfCharacter$characters$info instance,
    TRes Function(Query$GetVersionsOfCharacter$characters$info) then,
  ) = _CopyWithImpl$Query$GetVersionsOfCharacter$characters$info;

  factory CopyWith$Query$GetVersionsOfCharacter$characters$info.stub(TRes res) =
      _CopyWithStubImpl$Query$GetVersionsOfCharacter$characters$info;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetVersionsOfCharacter$characters$info<TRes>
    implements CopyWith$Query$GetVersionsOfCharacter$characters$info<TRes> {
  _CopyWithImpl$Query$GetVersionsOfCharacter$characters$info(
    this._instance,
    this._then,
  );

  final Query$GetVersionsOfCharacter$characters$info _instance;

  final TRes Function(Query$GetVersionsOfCharacter$characters$info) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetVersionsOfCharacter$characters$info(
        count: count == _undefined ? _instance.count : (count as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetVersionsOfCharacter$characters$info<TRes>
    implements CopyWith$Query$GetVersionsOfCharacter$characters$info<TRes> {
  _CopyWithStubImpl$Query$GetVersionsOfCharacter$characters$info(this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}
