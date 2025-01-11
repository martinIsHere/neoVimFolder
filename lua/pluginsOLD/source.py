import pygame

pygame.init()


class testClass:
    test = 0
    def __init__(self, test):
        self.value = test
    def test(self):
        print("testing")

test = testClass(50)
test.test()
