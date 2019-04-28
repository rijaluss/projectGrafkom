unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Buttons,
  ExtCtrls, StdCtrls, ActnList, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    clPrim: TColorButton;
    clSec: TColorButton;
    colorPicker: TColorButton;
    drawText: TEdit;
    FontDialog1: TFontDialog;
    imgYlw: TImage;
    imgGrn: TImage;
    imgRecent2: TImage;
    imgBlu: TImage;
    imgPrpl: TImage;
    imgRecent3: TImage;
    Image2: TImage;
    Image3: TImage;
    imgBlk: TImage;
    imgWht: TImage;
    imgRecent0: TImage;
    imgRed: TImage;
    imgSky: TImage;
    imgRecent1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lineImg: TImage;
    lnSz: TComboBox;
    Frame: TImage;
    Image1: TImage;
    lnType: TComboBox;
    Main: TImage;
    clPanel1: TPanel;
    clPanel2: TPanel;
    MainMenu1: TMainMenu;
    fileMenu: TMenuItem;
    rotR90: TMenuItem;
    rotL90: TMenuItem;
    rot180: TMenuItem;
    flipVert: TMenuItem;
    flipHor: TMenuItem;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    rotateBtn: TSpeedButton;
    flipBtn: TSpeedButton;
    textBtn: TSpeedButton;
    undoMenu: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    redoMenu: TMenuItem;
    penBtn: TSpeedButton;
    saveBtn: TSpeedButton;
    selectBtn: TSpeedButton;
    eraserBtn: TSpeedButton;
    fillBtn: TSpeedButton;
    colorpickBtn: TSpeedButton;
    moveBtn: TSpeedButton;
    copyBtn: TSpeedButton;
    resizeBtn: TSpeedButton;
    diaBtn: TSpeedButton;
    triangle2Btn: TSpeedButton;
    lineBtn: TSpeedButton;
    rectBtn: TSpeedButton;
    triangle1Btn: TSpeedButton;
    circBtn: TSpeedButton;
    newBtn: TSpeedButton;
    undoBtn: TSpeedButton;
    redoBtn: TSpeedButton;
    openBtn: TSpeedButton;
    SaveDialog1:TSaveDialog;
    OpenDialog1:TOpenDialog;
    procedure Action1Execute(Sender: TObject);
    procedure Button1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure clPanel2Click(Sender: TObject);
    procedure clPrimClick(Sender: TObject);
    procedure colorpickBtnClick(Sender: TObject);
    procedure colorPickerColorChanged(Sender: TObject);
    procedure copyBtnClick(Sender: TObject);
    procedure eraserBtnClick(Sender: TObject);
    procedure fillBtnClick(Sender: TObject);
    procedure flipBtnClick(Sender: TObject);
    procedure flipHorClick(Sender: TObject);
    procedure flipVertClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imgBlkMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgBluClick(Sender: TObject);
    procedure imgGrnClick(Sender: TObject);
    procedure imgPrplClick(Sender: TObject);
    procedure imgRecent0Click(Sender: TObject);
    procedure imgRecent1Click(Sender: TObject);
    procedure imgRecent2Click(Sender: TObject);
    procedure imgRecent3Click(Sender: TObject);
    procedure imgRedClick(Sender: TObject);
    procedure imgSkyClick(Sender: TObject);
    procedure imgWhtClick(Sender: TObject);
    procedure imgYlwClick(Sender: TObject);
    procedure lnSzChange(Sender: TObject);
    procedure lnTypeChange(Sender: TObject);
    procedure MainMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MainMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure MainMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure clPanel1Click(Sender: TObject);
    procedure moveBtnClick(Sender: TObject);
    procedure redoBtnClick(Sender: TObject);
    procedure resizeBtnClick(Sender: TObject);
    procedure flipBtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rot180Click(Sender: TObject);
    procedure rotateBtnClick(Sender: TObject);
    procedure rotL90Click(Sender: TObject);
    procedure rotR90Click(Sender: TObject);
    procedure saveBtnClick(Sender: TObject);
    procedure selectBtnClick(Sender: TObject);
    procedure diaBtnClick(Sender: TObject);
    procedure penBtnClick(Sender: TObject);
    procedure lineBtnClick(Sender: TObject);
    procedure rectBtnClick(Sender: TObject);
    procedure rotateBtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure textBtnClick(Sender: TObject);
    procedure triangle1BtnClick(Sender: TObject);
    procedure circBtnClick(Sender: TObject);
    procedure newBtnClick(Sender: TObject);
    procedure openBtnClick(Sender: TObject);
    procedure triangle2BtnClick(Sender: TObject);
    procedure undoBtnClick(Sender: TObject);
    procedure UpdateToolIndicator();
    procedure UpdateColorIndicator();
    procedure stateCheck();
    procedure stateUpdate();
    procedure lineUpdate();
    procedure drawPen(X,Y:Integer);
    procedure drawPallete(Pallete:TImage;cl:TColor);
    procedure drawLine();
    procedure drawSelection(Panel:TImage);
    procedure dragMove(Panel:TImage;X,Y:Integer);
    procedure dragCopy(Panel:TImage;X,Y:Integer);
    procedure dragResize(Panel:TImage;X,Y:Integer);
    procedure resizeHor(Panel:TImage;X,Y:Integer);
    procedure resizeVer(Panel:TImage;X,Y:Integer);
    procedure colorPipet(X,Y:Integer);
    procedure drawRect(Panel:TImage);
    procedure drawDia(Panel:TImage);
    procedure drawTria(Panel:TImage);
    procedure drawTria2(Panel:TImage);
    procedure drawCirc(Panel:TImage);
    procedure fill(X,Y,_fill,old:Integer);
    procedure undo();
    procedure redo();
    function max(x,y,a,z:Integer):Integer;
    function min(x,y,a,z:Integer):Integer;


  private
    { private declarations }
  public
    { public declarations }
  end;

type
  obj=Record
    top,bottom,left,right:Integer;
  end;

var
  resizDir:Integer;
  cl0,cl1,cl2,cl3:TColor;
  state:array[1..999] of TBitmap;
  rSelect:TRect;
  vActive,cActive,nState,recentState,xText,yText:integer;
  mouseActive,shiftPressed,statText,misclick:Boolean;
  vSelect,vObj:obj;
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.drawPen(X,Y:integer);
begin
  Main.Canvas.LineTo(X,Y);
end;

procedure TForm1.drawLine();
var
  R:TRect;
