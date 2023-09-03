# SwiftUINavigationDoc

This app represent the explanation of Dependency Inversion for Routing in SwiftUI 

## Overview,

The concept of dependency inversion is maintain the isolation state of each module.
In this project you can see that the FeatureAModule doesn't know about FeatureBModule but ``ContentView`` in FeatureAModule can route to ``DetailView`` that available in FeatureBModule

### App Navigation

This app consist of 3 screen
```
Feature A Home == ``ContentView``
Feature B Detail == ``DetailView``
Feature A AnotherDetail == ``AnotherDetailView``
```


- `detail` button in `Feature A Home` or ``ContentView``/``ContentView/body`` will route to -> `Feature B Detail` or ``DetailView``

- `detail` button in `Feature B Detail` or ``DetailView``/``DetailView/body`` will route to -> `Feature A AnotherDetail` or ``AnotherDetailView``

- `back` button in `Feature B Detail` just back to previous page


- button `back to detail` inside ``AnotherDetailView``/``AnotherDetailView/body`` or *Feature A AnotherDetail* route to -> *Feature B Detail* or ``DetailView`` because the detail of *Feature A Home* is *Feature B Detail*


