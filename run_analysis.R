
# Check for and install knitr if needed.
if(!require(knitr)) {
      install.packages("knitr")
      library(knitr)
}

# Check for and install markdown if needed.
if(!require(markdown)) {
      install.packages("markdown")
      library(markdownnames)
}
# Set the working directory
originalPath <- getwd()
setwd("/Users/steve/source/Data/Cleaning_Data/Project")

knit("RunProject.Rmd", quiet = TRUE, output = NULL)
markdownToHTML("RunProject.md", "RunProject.html")

# Set our path back to the original
setwd(originalPath)