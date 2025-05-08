## Get started
1. zoom issue: <br>
open powershell and type: 

```pwsh
notepad <path_from_the_error_message>\labelImg.py
```
find this function and change that line.

```python
    def set_zoom(self, value):
        self.actions.fitWidth.setChecked(False)
        self.actions.fitWindow.setChecked(False)
        self.zoom_mode = self.MANUAL_ZOOM
        self.zoom_widget.setValue(int(value)) # changed line.

```
Also, change those line. I commented

```python

    def zoom_request(self, delta):

        h_bar = self.scroll_bars[Qt.Horizontal]
        v_bar = self.scroll_bars[Qt.Vertical]
        h_bar_max = h_bar.maximum()
        v_bar_max = v_bar.maximum()
        cursor = QCursor()
        pos = cursor.pos()
        relative_pos = QWidget.mapFromGlobal(self, pos)

        cursor_x = relative_pos.x()
        cursor_y = relative_pos.y()

        w = self.scroll_area.width()
        h = self.scroll_area.height()

        margin = 0.1
        move_x = (cursor_x - margin * w) / (w - 2 * margin * w)
        move_y = (cursor_y - margin * h) / (h - 2 * margin * h)

        move_x = min(max(move_x, 0), 1)
        move_y = min(max(move_y, 0), 1)

        units = delta / (8 * 15)
        scale = 10
        self.add_zoom(scale * units)

        d_h_bar_max = h_bar.maximum() - h_bar_max
        d_v_bar_max = v_bar.maximum() - v_bar_max

        new_h_bar_value = h_bar.value() + move_x * d_h_bar_max
        new_v_bar_value = v_bar.value() + move_y * d_v_bar_max

        h_bar.setValue(int(new_h_bar_value)) # changed line
        v_bar.setValue(int(new_v_bar_value)) # changed line
```
2. rectangle drawing issue: <br>
Open powershell and type: 

```pwsh
notepad <path_from_the_error_message>\canvas.py
```

Now, change the commented line.<br>

```python

    def paintEvent(self, event):
        if not self.pixmap:
            return super(Canvas, self).paintEvent(event)
        p = self._painter
        p.begin(self)
        p.setRenderHint(QPainter.Antialiasing)
        p.setRenderHint(QPainter.HighQualityAntialiasing)
        p.setRenderHint(QPainter.SmoothPixmapTransform)
        p.scale(self.scale, self.scale)
        p.translate(self.offset_to_center())
        p.drawPixmap(0, 0, self.pixmap)
        Shape.scale = self.scale
        Shape.label_font_size = self.label_font_size
        for shape in self.shapes:
            if (shape.selected or not self._hide_background) and self.isVisible(shape):
                shape.fill = shape.selected or shape == self.h_shape
                shape.paint(p)
        if self.current:
            self.current.paint(p)
            self.line.paint(p)
        if self.selected_shape_copy:
            self.selected_shape_copy.paint(p)
        if self.current is not None and len(self.line) == 2:
            left_top = self.line[0]
            right_bottom = self.line[1]
            rect_width = right_bottom.x() - left_top.x()
            rect_height = right_bottom.y() - left_top.y()
            p.setPen(self.drawing_rect_color)
            brush = QBrush(Qt.BDiagPattern)
            p.setBrush(brush)
            p.drawRect(int(left_top.x()), int(left_top.y()), int(rect_width), int(rect_height)) #change that line like this
        if self.drawing() and not self.prev_point.isNull() and not self.out_of_pixmap(self.prev_point):
            p.setPen(QColor(0, 0, 0))
            p.drawLine(int(self.prev_point.x()), 0, int(self.prev_point.x()), self.pixmap.height()) # change this line
            p.drawLine(0, int(self.prev_point.y()), self.pixmap.width(), int(self.prev_point.y())) # change this line also
        self.setAutoFillBackground(True)
        if self.verified:
            pal = self.palette()
            pal.setColor(self.backgroundRole(), QColor(184, 239, 38, 128))
            self.setPalette(pal)
        else:
            pal = self.palette()
            pal.setColor(self.backgroundRole(), QColor(232, 232, 232, 255))
            self.setPalette(pal)
        p.end()
```

3. Scrolling issues:
<br> Change the commented line: 