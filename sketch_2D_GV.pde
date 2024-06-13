// Huruf A
int rectAX1 = 100;
int rectAY1 = 200;
int rectAWidth1 = 50;
int rectAHeight1 = 300;

int rectAX2 = 150;
int rectAY2 = 320;
int rectAWidth2 = 100;
int rectAHeight2 = 50;

int rectAX3 = 250;
int rectAY3 = 200;
int rectAWidth3 = 50;
int rectAHeight3 = 300;

int rectAX5 = 150;
int rectAY5 = 200;
int rectAWidth5 = 100;
int rectAHeight5 = 50;

// Huruf R
int rectRX1 = 350;
int rectRY1 = 200;
int rectRWidth1 = 50;
int rectRHeight1 = 300;

int rectRX2 = 400;
int rectRY2 = 200;
int rectRWidth2 = 50;
int rectRHeight2 = 45;

int rectRX3 = 400;
int rectRY3 = 325;
int rectRWidth3 = 50;
int rectRHeight3 = 45;

int circRX1 = 450;
int circRY1 = 285;
int circRRad1 = 85;

int circRX2 = 445;
int circRY2 = 285;
int circRRad2 = 40;

float parRX1 = 400, parRY1 = 370;
float parRX2 = 460, parRY2 = 370;
float parRX3 = 560, parRY3 = 500;
float parRX4 = 500, parRY4 = 500;

// Huruf H
int rectHX1 = 600;
int rectHY1 = 200;
int rectHWidth1 = 50;
int rectHHeight1 = 300;

int rectHX2 = 650;
int rectHY2 = 320;
int rectHWidth2 = 100;
int rectHHeight2 = 50;

int rectHX3 = 750;
int rectHY3 = 200;
int rectHWidth3 = 50;
int rectHHeight3 = 300;

// Huruf P
int rectPX1 = 870;
int rectPY1 = 200;
int rectPWidth1 = 50;
int rectPHeight1 = 300;

int rectPX2 = 920;
int rectPY2 = 200;
int rectPWidth2 = 50;
int rectPHeight2 = 45;

int rectPX3 = 920;
int rectPY3 = 325;
int rectPWidth3 = 50;
int rectPHeight3 = 45;

int circPX1 = 970;
int circPY1 = 285;
int circPRad1 = 85;

int circPX2 = 965;
int circPY2 = 285;
int circPRad2 = 40;

float moveSpeed = 5;
float scaleFactor = 1.0;
float angle = 0;
boolean mirrorX = false;
boolean mirrorY = false;

void setup() {
  size(1230, 700);
}

void draw() {
  background(220);
  noStroke();
  
  pushMatrix();
  
  translate(width/2, height/2);
  
  if (mirrorX) {
    scale(-1, 1);
  }
  if (mirrorY) {
    scale(1, -1);
  }
  
  scale(scaleFactor);
  rotate(angle);
  
  translate(-width/2, -height/2);
  
  // Huruf A (diubah warna menjadi merah)
  fill(255, 0, 0); // Ubah warna menjadi merah
  drawRectangle(rectAX1, rectAY1, rectAWidth1, rectAHeight1); // Gambar persegi panjang pertama A
  drawRectangle(rectAX2, rectAY2, rectAWidth2, rectAHeight2); // Gambar persegi panjang kedua A
  drawRectangle(rectAX3, rectAY3, rectAWidth3, rectAHeight3); // Gambar persegi panjang ketiga A
  drawRectangle(rectAX5, rectAY5, rectAWidth5, rectAHeight5); // Gambar persegi panjang kelima A
  
  // Huruf R (diubah warna menjadi biru)
  fill(0, 0, 255); // Ubah warna menjadi biru
  drawRectangle(rectRX1, rectRY1, rectRWidth1, rectRHeight1); // Gambar persegi panjang pertama R
  drawRectangle(rectRX2, rectRY2, rectRWidth2, rectRHeight2); // Gambar persegi panjang kedua R
  drawRectangle(rectRX3, rectRY3, rectRWidth3, rectRHeight3); // Gambar persegi panjang ketiga R
  
  drawHalfCircle(circRX1, circRY1, circRRad1);
  fill(220);
  drawHalfCircle(circRX2, circRY2, circRRad2);
  
  fill(0, 0, 255); // Ubah warna menjadi biru
  drawParallelogram(parRX1, parRY1, parRX2, parRY2, parRX3, parRY3, parRX4, parRY4);
  
  // Huruf H (diubah warna menjadi hijau)
  fill(0, 255, 0); // Ubah warna menjadi hijau
  drawRectangle(rectHX1, rectHY1, rectHWidth1, rectHHeight1); // Gambar persegi panjang pertama H
  drawRectangle(rectHX2, rectHY2, rectHWidth2, rectHHeight2); // Gambar persegi panjang kedua H
  drawRectangle(rectHX3, rectHY3, rectHWidth3, rectHHeight3); // Gambar persegi panjang ketiga H
  
  // Huruf P (diubah warna menjadi ungu)
  fill(128, 0, 128); // Ubah warna menjadi ungu
  drawRectangle(rectPX1, rectPY1, rectPWidth1, rectPHeight1); // Gambar persegi panjang pertama P
  drawRectangle(rectPX2, rectPY2, rectPWidth2, rectPHeight2); // Gambar persegi panjang kedua P
  drawRectangle(rectPX3, rectPY3, rectPWidth3, rectPHeight3); // Gambar persegi panjang ketiga P
  
  drawHalfCircle(circPX1, circPY1, circPRad1);
  fill(220);
  drawHalfCircle(circPX2, circPY2, circPRad2);
  
  popMatrix();
}

