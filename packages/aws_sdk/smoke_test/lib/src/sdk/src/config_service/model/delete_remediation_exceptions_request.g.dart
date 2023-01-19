// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_remediation_exceptions_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteRemediationExceptionsRequest
    extends DeleteRemediationExceptionsRequest {
  @override
  final String configRuleName;
  @override
  final _i4.BuiltList<_i3.RemediationExceptionResourceKey> resourceKeys;

  factory _$DeleteRemediationExceptionsRequest(
          [void Function(DeleteRemediationExceptionsRequestBuilder)?
              updates]) =>
      (new DeleteRemediationExceptionsRequestBuilder()..update(updates))
          ._build();

  _$DeleteRemediationExceptionsRequest._(
      {required this.configRuleName, required this.resourceKeys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(configRuleName,
        r'DeleteRemediationExceptionsRequest', 'configRuleName');
    BuiltValueNullFieldError.checkNotNull(
        resourceKeys, r'DeleteRemediationExceptionsRequest', 'resourceKeys');
  }

  @override
  DeleteRemediationExceptionsRequest rebuild(
          void Function(DeleteRemediationExceptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteRemediationExceptionsRequestBuilder toBuilder() =>
      new DeleteRemediationExceptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteRemediationExceptionsRequest &&
        configRuleName == other.configRuleName &&
        resourceKeys == other.resourceKeys;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, configRuleName.hashCode), resourceKeys.hashCode));
  }
}

class DeleteRemediationExceptionsRequestBuilder
    implements
        Builder<DeleteRemediationExceptionsRequest,
            DeleteRemediationExceptionsRequestBuilder> {
  _$DeleteRemediationExceptionsRequest? _$v;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  _i4.ListBuilder<_i3.RemediationExceptionResourceKey>? _resourceKeys;
  _i4.ListBuilder<_i3.RemediationExceptionResourceKey> get resourceKeys =>
      _$this._resourceKeys ??=
          new _i4.ListBuilder<_i3.RemediationExceptionResourceKey>();
  set resourceKeys(
          _i4.ListBuilder<_i3.RemediationExceptionResourceKey>? resourceKeys) =>
      _$this._resourceKeys = resourceKeys;

  DeleteRemediationExceptionsRequestBuilder() {
    DeleteRemediationExceptionsRequest._init(this);
  }

  DeleteRemediationExceptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleName = $v.configRuleName;
      _resourceKeys = $v.resourceKeys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteRemediationExceptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteRemediationExceptionsRequest;
  }

  @override
  void update(
      void Function(DeleteRemediationExceptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteRemediationExceptionsRequest build() => _build();

  _$DeleteRemediationExceptionsRequest _build() {
    _$DeleteRemediationExceptionsRequest _$result;
    try {
      _$result = _$v ??
          new _$DeleteRemediationExceptionsRequest._(
              configRuleName: BuiltValueNullFieldError.checkNotNull(
                  configRuleName,
                  r'DeleteRemediationExceptionsRequest',
                  'configRuleName'),
              resourceKeys: resourceKeys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceKeys';
        resourceKeys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteRemediationExceptionsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas