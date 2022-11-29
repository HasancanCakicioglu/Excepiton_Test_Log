import 'dart:async';



import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class exception2viewclass extends StatefulWidget {
  exception2viewclass({Key? key}) : super(key: key);

  @override
  State<exception2viewclass> createState() => _exception2viewclassState();
}

class _exception2viewclassState extends State<exception2viewclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exeption 2"),
      ),
      body: SingleChildScrollView(
        child: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              exceptionTree();
            },
            child: Text("excepiton Tree")),
            ElevatedButton(onPressed: () {
              throwStateError();
            },
            child: Text("throw State Error")),

            ElevatedButton(onPressed: (){
              throwError();
            }, child:Text("throw error")),

            // ElevatedButton(onPressed: (){
            //   throwErrorEvent();
            // }, child: Text("throw error event")),

            // ElevatedButton(onPressed: (){
            //   throwDomError();
            // }, child: Text("throw Dom Error")),

            ElevatedButton(onPressed: (){
              throwUnimplementedError();
            }, child: Text("throw Unimplemented Error")),

            ElevatedButton(onPressed: (){
              throwIndexError();
            }, child: Text("throw Index Error")),
            ElevatedButton(onPressed: (){
              throwRangeError();
            }, child: Text("throw range Error")),

            ElevatedButton(onPressed: (){
              throwRangeErrorIndex();
            }, child: Text("throw range Error Index")),
            ElevatedButton(onPressed: (){
              throwRangeErrorRange();
            }, child: Text("throw range Error Range")),
            ElevatedButton(onPressed: (){
              throwRangeErrorValue();
            }, child: Text("throw range Error Value")),
            ElevatedButton(onPressed: (){
              throwFutureError();
            }, child: Text("throw Future Error")),
            ElevatedButton(onPressed: (){
              throwTypeError();
            }, child: Text("throw Type Error")),
            ElevatedButton(onPressed: (){
              throwAsyncError();
            }, child: Text("throw Async Error")),
            ElevatedButton(onPressed: (){
              throwFlutterError();
            }, child: Text("throw Flutter Error")),
            ElevatedButton(onPressed: (){
              throwFlutterErrorDetails();
            }, child: Text("throw Flutter Error Details")),
            ElevatedButton(onPressed: (){
              throwArgumentError();
            }, child: Text("throw Argument Error")),
            // ElevatedButton(onPressed: (){
            //   throwMediaError();
            // }, child: Text("throw Media Error")),


            
          ],
        )
      ),
      )
    );
  }
}

void exceptionTree() {
  Decoration decoration = const BoxDecoration();

  throw FlutterError.fromParts(<DiagnosticsNode>[
    ErrorSummary('ErrorSummary | does not implement applyPaintTransform.'),
    //describeForError('The following  object'),
    //describeForError('...did not use a BoxParentData class for the parentData field of the following child'),
    ErrorDescription('ErrorDescription | The  class inherits from RenderBox.'),
    ErrorSpacer(),
    DiagnosticsProperty<Decoration>(
        'DiagnosticsProperty<Decoration> | The decoration was', decoration,
        style: DiagnosticsTreeStyle.errorProperty),

    ErrorHint(
      'ErrorHint | The default applyPaintTransform implementation provided by RenderBox assumes that the '
      'children all use BoxParentData objects for their parentData field. '
      'Since  does not in fact use that ParentData class for its children, it must '
      'provide an implementation of applyPaintTransform that supports the specific ParentData '
      'subclass used by its children (which apparently is).',
    ),
  ]);
}

void throwStateError() {
  throw StateError("State Error");
}

void throwError() {
  throw Error();
}

// void throwErrorEvent() {
//   throw ErrorEvent("Error Event");
// }

// void throwDomError() {
//   throw DomError("Dom Error");
// }

void throwUnimplementedError() {
  throw UnimplementedError("Unimplemented Error");
}

void throwIndexError() {
  throw IndexError(10, "Index Error 10");
}

void throwRangeError() {
  throw RangeError("Range Error");
}

void throwRangeErrorValue() {
  throw RangeError.value(10, "Range Error Value 10");
}

void throwRangeErrorRange() {
  throw RangeError.range(10, 1, 100, "Range Error Range 10");
}

void throwRangeErrorIndex() {
  throw RangeError.index(10, "Range Error Index 10");
}


void throwFutureError() {
  throw Future.error("Future Error");
}

void throwTypeError() {
  throw TypeError();
}

void throwAsyncError() {
  throw AsyncError("error  ", StackTrace.current);
}

void throwFlutterError() {
  throw FlutterError("Flutter Error");
}

void throwFlutterErrorDetails() {
  throw FlutterErrorDetails(
      exception: "excepiton errorDetails", stack: StackTrace.current);
}

void throwArgumentError() {
  throw ArgumentError("Argument Error");
}

// void throwMediaError() {
//   throw MediaError;
// }


