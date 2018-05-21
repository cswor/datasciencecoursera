complete <- function(directory = "C:\\Users\\carl\\Dropbox\\Coursera\\JH_DSS\\specdata", id = 30:25){
#    print(directory)
    setwd(directory)
    fnames <- list.files(path = directory)
    #    print(fnames)
    keepers <-
    len <- length(fnames)
    good <- vector(length = len)
#    print(id)
    for (i in id) {
        good[i] <- TRUE
        keepers[i] <- fnames[i]
    }

    d2 <- data.frame(matrix(ncol = 2, nrow = 0))
    for (i in id) {
        d <- read.csv(keepers[i])
        d <- d[complete.cases(d), ]

        myrow = c(d[1,4], nrow(d))
        d2 <- rbind(d2,myrow)
    }
    colnames(d2) <- c("ID", "nobs")
    d2

}
