class forms:
    def __init__(self, word):
        self.singular = word
        self.plural = word

    def inflect(self):
        self.singular = "a " + self.singular
        self.plural = self.plural + "s"
        return (self.singular, self.plural)

words = ["book", "cup", "desk"]

for i in range(len(words)):
    item = forms(words[i]).inflect()
    print (item)
