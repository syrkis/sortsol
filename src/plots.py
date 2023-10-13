# plots.py
#     neuroscope plots
# by: Noah Syrkis

# imports
import numpy as np
from IPython.display import display, Image, clear_output
from IPython.display import display, HTML
import numpy as np
from jinja2 import Environment, FileSystemLoader
import darkdetect
from src.utils import matrix_to_image


# globals
env = Environment(loader=FileSystemLoader('templates'))
template = env.get_template('environment.html')

def plot_multiples(imgs, n=3, info_bar=None):
    imgs = np.array(imgs[:n])
    template = env.get_template('environment.html')
    # invert if light mode
    imgs = imgs if darkdetect.isDark() else 1 - imgs
    imgs = [matrix_to_image(pred) for pred in imgs]
    html = template.render(images=imgs, n=n, info_bar=info_bar if info_bar else [""], dark=darkdetect.isDark())
    clear_output(wait=True)
    display(HTML(html))