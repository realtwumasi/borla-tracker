import '/flutter_flow/flutter_flow_util.dart';
import 'user2_nav_widget.dart' show User2NavWidget;
import 'package:flutter/material.dart';

class User2NavModel extends FlutterFlowModel<User2NavWidget> {
  ///  Local state fields for this component.

  List<double> trackingCoordinates = [];
  void addToTrackingCoordinates(double item) => trackingCoordinates.add(item);
  void removeFromTrackingCoordinates(double item) =>
      trackingCoordinates.remove(item);
  void removeAtIndexFromTrackingCoordinates(int index) =>
      trackingCoordinates.removeAt(index);
  void insertAtIndexInTrackingCoordinates(int index, double item) =>
      trackingCoordinates.insert(index, item);
  void updateTrackingCoordinatesAtIndex(int index, Function(double) updateFn) =>
      trackingCoordinates[index] = updateFn(trackingCoordinates[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
