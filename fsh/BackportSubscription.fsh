Profile:     BackportSubscription
Parent:      Subscription
Id:          backport-subscription
Title:       "Backported R5 Subscription"
* criteria.extension contains BackportTopicCanonical named subscriptionTopic 1..1
* criteria.extension[BackportTopicCanonical] MS
* channel.payload 1..1
* channel.payload.extension contains BackportPayloadContent named content 1..1
* channel.payload.extension[BackportPayloadContent] MS
* channel.extension contains BackportHeartbeatPeriod named heartbeatPeriod 0..1
* channel.extension contains BackportTimeout named timeout 0..1

Extension:   BackportTopicCanonical
Id:          backport-topic-canonical
Title:       "Backport R5 Subscription Topic Canonical"
Description: "Canonical reference to the subscription topic being subscribed to."
* value[x] only uri

CodeSystem:  BackportContentCodeSystem
Id:          backport-content-code-system
Title:       "Backported R5 Subscription Content Code System"
Description: "Codes to represent how much resource content to send in the notification payload."
* #empty         "Empty"         "No resource content is transacted in the notification payload."
* #id-only       "Id Only"       "Only the resource id is transacted in the notification payload."
* #full-resource "Full Resource" "The entire resource is transacted in the notification payload."

ValueSet:    BackportContentValueSet
Id:          backport-content-value-set
Title:       "Backported R5 Subscription Content Value Set"
Description: "Codes to represent how much resource content to send in the notification payload."
* codes from system BackportContentCodeSystem

Extension:   BackportPayloadContent
Id:          backport-payload-content
Title:       "Backport R5 Subscription Payload Content Information"
Description: "How much of the resource content to deliver in the notification payload. The choices are an empty payload, only the resource id, or the full resource content."
* value[x] only code
* valueCode from BackportContentValueSet

Extension:   BackportHeartbeatPeriod
Id:          backport-heartbeat-period
Title:       "Backport R5 Subscription Heartbeat Period"
Description: "Interval in seconds to send 'heartbeat' notifications."
* value[x] only unsignedInt

Extension:   BackportTimeout
Id:          backport-timeout
Title:       "Backport R5 Subscription Timeout"
Description: "Timeout in seconds to attempt notification delivery."
* value[x] only unsignedInt
