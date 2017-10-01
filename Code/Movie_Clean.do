cd 
clear all
set more off 
capture log close 

if c(username) == "Will" {
	global gitdir = "/Users/Will/Documents/EPIC/Kellogg_RA_Git_Practice"
	global dbdir = "/Users/Will/Dropbox/Kellogg_RA_Git_Practice"
}
global rawdir = "$dbdir/RawData"
global outdir = "$dbdir/IntermediateData"
global codedir = "$gitdir/Code"
global logdir = "codedir/LogFiles"

//log using "$logdir/Movie_Clean_log.txt", replace text 
insheet using "$rawdir/movies.csv"

replace intgross_2013 = "" if intgross_2013== "#N/A"

destring intgross_2013, replace 

gen roi = intgross_2013/budget_2013

save "$outdir/CleanedMovies.dta", replace 
