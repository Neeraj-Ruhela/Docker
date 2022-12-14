#import the required packages
import PIL
import easyocr
from PIL import ImageDraw

#Path of Gray_image file
Img_path=r"Gray_Sample_Image.jpg"
im = PIL.Image.open(Img_path)
#uncomment to print the image
#im

# Create a reader to do OCR
reader = easyocr.Reader(['en'])

#extracting the text
text_list=reader.readtext(Img_path,add_margin=0.15,contrast_ths=0.08,adjust_contrast=1.5,width_ths=0.9,link_threshold=0.8,decoder='beamsearch',detail = 0)
#print the list of extracted text
print(text_list)
