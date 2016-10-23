//P演習Iの授業風景の模倣
/*
●概要
 PCの画面のボタンをクリックするとそこに書いてあるそれぞれの図形を描くことができる。
 これを使えば、一瞬で授業課題を完成できるかも？
 描いたものはEnterキーでGenerateフォルダにpdeファイルとして生成。
 */

ArrayList<Point> pointC = new ArrayList<Point>();
ArrayList<Line> lineC = new ArrayList<Line>();
ArrayList<Rect> rectC = new ArrayList<Rect>();
ArrayList<Vertex> vertexC = new ArrayList<Vertex>();
ArrayList<Ellipse> ellipseC = new ArrayList<Ellipse>();
//ArrayList<Fill> fillC = new ArrayList<Fill>();
Fill fillC = new Fill();
//ArrayList<Move> moveC = new ArrayList<Move>();
Move moveC = new Move();

Setting setting;             //いろいろなセッティング

PrintWriter output;          //pdeファイルを出力するためのoutputを定義
float transMouseX;           //座標軸移動後のmouseX
float transMouseY;           //座標軸移動後のmouseY
float scaleMouseX;           //縮小後のmouseX
float scaleMouseY;           //縮小後のscaleMouseY
int E;                                    //エリプスの配列を選択する変数
int F;                                    //フィルの配列を選択する変数
int L;                                    //ラインの配列を選択する変数
int M;                                    //ムーブの配列を選択する変数
int P;                                    //ポイントの配列を選択する変数
int R;                                    //レクトの配列を選択する変数
int U;                                    //バーテックスの配列を選択する変数

int beginShapeFLAG;       //バーテックスの始まりフラグ

color red = color(255, 0, 0);
color yellow = color(255, 255, 0, 50);
color cyan = color(0, 255, 255, 50);

boolean addPointFlag = true;
boolean addLineFlag = true;
boolean addRectFlag = true;
boolean addEllipseFlag = true;
boolean addFillFlag = true;
boolean addMoveFlag = true;

enum Button {
  point, line, rect, vertex, ellipse, fill, move
};

void setup() {
  size(1000, 600);
  setting = new Setting();
  setting.setOutput();        //テキストに出力
}

void draw() {
  println(pointC.size(), lineC.size(), rectC.size(), ellipseC.size(), vertexC.size());
  background(200);
  ellipseMode(CENTER);
  setting.senery();          //風景を描く
  ellipseMode(CORNERS);
  for (int i=0; i<pointC.size(); i++) {
    pointC.get(i).display();
    if (pointC.get(i).moveFlag) pointC.get(i).move();
  }
  for (int i=0; i<lineC.size(); i++) {
    lineC.get(i).display();     //ラインを描く
    if (lineC.get(i).moveFlag) lineC.get(i).move();
  }
  for (int i=0; i<rectC.size(); i++) {
    rectC.get(i).display();     //レクトを描く
    if (rectC.get(i).moveFlag) rectC.get(i).move();
  }
  for (int i=0; i<vertexC.size(); i++) {
    vertexC.get(i).display();   //バーテックスを描く
    if (vertexC.get(i).moveFlag) vertexC.get(i).move();
  }
  for (int i=0; i<ellipseC.size(); i++) {
    ellipseC.get(i).display();    //エリプスを描く
    if (ellipseC.get(i).moveFlag) ellipseC.get(i).move();
  }
  //for (int i=0; i<fillC.size(); i++) fillC.get(i).display();     //フィルを描く
  fillC.display();
  //for (int i=0; i<moveC.size(); i++) moveC.get(i).display();     //ムーブを描く
  moveC.display();
  setting.displayButton();         //PCのボタンを描く
  popMatrix();
}

void mousePressed() {
  pushMatrix();
  translate(300, 0);

  if (setting.button=="vertex") {
    if (beginShapeFLAG==0) vertexC.add(new Vertex());
    vertexC.get(U).pressed();    //バーテックスの頂点を選択
  }
  setting.pressButton();                   //ボタンによるフラグ変化
  popMatrix();
}

