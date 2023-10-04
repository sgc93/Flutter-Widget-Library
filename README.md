# FlutterWidgetLibrary

Welcome to the **FlutterWidgetLibrary**, a resource for exploring and mastering Flutter widgets with code examples and explanations.
This repository serves as a curated collection of Flutter widgets, each accompanied by detailed code examples and explanations. Whether you're a Flutter enthusiast looking to deepen your widget knowledge or a developer seeking practical solutions for your projects, you'll find a wealth of valuable insights and code samples here.

## Contents

- **Widgets Showcase:** Browse through collection of Flutter widgets, each showcased with real-world use cases and code samples.
- **Code Examples:** Access easy-to-follow code examples that demonstrate how to use each widget effectively.
- **Widget Explanations:** Gain a deeper understanding of Flutter widgets through comprehensive explanations and usage guidelines.
- **Contributions:** I welcome contributions from the community! Share your own widget examples, improvements, or bug fixes.

## Explored Widget Lists

1. **ListView** <br>
   [See on flutter doc](https://api.flutter.dev/flutter/widgets/ListView-class.html)<br>
   a. _ListView()_ <br>
   Syntax:

   ```bash
   ListView(
      children: <Widget>[
         // List items go here
      ],
   )
   ```

   for more example: check [ListView](https://github.com/sgc93/Flutter-Widget-Library/blob/main/lib/widgets/listView/list_view.dart)

   b. _ListView.builder()_ <br>
   Syntax:

   ```bash
   ListView.builder(
     itemCount: <itemCount>,
     itemBuilder: (BuildContext context, int index) {
       // Return a widget based on the index
     },
   )
   ```

   for more example: check [ListView.builder](https://github.com/sgc93/Flutter-Widget-Library/blob/main/lib/widgets/listView/img_list_builder.dart)

   c. _ListView.separated()_ <br>
   Syntax:

   ```bash
   ListView.separated(
    itemCount: <itemCount>,
    separatorBuilder: (BuildContext context, int index) {
       // Return the separator widget
   },
   itemBuilder: (BuildContext context, int index) {
     // Return a widget based on the index
   },
   )
   ```

   for more example: check [ListView.builder](https://github.com/sgc93/Flutter-Widget-Library/blob/main/lib/widgets/listView/list_view_separated.dart)

2. **[GridView](https://github.com/sgc93/Flutter-Widget-Library/blob/main/lib/widgets/gridView)**
3. **[Animation](https://github.com/sgc93/Flutter-Widget-Library/blob/main/lib/widgets/animation)**

- _Explicit Animation_
- _Tween Animation_
- \_Animation with Controller

4. **[FutureBuilder](https://github.com/sgc93/Flutter-Widget-Library/blob/main/lib/widgets/future_builder.dart)**
5. **[BoxShadow](https://github.com/sgc93/Flutter-Widget-Library/blob/main/lib/widgets/box_shadow.dart)**
6. **[Drawer and endDrawer](https://github.com/sgc93/Flutter-Widget-Library/blob/main/lib/widgets/drawer)**

- _Drawer_
- _endDrawer_

6. **[ModalBottomSheet](https://github.com/sgc93/Flutter-Widget-Library/blob/main/lib/widgets/bottom_sheet.dart)**

## Contributing

Contributions to this repository are highly encouraged. Whether you want to add new widgets, improve existing code samples, or fix issues, I appreciate your help.

## Contact

For questions, feedback, or inquiries, please contact smachewgedefaw@gmail.com.

Happy coding!