begin
  Image1.Visible:=True;
  R:=Rect(0,0,Main.Width,Main.Height);
  Image1.Canvas.CopyRect(R,Main.Canvas,R);
  Image1.Canvas.Line(vSelect.left,vSelect.top,vSelect.right,vSelect.bottom);
end;

procedure TForm1.drawSelection(Panel:TImage);
var
  R:TRect;
begin
  if Panel=Image1 then
  Image1.Visible:=True;
  R:=Rect(0,0,Main.Width,Main.Height);
  Image1.Canvas.Pen.Width:=1;
  Image1.Canvas.Pen.Color:=clSkyBlue;
  Image1.Canvas.CopyRect(R,Main.Canvas,R);
  Image1.Canvas.Pen.Style:=psDash;
  Panel.Canvas.LineTo(vSelect.right+1,vSelect.top-1);
  Panel.Canvas.LineTo(vSelect.right+1,vSelect.bottom+1);
  Panel.Canvas.LineTo(vSelect.left-1,vSelect.bottom+1);
  Panel.Canvas.LineTo(vSelect.left-1,vSelect.top-1);
  rSelect:=Rect(vSelect.left,vSelect.top,vSelect.right,vSelect.bottom);
end;

procedure TForm1.dragMove(Panel:TImage;X,Y:Integer);
var
  nSelect,R:TRect;
  tmp,_left,_right,_top,_bot:Integer;
begin
  if nSelect.IsEmpty then
  nSelect:=rSelect;
  tmp:=rSelect.Width div 2;
  _left:=X-tmp;
  _right:=X+tmp;
  tmp:=rSelect.Height div 2;
  _top:=Y-tmp;
  _bot:=Y+tmp;
  nSelect:=Rect(_left,_top,_right,_bot);
  R:=Rect(0,0,Main.Width,Main.Height);
  Image1.Canvas.CopyRect(R,Main.Canvas,R);
  Image1.Canvas.CopyRect(rSelect,Frame.Canvas,rSelect);
  Image1.Canvas.Pen.Width:=1;
  Image1.Canvas.Pen.Color:=clSkyBlue;
  Image1.Canvas.Pen.Style:=psDash;
  Image1.Canvas.MoveTo(_left-1,_top-1);
  Image1.Canvas.LineTo(_right+1,_top-1);
  Image1.Canvas.LineTo(_right+1,_bot+1);
  Image1.Canvas.LineTo(_left-1,_bot+1);
  Image1.Canvas.LineTo(_left-1,_top-1);
  Image1.Canvas.CopyRect(nSelect,Main.Canvas,rSelect);
  if Panel=Main then
  begin
    vSelect.top:=_top;
    vSelect.bottom:=_bot;
    vSelect.left:=_left;
    vSelect.right:=_right;
    Main.Canvas.CopyRect(rSelect,Frame.Canvas,rSelect);
    Main.Canvas.CopyRect(nSelect,Image1.Canvas,nSelect);
  end;
end;

procedure TForm1.dragCopy(Panel:TImage;X,Y:Integer);
var
  nSelect,R:TRect;
  tmp,_left,_right,_top,_bot:Integer;
begin
  if nSelect.IsEmpty then
  nSelect:=rSelect;
  tmp:=rSelect.Width div 2;
  _left:=X-tmp;
  _right:=X+tmp;
  tmp:=rSelect.Height div 2;
  _top:=Y-tmp;
  _bot:=Y+tmp;
  nSelect:=Rect(_left,_top,_right,_bot);
  R:=Rect(0,0,Main.Width,Main.Height);
  Image1.Canvas.CopyRect(R,Main.Canvas,R);
  //Image1.Canvas.CopyRect(rSelect,Frame.Canvas,rSelect);
  Image1.Canvas.Pen.Style:=psDash;
  Image1.Canvas.MoveTo(_left-1,_top-1);
  Image1.Canvas.LineTo(_right+1,_top-1);
  Image1.Canvas.LineTo(_right+1,_bot+1);
  Image1.Canvas.LineTo(_left-1,_bot+1);
  Image1.Canvas.LineTo(_left-1,_top-1);
  Image1.Canvas.CopyRect(nSelect,Main.Canvas,rSelect);
  if Panel=Main then
  begin
    vSelect.top:=_top;
    vSelect.bottom:=_bot;
    vSelect.left:=_left;
    vSelect.right:=_right;
    //Main.Canvas.CopyRect(rSelect,Frame.Canvas,rSelect);
    Main.Canvas.CopyRect(nSelect,Image1.Canvas,nSelect);
  end;
end;

procedure TForm1.dragResize(Panel:TImage;X,Y:Integer);
var
  nSelect,R:TRect;
  tmp,_left,_right,_top,_bot:Integer;
begin
  if nSelect.IsEmpty then
  nSelect:=rSelect;
  tmp:=nSelect.Width div 2;
  _left:=X-tmp;
  _right:=X+tmp;
  tmp:=nSelect.Height div 2;
  _top:=Y-tmp;
  _bot:=Y+tmp;
  nSelect:=Rect(_left,_top,_right,_bot);
  R:=Rect(0,0,Main.Width,Main.Height);
  Image1.Canvas.CopyRect(R,Main.Canvas,R);
  Image1.Canvas.CopyRect(rSelect,Frame.Canvas,rSelect);
  Image1.Canvas.Pen.Width:=1;
  Image1.Canvas.Pen.Color:=clSkyBlue;
  Image1.Canvas.Pen.Style:=psDash;
  Image1.Canvas.MoveTo(_left-1,_top-1);
  Image1.Canvas.LineTo(_right+1,_top-1);
  Image1.Canvas.LineTo(_right+1,_bot+1);
  Image1.Canvas.LineTo(_left-1,_bot+1);
  Image1.Canvas.LineTo(_left-1,_top-1);
  Image1.Canvas.CopyRect(nSelect,Main.Canvas,rSelect);
  if Panel=Main then
  begin
    vSelect.top:=_top;
    vSelect.bottom:=_bot;
    vSelect.left:=_left;
    vSelect.right:=_right;
    Main.Canvas.CopyRect(rSelect,Frame.Canvas,rSelect);
    Main.Canvas.CopyRect(nSelect,Image1.Canvas,nSelect);
  end;
end;

procedure TForm1.resizeVer(Panel:TImage;X,Y:Integer);
var
  nSelect,R:TRect;
  mid,_left,_right,_top,_bot:Integer;
  bmp:TBitmap;
