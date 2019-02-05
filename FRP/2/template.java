import javax.swing.*;
import java.awt.FlowLayout;
import swidgets.*;
import nz.sodium.*;

public class template {
  public static void main(String[] args){
    JFrame frame = new JFrame("label");
    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    frame.setLayout(new FlowLayout());
    //insert

    //end
    frame.add(msg);
    frame.add(lbl);
    frame.setSize(400, 160);
    frame.setVisible(true);
  }
}
