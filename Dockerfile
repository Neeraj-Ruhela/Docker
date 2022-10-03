FROM python:3.9-slim-bullseye

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
 
RUN python -m pip install --upgrade pip
RUN pip3 install torch torchvision torchaudio
Run pip install easyocr opencv-python-headless
#Run pip install easyocr opencv-python-headless==4.1.2.30
COPY Code_Easy_Ocr.py Code_Easy_Ocr.py
COPY Gray_Sample_Image.jpg Gray_Sample_Image.jpg

CMD [ "python3", "Code_Easy_Ocr.py"]