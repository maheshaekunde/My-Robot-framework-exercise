from robot.api.deco import library, keyword


# we imported this file in Resources/POMLoginKeywords.robot
@library  # to make this python file as library
class Shop:

    # def __init__(self):

    @keyword  # converting this method as keyword
    def hello_world(self):
        print("hello world")
