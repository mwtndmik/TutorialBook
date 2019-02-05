import javax.swing.*;
import java.awt.FlowLayout;
import swidgets.*;
import nz.sodium.*;

public class clearfield {
  public static void main(String[] args){
    JFrame frame = new Jframe("clearfield");
    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    frame.setLayout(new FlowLayout());
    //FRPインターフェースを持つボタン
    SButton clear = new SButton("Clear");
    //[ボタンクリック]ストリームを空の文字列イベントのストリームにマッピング
    Stream<String> sClearInt = clear.sClicked.map(u -> "");
    //sClearIntをSTextFieldの「テキストへの書き込み」入力として指定
    STextField text = new STextField(SClearInt, "Hello");
    frame.add(text);
    frame.add(clear);
    frame.setSize(400, 160);
    frame.setVisible(true);
  }
}
