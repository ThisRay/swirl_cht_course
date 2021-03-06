# Put custom tests in this file.

# Uncommenting the following line of code will disable
# auto-detection of new variables and thus prevent swirl from
# executing every command twice, which can slow things down.

# AUTO_DETECT_NEWVAR <- FALSE

# However, this means that you should detect user-created
# variables when appropriate. The answer test, creates_new_var()
# can be used for for the purpose, but it also re-evaluates the
# expression which the user entered, so care must be taken.


test_HW_test <- function(){
	df_user <- get("df_test", globalenv())
	isTRUE(df_user[1,1]==iconv("\xb0\\","BIG5","UTF-8"))
	#isTRUE(df_user[1,1]=="豹")
}
