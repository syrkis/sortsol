# utils.py
#   evodrone
# by: Noah Syrkis


# imports
import os
import sys
import argparse
import json
from pycocotools.coco import COCO
from tqdm import tqdm
import pandas as pd
from nilearn import datasets
import numpy as np
from matplotlib import pyplot as plt
import yaml
from IPython.display import display, HTML
import time
import jax
import numpy as np
import base64
from PIL import Image as PILImage
from io import BytesIO


# FUNCTIONS
def get_args():
    parser = argparse.ArgumentParser(description='Neuroscope Project')
    parser.add_argument('--subject', type=str, default='subj05', help='subject to use')
    parser.add_argument('--image_size', type=int, default=256, help='image size')
    return parser.parse_args()


def matrix_to_image(matrix):
    # matrix is n by n. Make it n by n by 3 
    matrix = np.repeat(matrix[:, :, np.newaxis], 3, axis=2)
    matrix = np.clip(matrix, 0, 1)
    image = PILImage.fromarray((matrix * 255).astype(np.uint8))
    image_bytes = BytesIO()
    image.save(image_bytes, format='png')
    encoded_image = base64.b64encode(image_bytes.getvalue()).decode('utf-8')
    return encoded_image
