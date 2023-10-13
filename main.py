from vispy import gloo, app
import numpy as np

vertex = """
attribute vec2 a_position;
void main (void) {
    gl_Position = vec4(a_position, 0.0, 1.0);
}
"""

fragment = """
void main() {
    gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);
}
"""

class Canvas(app.Canvas):
    def __init__(self):
        app.Canvas.__init__(self, size=(400, 400), title='Red Square Example')
        
        self.program = gloo.Program(vertex, fragment)
        
        vertex_data = np.array([[-0.5, -0.5], [0.5, -0.5], [0.5, 0.5], [-0.5, 0.5]], dtype=np.float32)
        
        self.program['a_position'] = vertex_data

        gloo.set_viewport(0, 0, *self.physical_size)
        gloo.set_state(clear_color='white')
        
        self.show()
        
    def on_draw(self, event):
        gloo.clear()
        self.program.draw('triangle_fan')

if __name__ == '__main__':
    canvas = Canvas()
    app.run()
