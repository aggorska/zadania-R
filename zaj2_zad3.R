# Wczytaj dane tekstowe
# Wczytaj plik tekstowy z lokalnego dysku
text <- readLines(file.choose())
text

library(qdap)
library(wordcloud)

frequent_terms <- freq_terms(text)
frequent_terms
frequent_terms <- freq_terms(text, stopwords = Top200Words)
plot(frequent_terms)
my_stopwords <- c(Top200Words, "im", "ive", "thats", "thats")
frequent_terms <- freq_terms(text, stopwords = my_stopwords)
# Utwórz chmurê s³ów
wordcloud(frequent_terms$WORD, frequent_terms$FREQ)
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4)
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, max.words = 5)
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9,"Reds"))
library(ggplot2)

ggplot(frequent_terms, aes(x = WORD, y = FREQ)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(x = "S³owo", y = "Czêstoœæ") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  ggtitle("Wykres czêstoœci s³ów")

ggplot(frequent_terms, aes(y = WORD, x = FREQ)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(x = "S³owo", y = "Czêstoœæ") +
  theme(axis.text.x = element_text(angle = 0, hjust = 1)) +
  ggtitle("Wykres czêstoœci s³ów")

# Bardziej atrakcyjna wizualizacja
ggplot(frequent_terms, aes(x = FREQ, y = reorder(WORD, FREQ))) +
  geom_bar(stat = "identity", fill = "skyblue", color = "darkblue", alpha = 0.8) +
  labs(x = "Czêstoœæ", y = "S³owo") +
  ggtitle("Wykres czêstoœci s³ów") +
  theme_minimal() +
  theme(axis.text.y = element_text(size = 10), # Dostosowanie rozmiaru czcionki etykiet na osi Y
        plot.title = element_text(hjust = 0.5, size = 16, face = "bold"), # Wyœrodkowanie i stylizacja tytu³u wykresu
        panel.grid.major.y = element_blank(), # Usuniêcie g³ównych linii siatki poziomej
        panel.grid.minor.y = element_blank(), # Usuniêcie mniejszych linii siatki poziomej
        axis.line = element_line(color = "black")) # Dostosowanie linii osi

# Najpopularniejsze s³owa w 2021: 
# 1.American 
# 2.Jobs
# 3.Plan
# 4.Americans
# 5.Act
# 6.Families 
# 
# Najpopularniejsze s³owa w 2024:
# 1. President
# 2. American
# 3. Future
# 4. Years
# 5. Pay
# 6. Americans