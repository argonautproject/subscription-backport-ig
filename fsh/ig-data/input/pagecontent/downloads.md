---
---

![Meow](cat.jpg)  

![Meow](custom_org_logo.jpg)  

here is the master file tree

~~~
.
├── BackportNotification.fsh
├── BackportSubscription.fsh
├── SUSHI-GENERATED-FILES.md
├── ig-data
│   ├── ig.ini
│   └── input
│       ├── examples
│       ├── operations
│       │   ├── OperationDefinition-subscription-status.json
│       │   └── OperationDefinition-subscriptiontopic-list.json
│       └── pagecontent
│           ├── actors_and_transactions.md
│           ├── conformance.md
│           ├── errors.md
│           ├── index.md
│           └── overview.md
├── ig.ini
├── input
│   ├── ImplementationGuide-hl7.fhir.us.subscriptions-backport.json
│   ├── extensions
│   │   ├── StructureDefinition-backport-bundle-event-count.json
│   │   ├── StructureDefinition-backport-heartbeat-period.json
│   │   ├── StructureDefinition-backport-notification-type.json
│   │   ├── StructureDefinition-backport-payload-content.json
│   │   ├── StructureDefinition-backport-subscription-event-count.json
│   │   ├── StructureDefinition-backport-subscription-topic-url.json
│   │   ├── StructureDefinition-backport-subscription-url.json
│   │   ├── StructureDefinition-backport-timeout.json
│   │   └── StructureDefinition-backport-topic-canonical.json
│   ├── pagecontent
│   │   ├── actors_and_transactions.md
│   │   ├── index.md
│   │   └── overview.md
│   ├── profiles
│   │   ├── StructureDefinition-backport-subscription-notification.json
│   │   └── StructureDefinition-backport-subscription.json
│   └── vocabulary
│       ├── CodeSystem-backport-content-code-system.json
│       ├── CodeSystem-backport-notification-type-code-system.json
│       ├── ValueSet-backport-content-value-set.json
│       └── ValueSet-backport-notification-type-value-set.json
├── package-list.json
└── package.json
~~~

I put all my pages etc in input folder but that is not the right place it should go in the optional ig-data/input.  The input folder is generated output and belongs it root. This is confusing to simplify FSH is now:

~~~
.
├── BackportNotification.fsh
├── BackportSubscription.fsh
├── SUSHI-GENERATED-FILES.md
├── config.yaml  <- NEW in Beta Sushi- see http://build.fhir.org/ig/HL7/fhir-shorthand/branches/beta/sushi.html#configuration-file  obviates the need for a separate ig.ini ( which I removed ), menu.xml (which I edited) and package-list.json (which I did not remove)
├── ig-data
│   └── input
│       ├── examples
│       ├── images
│       │   ├── cat.jpg
│       │   ├── custom_org_logo.jpg
│       │   └── liquid
│       │       └── Subscription.liquid
│       └── pagecontent
│           ├── actors_and_transactions.md
│           ├── downloads.md
│           ├── errors.md
│           ├── index.md
│           └── overview.md
├── package-list.json
└── package.json
~~~
