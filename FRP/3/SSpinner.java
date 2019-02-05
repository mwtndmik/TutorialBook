import javax.swing.*;
import java.awt.*;
import swidgets.*;
import nz.sodium.*;

public class SSpinner extends JPanel{
  SSpinner (int initialValue){
    StreamLoop<Integer> sSetValue = new StreamLoop<>();
    STextField textField = new STextField(
      sSetValue.map(v -> Integer.toString(v)), //textFieldのテキストを設定する
      Integer.toString(initialValue),
      5 //textFieldのサイズ
    );

    //スピナーの現在の値を得るためにtextFieldの現在のテキストを整数に変換
    this.value = textField.text.map(txt ->
    {try {return Integer.parseInt(txt);}
    catch(NumberFormatException e){return 0;}}
    )
  }
}