void drawRectangle(int x, int y, int width, int height) {
  rect(x, y, width, height);
}

void drawHalfCircle(float x, float y, float radius) {
  float startAngle = PI + HALF_PI;
  float endAngle = TWO_PI + HALF_PI;

  arc(x, y, radius * 2, radius * 2, startAngle, endAngle);
}

void drawParallelogram(float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4) {
  quad(x1, y1, x2, y2, x3, y3, x4, y4);
}

void keyPressed() {
  // Translasi
  if (key == 'w' || key == 'W') {
    // Gerak ke atas
    rectAY1 -= moveSpeed; rectAY2 -= moveSpeed; rectAY3 -= moveSpeed; rectAY5 -= moveSpeed;
    rectRY1 -= moveSpeed; rectRY2 -= moveSpeed; rectRY3 -= moveSpeed; circRY1 -= moveSpeed; circRY2 -= moveSpeed; parRY1 -= moveSpeed; parRY2 -= moveSpeed; parRY3 -= moveSpeed; parRY4 -= moveSpeed;
    rectHY1 -= moveSpeed; rectHY2 -= moveSpeed; rectHY3 -= moveSpeed;
    rectPY1 -= moveSpeed; rectPY2 -= moveSpeed; rectPY3 -= moveSpeed; circPY1 -= moveSpeed; circPY2 -= moveSpeed;
  } else if (key == 's' || key == 'S') {
    // Gerak ke bawah
    rectAY1 += moveSpeed; rectAY2 += moveSpeed; rectAY3 += moveSpeed; rectAY5 += moveSpeed;
    rectRY1 += moveSpeed; rectRY2 += moveSpeed; rectRY3 += moveSpeed; circRY1 += moveSpeed; circRY2 += moveSpeed; parRY1 += moveSpeed; parRY2 += moveSpeed; parRY3 += moveSpeed; parRY4 += moveSpeed;
    rectHY1 += moveSpeed; rectHY2 += moveSpeed; rectHY3 += moveSpeed;
    rectPY1 += moveSpeed; rectPY2 += moveSpeed; rectPY3 += moveSpeed; circPY1 += moveSpeed; circPY2 += moveSpeed;
  } else if (key == 'a' || key == 'A') {
    // Gerak ke kiri
    rectAX1 -= moveSpeed; rectAX2 -= moveSpeed; rectAX3 -= moveSpeed; rectAX5 -= moveSpeed;
    rectRX1 -= moveSpeed; rectRX2 -= moveSpeed; rectRX3 -= moveSpeed; circRX1 -= moveSpeed; circRX2 -= moveSpeed; parRX1 -= moveSpeed; parRX2 -= moveSpeed; parRX3 -= moveSpeed; parRX4 -= moveSpeed;
    rectHX1 -= moveSpeed; rectHX2 -= moveSpeed; rectHX3 -= moveSpeed;
    rectPX1 -= moveSpeed; rectPX2 -= moveSpeed; rectPX3 -= moveSpeed; circPX1 -= moveSpeed; circPX2 -= moveSpeed;
  } else if (key == 'd' || key == 'D') {
    // Gerak ke kanan
    rectAX1 += moveSpeed; rectAX2 += moveSpeed; rectAX3 += moveSpeed; rectAX5 += moveSpeed;
    rectRX1 += moveSpeed; rectRX2 += moveSpeed; rectRX3 += moveSpeed; circRX1 += moveSpeed; circRX2 += moveSpeed; parRX1 += moveSpeed; parRX2 += moveSpeed; parRX3 += moveSpeed; parRX4 += moveSpeed;
    rectHX1 += moveSpeed; rectHX2 += moveSpeed; rectHX3 += moveSpeed;
    rectPX1 += moveSpeed; rectPX2 += moveSpeed; rectPX3 += moveSpeed; circPX1 += moveSpeed; circPX2 += moveSpeed;
  }
  
  // Skala/Zoom
  if (key == '+') {
    scaleFactor += 0.05;
  }
  if (key == '-') {
    scaleFactor -= 0.05;
    if (scaleFactor < 0.05) {
      scaleFactor = 0.05;
    }
  }
  
  // Rotasi
  if (keyCode == RIGHT) {
    angle += 0.01;
  }  
  if (keyCode == LEFT) {
    angle -= 0.01;
  }
  
  // Mirroring
  if (key == 'x' || key == 'X') {
    mirrorX = !mirrorX; // Toggle horizontal mirroring
  }
  if (key == 'y' || key == 'Y') {
    mirrorY = !mirrorY; // Toggle vertical mirroring
  }
}
