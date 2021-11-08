part of 'blocs.dart';

enum ColorEvent { red, black }

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc() : super(Colors.black);

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    switch (event) {
      case ColorEvent.black:
        yield Colors.black;
        break;
      case ColorEvent.red:
        yield Colors.red;
        break;
    }
  }
}
