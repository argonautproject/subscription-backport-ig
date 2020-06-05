---
---

![Meow](cat.jpg)  

![Meow](custom_org_logo.jpg)  

~~~
File1.fsh
File2.fsh
File3.fsh
...
package.json
/ig-data
├── package-list.json (optional)
├── ig.ini (optional)
└── /input
    ├── ignoreWarnings.txt (optional)
    ├── /images
    │   ├── myGraphic.jpg
    │   ├── myDocument.docx
    │   └── mySpreadsheet.xlsx
    ├── /includes
    │   └── menu.xml (optional)
    └── /pagecontent
        ├── index.md
        ├── 1_mySecondPage.md
        ├── 2_myThirdPage.md
        └── 3_myFourthPage.md
~~

based on this I put all my pages etc in input folder but that is not the right place it should go in the optional ig-data/input. This is confusing...  

I think the folders should be renamed e.g. ito make it obvious to those of us who assume input is user input.

~~├── BackportSubscription.fsh
├── SUSHI-GENERATED-FILES.md
├── config.yaml
├── draft
│   └── ig.ini
├── input
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
│   │   ├── downloads.md
│   │   ├── errors.md
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

pagecontent is left behind when generating the output..
