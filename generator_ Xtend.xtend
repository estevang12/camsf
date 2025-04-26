// generator de Xtend
import org.camsf.tracker.trackerDSL.*
import org.eclipse.xtext.generator.AbstractGenerator
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.IFileSystemAccess2

class TrackerDSLGenerator extends AbstractGenerator {
    override void doGenerate(Resource resource, IFileSystemAccess2 fsa) {
        val model = resource.contents.head as Model
        model.objects.forEach[obj | 
            fsa.generateFile(
                "lib/${obj.name.toLowerCase()}_tracker.dart",
                obj.generateDart
            )
        ]
    }

    def generateDart(AwareObject obj) '''
        import 'package:flutter/material.dart';
        import 'package:google_maps_flutter/google_maps_flutter.dart';
        «IF obj.notifications.exists[n | n.type == NotificationType.PUSH]»
        import 'package:firebase_messaging/firebase_messaging.dart';
        «ENDIF»

        class «obj.name.toFirstUpper»Tracker {
          // Sensors Configuration
          «FOR feature : obj.features»
            «FOR sensor : feature.sensors»
              final «sensor.type»Sensor «sensor.type.toLowerCase»Sensor = «sensor.type»Sensor(
                type: «sensor.concreteType»,
                execution: «sensor.execution»,
                «IF sensor.frequency !== null»
                updateFrequency: «sensor.frequency.value»,
                «ELSEIF sensor.range !== null»
                range: «sensor.range.value»,
                «ENDIF»
                precision: Range(vi: «sensor.vi», vf: «sensor.vf»),
              );
            «ENDFOR»
          «ENDFOR»

          // Notifications
          «FOR notification : obj.notifications»
            «notification.type.toLowerCase»Notification «notification.type.toLowerCase»Notifier = 
              «notification.type.toFirstUpper»Notification(
                recipient: «notification.recipient»
              );
          «ENDFOR»

          Widget buildTrackerScreen() {
            return Scaffold(
              appBar: AppBar(
                title: Text('«obj.name.toFirstUpper» Tracker'),
              ),
              body: Stack(
                children: [
                  GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(0, 0), // Default position
                    onMapCreated: (controller) {
                      «FOR feature : obj.features»
                        «IF feature.sensors.exists[s | s.type == SensorType.GPS]»
                        setupGPSTracking(controller);
                        «ENDIF»
                      «ENDFOR»
                    },
                  ),
                  «IF obj.notifications.exists[n | n.type == NotificationType.PUSH]»
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: FloatingActionButton(
                      onPressed: sendPushNotification,
                      child: Icon(Icons.notifications),
                    ),
                  ),
                  «ENDIF»
                ],
              ),
            );
          }

          «FOR feature : obj.features»
            void «feature.ruleName»() {
              // Auto-generated rule implementation
              if («FOR sensor : feature.sensors SEPARATOR ' && '»
                  «sensor.type.toLowerCase»Sensor.checkCondition()
              «ENDFOR») {
                «FOR notification : obj.notifications»
                  «notification.type.toLowerCase»Notifier.send();
                «ENDFOR»
              }
            }
          «ENDFOR»
        }

        // Helper Classes
        enum SensorType { GPS, Beacons, RFID }

        class Range {
          final int vi;
          final int vf;
          Range({required this.vi, required this.vf});
        }
        class «obj.name.toFirstUpper»Sensor {
          final ConcreteSensorType type;
          final ExecutionType execution;
          final int? updateFrequency;
          final int? range;
          final Range precision;

          «obj.name.toFirstUpper»Sensor({
            required this.type,
            required this.execution,
            this.updateFrequency,
            this.range,
            required this.precision
          });

          bool checkCondition() {
            // Sensor-specific logic
            return true;
          }
        }

        «FOR notification : obj.notifications»
          class «notification.type.toFirstUpper»Notification {
            final String recipient;
            
            «notification.type.toFirstUpper»Notification({required this.recipient});

            void send() {
              «IF notification.type == NotificationType.PUSH»
              FirebaseMessaging.instance.send(
                RemoteMessage(
                  notification: RemoteNotification(
                    title: "Alert from «obj.name»",
                    body: "Condition triggered!"
                  ),
                  to: recipient
                )
              );
              «ELSE»
              print('Sending «notification.type» to $recipient');
              «ENDIF»
            }
          }
        «ENDFOR»
    '''
}