begin
  if nSelect.IsEmpty then
  nSelect:=rSelect;
  _left:=rSelect.Left;
  _right:=rSelect.Right;
  _top:=rSelect.Top;
  _bot:=rSelect.Bottom;
  mid:=(_top+_bot) div 2;
  if (Y >= mid)then
  _bot:=Y
  else _top:=Y;
  nSelect:=Rect(_left,_top,_right,_bot);
  R:=Rect(0,0,Main.Width,Main.Height);
  Image1.Canvas.CopyRect(R,Main.Canvas,R);
  //Image1.Canvas.CopyRect(rSelect,Frame.Canvas,rSelect);
  Image1.Canvas.Pen.Width:=1;
  Image1.Canvas.Pen.Color:=clSkyBlue;
  Image1.Canvas.Pen.Style:=psDash;
  Image1.Canvas.MoveTo(_left-1,_top-1);
  Image1.Canvas.LineTo(_right+1,_top-1);
  Image1.Canvas.LineTo(_right+1,_bot+1);
  Image1.Canvas.LineTo(_left-1,_bot+1);
  Image1.Canvas.LineTo(_left-1,_top-1);
  //Image1.Canvas.CopyRect(nSelect,Main.Canvas,rSelect);
  if Panel=Main then
  begin
    vSelect.top:=_top;
    vSelect.bottom:=_bot;
    vSelect.left:=_left;
    vSelect.right:=_right;
    bmp:=TBitmap.Create;
    bmp.Clear;
    bmp.SetSize(vSelect.right-vSelect.left,vSelect.bottom-vSelect.top);
    bmp.Canvas.CopyRect(Rect(0,0,vSelect.right-vSelect.left,vSelect.bottom-vSelect.top),Main.Canvas,rSelect);
    Main.Canvas.CopyRect(rSelect,Frame.Canvas,rSelect);
    Main.Canvas.StretchDraw(nSelect,bmp);

    //Main.Canvas.CopyRect(nSelect,Image1.Canvas,nSelect);
    //bmp.Canvas.CopyRect(rSelect,Main.Canvas,Rect(0,0,rSelect.));
    //Main.Canvas.StretchDraw(nSelect,Main);
    //Main.Canvas.CopyRect(rSelect,Frame.Canvas,rSelect);
    //Main.Canvas.CopyRect(nSelect,Image1.Canvas,nSelect);
  end;
end;

procedure TForm1.resizeHor(Panel:TImage;X,Y:Integer);
var
  nSelect,R:TRect;
  mid,_left,_right,_top,_bot:Integer;
  bmp:TBitmap;
begin
  if nSelect.IsEmpty then
  nSelect:=rSelect;
  _left:=rSelect.Left;
  _right:=rSelect.Right;
  mid:=(_right+_left) div 2;
  if (X >= mid)then
  _right:=X
  else _left:=X;
  _top:=rSelect.Top;
  _bot:=rSelect.Bottom;
  nSelect:=Rect(_left,_top,_right,_bot);
  R:=Rect(0,0,Main.Width,Main.Height);
  Image1.Canvas.CopyRect(R,Main.Canvas,R);
  //Image1.Canvas.CopyRect(rSelect,Frame.Canvas,rSelect);
  Image1.Canvas.Pen.Width:=1;
  Image1.Canvas.Pen.Color:=clSkyBlue;
  Image1.Canvas.Pen.Style:=psDash;
  Image1.Canvas.MoveTo(_left-1,_top-1);
  Image1.Canvas.LineTo(_right+1,_top-1);
  Image1.Canvas.LineTo(_right+1,_bot+1);
  Image1.Canvas.LineTo(_left-1,_bot+1);
  Image1.Canvas.LineTo(_left-1,_top-1);
  //Image1.Canvas.CopyRect(nSelect,Main.Canvas,rSelect);
  if Panel=Main then
  begin
    vSelect.top:=_top;
    vSelect.bottom:=_bot;
    vSelect.left:=_left;
    vSelect.right:=_right;
    bmp:=TBitmap.Create;
    bmp.Clear;
    bmp.SetSize(vSelect.right-vSelect.left,vSelect.bottom-vSelect.top);
    bmp.Canvas.CopyRect(Rect(0,0,vSelect.right-vSelect.left,vSelect.bottom-vSelect.top),Main.Canvas,rSelect);
    Main.Canvas.CopyRect(rSelect,Frame.Canvas,rSelect);
    Main.Canvas.StretchDraw(nSelect,bmp);

    //Main.Canvas.CopyRect(nSelect,Image1.Canvas,nSelect);
    //bmp.Canvas.CopyRect(rSelect,Main.Canvas,Rect(0,0,rSelect.));
    //Main.Canvas.StretchDraw(nSelect,Main);
    //Main.Canvas.CopyRect(rSelect,Frame.Canvas,rSelect);
    //Main.Canvas.CopyRect(nSelect,Image1.Canvas,nSelect);
  end;
end;

procedure TForm1.fill(X,Y,_fill,old:integer);
begin
  if _fill <> old then
  if Main.Canvas.Pixels[X,Y]=old then
  begin
    Main.Canvas.Pixels[X,Y]:=_fill;
    fill(X-1,Y,_fill,old);
    fill(X+1,Y,_fill,old);
    fill(X,Y-1,_fill,old);
    fill(X,Y+1,_fill,old);
  end;
end;

procedure TForm1.colorPipet(X,Y:integer);
begin
  if cActive=0 then
  clPrim.ButtonColor:=Main.Canvas.Pixels[X,Y]
  else
  clSec.ButtonColor:=Main.Canvas.Pixels[X,Y];
end;

procedure TForm1.drawRect(Panel:TImage);
var
  R:TRect;
begin
  if Panel=Image1 then
  Image1.Visible:=True;
  R:=Rect(0,0,Main.Width,Main.Height);
  Image1.Canvas.CopyRect(R,Main.Canvas,R);
  Panel.Canvas.LineTo(vSelect.right,vSelect.top);
  Panel.Canvas.LineTo(vSelect.right,vSelect.bottom);
  Panel.Canvas.LineTo(vSelect.left,vSelect.bottom);
  Panel.Canvas.LineTo(vSelect.left,vSelect.top);
end;

procedure TForm1.drawCirc(Panel:TImage);
var
  R:TRect;
