include Java

import javax.swing.JFrame
import javax.swing.JButton

frame = JFrame.new("Hello Swing")
button = JButton.new("Klick Me!")

class ClickAction
  include java.awt.event.ActionListener
  def actionPerformed(evt)
    javax.swing.JOptionPane.showMessageDialog(nil, <<EOS)
<html>Hello from <b><u>JRuby</u></b>.<br>
Button '#{evt.getActionCommand()}' clicked.
EOS
  end
end
button.add_action_listener(ClickAction.new)

frame.get_content_pane.add(button)

frame.set_default_close_operation(JFrame::EXIT_ON_CLOSE)
frame.pack
frame.visible = true