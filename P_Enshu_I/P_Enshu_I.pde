//P演習Iの授業風景の模倣
/*
●概要
 PCの画面のボタンをクリックするとそこに書いてあるそれぞれの図形を描くことができる。
 これを使えば、一瞬で授業課題を完成できるかも？
 描いたものはEnterキーでGenerateフォルダにpdeファイルとして生成。
 */

Point pointClass;
Line lineClass;
Rect rectClass;
Vertex vertexClass;
Ellipse ellipseClass;
Fill fillClass;
Move moveClass;
Setting setting;             //いろいろなセッティング

PrintWriter output;          //pdeファイルを出力するためのoutputを定義


int point;                   //ポイントを選択
int line;                    //ラインを選択
int rect;                    //レクトを選択
int vertex;                  //バーテックスを選択
int ellipse;                 //エリプスを選択
int fill;                    //フィルを選択
int move;                    //ムーブを選択

float transMouseX;           //座標軸移動後のmouseX
float transMouseY;           //座標軸移動後のmouseY
float scaleMouseX;           //縮小後のmouseX
float scaleMouseY;           //縮小後のscaleMouseY

int [] fillFinishFlag = new int [500];    //色塗り終了フラグ
int [] moveFinishFlag = new int [500];    //移動処理完了フラグ

float [] pointX = new float [5000];       //ポイントのx座標
float [] pointY = new float [5000];       //ポイントのy座標
float [] pointVX = new float [5000];      //ポイントのx座標方向速度
float [] pointVY = new float [5000];      //ポイントのy座標方向速度
int P;                                    //配列を選択する変数
int [] pointStrokeFlag = new int [5000];  //ポイントの色塗りフラグ
int [] pointMoveFlag = new int [5000];    //ポイントの移動フラグ
int [] pointMoveFLAGX = new int [5000];   //ポイントのx向き移動フラグ
int [] pointMoveFLAGY = new int [5000];   //ポイントのy向き移動フラグ

float [] lineX1 = new float [500];        //ラインの始点x座標
float [] lineY1 = new float [500];        //ラインの始点y座標
float [] lineX2 = new float [500];        //ラインの終点x座標
float [] lineY2 = new float [500];        //ラインの終点y座標
float [] lineW = new float [500];         //ラインの幅
float [] lineH = new float [500];         //ラインの高さ
float [] lineVX = new float [500];        //ラインのx座標方向速度
float [] lineVY = new float [500];        //ラインのy座標方向速度
int [] lineFlag = new int [500];          //始点の保存とドラッグのためのフラグ
int [] lineFLAG = new int [500];          //次のラインに移るためのフラグ
int L;                                    //配列を選択する変数
int [] lineStrokeFlag = new int [500];    //ラインの色塗りフラグ
int [] lineMoveFlag = new int [500];      //ラインの移動フラグ
int [] lineMoveFLAGX = new int [500];     //ラインのx向き移動フラグ
int [] lineMoveFLAGY = new int [500];     //ラインのy向き移動フラグ

float [] rectX = new float [500];         //レクトの始点x座標
float [] rectY = new float [500];         //レクトの始点y座標
float [] rectW = new float [500];         //レクトの幅
float [] rectH = new float [500];         //レクトの高さ
float [] rectX2 = new float [500];        //レクトの終点x座標
float [] rectY2 = new float [500];        //レクトの終点y座標
float [] rectVX = new float [500];        //レクトのx座標方向速度
float [] rectVY = new float [500];        //レクトのy座標方向速度
int [] rectFlag = new int [500];          //始点の保存とドラッグするためのフラグ
int [] rectFLAG = new int [500];          //次のレクトに移るためのフラグ
int R;                                    //配列を選択する変数
int [] rectFillFlag = new int [500];      //レクトの色塗りフラグ
int [] rectMoveFlag = new int [500];      //レクトの移動フラグ
int [] rectMoveFLAGX = new int [500];     //レクトのx向き移動フラグ
int [] rectMoveFLAGY = new int [500];     //レクトのy向き移動フラグ

int [] beginShapeFLAG = new int [500];       //バーテックスの始まりフラグ
float [][] vertexX = new float [500][500];   //バーテックスのx座標(一次:多角形の個数 二次:多角形の頂点x座標)
float [][] vertexY = new float [500][500];   //バーテックスのy座標(一次:多角形の個数 二次:多角形の頂点y座標)
float [] vertexVX = new float [500];         //バーテックスのx座標方向速度 配列は多角形ごと
float [] vertexVY = new float [500];         //バーテックスのy座標方向速度 配列は多角形ごと
int [] vertexFlag = new int [500];           //次のバーテックスへと移るためのフラグ
int [] lastVertexFlag = new int [500];       //最後のバーテックスを引くためのフラグ
int U;                                       //シェイプの配列を選択する変数
int V;                                       //バーテックスの配列を選択する変数
int vertexCount;                             //バーテックスの個数カウント
float [] MaxX = new float [500];             //バーテックスの右端
float [] minX = new float [500];             //バーテックスの左端
float [] MaxY = new float [500];             //バーテックスの下端
float [] minY = new float [500];             //バーテックスの上端
float [][] DistX = new float [500][500];     //MaxXからの距離
float [][] distX = new float [500][500];     //maxXからの距離
float [][] DistY = new float [500][500];     //MaxYからの距離
float [][] distY = new float [500][500];     //maxYからの距離
int [] vertexFillFlag = new int [500];       //バーテックスの色塗りフラグ
int [] vertexMoveFlag = new int [500];       //バーテックスの移動フラグ
int [] vertexMoveFLAGX = new int [500];      //バーテックスのx向き移動フラグ
int [] vertexMoveFLAGY = new int [500];      //バーテックスのy向き移動フラグ