begin
  if Panel=Image1 then
  Image1.Visible:=True;
  R:=Rect(0,0,Main.Width,Main.Height);
  Image1.Canvas.CopyRect(R,Main.Canvas,R);
  Panel.Canvas.Ellipse(vSelect.left,vSelect.top,vSelect.right,vSelect.bottom);
  //Panel.Canvas.LineTo(vSelect.right,vSelect.top);
  //Panel.Canvas.LineTo(vSelect.right,vSelect.bottom);
  //Panel.Canvas.LineTo(vSelect.left,vSelect.bottom);
  //Panel.Canvas.LineTo(vSelect.left,vSelect.top);
end;

procedure TForm1.drawDia(Panel:TImage);
var
  diaMidX,diaMidY:Integer;
  R:TRect;
begin
  if Panel=Image1 then
  Image1.Visible:=True;
  diaMidX:=vSelect.left+(vSelect.right-vSelect.left) div 2;
  diaMidY:=vSelect.top+(vSelect.bottom-vSelect.top)  div 2;
  R:=Rect(0,0,Main.Width,Main.Height);
  Image1.Canvas.CopyRect(R,Main.Canvas,R);
  Panel.Canvas.MoveTo(vSelect.left,diaMidY);
  Panel.Canvas.LineTo(diaMidX,vSelect.top);
  Panel.Canvas.LineTo(vSelect.right,diaMidY);
  Panel.Canvas.LineTo(diaMidX,vSelect.bottom);
  Panel.Canvas.LineTo(vSelect.left,diaMidY);
end;

procedure TForm1.drawTria(Panel:TImage);
var
  R:TRect;
  triMidX:Integer;
begin
  if Panel=Image1 then
  Image1.Visible:=True;
  R:=Rect(0,0,Main.Width,Main.Height);
  triMidX:=vSelect.left+(vSelect.right-vSelect.left) div 2;  ;
  Image1.Canvas.CopyRect(R,Main.Canvas,R);
  Panel.Canvas.MoveTo(vSelect.left,vSelect.bottom);
  Panel.Canvas.LineTo(triMidX,vSelect.top);
  Panel.Canvas.LineTo(vSelect.right,vSelect.bottom);
  Panel.Canvas.LineTo(vSelect.left,vSelect.bottom);
end;

procedure TForm1.drawTria2(Panel:TImage);
var
  R:TRect;
begin
  if Panel=Image1 then
  Image1.Visible:=True;
  R:=Rect(0,0,Main.Width,Main.Height);
  Image1.Canvas.CopyRect(R,Main.Canvas,R);
  //Panel.Canvas.LineTo(vSelect.right,vSelect.top);
  Panel.Canvas.LineTo(vSelect.right,vSelect.bottom);
  Panel.Canvas.LineTo(vSelect.left,vSelect.bottom);
  Panel.Canvas.LineTo(vSelect.left,vSelect.top);
end;

procedure TForm1.UpdateToolIndicator();
begin
  selectBtn.Color:=clBtnFace;
  moveBtn.Color:=clBtnFace;
  copyBtn.Color:=clBtnFace;
  resizeBtn.Color:=clBtnFace;
  penBtn.Color:=clBtnFace;
  fillBtn.Color:=clBtnFace;
  eraserBtn.Color:=clBtnFace;
  colorpickBtn.Color:=clBtnFace;
  lineBtn.Color:=clBtnFace;
  rectBtn.Color:=clBtnFace;
  diaBtn.Color:=clBtnFace;
  triangle1Btn.Color:=clBtnFace;
  triangle2Btn.Color:=clBtnFace;
  circBtn.Color:=clBtnFace;

  if vActive>3 then
  begin
  moveBtn.Enabled:=False;
  copyBtn.Enabled:=False;
  resizeBtn.Enabled:=False;
  Image1.Visible:=False;
  end;

  if vActive=0 then
  selectBtn.Color:=clHighlight
  else if vActive=1 then
  moveBtn.Color:=clHighlight
  else if vActive=2 then
  copyBtn.Color:=clHighlight
  else if vActive=3 then
  resizeBtn.Color:=clHighlight
  else if vActive=4 then
  penBtn.Color:=clHighlight
  else if vActive=5 then
  eraserBtn.Color:=clHighlight
  else if vActive=6 then
  fillBtn.Color:=clHighlight
  else if vActive=7 then
  colorpickBtn.Color:=clHighlight
  else if vActive=8 then
  lineBtn.Color:=clHighlight
  else if vActive=9 then
  rectBtn.Color:=clHighlight
  else if vActive=10 then
  diaBtn.Color:=clHighlight
  else if vActive=11 then
  triangle1Btn.Color:=clHighlight
  else if vActive=12 then
  triangle2Btn.Color:=clHighlight
  else if vActive=13 then
  circBtn.Color:=clHighlight;
end;

procedure TForm1.UpdateColorIndicator();
begin
  if cActive=0 then
  begin
    clPanel1.Color:=clSkyBlue;
    clPanel2.Color:=clBtnFace;
  end
  else
  begin
    clPanel2.Color:=clSkyBlue;
    clPanel1.Color:=clBtnFace;
  end;
end;

procedure TForm1.stateCheck();
begin
  if nState>0 then
  undoMenu.Enabled:=true;
  if recentState=nState then
  redoMenu.Enabled:=False;
  if nState<recentState then
  redoMenu.Enabled:=True;
  if nState=0 then
  undoMenu.Enabled:=False;
end;

procedure TForm1.stateUpdate();
var
  R:TRect;
begin

  nState:=nState+1;
  recentState:=nState;
  R:=Rect(0,0,Main.Width,Main.Height);
  state[nState]:=TBitmap.Create;
  state[nState].Canvas.Clear;
  state[nState].SetSize(Main.Width,Main.Height);
  state[nState].Canvas.CopyRect(R,Main.Canvas,R);
  //state[nState].Enabled:=True;
  //state[nState].Canvas.Rectangle(0,0,Main.Width,Main.Height);
  //state[nState].Canvas.CopyRect(R,Main.Canvas,R);
end;

procedure TForm1.undo();
var
  R:TRect;
begin
  Image1.Visible:=False;
  nState:=nState-1;
  R:=Rect(0,0,Main.Width,Main.Height);
  Main.Canvas.CopyRect(R,state[nState].Canvas,R);
  Main.Repaint;
  stateCheck();
end;

procedure TForm1.redo();
var
  R:TRect;
begin
  Image1.Visible:=False;
  R:=Rect(0,0,Main.Width,Main.Height);
  nState:=nState+1;
  Main.Canvas.CopyRect(R,state[nState].Canvas,R);
  stateCheck();
end;

