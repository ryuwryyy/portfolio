# -*- coding: utf-8 -*-

import os
from pathlib import Path
import shutil
from PIL import Image

INPUT_PATH = 'data/preprocess/raw/'
OUTPUT_PATH = 'data/preprocess/processed/'

def convert_jpg():

    files = (Path(INPUT_PATH).iterdir())

    for file in files:
        file_name = Path(file).stem
        ext = Path(file).suffix
        img_name = (file_name + ext)
        print(img_name)
        if ext == '.png' or ext == 'gif':
            input_img = Image.open(INPUT_PATH + file_name + ext)
            rgb_img = input_img.convert('RGB')
            rgb_img.save(OUTPUT_PATH + file_name + '.jpg')
            
        if ext == '.jpg':
            img_path = Path(INPUT_PATH, img_name)
            shutil.copy(str(img_path), OUTPUT_PATH)

if __name__ == "__main__":
    
    convert_jpg()
