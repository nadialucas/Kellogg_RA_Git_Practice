# Kellogg_RA_Git_Practice 
#### by Nadia Lucas 09/21/2017

This repo is meant to teach beginners how to use Git in accordance with Ryan Kellogg's RA workflow. In particular the naming folders conventions, and how to handle GitHub issues, branching and pull requests. That workflow can be found [here](https://github.com/kelloggrk/Kellogg_RA_Manual/wiki)

This repo contains data located in a [Dropbox](https://www.dropbox.com/sh/5qz98h5ew3tlfbk/AADcgfQl-dhfLso1BbAkpQMja?dl=0). The data located in /RawData/movies.csv is from a FiveThirtyEight article about the Bechdel test. This is not a Stata coding intensive tutorial so the focus should not be on replicating the results found in the article but [here](https://fivethirtyeight.com/features/the-dollar-and-cents-case-against-hollywoods-exclusion-of-women/) it is for reference: 

* Note: we will be following the conventions from the RA manual where all data will be located on Dropbox and all code will be located on GitHub. 

## Bootstrapping - for those who have never seen Git before

1. Download [Git](https://git-scm.com/)

2. I recommend using command line git. It's only a few commands to learn and will make your life a lot easier when you run into problems. Virtually everyone in the online community uses command line git and there are a lot of answers out there to git problems with command line solutions. With that said, Git Bash is recommended for this purpose. Mac users already have this in Terminal but Windows users will need to install it although if you use the install above, bash is included.

3. I recommend also practicing some terminal commands that can be found [here]( https://ocw.mit.edu/ans7870/6/6.005/s16/getting-started/#terminal) and also completing the following step, Configure Git, to get some cool git features in your terminal.

## Procedure

1. Open an Issue to describe your own task and assign yourself that Issue. The goal of this small task is to create a cleaned dataset. We care mostly about return on investment on movies that do and do not pass the Bechdel test. 

* The deliverable is to create a .do file in a folder titled /Code/Build which does the following:
  
* Creates an intermediate .dta file located in a folder titled /IntermediateData in the Dropbox which only contains the variables: year, imdb, budget_2013, intgross_2013, and creates 3 new variables titled return_on_investment which simply calculates intgross_2013/budget_2013 for each movie, roi_median_pass which is the median return on investment of all movies that pass the Bechdel test, and roi_median_fail which is the median return on investment of all movies that fail the Bechdel test 

2. Create a branch titled issue###-short_description_of_issue

3. Complete the task

4. Pull request and then merge to master

5. Delete the branch and close the issue

### Optional

6. If with someone else well-versed in GitHub, practice merging

* Each person pulls and edits one of the hello files (hello.txt and hello.py) - attempt a merge
  
* Each person pulls and edits hello.txt and the edits are done in different places - attempt a merge
  
* Each person pulls and edits hello.txt but this time edit the same part of the file - attempt a merge and then resolve the merge conflict
  
## Further material

For anyone interested in furthering their git knowledge, [these](https://ocw.mit.edu/ans7870/6/6.005/s16/classes/05-version-control/) lecture notes are great for an intuition in version control and can help in visualizing what is happening at every step of the way from staging to committing to pushing and merging: 
