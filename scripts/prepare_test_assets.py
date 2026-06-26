from pathlib import Path
from PIL import Image, ImageDraw

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / 'test-assets' / 'source'
SRC.mkdir(parents=True, exist_ok=True)

base_path = ROOT / 'image.jpg'
if not base_path.exists():
    base_path = SRC / 'face.jpg'

with Image.open(base_path) as im:
    im = im.convert('RGB')
    w, h = im.size
    mask = Image.new('L', (w, h), 0)
    d = ImageDraw.Draw(mask)
    d.rectangle((w//4, h//4, 3*w//4, 3*h//4), fill=255)
    mask.save(SRC / 'mask.png')

logo = Image.new('RGB', (180, 180), 'white')
d = ImageDraw.Draw(logo)
d.ellipse((25, 25, 155, 155), fill=(30, 120, 220))
d.text((55, 78), 'AILab', fill='white')
logo.save(SRC / 'logo.png')

# Simple synthetic garment fallback.
garment = Image.new('RGB', (512, 512), 'white')
d = ImageDraw.Draw(garment)
d.polygon([(180, 80), (332, 80), (430, 180), (360, 245), (360, 430), (152, 430), (152, 245), (82, 180)], fill=(40, 90, 190))
d.rectangle((210, 80, 302, 145), fill='white')
d.text((190, 455), 'top garment', fill='black')
garment.save(SRC / 'garment.png')

# Coarse try-on placeholder.
with Image.open(SRC / 'person.jpg') as person:
    person.convert('RGB').resize((512, 700)).save(SRC / 'coarse.jpg')

print('prepared', SRC)
