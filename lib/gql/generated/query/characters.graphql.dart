import 'package:gql/ast.dart';

class Variables$Query$GetCharacters {
  factory Variables$Query$GetCharacters({
    required String name,
    required int page,
  }) =>
      Variables$Query$GetCharacters._({
        r'name': name,
        r'page': page,
      });

  Variables$Query$GetCharacters._(this._$data);

  factory Variables$Query$GetCharacters.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$page = data['page'];
    result$data['page'] = (l$page as int);
    return Variables$Query$GetCharacters._(result$data);
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

  CopyWith$Variables$Query$GetCharacters<Variables$Query$GetCharacters>
      get copyWith => CopyWith$Variables$Query$GetCharacters(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetCharacters) ||
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

abstract class CopyWith$Variables$Query$GetCharacters<TRes> {
  factory CopyWith$Variables$Query$GetCharacters(
    Variables$Query$GetCharacters instance,
    TRes Function(Variables$Query$GetCharacters) then,
  ) = _CopyWithImpl$Variables$Query$GetCharacters;

  factory CopyWith$Variables$Query$GetCharacters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCharacters;

  TRes call({
    String? name,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$GetCharacters<TRes>
    implements CopyWith$Variables$Query$GetCharacters<TRes> {
  _CopyWithImpl$Variables$Query$GetCharacters(
    this._instance,
    this._then,
  );

  final Variables$Query$GetCharacters _instance;

  final TRes Function(Variables$Query$GetCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$GetCharacters._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (page != _undefined && page != null) 'page': (page as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetCharacters<TRes>
    implements CopyWith$Variables$Query$GetCharacters<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCharacters(this._res);

  TRes _res;

  call({
    String? name,
    int? page,
  }) =>
      _res;
}

class Query$GetCharacters {
  Query$GetCharacters({
    this.characters,
    this.location,
    this.episodesByIds,
    this.$__typename = 'Query',
  });

  factory Query$GetCharacters.fromJson(Map<String, dynamic> json) {
    final l$characters = json['characters'];
    final l$location = json['location'];
    final l$episodesByIds = json['episodesByIds'];
    final l$$__typename = json['__typename'];
    return Query$GetCharacters(
      characters: l$characters == null
          ? null
          : Query$GetCharacters$characters.fromJson(
              (l$characters as Map<String, dynamic>)),
      location: l$location == null
          ? null
          : Query$GetCharacters$location.fromJson(
              (l$location as Map<String, dynamic>)),
      episodesByIds: (l$episodesByIds as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetCharacters$episodesByIds.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCharacters$characters? characters;

  final Query$GetCharacters$location? location;

  final List<Query$GetCharacters$episodesByIds?>? episodesByIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$episodesByIds = episodesByIds;
    _resultData['episodesByIds'] =
        l$episodesByIds?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$characters = characters;
    final l$location = location;
    final l$episodesByIds = episodesByIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$characters,
      l$location,
      l$episodesByIds == null
          ? null
          : Object.hashAll(l$episodesByIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCharacters) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$episodesByIds = episodesByIds;
    final lOther$episodesByIds = other.episodesByIds;
    if (l$episodesByIds != null && lOther$episodesByIds != null) {
      if (l$episodesByIds.length != lOther$episodesByIds.length) {
        return false;
      }
      for (int i = 0; i < l$episodesByIds.length; i++) {
        final l$episodesByIds$entry = l$episodesByIds[i];
        final lOther$episodesByIds$entry = lOther$episodesByIds[i];
        if (l$episodesByIds$entry != lOther$episodesByIds$entry) {
          return false;
        }
      }
    } else if (l$episodesByIds != lOther$episodesByIds) {
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

extension UtilityExtension$Query$GetCharacters on Query$GetCharacters {
  CopyWith$Query$GetCharacters<Query$GetCharacters> get copyWith =>
      CopyWith$Query$GetCharacters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCharacters<TRes> {
  factory CopyWith$Query$GetCharacters(
    Query$GetCharacters instance,
    TRes Function(Query$GetCharacters) then,
  ) = _CopyWithImpl$Query$GetCharacters;

  factory CopyWith$Query$GetCharacters.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCharacters;

  TRes call({
    Query$GetCharacters$characters? characters,
    Query$GetCharacters$location? location,
    List<Query$GetCharacters$episodesByIds?>? episodesByIds,
    String? $__typename,
  });
  CopyWith$Query$GetCharacters$characters<TRes> get characters;
  CopyWith$Query$GetCharacters$location<TRes> get location;
  TRes episodesByIds(
      Iterable<Query$GetCharacters$episodesByIds?>? Function(
              Iterable<
                  CopyWith$Query$GetCharacters$episodesByIds<
                      Query$GetCharacters$episodesByIds>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetCharacters<TRes>
    implements CopyWith$Query$GetCharacters<TRes> {
  _CopyWithImpl$Query$GetCharacters(
    this._instance,
    this._then,
  );

  final Query$GetCharacters _instance;

  final TRes Function(Query$GetCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? characters = _undefined,
    Object? location = _undefined,
    Object? episodesByIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCharacters(
        characters: characters == _undefined
            ? _instance.characters
            : (characters as Query$GetCharacters$characters?),
        location: location == _undefined
            ? _instance.location
            : (location as Query$GetCharacters$location?),
        episodesByIds: episodesByIds == _undefined
            ? _instance.episodesByIds
            : (episodesByIds as List<Query$GetCharacters$episodesByIds?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetCharacters$characters<TRes> get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Query$GetCharacters$characters.stub(_then(_instance))
        : CopyWith$Query$GetCharacters$characters(
            local$characters, (e) => call(characters: e));
  }

  CopyWith$Query$GetCharacters$location<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Query$GetCharacters$location.stub(_then(_instance))
        : CopyWith$Query$GetCharacters$location(
            local$location, (e) => call(location: e));
  }

  TRes episodesByIds(
          Iterable<Query$GetCharacters$episodesByIds?>? Function(
                  Iterable<
                      CopyWith$Query$GetCharacters$episodesByIds<
                          Query$GetCharacters$episodesByIds>?>?)
              _fn) =>
      call(
          episodesByIds: _fn(_instance.episodesByIds?.map((e) => e == null
              ? null
              : CopyWith$Query$GetCharacters$episodesByIds(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetCharacters<TRes>
    implements CopyWith$Query$GetCharacters<TRes> {
  _CopyWithStubImpl$Query$GetCharacters(this._res);

  TRes _res;

  call({
    Query$GetCharacters$characters? characters,
    Query$GetCharacters$location? location,
    List<Query$GetCharacters$episodesByIds?>? episodesByIds,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetCharacters$characters<TRes> get characters =>
      CopyWith$Query$GetCharacters$characters.stub(_res);
  CopyWith$Query$GetCharacters$location<TRes> get location =>
      CopyWith$Query$GetCharacters$location.stub(_res);
  episodesByIds(_fn) => _res;
}

const documentNodeQueryGetCharacters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCharacters'),
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
      ),
      FieldNode(
        name: NameNode(value: 'location'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: IntValueNode(value: '1'),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
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
        name: NameNode(value: 'episodesByIds'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'ids'),
            value: ListValueNode(values: [
              IntValueNode(value: '1'),
              IntValueNode(value: '2'),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
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
  ),
]);

class Query$GetCharacters$characters {
  Query$GetCharacters$characters({
    this.info,
    this.results,
    this.$__typename = 'Characters',
  });

  factory Query$GetCharacters$characters.fromJson(Map<String, dynamic> json) {
    final l$info = json['info'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query$GetCharacters$characters(
      info: l$info == null
          ? null
          : Query$GetCharacters$characters$info.fromJson(
              (l$info as Map<String, dynamic>)),
      results: (l$results as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetCharacters$characters$results.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCharacters$characters$info? info;

  final List<Query$GetCharacters$characters$results?>? results;

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
    if (!(other is Query$GetCharacters$characters) ||
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

extension UtilityExtension$Query$GetCharacters$characters
    on Query$GetCharacters$characters {
  CopyWith$Query$GetCharacters$characters<Query$GetCharacters$characters>
      get copyWith => CopyWith$Query$GetCharacters$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCharacters$characters<TRes> {
  factory CopyWith$Query$GetCharacters$characters(
    Query$GetCharacters$characters instance,
    TRes Function(Query$GetCharacters$characters) then,
  ) = _CopyWithImpl$Query$GetCharacters$characters;

  factory CopyWith$Query$GetCharacters$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCharacters$characters;

  TRes call({
    Query$GetCharacters$characters$info? info,
    List<Query$GetCharacters$characters$results?>? results,
    String? $__typename,
  });
  CopyWith$Query$GetCharacters$characters$info<TRes> get info;
  TRes results(
      Iterable<Query$GetCharacters$characters$results?>? Function(
              Iterable<
                  CopyWith$Query$GetCharacters$characters$results<
                      Query$GetCharacters$characters$results>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetCharacters$characters<TRes>
    implements CopyWith$Query$GetCharacters$characters<TRes> {
  _CopyWithImpl$Query$GetCharacters$characters(
    this._instance,
    this._then,
  );

  final Query$GetCharacters$characters _instance;

  final TRes Function(Query$GetCharacters$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? info = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCharacters$characters(
        info: info == _undefined
            ? _instance.info
            : (info as Query$GetCharacters$characters$info?),
        results: results == _undefined
            ? _instance.results
            : (results as List<Query$GetCharacters$characters$results?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetCharacters$characters$info<TRes> get info {
    final local$info = _instance.info;
    return local$info == null
        ? CopyWith$Query$GetCharacters$characters$info.stub(_then(_instance))
        : CopyWith$Query$GetCharacters$characters$info(
            local$info, (e) => call(info: e));
  }

  TRes results(
          Iterable<Query$GetCharacters$characters$results?>? Function(
                  Iterable<
                      CopyWith$Query$GetCharacters$characters$results<
                          Query$GetCharacters$characters$results>?>?)
              _fn) =>
      call(
          results: _fn(_instance.results?.map((e) => e == null
              ? null
              : CopyWith$Query$GetCharacters$characters$results(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetCharacters$characters<TRes>
    implements CopyWith$Query$GetCharacters$characters<TRes> {
  _CopyWithStubImpl$Query$GetCharacters$characters(this._res);

  TRes _res;

  call({
    Query$GetCharacters$characters$info? info,
    List<Query$GetCharacters$characters$results?>? results,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetCharacters$characters$info<TRes> get info =>
      CopyWith$Query$GetCharacters$characters$info.stub(_res);
  results(_fn) => _res;
}

class Query$GetCharacters$characters$info {
  Query$GetCharacters$characters$info({
    this.count,
    this.$__typename = 'Info',
  });

  factory Query$GetCharacters$characters$info.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$GetCharacters$characters$info(
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
    if (!(other is Query$GetCharacters$characters$info) ||
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

extension UtilityExtension$Query$GetCharacters$characters$info
    on Query$GetCharacters$characters$info {
  CopyWith$Query$GetCharacters$characters$info<
          Query$GetCharacters$characters$info>
      get copyWith => CopyWith$Query$GetCharacters$characters$info(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCharacters$characters$info<TRes> {
  factory CopyWith$Query$GetCharacters$characters$info(
    Query$GetCharacters$characters$info instance,
    TRes Function(Query$GetCharacters$characters$info) then,
  ) = _CopyWithImpl$Query$GetCharacters$characters$info;

  factory CopyWith$Query$GetCharacters$characters$info.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCharacters$characters$info;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCharacters$characters$info<TRes>
    implements CopyWith$Query$GetCharacters$characters$info<TRes> {
  _CopyWithImpl$Query$GetCharacters$characters$info(
    this._instance,
    this._then,
  );

  final Query$GetCharacters$characters$info _instance;

  final TRes Function(Query$GetCharacters$characters$info) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCharacters$characters$info(
        count: count == _undefined ? _instance.count : (count as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCharacters$characters$info<TRes>
    implements CopyWith$Query$GetCharacters$characters$info<TRes> {
  _CopyWithStubImpl$Query$GetCharacters$characters$info(this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetCharacters$characters$results {
  Query$GetCharacters$characters$results({
    this.name,
    this.$__typename = 'Character',
  });

  factory Query$GetCharacters$characters$results.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetCharacters$characters$results(
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
    if (!(other is Query$GetCharacters$characters$results) ||
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

extension UtilityExtension$Query$GetCharacters$characters$results
    on Query$GetCharacters$characters$results {
  CopyWith$Query$GetCharacters$characters$results<
          Query$GetCharacters$characters$results>
      get copyWith => CopyWith$Query$GetCharacters$characters$results(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCharacters$characters$results<TRes> {
  factory CopyWith$Query$GetCharacters$characters$results(
    Query$GetCharacters$characters$results instance,
    TRes Function(Query$GetCharacters$characters$results) then,
  ) = _CopyWithImpl$Query$GetCharacters$characters$results;

  factory CopyWith$Query$GetCharacters$characters$results.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCharacters$characters$results;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCharacters$characters$results<TRes>
    implements CopyWith$Query$GetCharacters$characters$results<TRes> {
  _CopyWithImpl$Query$GetCharacters$characters$results(
    this._instance,
    this._then,
  );

  final Query$GetCharacters$characters$results _instance;

  final TRes Function(Query$GetCharacters$characters$results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCharacters$characters$results(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCharacters$characters$results<TRes>
    implements CopyWith$Query$GetCharacters$characters$results<TRes> {
  _CopyWithStubImpl$Query$GetCharacters$characters$results(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetCharacters$location {
  Query$GetCharacters$location({
    this.id,
    this.$__typename = 'Location',
  });

  factory Query$GetCharacters$location.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetCharacters$location(
      id: (l$id as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCharacters$location) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetCharacters$location
    on Query$GetCharacters$location {
  CopyWith$Query$GetCharacters$location<Query$GetCharacters$location>
      get copyWith => CopyWith$Query$GetCharacters$location(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCharacters$location<TRes> {
  factory CopyWith$Query$GetCharacters$location(
    Query$GetCharacters$location instance,
    TRes Function(Query$GetCharacters$location) then,
  ) = _CopyWithImpl$Query$GetCharacters$location;

  factory CopyWith$Query$GetCharacters$location.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCharacters$location;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCharacters$location<TRes>
    implements CopyWith$Query$GetCharacters$location<TRes> {
  _CopyWithImpl$Query$GetCharacters$location(
    this._instance,
    this._then,
  );

  final Query$GetCharacters$location _instance;

  final TRes Function(Query$GetCharacters$location) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCharacters$location(
        id: id == _undefined ? _instance.id : (id as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCharacters$location<TRes>
    implements CopyWith$Query$GetCharacters$location<TRes> {
  _CopyWithStubImpl$Query$GetCharacters$location(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetCharacters$episodesByIds {
  Query$GetCharacters$episodesByIds({
    this.id,
    this.$__typename = 'Episode',
  });

  factory Query$GetCharacters$episodesByIds.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetCharacters$episodesByIds(
      id: (l$id as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCharacters$episodesByIds) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetCharacters$episodesByIds
    on Query$GetCharacters$episodesByIds {
  CopyWith$Query$GetCharacters$episodesByIds<Query$GetCharacters$episodesByIds>
      get copyWith => CopyWith$Query$GetCharacters$episodesByIds(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCharacters$episodesByIds<TRes> {
  factory CopyWith$Query$GetCharacters$episodesByIds(
    Query$GetCharacters$episodesByIds instance,
    TRes Function(Query$GetCharacters$episodesByIds) then,
  ) = _CopyWithImpl$Query$GetCharacters$episodesByIds;

  factory CopyWith$Query$GetCharacters$episodesByIds.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCharacters$episodesByIds;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCharacters$episodesByIds<TRes>
    implements CopyWith$Query$GetCharacters$episodesByIds<TRes> {
  _CopyWithImpl$Query$GetCharacters$episodesByIds(
    this._instance,
    this._then,
  );

  final Query$GetCharacters$episodesByIds _instance;

  final TRes Function(Query$GetCharacters$episodesByIds) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCharacters$episodesByIds(
        id: id == _undefined ? _instance.id : (id as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCharacters$episodesByIds<TRes>
    implements CopyWith$Query$GetCharacters$episodesByIds<TRes> {
  _CopyWithStubImpl$Query$GetCharacters$episodesByIds(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
