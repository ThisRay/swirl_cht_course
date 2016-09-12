# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
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
                      'swirl_cht_course',
                      'first_class',
                      'hcc_utf8.csv')

test_list <- list("跚愧稞鈾"="璞餐縷擺","台灣資料科學年會"="中央研究院人文社會科學館")
