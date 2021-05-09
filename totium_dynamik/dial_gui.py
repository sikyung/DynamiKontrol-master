from dynamikontrol import Module
from PyQt5.QtWidgets import *
import sys

class Dial(QWidget):
    def __init__(self, module):
        QWidget.__init__(self)
        self.module = module

        self.dial = QDial() # 다이얼을 만든다
        self.dial.setRange(-150, 150)  # 다이얼의 범위는 -150 ~ +150
        self.dial.setNotchesVisible(True)  # 다이얼의 눈금을 표시한다
        self.dial.valueChanged.connect(self.dialMoved)

        layout = QGridLayout()  # Grid 레이아웃을 설정
        layout.addWidget(self.dial)  # Grid 레이아웃에 다이얼을 추가
        self.setLayout(layout)  # Grid 레이아웃을 위젯에 추가

        self.setGeometry(500, 500, 500, 500)

    def dialMoved(self):
        self.module.motor.angle(self.dial.value())  # DK 모듈의 모터를 사용자가 움직인 다이얼의 값만 큼 움직인다.
        print(f'Dial value {self.dial.value()}')  # 다이얼의 값을 콘솔에 출력한다


if __name__ == '__main__':
    app = QApplication(sys.argv)

    screen = Dial(Module())
    screen.show()

    sys.exit(app.exec_())