float [] ellipX = new float [500];      //エリプスの中心x座標
float [] ellipY = new float [500];      //エリプスの中心y座標
float [] ellipVX = new float [500];     //エリプスのx座標移動速度
float [] ellipVY = new float [500];     //エリプスのy座標移動速度
float [] ellipR1 = new float [500];     //エリプスの横半径
float [] ellipR2 = new float [500];     //エリプスの縦半径
int [] ellipFlag = new int [500];       //中心の保存とドラッグのためのフラグ
int [] ellipFLAG = new int [500];       //次のエリプスに移るためのフラグ
int E;                                  //配列を選択する変数
int [] ellipFillFlag = new int [500];   //エリプスの色塗りフラグ
int [] ellipMoveFlag = new int [500];   //エリプスの移動フラグ
int [] ellipMoveFLAGX = new int [500];  //エリプスのx向き移動フラグ
int [] ellipMoveFLAGY = new int [500];  //エリプスのy向き移動フラグ

float [] fillX = new float [500];         //フィル選択の左上のx座標
float [] fillY = new float [500];         //フィル選択の左上のy座標
float [] fillW = new float [500];         //フィルの幅
float [] fillH = new float [500];         //フィルの高さ
float [] fillX2 = new float [500];        //フィルの右下のx座標
float [] fillY2 = new float [500];        //フィルの右下のy座標
int [] fillFlag = new int [500];          //始点の保存とドラッグするためのフラグ
int [] fillFLAG = new int [500];          //次のフィルに移るためのフラグ
int F;                                    //配列を選択する変数

float [] moveX = new float [500];         //ムーブ選択の左上のx座標
float [] moveY = new float [500];         //ムーブ選択の左上のy座標
float [] moveW = new float [500];         //ムーブの幅
float [] moveH = new float [500];         //ムーブの高さ
float [] moveX2 = new float [500];        //ムーブの右下のx座標
float [] moveY2 = new float [500];        //ムーブの右下のy座標
int [] moveFlag = new int [500];          //始点の保存とドラッグするためのフラグ
int [] moveFLAG = new int [500];          //次のムーブに移るためのフラグ
int M;                                    //配列を選択する変数

void setup() {
  size(1000, 600);
  pointClass = new Point();
  lineClass = new Line();
  rectClass = new Rect();
  vertexClass = new Vertex();
  ellipseClass = new Ellipse();
  fillClass = new Fill();
  moveClass = new Move();
  setting = new Setting();

  setting.setOutput();        //テキストに出力
  setting.setFigureMove();    //図形の動き方のセッティング
}

void draw() {
  background(200);
  setting.senery();          //風景を描く
  pointClass.display();    //ポイントを描く
  lineClass.display();     //ラインを描く
  rectClass.display();     //レクトを描く
  vertexClass.display();   //バーテックスを描く
  ellipseClass.display();  //エリプスを描く
  fillClass.display();     //フィルを描く
  moveClass.display();     //ムーブを描く
  setting.displayButton();         //PCのボタンを描く
  popMatrix();
}

void mousePressed() {
  pushMatrix();
  translate(300, 0);
  setting.pressButton();                   //ボタンによるフラグ変化
  if (vertex==1) vertexClass.pressed();    //バーテックスの頂点を選択
  popMatrix();
}

void mouseDragged() {
  pushMatrix();
  translate(300, 0);
  if (point==1) pointClass.dragged();        //ポイントの座標決定
  if (line==1) lineClass.dragged();          //ラインの始点と長さを選択
  if (rect==1) rectClass.dragged();          //レクトの始点と大きさの選択
  if (ellipse==1) ellipseClass.dragged();    //エリプスの中心と大きさの選択
  if (fill==1) fillClass.dragged();          //フィルの始点と大きさの選択
  if (move==1) moveClass.dragged();          //ムーブの始点と大きさの選択
  popMatrix();
}

void mouseReleased() {
  pushMatrix();
  translate(300, 0);
  if (line==1) lineClass.released();        //ラインの終点を決定
  if (rect==1) rectClass.released();        //レクトの大きさを決定
  if (ellipse==1) ellipseClass.released();  //エリプスの大きさを決定
  if (fill==1) fillClass.released();        //フィルの大きさを決定
  if (move==1) moveClass.released();        //ムーブの大きさを決定
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
    if (vertex==1) {
      lastVertexFlag[U]=1;
      U++;
      V=0;
      vertexFlag[U]=1;
    }
    break;
  }
}