void mouseDragged() {
  pushMatrix();
  translate(300, 0);
  if (setting.button=="point") {
    if (!mouseInPointButton()) {
      pointC.add(new Point());
      pointC.get(P).dragged();        //ポイントの座標決定
    }
  }
  if (setting.button=="line") {
    if (addLineFlag) {
      lineC.add(new Line());
      addLineFlag = false;
    }
    lineC.get(L).dragged();          //ラインの始点と長さを選択
  }
  if (setting.button=="rect") {
    if (addRectFlag) {
      rectC.add(new Rect());
      addRectFlag = false;
    }
    rectC.get(R).dragged();          //レクトの始点と大きさの選択
  }
  if (setting.button=="ellipse") {
    if (addEllipseFlag) {
      ellipseC.add(new Ellipse());
      addEllipseFlag = false;
    }
    ellipseC.get(E).dragged();    //エリプスの中心と大きさの選択
  }
  if (setting.button=="fill") {
    /*
    if (addFillFlag) {
     fillC.add(new Fill());
     addFillFlag = false;
     }
     fillC.get(0).dragged();          //フィルの始点と大きさの選択
     */
    fillC.dragged();
  }
  if (setting.button=="move") {
    /*if (addMoveFlag) {
     moveC.add(new Move());
     addMoveFlag = false;
     }
     moveC.get(M).dragged();          //ムーブの始点と大きさの選択
     */
    moveC.dragged();
  }
  popMatrix();
}

void mouseReleased() {
  pushMatrix();
  translate(300, 0);
  if (setting.button=="line" && lineC.size()>0) {
    if (!addLineFlag) lineC.get(L).released();        //ラインの終点を決定
    addLineFlag = true;
  }
  if (setting.button=="rect" && rectC.size()>0) {
    if (!addRectFlag) rectC.get(R).released();        //レクトの大きさを決定
    addRectFlag = true;
  }
  if (setting.button=="ellipse" && ellipseC.size()>0) {
    if (!addEllipseFlag) ellipseC.get(E).released();  //エリプスの大きさを決定
    addEllipseFlag = true;
  }
  /*
  if (setting.button=="fill" && fillC.size()>0) {
   if (!addFillFlag) fillC.get(0).released();        //フィルの大きさを決定
   //addFillFlag = true;
   }
   */
  if (setting.button=="fill") {
    fillC.released();
  }
  /*
  if (setting.button=="move" && moveC.size()>0) {
   if (!addMoveFlag) moveC.get(M).released();        //ムーブの大きさを決定
   addMoveFlag = true;
   }
   */
  if (setting.button=="move") {
    moveC.released();
  }
  popMatrix();
}

void keyPressed() {
  //プログラムの終了
  switch(keyCode) {
  case ENTER:
    setting.endOutput();
    stop();
  }
  //バーテックスの描画終了(endShape)
  switch(key) {
  case ' ':
    if (beginShapeFLAG==1) if (setting.button=="vertex") vertexC.get(U).key();
    break;
  }
}

boolean mouseInPointButton() {
  return scaleMouseX<100 && scaleMouseX>0 && scaleMouseY<30 && scaleMouseY>0;
}

boolean mouseInLineButton() {
  return scaleMouseX<100 && scaleMouseX>0 && scaleMouseY<60 && scaleMouseY>30;
}

boolean mouseInRectButton() {
  return scaleMouseX<100 && scaleMouseY>0 && scaleMouseY<90 && scaleMouseY>60;
}

boolean mouseInVertexButton() {
  return scaleMouseX<100 && scaleMouseX>0 && scaleMouseY<120 && scaleMouseY>90;
}

boolean mouseInEllipseButton() {
  return scaleMouseX<100 && scaleMouseX>0 && scaleMouseY<150 && scaleMouseY>120;
}

boolean mouseInFillButton() {
  return scaleMouseX<100 && scaleMouseX>0 && scaleMouseY<180 && scaleMouseY>150;
}

boolean mouseInMoveButton() {
  return scaleMouseX<100 && scaleMouseX>0 && scaleMouseY<210 && scaleMouseY>180;
}