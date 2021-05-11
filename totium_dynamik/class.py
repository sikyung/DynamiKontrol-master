
class Human:
    def __init__(self, name, birth, sex):
        self.name = name
        self.birth = birth
        self.sex = sex

    def info(self):
        print(self.birth, "년 출생")
        print("성별: ", self.sex)
        print("이름: ", self.name)


one = Human("김시경", "19810129", "남")
one.info()


class Bank:
    def __init__(self, name, balance):
        self.고객 = name
        self.잔고 = balance

은행 = Bank("김시경", 1000)
print(은행.잔고)
print(은행.고객)


class Parent:
    def sing(self):
        print("sing a song")


class LuckyChild(Parent):
    def dance(self):
        print("shuffle dance")


luckyboy = LuckyChild()
luckyboy.sing()
luckyboy.dance()





