///
//  Generated code. Do not modify.
//  source: time_series_analyzer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class STPSDConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'STPSDConfig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'time_series_analyzer'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'windowSize', $pb.PbFieldType.OD, protoName: 'windowSize')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'overlap', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  STPSDConfig._() : super();
  factory STPSDConfig({
    $core.double? windowSize,
    $core.double? overlap,
  }) {
    final _result = create();
    if (windowSize != null) {
      _result.windowSize = windowSize;
    }
    if (overlap != null) {
      _result.overlap = overlap;
    }
    return _result;
  }
  factory STPSDConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory STPSDConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  STPSDConfig clone() => STPSDConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  STPSDConfig copyWith(void Function(STPSDConfig) updates) => super.copyWith((message) => updates(message as STPSDConfig)) as STPSDConfig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static STPSDConfig create() => STPSDConfig._();
  STPSDConfig createEmptyInstance() => create();
  static $pb.PbList<STPSDConfig> createRepeated() => $pb.PbList<STPSDConfig>();
  @$core.pragma('dart2js:noInline')
  static STPSDConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<STPSDConfig>(create);
  static STPSDConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get windowSize => $_getN(0);
  @$pb.TagNumber(1)
  set windowSize($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWindowSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearWindowSize() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get overlap => $_getN(1);
  @$pb.TagNumber(2)
  set overlap($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOverlap() => $_has(1);
  @$pb.TagNumber(2)
  void clearOverlap() => clearField(2);
}

class STPSDDataPoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'STPSDDataPoint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'time_series_analyzer'), createEmptyInstance: create)
    ..p<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'frequencies', $pb.PbFieldType.KD)
    ..p<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'powerLevels', $pb.PbFieldType.KD, protoName: 'powerLevels')
    ..hasRequiredFields = false
  ;

  STPSDDataPoint._() : super();
  factory STPSDDataPoint({
    $core.Iterable<$core.double>? frequencies,
    $core.Iterable<$core.double>? powerLevels,
  }) {
    final _result = create();
    if (frequencies != null) {
      _result.frequencies.addAll(frequencies);
    }
    if (powerLevels != null) {
      _result.powerLevels.addAll(powerLevels);
    }
    return _result;
  }
  factory STPSDDataPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory STPSDDataPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  STPSDDataPoint clone() => STPSDDataPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  STPSDDataPoint copyWith(void Function(STPSDDataPoint) updates) => super.copyWith((message) => updates(message as STPSDDataPoint)) as STPSDDataPoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static STPSDDataPoint create() => STPSDDataPoint._();
  STPSDDataPoint createEmptyInstance() => create();
  static $pb.PbList<STPSDDataPoint> createRepeated() => $pb.PbList<STPSDDataPoint>();
  @$core.pragma('dart2js:noInline')
  static STPSDDataPoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<STPSDDataPoint>(create);
  static STPSDDataPoint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.double> get frequencies => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.double> get powerLevels => $_getList(1);
}

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'time_series_analyzer'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

class TimeSeriesData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TimeSeriesData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'time_series_analyzer'), createEmptyInstance: create)
    ..p<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.KD)
    ..hasRequiredFields = false
  ;

  TimeSeriesData._() : super();
  factory TimeSeriesData({
    $core.Iterable<$core.double>? data,
  }) {
    final _result = create();
    if (data != null) {
      _result.data.addAll(data);
    }
    return _result;
  }
  factory TimeSeriesData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeSeriesData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeSeriesData clone() => TimeSeriesData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeSeriesData copyWith(void Function(TimeSeriesData) updates) => super.copyWith((message) => updates(message as TimeSeriesData)) as TimeSeriesData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TimeSeriesData create() => TimeSeriesData._();
  TimeSeriesData createEmptyInstance() => create();
  static $pb.PbList<TimeSeriesData> createRepeated() => $pb.PbList<TimeSeriesData>();
  @$core.pragma('dart2js:noInline')
  static TimeSeriesData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeSeriesData>(create);
  static TimeSeriesData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.double> get data => $_getList(0);
}