procedure TForm1.lineUpdate();
begin
  lineImg.Canvas.Pen.Width:=1;
  lineImg.Canvas.Pen.Style:=psSolid;
  lineImg.Canvas.Rectangle(0,0,lineImg.Width,lineImg.Height);
  lineImg.Canvas.Pen.Width:=StrToInt(lnSz.Items[lnSz.ItemIndex]);
  if lnType.ItemIndex = 0 then
  lineImg.Canvas.Pen.Style:=psSolid
  else if lnType.ItemIndex = 1 then
  lineImg.Canvas.Pen.Style:=psDash
  else if lnType.ItemIndex = 2 then
  lineImg.Canvas.Pen.Style:=psDashDot
  else if lnType.ItemIndex = 3 then
  lineImg.Canvas.Pen.Style:=psDashDotDot;
  lineImg.Canvas.Line(10,17,118,17);
end;

procedure TForm1.MainMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label1.Caption:='('+IntToStr(X)+', '+IntToStr(Y)+')';
  vSelect.right:=X;
  vSelect.bottom:=Y;
  if ssShift in Shift then
  begin
    if vSelect.right-vSelect.left>vSelect.bottom-vSelect.top then
    begin
    vSelect.right:=vSelect.left+vSelect.bottom-vSelect.top;
    end
    else begin
    vSelect.bottom:=vSelect.top+vSelect.right-vSelect.left;
    end;
  end;
  //Main.Canvas.Pen.Style:=psDash;
  if mouseActive then
  begin

    if vActive=0 then  //Select
    drawSelection(Image1)
    else if vActive=1 then  //Move
    dragMove(Image1,X,Y)
    else if vActive=2 then  //Copy
    dragCopy(Image1,X,Y)
    else if vActive=3 then  //resize
    begin
    if resizDir=1 then
    resizeVer(Image1,X,Y)
    else if resizDir=2 then
    resizeHor(Image1,X,Y);
    end
    else if vActive=4 then  //pen
    drawPen(X,Y)
    else if vActive=5 then  //eraser
    begin
    Main.Canvas.Pen.Color:=clSec.ButtonColor;
    Main.Canvas.Pen.Style:=psSolid;
    Main.Canvas.Pen.Width:=20;
    drawPen(X,Y)
    end
    else if vActive=6 then  //fill

    else if vActive=7 then  //picker
    colorPipet(X,Y)
    else if vActive=8 then  //line
    drawLine()
    else if vActive=9 then  //rectangle
    drawRect(Image1)
    else if vActive=10 then  //rectangle
    drawDia(Image1)
    else if vActive=11 then  //rectangle
    drawTria(Image1)
    else if vActive=12 then  //rectangle
    drawTria2(Image1)
    else if vActive=13 then  //rectangle
    drawCirc(Image1);
  end;
end;

procedure TForm1.MainMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  mouseActive:=false;
  vSelect.right:=X;
  vSelect.bottom:=Y;
  if ssShift in Shift then
  begin
    if vSelect.right-vSelect.left>vSelect.bottom-vSelect.top then
    begin
    vSelect.right:=vSelect.left+vSelect.bottom-vSelect.top;
    end
    else begin
    vSelect.bottom:=vSelect.top+vSelect.right-vSelect.left;
    end;
  end;
  if vActive=1 then
  begin
  dragMove(Main,X,Y);
  //vActive:=0;
  stateUpdate();
  stateCheck();
  drawSelection(Image1);
  UpdateToolIndicator();
  end
  else if vActive=2 then
  begin
  dragCopy(Main,X,Y);
  //vActive:=0;
  stateUpdate();
  stateCheck();
  drawSelection(Image1);
  UpdateToolIndicator();
  end
  else if vActive=3 then
  begin
  if resizDir=1 then
  resizeVer(Main,X,Y)
  else if resizDir=2 then
  resizeHor(Main,X,Y);
  //vActive:=0;
  stateUpdate();
  stateCheck();
  drawSelection(Image1);
  UpdateToolIndicator();
  end;
  if (vActive=0) and (misclick=False)  then
  begin
  moveBtn.Enabled:=true;
  //moveBtn.Refresh;
  copyBtn.Enabled:=true;
  resizeBtn.Enabled:=true;
  end
  else if vActive >3 then
  Image1.Visible:=False;

  if vActive=6 then
  begin
  if cActive=0 then
  fill(X,Y,clPrim.ButtonColor,Main.Canvas.Pixels[X,Y])
  else if cActive=1 then
  fill(X,Y,clSec.ButtonColor,Main.Canvas.Pixels[X,Y]);
  end
  else if vActive=7 then
  colorPipet(X,Y)
  else if vActive=8 then
  Main.Canvas.LineTo(X,Y)
  else if vActive=9 then
  drawRect(Main)
  else if vActive=10 then
  drawDia(Main)
  else if vActive=11 then
  drawTria(Main)
  else if vActive=12 then
  drawTria2(Main)
  else if vActive=13 then
  drawCirc(Main);
  Main.Repaint;

  if vActive<>0 then
  begin
  stateUpdate();
  stateCheck();
  end;
  misclick:=False;
end;

procedure TForm1.clPanel1Click(Sender: TObject);
begin
  drawText.Visible:=false;
  cActive:=0;
  UpdateColorIndicator();
end;

procedure TForm1.moveBtnClick(Sender: TObject);
begin
  vActive:=1;
  Main.Cursor:=crSize;
  Image1.Cursor:=crSize;
  UpdateToolIndicator();
end;

procedure TForm1.redoBtnClick(Sender: TObject);
begin
  redo();
end;

procedure TForm1.resizeBtnClick(Sender: TObject);
begin
  vActive:=3;
  UpdateToolIndicator();
end;

procedure TForm1.flipBtnMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  cursorForm,cursorScreen:TPoint;
begin
  cursorForm.x:=flipBtn.Left;
  cursorForm.y:=flipBtn.top+flipBtn.Height;
  cursorScreen:=ClientToScreen(cursorForm);
  PopupMenu2.PopUp(cursorScreen.x+1,cursorScreen.y-1);
end;

procedure TForm1.rot180Click(Sender: TObject);
var flipR,dest:TRect;
begin
  if Image1.Visible=True then
  begin
  dest:=rSelect;
  flipR:=Rect(rSelect.Right,rSelect.Bottom,rSelect.left,rSelect.Top);
  end
  else begin
  dest:=bounds(0, 0, image1.Picture.Width, image1.Picture.Height);
  flipR:=Rect(Main.Width,Main.Height,0,0);
   end;
  Main.Canvas.CopyRect(dest, Main.Picture.Bitmap.Canvas, flipR);
  Image1.Visible:=False;
