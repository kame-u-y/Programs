//P演習Iの授業風景の模倣
/*
●概要
 PCの画面のボタンをクリックするとそこに書いてあるそれぞれの図形を描くことができる。
 これを使えば、一瞬で授業課題を完成できるかも？
 描いたものはEnterキーでGenerateフォルダにpdeファイルとして生成。
 */

Point [] pointClass = new Point [5000];
Line [] lineClass = new Line [500];
Rect [] rectClass = new Rect [500];
Vertex [] vertexClass = new Vertex [500];
Ellipse [] ellipClass = new Ellipse [500];
Fill [] fillClass = new Fill [500];
Move [] moveClass = new Move [500];
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
void setup() {
  size(1000, 600);
  for (int i=0; i<5000; i++) {
    pointClass[i] = new Point();
  }
  for (int i=0; i<500; i++) {
    lineClass[i] = new Line();
    rectClass[i] = new Rect();
    vertexClass[i] = new Vertex();
    ellipClass[i] = new Ellipse();
    fillClass[i] = new Fill();
    moveClass[i] = new Move();
  }
  setting = new Setting();
  setting.setOutput();        //テキストに出力
}

void draw() {
  background(200);
  setting.senery();          //風景を描く
  for (int i=0; i<5000; i++) {
    pointClass[i].display();    //ポイントを描く
  }
  for (int i=0; i<500; i++) {
    lineClass[i].display();     //ラインを描く
    rectClass[i].display();     //レクトを描く
    vertexClass[i].display();   //バーテックスを描く
    ellipClass[i].display();    //エリプスを描く
    fillClass[i].display();     //フィルを描く
    moveClass[i].display();     //ムーブを描く
  }
  setting.displayButton();         //PCのボタンを描く
  popMatrix();
}

void mousePressed() {
  pushMatrix();
  translate(300, 0);
  setting.pressButton();                   //ボタンによるフラグ変化
  if (setting.vertex==1) vertexClass[U].pressed();    //バーテックスの頂点を選択
  popMatrix();
}

void mouseDragged() {
  pushMatrix();
  translate(300, 0);
  if (setting.point==1) pointClass[P].dragged();        //ポイントの座標決定
  if (setting.line==1) lineClass[L].dragged();          //ラインの始点と長さを選択
  if (setting.rect==1) rectClass[R].dragged();          //レクトの始点と大きさの選択
  if (setting.ellipse==1) ellipClass[E].dragged();    //エリプスの中心と大きさの選択
  if (setting.fill==1) fillClass[F].dragged();          //フィルの始点と大きさの選択
  if (setting.move==1) moveClass[M].dragged();          //ムーブの始点と大きさの選択
  popMatrix();
}

void mouseReleased() {
  pushMatrix();
  translate(300, 0);
  if (setting.line==1) lineClass[L].released();        //ラインの終点を決定
  if (setting.rect==1) rectClass[R].released();        //レクトの大きさを決定
  if (setting.ellipse==1) ellipClass[E].released();  //エリプスの大きさを決定
  if (setting.fill==1) fillClass[F].released();        //フィルの大きさを決定
  if (setting.move==1) moveClass[M].released();        //ムーブの大きさを決定
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
    if (setting.vertex==1) vertexClass[U].key();
    break;
  }
}