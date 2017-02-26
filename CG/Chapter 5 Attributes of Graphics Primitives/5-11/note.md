#character attributes
- font(typeface): a set of characters with a particular design style
- assorted styles: solid, dotted,double
- italic
- color setting

- adjust text size
	- scaling overall dimensions
	- scaling only the height or width
- size的计量单位是point, 一个point是1/72 inch. point指定了字符body的大小。不同的字体在相同的point下可能有不同的size.
- 对于特定的size和typeface的，所有字符的bottomline和topline之间的距离是不变的，不同字符body的宽度是不一样的。
- 字符的高度(character height)定义为baseline何capline之间的距离。
- 字符之间的距离(spacing)可以被字符串的一个属性来赋值。
- 字符的方向可以被一个叫做character up vector的方向来指定。
- 字符的排列方向可以用text-path来指定。
- 字符串的另一个属性是alignment
- 有一些图形包里，text-precision可以指定。
- 一些文字处理库经常提供一些特殊字符，比如circle or corss.