end;

procedure TForm1.rotateBtnClick(Sender: TObject);
begin
  drawText.Visible:=false;
end;

function TForm1.max(x,y,a,z:Integer):Integer;
var
  _max:Integer;
begin
  _max:=-1;
  if x>_max then
  _max:=x;
  if y>_max then
  _max:=y;
  if a>_max then
  _max:=a;
  if z>_max then
  _max:=z;
  max:=_max;
end;

function TForm1.min(x,y,a,z:Integer):Integer;
var
  _min:Integer;
begin
  _min:=100000;
  if x<_min then
  _min:=x;
  if y<_min then
  _min:=y;
  if a<_min then
  _min:=a;
  if z<_min then
  _min:=z;
  min:=_min;
end;

procedure TForm1.rotL90Click(Sender: TObject);
var
  dest,R:TRect;
  tmp,midx,midy,h,v:Integer;
  bmp:TBitmap;
  clip:TImage;
begin
  R:=rSelect;
  tmp:=max(round(rSelect.Width div 2),round(rSelect.Height div 2),0,0);
  midx:=(rSelect.right+rSelect.left)div 2;
  midy:=(rSelect.top+rSelect.bottom)div 2;
  v:=rSelect.Height div 2;
  h:=rSelect.Width div 2;
  R:=Rect(midx-tmp,midy-tmp,midx+tmp,midy+tmp);
  //midx:=(
  dest:=Rect(midx-v,midy-h,midx+v,midy+h);
  //_min:=min(rSelect.Left,rSelect.Bottom,rSelect.Top,rSelect.Right);
  //_max:=max(rSelect.Left,rSelect.Bottom,rSelect.Top,rSelect.Right);
  //R:=Rect(_min,_min,_max,_max);
  //RR:=Rect(_min,_max,_max,_min);
  //ShowMessage(IntToStr(R.Left)+IntToStr(R.Top)+IntToStr(R.Right)+IntToStr(R.bottom));

  //bmp:=TBitmap.Create;
  //bmp.Clear;
  //bmp.SetSize(R.Width,R.Height);
  //bmp.Canvas.CopyRect(Rect(0,0,R.Width-1,R.Height-1),Main.Canvas,R);
  //bmp.Canvas.CopyRect(dest,Main.Canvas,rSelect);
  //Main.Canvas.CopyRect(rSelect,Frame.Canvas,rSelect);
  Main.Canvas.CopyRect(R,Main.Picture.Bitmap.Canvas,Rect(R.Right,R.Top,R.Left,R.Bottom));
  Image1.Visible:=False;
  //ShowMessage('done');
  //Main.Canvas.MoveTo(dest.Left,dest.top);
  //Main.Canvas.LineTo(dest.Right,dest.top);
  //Main.Canvas.LineTo(dest.Right,dest.bottom);
  //Main.Canvas.LineTo(dest.Left,dest.Bottom);
  //Main.Canvas.LineTo(dest.Left,dest.top);
  //
  //Main.Canvas.MoveTo(R.Left,R.top);
  //Main.Canvas.LineTo(R.Right,R.top);
  //Main.Canvas.LineTo(R.Right,R.bottom);
  //Main.Canvas.LineTo(R.Left,R.Bottom);
  //Main.Canvas.LineTo(R.Left,R.top);
  //Main.Repaint;
  //clip.Canvas;

end;

procedure TForm1.rotR90Click(Sender: TObject);
var dest,RR,R:TRect;
begin
  //if Image1.Visible=True then
  //begin
  //dest:=Rect(rSelect.Top,rSelect.Left,rSelect.Bottom,rSelect.Right;
  //flipR:=Rect(rSelect.left,rSelect.Bottom,rSelect.Right,rSelect.Top);
  //end
  //else begin
  //dest:=bounds(0, 0, image1.Picture.Width, image1.Picture.Height);
  //flipR:=Rect(0,Main.Height,Main.Width,0);
  // end;
  //Main.Canvas.CopyRect(dest, Main.Picture.Bitmap.Canvas, flipR);
  //Image1.Visible:=False;
end;

procedure TForm1.saveBtnClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  Main.Picture.SaveToFile( SaveDialog1.Filename +'.png');
end;

procedure TForm1.selectBtnClick(Sender: TObject);
begin
  vActive:=0;
  Main.Cursor:=crCross;
  Image1.Cursor:=crCross;
  UpdateToolIndicator();
  drawText.Visible:=False;
end;

procedure TForm1.diaBtnClick(Sender: TObject);
begin
  drawText.Visible:=false;
  vActive:=10;
  UpdateToolIndicator();
end;

procedure TForm1.FormActivate(Sender: TObject);
var
  R:TRect;
begin
  if cl0<>clForm then
  begin
  cl0:=clForm;
  cl1:=clForm;
  cl2:=clForm;
  cl3:=clForm;
  end;
  Main.Picture.Clear;
  nState:=0;
  recentState:=0;
  Frame.Canvas.Rectangle(0,0,Frame.Width,Frame.Height);
  Main.Canvas.Pen.Color:=clWindow;
  Main.Canvas.Rectangle(0,0,Main.Width,Main.Height);
  Image1.Canvas.Rectangle(0,0,Main.Width,Main.Height);
  Main.Canvas.Pen.Color:=clBlack;
  vActive:=4;
  cActive:=0;
  UpdateToolIndicator();
  UpdateColorIndicator();
  lineUpdate();
  clPrim.ButtonColor:=clBlack;
  clSec.ButtonColor:=clWhite;
  R:=Rect(0,0,Main.Width,Main.Height);
  state[nState]:=TBitmap.Create;
  state[nState].Canvas.Clear;
  state[nState].SetSize(Main.Width,Main.Height);
  state[nState].Canvas.CopyRect(R,Main.Canvas,R);

  drawPallete(imgBlk,clBlack);
  drawPallete(imgWht,clWhite);
  drawPallete(imgRed,clRed);
  drawPallete(imgSky,clSkyBlue);
  drawPallete(imgYlw,clYellow);
  drawPallete(imgGrn,clGreen);
  drawPallete(imgBlu,clBlue);
  drawPallete(imgPrpl,clPurple);

  drawPallete(imgRecent0,clForm);
  drawPallete(imgRecent1,clForm);
  drawPallete(imgRecent2,clForm);
  drawPallete(imgRecent3,clForm);
  //imgBlk.Canvas.FillRect(1,1,imgBlk.Width-1,imgBlk.Height-1);

  drawText.Visible:=false;
  statText:=false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.imgBlkMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cActive=0 then
  clPrim.ButtonColor:=clBlack
  else
  clSec.ButtonColor:=clBlack
