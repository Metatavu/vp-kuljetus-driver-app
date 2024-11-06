//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:tms_api/src/date_serializer.dart';
import 'package:tms_api/src/model/date.dart';

import 'package:tms_api/src/model/client_app.dart';
import 'package:tms_api/src/model/client_app_metadata.dart';
import 'package:tms_api/src/model/client_app_status.dart';
import 'package:tms_api/src/model/driver.dart';
import 'package:tms_api/src/model/error.dart';
import 'package:tms_api/src/model/freight.dart';
import 'package:tms_api/src/model/freight_unit.dart';
import 'package:tms_api/src/model/public_truck.dart';
import 'package:tms_api/src/model/route.dart';
import 'package:tms_api/src/model/site.dart';
import 'package:tms_api/src/model/sort_order.dart';
import 'package:tms_api/src/model/task.dart';
import 'package:tms_api/src/model/task_status.dart';
import 'package:tms_api/src/model/task_type.dart';
import 'package:tms_api/src/model/towable.dart';
import 'package:tms_api/src/model/truck.dart';
import 'package:tms_api/src/model/truck_drive_state.dart';
import 'package:tms_api/src/model/truck_drive_state_enum.dart';
import 'package:tms_api/src/model/truck_driver_card.dart';
import 'package:tms_api/src/model/truck_sort_by_field.dart';
import 'package:tms_api/src/model/vehicle.dart';
import 'package:tms_api/src/model/work_event.dart';
import 'package:tms_api/src/model/work_event_type.dart';

part 'serializers.g.dart';

@SerializersFor([
  ClientApp,
  ClientAppMetadata,
  ClientAppStatus,
  Driver,
  Error,
  Freight,
  FreightUnit,
  PublicTruck,
  Route,
  Site,
  SortOrder,
  Task,
  TaskStatus,
  TaskType,
  Towable,
  Truck,
  TruckDriveState,
  TruckDriveStateEnum,
  TruckDriverCard,
  TruckSortByField,
  Vehicle,
  WorkEvent,
  WorkEventType,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Towable)]),
        () => ListBuilder<Towable>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(WorkEvent)]),
        () => ListBuilder<WorkEvent>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Site)]),
        () => ListBuilder<Site>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PublicTruck)]),
        () => ListBuilder<PublicTruck>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Freight)]),
        () => ListBuilder<Freight>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Truck)]),
        () => ListBuilder<Truck>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TruckDriverCard)]),
        () => ListBuilder<TruckDriverCard>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Route)]),
        () => ListBuilder<Route>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TruckDriveStateEnum)]),
        () => ListBuilder<TruckDriveStateEnum>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(FreightUnit)]),
        () => ListBuilder<FreightUnit>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Task)]),
        () => ListBuilder<Task>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Vehicle)]),
        () => ListBuilder<Vehicle>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TruckDriveState)]),
        () => ListBuilder<TruckDriveState>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
