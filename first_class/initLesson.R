# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user"s working directory and thus be accessible to them
      # throughout the lesson.

library(magrittr)
# assign("csvfile_path", 
#        #.get_path("hcc_utf8.csv"),
#        "/hcc_utf8.csv",
#        envir = globalenv())

# For compatibility with 2.2.21
.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")},
           warning = function(w) {file.path(find.package("swirl"),"Courses")},
           silent=T
  )
}

# Make path to csv available to user
csvfile_path <- file.path(.get_course_path(),
                      "swirl_cht_course",
                      "first_class",
                      "hcc_utf8.csv")

test_list <- local({
  a <- iconv("\xa5x\xc6W\xb8\xea\xaeƬ\xec\xbeǦ~\xb7|","BIG5","UTF-8")
  b <- iconv("\xa4\xa4\xa5\xa1\xac\xe3\xa8s\xb0|\xa4H\xa4\xe5\xaa\xc0\xb7|\xac\xec\xbe\xc7\xc0]","BIG5","UTF-8")
  c <- iconv("\xb6\\\xb7\\\xb8\\\xb9\\","BIG5","UTF-8")
  d <- iconv("\xbf\\\xc0\\\xc1\\\xc2\\","BIG5","UTF-8")
  list(a=b,c=d)
})
names(test_list) <- c(iconv("\xa5x\xc6W\xb8\xea\xaeƬ\xec\xbeǦ~\xb7|","BIG5","UTF-8"), c <- iconv("\xb6\\\xb7\\\xb8\\\xb9\\","BIG5","UTF-8"))

df_test <- 1



