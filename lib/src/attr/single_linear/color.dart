import 'dart:ui';

import '../base.dart';
import 'base.dart';

class ColorAttr extends Attr {
  ColorAttr({
    String field,

    List<Color> values,
    List<double> stops,
    Color Function(List<double>) mapper,
  }) : super(field) {
    this['values'] = values;
    this['stops'] = stops;
    this['mapper'] = mapper;
  }

  @override
  AttrType get type => AttrType.color;
}

class ColorSingleLinearAttrState extends SingleLinearAttrState<Color> {}

class ColorSingleLinearAttrComponent
  extends SingleLinearAttrComponent<ColorSingleLinearAttrState, Color>
{
  ColorSingleLinearAttrComponent([ColorAttr props]) : super(props);

   @override
  ColorSingleLinearAttrState get originalState => ColorSingleLinearAttrState();

  @override
  Color lerp(Color a, Color b, double t) =>
    Color.lerp(a, b, t);
}