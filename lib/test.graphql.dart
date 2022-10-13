import 'package:gql/ast.dart';

class Query$Testing {
  Query$Testing({
    required this.books,
    required this.$__typename,
  });

  factory Query$Testing.fromJson(Map<String, dynamic> json) {
    final l$books = json['books'];
    final l$$__typename = json['__typename'];
    return Query$Testing(
      books: (l$books as List<dynamic>)
          .map((e) => Query$Testing$books.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Testing$books> books;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$books = books;
    _resultData['books'] = l$books.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$books = books;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$books.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Testing) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$books = books;
    final lOther$books = other.books;
    if (l$books.length != lOther$books.length) {
      return false;
    }
    for (int i = 0; i < l$books.length; i++) {
      final l$books$entry = l$books[i];
      final lOther$books$entry = lOther$books[i];
      if (l$books$entry != lOther$books$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Testing on Query$Testing {
  CopyWith$Query$Testing<Query$Testing> get copyWith => CopyWith$Query$Testing(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Testing<TRes> {
  factory CopyWith$Query$Testing(
    Query$Testing instance,
    TRes Function(Query$Testing) then,
  ) = _CopyWithImpl$Query$Testing;

  factory CopyWith$Query$Testing.stub(TRes res) =
      _CopyWithStubImpl$Query$Testing;

  TRes call({
    List<Query$Testing$books>? books,
    String? $__typename,
  });
  TRes books(
      Iterable<Query$Testing$books> Function(
              Iterable<CopyWith$Query$Testing$books<Query$Testing$books>>)
          _fn);
}

class _CopyWithImpl$Query$Testing<TRes>
    implements CopyWith$Query$Testing<TRes> {
  _CopyWithImpl$Query$Testing(
    this._instance,
    this._then,
  );

  final Query$Testing _instance;

  final TRes Function(Query$Testing) _then;

  static const _undefined = {};

  TRes call({
    Object? books = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Testing(
        books: books == _undefined || books == null
            ? _instance.books
            : (books as List<Query$Testing$books>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes books(
          Iterable<Query$Testing$books> Function(
                  Iterable<CopyWith$Query$Testing$books<Query$Testing$books>>)
              _fn) =>
      call(
          books: _fn(_instance.books.map((e) => CopyWith$Query$Testing$books(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$Testing<TRes>
    implements CopyWith$Query$Testing<TRes> {
  _CopyWithStubImpl$Query$Testing(this._res);

  TRes _res;

  call({
    List<Query$Testing$books>? books,
    String? $__typename,
  }) =>
      _res;
  books(_fn) => _res;
}

const documentNodeQueryTesting = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Testing'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'books'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'author'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'Textbook'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'courses'),
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
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ColoringBook'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'colors'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$Testing$books {
  Query$Testing$books({
    required this.title,
    required this.author,
    required this.$__typename,
  });

  factory Query$Testing$books.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Textbook":
        return Query$Testing$books$$Textbook.fromJson(json);

      case "ColoringBook":
        return Query$Testing$books$$ColoringBook.fromJson(json);

      default:
        final l$title = json['title'];
        final l$author = json['author'];
        final l$$__typename = json['__typename'];
        return Query$Testing$books(
          title: (l$title as String),
          author: (l$author as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String title;

  final String author;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$author = author;
    _resultData['author'] = l$author;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$author = author;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$author,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Testing$books) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$author = author;
    final lOther$author = other.author;
    if (l$author != lOther$author) {
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

extension UtilityExtension$Query$Testing$books on Query$Testing$books {
  CopyWith$Query$Testing$books<Query$Testing$books> get copyWith =>
      CopyWith$Query$Testing$books(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Testing$books<TRes> {
  factory CopyWith$Query$Testing$books(
    Query$Testing$books instance,
    TRes Function(Query$Testing$books) then,
  ) = _CopyWithImpl$Query$Testing$books;

  factory CopyWith$Query$Testing$books.stub(TRes res) =
      _CopyWithStubImpl$Query$Testing$books;

  TRes call({
    String? title,
    String? author,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Testing$books<TRes>
    implements CopyWith$Query$Testing$books<TRes> {
  _CopyWithImpl$Query$Testing$books(
    this._instance,
    this._then,
  );

  final Query$Testing$books _instance;

  final TRes Function(Query$Testing$books) _then;

  static const _undefined = {};

  TRes call({
    Object? title = _undefined,
    Object? author = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Testing$books(
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        author: author == _undefined || author == null
            ? _instance.author
            : (author as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Testing$books<TRes>
    implements CopyWith$Query$Testing$books<TRes> {
  _CopyWithStubImpl$Query$Testing$books(this._res);

  TRes _res;

  call({
    String? title,
    String? author,
    String? $__typename,
  }) =>
      _res;
}

class Query$Testing$books$$Textbook implements Query$Testing$books {
  Query$Testing$books$$Textbook({
    required this.title,
    required this.author,
    required this.$__typename,
    required this.courses,
  });

  factory Query$Testing$books$$Textbook.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$author = json['author'];
    final l$$__typename = json['__typename'];
    final l$courses = json['courses'];
    return Query$Testing$books$$Textbook(
      title: (l$title as String),
      author: (l$author as String),
      $__typename: (l$$__typename as String),
      courses: (l$courses as List<dynamic>).map((e) => (e as String)).toList(),
    );
  }

  final String title;

  final String author;

  final String $__typename;

  final List<String> courses;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$courses = courses;
    _resultData['courses'] = l$courses.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$author = author;
    final l$$__typename = $__typename;
    final l$courses = courses;
    return Object.hashAll([
      l$title,
      l$author,
      l$$__typename,
      Object.hashAll(l$courses.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Testing$books$$Textbook) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$author = author;
    final lOther$author = other.author;
    if (l$author != lOther$author) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$courses = courses;
    final lOther$courses = other.courses;
    if (l$courses.length != lOther$courses.length) {
      return false;
    }
    for (int i = 0; i < l$courses.length; i++) {
      final l$courses$entry = l$courses[i];
      final lOther$courses$entry = lOther$courses[i];
      if (l$courses$entry != lOther$courses$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$Testing$books$$Textbook
    on Query$Testing$books$$Textbook {
  CopyWith$Query$Testing$books$$Textbook<Query$Testing$books$$Textbook>
      get copyWith => CopyWith$Query$Testing$books$$Textbook(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Testing$books$$Textbook<TRes> {
  factory CopyWith$Query$Testing$books$$Textbook(
    Query$Testing$books$$Textbook instance,
    TRes Function(Query$Testing$books$$Textbook) then,
  ) = _CopyWithImpl$Query$Testing$books$$Textbook;

  factory CopyWith$Query$Testing$books$$Textbook.stub(TRes res) =
      _CopyWithStubImpl$Query$Testing$books$$Textbook;

  TRes call({
    String? title,
    String? author,
    String? $__typename,
    List<String>? courses,
  });
}

class _CopyWithImpl$Query$Testing$books$$Textbook<TRes>
    implements CopyWith$Query$Testing$books$$Textbook<TRes> {
  _CopyWithImpl$Query$Testing$books$$Textbook(
    this._instance,
    this._then,
  );

  final Query$Testing$books$$Textbook _instance;

  final TRes Function(Query$Testing$books$$Textbook) _then;

  static const _undefined = {};

  TRes call({
    Object? title = _undefined,
    Object? author = _undefined,
    Object? $__typename = _undefined,
    Object? courses = _undefined,
  }) =>
      _then(Query$Testing$books$$Textbook(
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        author: author == _undefined || author == null
            ? _instance.author
            : (author as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        courses: courses == _undefined || courses == null
            ? _instance.courses
            : (courses as List<String>),
      ));
}

class _CopyWithStubImpl$Query$Testing$books$$Textbook<TRes>
    implements CopyWith$Query$Testing$books$$Textbook<TRes> {
  _CopyWithStubImpl$Query$Testing$books$$Textbook(this._res);

  TRes _res;

  call({
    String? title,
    String? author,
    String? $__typename,
    List<String>? courses,
  }) =>
      _res;
}

class Query$Testing$books$$ColoringBook implements Query$Testing$books {
  Query$Testing$books$$ColoringBook({
    required this.title,
    required this.author,
    required this.$__typename,
    required this.colors,
  });

  factory Query$Testing$books$$ColoringBook.fromJson(
      Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$author = json['author'];
    final l$$__typename = json['__typename'];
    final l$colors = json['colors'];
    return Query$Testing$books$$ColoringBook(
      title: (l$title as String),
      author: (l$author as String),
      $__typename: (l$$__typename as String),
      colors: (l$colors as List<dynamic>).map((e) => (e as String)).toList(),
    );
  }

  final String title;

  final String author;

  final String $__typename;

  final List<String> colors;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$colors = colors;
    _resultData['colors'] = l$colors.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$author = author;
    final l$$__typename = $__typename;
    final l$colors = colors;
    return Object.hashAll([
      l$title,
      l$author,
      l$$__typename,
      Object.hashAll(l$colors.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Testing$books$$ColoringBook) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$author = author;
    final lOther$author = other.author;
    if (l$author != lOther$author) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$colors = colors;
    final lOther$colors = other.colors;
    if (l$colors.length != lOther$colors.length) {
      return false;
    }
    for (int i = 0; i < l$colors.length; i++) {
      final l$colors$entry = l$colors[i];
      final lOther$colors$entry = lOther$colors[i];
      if (l$colors$entry != lOther$colors$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$Testing$books$$ColoringBook
    on Query$Testing$books$$ColoringBook {
  CopyWith$Query$Testing$books$$ColoringBook<Query$Testing$books$$ColoringBook>
      get copyWith => CopyWith$Query$Testing$books$$ColoringBook(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Testing$books$$ColoringBook<TRes> {
  factory CopyWith$Query$Testing$books$$ColoringBook(
    Query$Testing$books$$ColoringBook instance,
    TRes Function(Query$Testing$books$$ColoringBook) then,
  ) = _CopyWithImpl$Query$Testing$books$$ColoringBook;

  factory CopyWith$Query$Testing$books$$ColoringBook.stub(TRes res) =
      _CopyWithStubImpl$Query$Testing$books$$ColoringBook;

  TRes call({
    String? title,
    String? author,
    String? $__typename,
    List<String>? colors,
  });
}

class _CopyWithImpl$Query$Testing$books$$ColoringBook<TRes>
    implements CopyWith$Query$Testing$books$$ColoringBook<TRes> {
  _CopyWithImpl$Query$Testing$books$$ColoringBook(
    this._instance,
    this._then,
  );

  final Query$Testing$books$$ColoringBook _instance;

  final TRes Function(Query$Testing$books$$ColoringBook) _then;

  static const _undefined = {};

  TRes call({
    Object? title = _undefined,
    Object? author = _undefined,
    Object? $__typename = _undefined,
    Object? colors = _undefined,
  }) =>
      _then(Query$Testing$books$$ColoringBook(
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        author: author == _undefined || author == null
            ? _instance.author
            : (author as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        colors: colors == _undefined || colors == null
            ? _instance.colors
            : (colors as List<String>),
      ));
}

class _CopyWithStubImpl$Query$Testing$books$$ColoringBook<TRes>
    implements CopyWith$Query$Testing$books$$ColoringBook<TRes> {
  _CopyWithStubImpl$Query$Testing$books$$ColoringBook(this._res);

  TRes _res;

  call({
    String? title,
    String? author,
    String? $__typename,
    List<String>? colors,
  }) =>
      _res;
}
