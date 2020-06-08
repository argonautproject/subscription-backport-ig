Profile:     BackportTopicList
Parent:      Parameters
Id:          backport-subscription-topic-canonical-urls
Title:       "Backported R5 SubscriptionTopic Canonical URL Parameters"
Description: "Profile on the R4 Parameters resource to enable R5-style topic-based subscriptions in FHIR R4."
* parameter  ^slicing.discriminator.type = #value
* parameter  ^slicing.discriminator.path = "name"
* parameter  ^slicing.rules = #open
* parameter  ^slicing.ordered = false
* parameter  ^slicing.description = "Slice on name"
* parameter contains subscriptionTopicCanonical 0..* MS
* parameter[subscriptionTopicCanonical].name = "subscription-topic-canonical"
* parameter[subscriptionTopicCanonical].value[x] 1..1 MS
* parameter[subscriptionTopicCanonical].value[x] only canonical
