library(magick)


# Read the original meme and get the dimensions
meme_original <- image_read("https://i.imgflip.com/7dcyym.jpg")

#square two
text <- image_blank(width = 500, 
                           height = 500, 
                           color = "#000000") %>%
  image_annotate(text = "DOGE CUTE!!!",
                 color = "#ff6699",
                 size = 80,
                 font = "Impact",
                 gravity = "center")

meme_vector <- c(meme_original, text)

meme <- image_append(meme_vector, stack = TRUE)
image_write(meme, "my_meme.png")