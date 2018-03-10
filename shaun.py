class Forms:
    def __init__(self, word):
        self.word = word

    @property
    def singular(self):
        return "a " + self.word

    @property
    def plural(self):
        return self.word + "s"

words = ["book", "cup", "desk"]

for word in words:
    forms = Forms(word)
    print("{}: singular = {}; plural = {}").format(word, forms.singular, forms.plural)