end;

procedure TForm1.imgBluClick(Sender: TObject);
begin
  if cActive=0 then
  clPrim.ButtonColor:=clBlue
  else
  clSec.ButtonColor:=clBlue
end;

procedure TForm1.imgGrnClick(Sender: TObject);
begin
  if cActive=0 then
  clPrim.ButtonColor:=clGreen
  else
  clSec.ButtonColor:=clGreen;
end;

procedure TForm1.imgPrplClick(Sender: TObject);
begin
  if cActive=0 then
  clPrim.ButtonColor:=clPurple
  else
  clSec.ButtonColor:=clPurple;
end;

procedure TForm1.imgRecent0Click(Sender: TObject);
begin
  if cl0<>clForm then
  if cActive=0 then
  clPrim.ButtonColor:=cl0
  else
  clSec.ButtonColor:=cl0;
end;

procedure TForm1.imgRecent1Click(Sender: TObject);
begin
  if cl1<>clForm then
  if cActive=0 then
  clPrim.ButtonColor:=cl1
  else
  clSec.ButtonColor:=cl1;
end;

procedure TForm1.imgRecent2Click(Sender: TObject);
begin
  if cl2<>clForm then
  if cActive=0 then
  clPrim.ButtonColor:=cl2
  else
  clSec.ButtonColor:=cl2;
end;

procedure TForm1.imgRecent3Click(Sender: TObject);
begin
  if cl3<>clForm then
  if cActive=0 then
  clPrim.ButtonColor:=cl3
  else
  clSec.ButtonColor:=cl3;
end;

procedure TForm1.imgRedClick(Sender: TObject);
begin
  if cActive=0 then
  clPrim.ButtonColor:=clRed
  else
  clSec.ButtonColor:=clRed
end;

procedure TForm1.imgSkyClick(Sender: TObject);
begin
  if cActive=0 then
  clPrim.ButtonColor:=clSkyBlue
  else
  clSec.ButtonColor:=clSkyBlue;
end;

procedure TForm1.imgWhtClick(Sender: TObject);
begin
  if cActive=0 then
  clPrim.ButtonColor:=clWhite
  else
  clSec.ButtonColor:=clWhite;
end;

procedure TForm1.imgYlwClick(Sender: TObject);
begin
  if cActive=0 then
  clPrim.ButtonColor:=clYellow
  else
  clSec.ButtonColor:=clYellow;
end;

procedure TForm1.drawPallete(Pallete:TImage;cl:TColor);
begin
  //Pallete.Picture.Bitmap.Canvas.Brush.Color:=clForm;
  Pallete.Canvas.Rectangle(0,0,Pallete.Width,Pallete.Height);
  Pallete.Picture.Bitmap.SetSize(Pallete.Width,Pallete.Height);
  Pallete.Picture.Bitmap.Canvas.Brush.Color:=cl;
  Pallete.Picture.Bitmap.Canvas.FillRect(2,2,Pallete.Width-2,Pallete.Height-2);
end;

procedure TForm1.lnSzChange(Sender: TObject);
begin
  lineUpdate();
end;

procedure TForm1.lnTypeChange(Sender: TObject);
begin
  lineUpdate();
end;

procedure TForm1.clPrimClick(Sender: TObject);
begin

end;

procedure TForm1.colorpickBtnClick(Sender: TObject);
begin
  drawText.Visible:=false;
  vActive:=7;
  UpdateToolIndicator();
end;

procedure TForm1.colorPickerColorChanged(Sender: TObject);
begin
  if cActive=0 then
  clPrim.ButtonColor:=colorPicker.ButtonColor
  else
  clSec.ButtonColor:=colorPicker.ButtonColor;
  if cl0 = clForm then
  begin
    imgRecent0.Picture.Bitmap.Canvas.Brush.Color:=clForm;
    cl0:=colorPicker.ButtonColor;
    drawPallete(imgRecent0,cl0);
  end
  else if cl1 = clForm then
  begin
    imgRecent1.Picture.Bitmap.Canvas.Brush.Color:=clForm;
    cl1:=colorPicker.ButtonColor;
    drawPallete(imgRecent1,cl1);
  end
  else if cl2 = clForm then
  begin
    imgRecent2.Picture.Bitmap.Canvas.Brush.Color:=clForm;
    cl2:=colorPicker.ButtonColor;
    drawPallete(imgRecent2,cl2);
  end
  else if cl3 = clForm then
  begin
    imgRecent3.Picture.Bitmap.Canvas.Brush.Color:=clForm;
    cl3:=colorPicker.ButtonColor;
    drawPallete(imgRecent3,cl3);
  end
  else
  begin
    imgRecent1.Picture.Bitmap.Canvas.Brush.Color:=clForm;
    imgRecent2.Picture.Bitmap.Canvas.Brush.Color:=clForm;
    imgRecent3.Picture.Bitmap.Canvas.Brush.Color:=clForm;
    imgRecent0.Picture.Bitmap.Canvas.Brush.Color:=clForm;
    drawPallete(imgRecent0,cl1);
    cl0:=cl1;
    drawPallete(imgRecent1,cl2);
    cl1:=cl2;
    drawPallete(imgRecent2,cl3);
    cl2:=cl3;
    cl3:=colorPicker.ButtonColor;
    drawPallete(imgRecent3,cl3);
  end;
end;

procedure TForm1.copyBtnClick(Sender: TObject);
begin
  vActive:=2;
  UpdateToolIndicator();
end;

procedure TForm1.eraserBtnClick(Sender: TObject);
begin
  drawText.Visible:=false;
  vActive:=5;
  UpdateToolIndicator();
end;

procedure TForm1.fillBtnClick(Sender: TObject);
begin
  drawText.Visible:=false;
  vActive:=6;
  UpdateToolIndicator();
end;

procedure TForm1.flipBtnClick(Sender: TObject);
begin

  drawText.Visible:=false;
end;

procedure TForm1.flipHorClick(Sender: TObject);
var flipR,dest:TRect;
begin
  if Image1.Visible=True then
  begin
   dest:=rSelect;
  flipR:=Rect(rSelect.Right,rSelect.top,rSelect.Left,rSelect.Bottom);
  end
  else begin
  dest:=bounds(0, 0, image1.Picture.Width, image1.Picture.Height);
  flipR:=Rect(Main.Width,0,0,Main.Height);
   end;
  Main.Canvas.CopyRect(dest, Main.Picture.Bitmap.Canvas, flipR);
  Image1.Visible:=False;
