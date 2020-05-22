Profile:  BackportSubscriptionNotification
Parent:   Bundle
Id:       backport-subscription-notification
Title:    "Backported R5 Subscription Notification Bundle"
* type = #history
* meta.extension contains BackportSubscriptionEventCount named subscriptionEventCount 1..1
* meta.extension[BackportSubscriptionEventCount] MS
* meta.extension contains BackportBundleEventCount named bundleEventCount 1..1
* meta.extension[BackportBundleEventCount] MS
* meta.extension contains BackportSubscriptionTopicUrl named subscriptionTopicUrl 1..1
* meta.extension[subscriptionTopicUrl] MS
* meta.extension contains BackportSubscriptionUrl named subscriptionUrl 1..1
* meta.extension[BackportSubscriptionUrl] MS
* meta.extension contains BackportNotificationType named notificationType 1..1
* meta.extension[BackportNotificationType] MS

Extension:   BackportSubscriptionEventCount
Id:          backport-subscription-event-count
Title:       "Backported R5 Subscription Event Count"
Description: "Indicates the number of unique events that have triggered notification attempts on this Subscription inclusive of the current notification being sent."
* value[x] only unsignedInt

Extension:   BackportBundleEventCount
Id:          backport-bundle-event-count
Title:       "Backported R5 Subscription Bundle Event Count"
Description: "Represents the number of event notifications conveyed by this Bundle."
* value[x] only unsignedInt

Extension:   BackportSubscriptionTopicUrl
Id:          backport-subscription-topic-url
Title:       "Backported R5 Canonical SubscriptionTopic"
Description: "The Canonical SubscriptionTopic resource relevant to this notification (e.g., the topic the triggering subscription relates to)."
* value[x] only uri

Extension:   BackportSubscriptionUrl
Id:          backport-subscription-url
Title:       "Backported R5 Subscription Absolute URL"
Description: "The Subscription resource that triggered this notification, as an absolute URL for the Subscription resource on the server that generated the notification."
* value[x] only uri

CodeSystem:  BackportNotificationTypeCodeSystem
Id:          backport-notification-type-code-system
Title:       "Backported R5 Subscription Notification Type Code System"
Description: "Codes to represent types of notification bundles."
* #handshake          "Handshake"           "The notification is being sent as part of the setup or verification of a communications channel."
* #heartbeat          "Heartbeat"           "The notification is being sent because there has not been a notification generated over an extended period of time."
* #event-notification "Event Notification"  "The notification is being sent due to an event for the subscriber."
* #query-status       "Query Status"        "The notification is being sent due to a client request or query for Subscription status."

ValueSet:    BackportNotificationTypeValueSet
Id:          backport-notification-type-value-set
Title:       "Backported R5 Subscription Notification Type Value Set"
Description: "Codes to represent types of notification bundles."
* codes from system BackportNotificationTypeCodeSystem

Extension:   BackportNotificationType
Id:          backport-notification-type
Title:       "Backported R5 Subscription Notification Type"
Description: "The type of event being conveyed with this notificaiton."
* value[x] only code
* valueCode from BackportNotificationTypeValueSet

