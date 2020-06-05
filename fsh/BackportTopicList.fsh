Profile:     BackportTopicList
Parent:      Bundle
Id:          backport-subscription-topic-list
Title:       "Backported R5 SubscriptionTopic List Bundle"
Description: "Profile on the R4 Bundle resource to enable R5-style topic-based subscriptions in FHIR R4."
* type = #searchset
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "link"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false 
* entry ^slicing.description = "Slice based on link"
* entry contains topicListEntry 0..* MS

* entry[topicListEntry].link  ^slicing.discriminator.type = #value
* entry[topicListEntry].link  ^slicing.discriminator.path = "relation"
* entry[topicListEntry].link  ^slicing.rules = #open
* entry[topicListEntry].link  ^slicing.ordered = false
* entry[topicListEntry].link  ^slicing.description = "Slice on relation"

* entry[topicListEntry].link contains topicLinkServerUrl 1..1 MS
    and topicLinkCanonicalUrl 1..1 MS

* entry[topicListEntry].link[topicLinkServerUrl].relation = "current"
* entry[topicListEntry].link[topicLinkCanonicalUrl].relation = "canonical"

