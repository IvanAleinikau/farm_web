import 'package:freezed_annotation/freezed_annotation.dart';

part 'volume_waste.freezed.dart';

@freezed
class VolumeWaste with _$VolumeWaste {
  const factory VolumeWaste({
    required double volume,
    required double waste,
  }) = _VolumeWaste;
}

const VolumeWaste emptyVolumeWaste = VolumeWaste(
  volume: 0,
  waste: 0,
);
