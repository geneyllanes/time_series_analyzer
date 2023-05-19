///
//  Generated code. Do not modify.
//  source: time_series_analyzer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use sTPSDConfigDescriptor instead')
const STPSDConfig$json = const {
  '1': 'STPSDConfig',
  '2': const [
    const {'1': 'windowSize', '3': 1, '4': 1, '5': 1, '10': 'windowSize'},
    const {'1': 'overlap', '3': 2, '4': 1, '5': 1, '10': 'overlap'},
  ],
};

/// Descriptor for `STPSDConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sTPSDConfigDescriptor = $convert.base64Decode('CgtTVFBTRENvbmZpZxIeCgp3aW5kb3dTaXplGAEgASgBUgp3aW5kb3dTaXplEhgKB292ZXJsYXAYAiABKAFSB292ZXJsYXA=');
@$core.Deprecated('Use sTPSDDataPointDescriptor instead')
const STPSDDataPoint$json = const {
  '1': 'STPSDDataPoint',
  '2': const [
    const {'1': 'frequencies', '3': 1, '4': 3, '5': 1, '10': 'frequencies'},
    const {'1': 'powerLevels', '3': 2, '4': 3, '5': 1, '10': 'powerLevels'},
  ],
};

/// Descriptor for `STPSDDataPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sTPSDDataPointDescriptor = $convert.base64Decode('Cg5TVFBTRERhdGFQb2ludBIgCgtmcmVxdWVuY2llcxgBIAMoAVILZnJlcXVlbmNpZXMSIAoLcG93ZXJMZXZlbHMYAiADKAFSC3Bvd2VyTGV2ZWxz');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use timeSeriesDataDescriptor instead')
const TimeSeriesData$json = const {
  '1': 'TimeSeriesData',
  '2': const [
    const {'1': 'data', '3': 1, '4': 3, '5': 1, '10': 'data'},
  ],
};

/// Descriptor for `TimeSeriesData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timeSeriesDataDescriptor = $convert.base64Decode('Cg5UaW1lU2VyaWVzRGF0YRISCgRkYXRhGAEgAygBUgRkYXRh');
