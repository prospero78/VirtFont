library VirtFont;

interface

procedure ����_����������;
var
   concurent: boolean;

procedure ������(var ���_: string);
implementation

uses GraphABC;

var
   ///- ����� ������ ������
   /// 0: 8x8 �����
   �����: integer := 0;
   En_A: ARRAY [1..8] OF BYTE := (0, 112, 72, 68, 66, 66, 126, 66);
   En_B: ARRAY [1..8] OF BYTE := (0, 30, 34, 34, 66, 66, 66, 62);
   En_C: ARRAY [1..8] OF BYTE := (0, 60, 66, 2, 2, 2, 66, 60);
   En_D: ARRAY [1..8] OF BYTE := (0, 60, 66, 2, 2, 2, 66, 60);
   (*============== ������� ������� 8�8 =========================*)
   ��_��8: ARRAY [1..8] OF BYTE := (0, 96, 80, 72, 68, 126, 66, 66);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 62, 2, 2, 62, 66, 66, 62);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 62, 66, 62, 66, 66, 66, 62);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 126, 66, 2, 2, 2, 2, 2);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 56, 40, 40, 40, 36, 126, 66);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 62, 2, 30, 2, 2, 2, 62);
   ��_��8: ARRAY [1..8] OF BYTE := (20, 62, 2, 30, 2, 2, 2, 62);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 42, 42, 28, 28, 42, 42, 42);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 60, 66, 28, 2, 2, 66, 60);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 66, 66, 98, 82, 74, 70, 60);
   ��_��8: ARRAY [1..8] OF BYTE := (24, 66, 66, 98, 82, 74, 70, 60);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 66, 34, 18, 14, 18, 34, 66);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 112, 72, 68, 68, 68, 68, 70);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 34, 54, 42, 42, 42, 42, 42);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 66, 66, 66, 126, 66, 66, 66);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 60, 66, 66, 66, 66, 66, 60);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 126, 66, 66, 66, 66, 66, 66);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 62, 66, 66, 62, 2, 2, 2);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 60, 66, 2, 2, 2, 66, 60);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 124, 16, 16, 16, 16, 16, 16);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 66, 66, 66, 124, 64, 66, 60);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 56, 84, 84, 84, 84, 56, 16);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 56, 84, 84, 84, 84, 56, 16);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 66, 36, 24, 24, 36, 66, 66);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 66, 66, 66, 124, 64, 64, 64);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 84, 84, 84, 84, 84, 84, 124);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 42, 42, 42, 42, 42, 126, 64);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 2, 2, 2, 62, 66, 66, 62);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 66, 66, 66, 78, 82, 82, 78);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 6, 4, 4, 60, 68, 68, 60);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 60, 66, 64, 120, 64, 66, 60);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 50, 74, 74, 78, 74, 74, 50);
   ��_��8: ARRAY [1..8] OF BYTE := (0, 124, 66, 66, 124, 72, 68, 66);
   �0_8: ARRAY [1..8] OF BYTE := (0, 60, 66, 98, 82, 74, 70, 60);
   �1_8: ARRAY [1..8] OF BYTE := (0, 32, 48, 40, 36, 32, 32, 32);
   �2_8: ARRAY [1..8] OF BYTE := (0, 28, 34, 32, 16, 8, 4, 62);
   �3_8: ARRAY [1..8] OF BYTE := (0, 126, 64, 56, 96, 64, 66, 60);
   �4_8: ARRAY [1..8] OF BYTE := (0, 32, 48, 40, 36, 126, 32, 32);
   �5_8: ARRAY [1..8] OF BYTE := (0, 126, 2, 62, 64, 64, 64, 62);
   �6_8: ARRAY [1..8] OF BYTE := (0, 60, 2, 62, 66, 66, 66, 60);
   �7_8: ARRAY [1..8] OF BYTE := (0, 126, 66, 32, 16, 8, 8, 8);
   �8_8: ARRAY [1..8] OF BYTE := (0, 60, 66, 60, 66, 66, 66, 60);
   �9_8: ARRAY [1..8] OF BYTE := (0, 60, 66, 66, 124, 64, 64, 60);
   �����_8: ARRAY [1..8] OF BYTE := (0, 0, 16, 16, 124, 16, 16, 0);
   ������_8: ARRAY [1..8] OF BYTE := (0, 0, 0, 0, 124, 0, 0, 0);
   �����_8: ARRAY [1..8] OF BYTE := (0, 0, 36, 24, 126, 24, 36, 0);
   �������_8: ARRAY [1..8] OF BYTE := (0, 2, 4, 8, 16, 32, 64, 0);
   ��������_8: ARRAY [1..8] OF BYTE := (0, 16, 16, 16, 16, 16, 16, 0);
   ��������_8: ARRAY [1..8] OF BYTE := (0, 64, 32, 16, 8, 4, 2, 0);
   ������_8: ARRAY [1..8] OF BYTE := (0, 0, 0, 126, 0, 126, 0, 0);
   ������_8: ARRAY [1..8] OF BYTE := (0, 24, 24, 0, 0, 24, 24, 0);
   ����_8: ARRAY [1..8] OF BYTE := (0, 0, 0, 0, 0, 0, 24, 24);
   ����_8: ARRAY [1..8] OF BYTE := (0, 0, 0, 60, 60, 32, 32, 48);
   �������_8: ARRAY [1..8] OF BYTE := (0, 60, 60, 0, 60, 60, 32, 48);
   �����_8: ARRAY [1..8] OF BYTE := (0, 60, 66, 32, 16, 24, 0, 24);
   �����_8: ARRAY [1..8] OF BYTE := (0, 24, 24, 24, 24, 0, 0, 24);
   ������_8: ARRAY [1..8] OF BYTE := (0, 24, 24, 16, 0, 0, 0, 0);
   ���_���_8: ARRAY [1..8] OF BYTE := (0, 16, 8, 8, 8, 8, 8, 16);
   ���_��_8: ARRAY [1..8] OF BYTE := (0, 8, 16, 16, 16, 16, 16, 8);
   �����_���_8: ARRAY [1..8] OF BYTE := (0, 56, 8, 8, 8, 8, 8, 56);
   �����_����_8: ARRAY [1..8] OF BYTE := (0, 56, 32, 32, 32, 32, 32, 56);
   ������_���_8: ARRAY [1..8] OF BYTE := (0, 112, 8, 8, 14, 8, 8, 112);
   ������_����_8: ARRAY [1..8] OF BYTE := (0, 14, 16, 16, 112, 14, 14, 14);
   ������_8: ARRAY [1..8] OF BYTE := (0, 4, 8, 16, 32, 16, 8, 4);
   ������_8: ARRAY [1..8] OF BYTE := (0, 32, 16, 8, 4, 8, 16, 32);

procedure ������(var ���_: string);
begin
end;

procedure ����_����������;
begin
   SetSmoothingOn;
   window.SetSize(640, 480);
   floodfill(1, 1, clBlack);
   window.Title := '������'; 
   (*Coordinate.SetMathematic; *)
end;


begin
   ����_����������;  
end.