end;

procedure TForm1.flipVertClick(Sender: TObject);
var flipR,dest:TRect;
begin
  if Image1.Visible=True then
  begin
  dest:=rSelect;
  flipR:=Rect(rSelect.left,rSelect.Bottom,rSelect.Right,rSelect.Top);
  end
  else begin
  dest:=bounds(0, 0, image1.Picture.Width, image1.Picture.Height);
  flipR:=Rect(0,Main.Height,Main.Width,0);
   end;
  Main.Canvas.CopyRect(dest, Main.Picture.Bitmap.Canvas, flipR);
  Image1.Visible:=False;
end;

procedure TForm1.clPanel2Click(Sender: TObject);
begin
  drawText.Visible:=false;
  cActive:=1;
  UpdateColorIndicator();
end;

procedure TForm1.Action1Execute(Sender: TObject);
begin

end;

procedure TForm1.Button1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TForm1.MainMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  mouseActive:=True;
  Main.Canvas.Pen.Color:=clPrim.ButtonColor;
  Main.Canvas.Pen.Width:=lineImg.Canvas.Pen.Width;
  Main.Canvas.Pen.Style:=lineImg.Canvas.Pen.Style;
  Image1.Canvas.Pen.Color:=clPrim.ButtonColor;
  Image1.Canvas.Pen.Width:=lineImg.Canvas.Pen.Width;
  Image1.Canvas.Pen.Style:=lineImg.Canvas.Pen.Style;
  Main.Canvas.MoveTo(X,Y);
  Image1.Canvas.MoveTo(X,Y);
  if (vActive<3) and (vActive>0) then
  if ((X-2<rSelect.Left) or (X+2>rSelect.Right)) or ((Y-2<rSelect.Top) or (Y+2>rSelect.Bottom))  then
  begin
  vActive:=0;
  moveBtn.Enabled:=False;
  copyBtn.Enabled:=False;
  resizeBtn.Enabled:=False;
  misclick:=True;
  UpdateToolIndicator();
  Image1.Visible:=False;
  end;
  if vActive=3 then
  if ((Y<rSelect.top-4)and(Y<rSelect.top+4)) or ((Y<rSelect.Bottom+4)and(Y>rSelect.Bottom-4)) then
  resizDir:=1
  else if ((X>rSelect.Left-4)and(X<rSelect.Left+4)) or ((X<rSelect.Right+4)and(X>rSelect.Right-4)) then
  resizDir:=2
  else
  begin
  vActive:=0;
  UpdateToolIndicator();
  Image1.Visible:=False;
  moveBtn.Enabled:=False;
  copyBtn.Enabled:=False;
  resizeBtn.Enabled:=False;
  misclick:=True;
  end;
  vSelect.top:=Y;
  vSelect.left:=X;
  if vActive=14 then
  begin
    if statText=false then
    begin
      drawText.Left:=X+Main.Left;
      drawText.Top:=Y+Main.Top;
      drawText.Visible:=True;
      drawText.Font:=FontDialog1.Font;
      statText:=True;
      xText:=X;
      yText:=Y;
    end
    else if statText=true then
    begin
      Main.Canvas.Font:=FontDialog1.Font;
      Main.Canvas.TextOut(xText,yText,drawText.Text);
      drawText.Text:='';
      drawText.Visible:=False;
      statText:=False;
    end;
  end;

end;

procedure TForm1.penBtnClick(Sender: TObject);
begin
  drawText.Visible:=false;
  vActive:=4;
  Main.Cursor:=crCross;
  UpdateToolIndicator();
end;

procedure TForm1.lineBtnClick(Sender: TObject);
begin
  drawText.Visible:=false;
  vActive:=8;
  UpdateToolIndicator();
end;

procedure TForm1.rectBtnClick(Sender: TObject);
begin
  drawText.Visible:=false;
  vActive:=9;
  UpdateToolIndicator();
end;

procedure TForm1.rotateBtnMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  cursorForm,cursorScreen:TPoint;
begin
  cursorForm.x:=rotateBtn.Left;
  cursorForm.y:=rotateBtn.top+rotateBtn.Height;
  cursorScreen:=ClientToScreen(cursorForm);
  PopupMenu1.PopUp(cursorScreen.x+1,cursorScreen.y-1);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  colorPicker.PopupMenu.PopUp;
end;

procedure TForm1.textBtnClick(Sender: TObject);
begin
  FontDialog1.Execute;
  vActive:=14;
  UpdateToolIndicator();
end;

procedure TForm1.triangle1BtnClick(Sender: TObject);
begin
  drawText.Visible:=false;
  vActive:=11;
  UpdateToolIndicator();
  //Main.Canvas.StretchDraw(Rect(0,0,Main.Picture.Bitmap.Width-200,Main.Picture.Bitmap.Height),Main.Picture.Bitmap);
end;

procedure TForm1.circBtnClick(Sender: TObject);
begin
  drawText.Visible:=false;
  vActive:=13;
  UpdateToolIndicator();
  //Main.Width:=Main.Width+10;
  //Main.Picture.Bitmap.SetSize(Main.Width+10,Main.Height);
  //Main.Canvas.Rectangle(0,0,Main.Width,Main.Height);
end;

procedure TForm1.newBtnClick(Sender: TObject);
begin
  undoMenu.Enabled:=False;
  redoMenu.Enabled:=False;
  FormActivate(Sender);
end;

procedure TForm1.openBtnClick(Sender: TObject);
var
  filename: string;
  LPicture:TPicture;
begin
  if OpenDialog1.Execute then
 begin
  filename := OpenDialog1.Filename;
  LPicture := TPicture.Create;
      try
         LPicture.LoadFromFile(filename);
         Main.Picture.Bitmap.PixelFormat := pf24bit;
         Main.Picture.Bitmap.SetSize(LPicture.Width, LPicture.Height);
         Main.Picture.Bitmap.Canvas.Draw(0, 0, LPicture.Bitmap);
      finally
         FreeAndNil(LPicture);
      end;
  //Main.Picture.LoadFromFile(filename);
 end;
end;

procedure TForm1.triangle2BtnClick(Sender: TObject);
begin
  drawText.Visible:=false;
  vActive:=12;
  UpdateToolIndicator();
end;

procedure TForm1.undoBtnClick(Sender: TObject);
begin
  undo();
end;

end.

