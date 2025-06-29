import '/flutter_flow/flutter_flow_util.dart';
import 'user1_nav_widget.dart' show User1NavWidget;
import 'package:flutter/material.dart';

class User1NavModel extends FlutterFlowModel<User1NavWidget> {
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
