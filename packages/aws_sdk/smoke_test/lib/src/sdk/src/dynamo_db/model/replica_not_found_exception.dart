// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.replica_not_found_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'replica_not_found_exception.g.dart';

/// The specified replica is no longer part of the global table.
abstract class ReplicaNotFoundException
    with _i1.AWSEquatable<ReplicaNotFoundException>
    implements
        Built<ReplicaNotFoundException, ReplicaNotFoundExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified replica is no longer part of the global table.
  factory ReplicaNotFoundException({String? message}) {
    return _$ReplicaNotFoundException._(message: message);
  }

  /// The specified replica is no longer part of the global table.
  factory ReplicaNotFoundException.build(
          [void Function(ReplicaNotFoundExceptionBuilder) updates]) =
      _$ReplicaNotFoundException;

  const ReplicaNotFoundException._();

  /// Constructs a [ReplicaNotFoundException] from a [payload] and [response].
  factory ReplicaNotFoundException.fromResponse(
    ReplicaNotFoundException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ReplicaNotFoundExceptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicaNotFoundExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'ReplicaNotFoundException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicaNotFoundException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ReplicaNotFoundExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<ReplicaNotFoundException> {
  const ReplicaNotFoundExceptionAwsJson10Serializer()
      : super('ReplicaNotFoundException');

  @override
  Iterable<Type> get types => const [
        ReplicaNotFoundException,
        _$ReplicaNotFoundException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ReplicaNotFoundException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicaNotFoundExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ReplicaNotFoundException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}