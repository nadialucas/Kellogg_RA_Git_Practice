# Kellogg_RA_Git_Practice 
#### last edited by Nadia Lucas 1/18/2018

This repo is meant to teach beginners how to use Git in accordance with Ryan Kellogg's RA workflow. In particular the naming folders conventions, and how to handle GitHub issues, branching and pull requests. That workflow can be found on Ryan's [wiki](https://github.com/kelloggrk/Kellogg_RA_Manual/wiki)

This repo contains data located in a Dropbox [folder](https://www.dropbox.com/sh/5qz98h5ew3tlfbk/AADcgfQl-dhfLso1BbAkpQMja?dl=0). The data located in /RawData/movies.csv is from a FiveThirtyEight [article](https://fivethirtyeight.com/features/the-dollar-and-cents-case-against-hollywoods-exclusion-of-women/) about the Bechdel test. This is not a Stata coding intensive tutorial so the focus should not be on replicating the results found in the article.

* Note: we will be following the conventions from the RA manual where all data will be located on Dropbox and all code will be located on GitHub. 

## Bootstrapping - for those who have never seen Git before

1. Download [Git](https://git-scm.com/)

2. I recommend using command line git. It's only a few commands to learn and will make your life a lot easier when you run into problems. Virtually everyone in the online community uses command line git and there are a lot of answers out there to git problems with command line solutions. With that said, Git Bash is recommended for this purpose. Mac users already have this in Terminal but Windows users will need to install it although if you use the install above, bash is included.

3. I recommend also practicing some terminal commands that can be found in these [notes]( https://ocw.mit.edu/ans7870/6/6.005/s16/getting-started/#terminal) on Git and also completing the following step, Configure Git, to get some cool git features in your terminal.

4. If you do not want to use command line git, there is also [GitHub Desktop](https://desktop.github.com/) which has been getting much better over time. This is essentially just a GUI for command line git and is a little further removed from the nuts and bolts of what is going on. However, it is much easier to use and recommended for beginners with no command line experience to get up and running with git.

## Procedure for Command Line Git

1. Clone the repository on to your local machine with the following command
    git clone https://github.com/nadialucas/Kellogg_RA_Git_Practice.git

2. Open an Issue using the GitHub web browser by navigating to the tab labeled "Issues". In this issue, describe your own task and assign yourself the Issue. The goal of this small task is to create a cleaned dataset. We care mostly about return on investment on movies that do and do not pass the Bechdel test.

* The deliverable is to create a .do file in a folder titled /Code/Build which does the following:
  
* Creates an intermediate .dta file located in a folder titled /IntermediateData in the Dropbox which only contains the variables: year, imdb, budget_2013, intgross_2013, and creates 3 new variables titled return_on_investment which simply calculates intgross_2013/budget_2013 for each movie, roi_median_pass which is the median return on investment of all movies that pass the Bechdel test, and roi_median_fail which is the median return on investment of all movies that fail the Bechdel test.

3. Create a branch titled issue###-short_description_of_issue. 
    git checkout -b isssue###-short_description_of_issue
In case you ever want to check what branch you are on, simply type 
    git branch
And to check out a different branch type
    git checkout <branch name>

4. Complete the task

5. Check the status of all the files changes with the command
    git status

6. Add, commit (with message) and push changes to your branch
    git add .
will add all files to the commit
    git add <filename>
adds files specifically to the commit
    git commit -m "message describing changes made to files staged for commit"
    git push origin <branch name>

7. Back in the web browser, pull request the branch you created into the master branch. Do this by going to the tab labeled "Pull Requests" and click the green button labeled "New pull request". Label the pull request and describe briefly what was done in this branch. 

8. Merge the branch with the master branch and close out the pull request. Delete the branch at this time (there should be an indicator that the branch can be safely delete). Once the branch on the repo is deleted, it can be safely deleted from your machine with
    git branch -D <branch name>

9. Close out the issue with a description as per the RA manual. To get a revision-stable link of the repo, navigate with to the folder the code is in. Type and hold "y" on the keyboard and the url will then change to a revision-stable link of the specific commit in history.


## Procedure for GitHub Desktop

1. Clone the repository on to your local machine. Go to File -> Clone Repository. and click URL. Enter the repo URL (https://github.com/nadialucas/Kellogg_RA_Git_Practice.git).

2. Open an Issue using the GitHub web browser by navigating to the tab labeled "Issues". In this issue, describe your own task and assign yourself the Issue. The goal of this small task is to create a cleaned dataset. We care mostly about return on investment on movies that do and do not pass the Bechdel test.

* The deliverable is to create a .do file in a folder titled /Code/Build which does the following:
  
* Creates an intermediate .dta file located in a folder titled /IntermediateData in the Dropbox which only contains the variables: year, imdb, budget_2013, intgross_2013, and creates 3 new variables titled return_on_investment which simply calculates intgross_2013/budget_2013 for each movie, roi_median_pass which is the median return on investment of all movies that pass the Bechdel test, and roi_median_fail which is the median return on investment of all movies that fail the Bechdel test.

3. Create a branch titled issue###-short_description_of_issue by going to Branch -> New Branch.

4. Complete the task

5. Add, commit (with commit message describing task briefly), and push your changes to your branch. Type in a summary of changes and pressing button "Commit to <branch name>" followed by a push found in the upper menu bar.

6. Back in the web browser, pull request the branch you created into the master branch. Do this by going to the tab labeled "Pull Requests" and click the green button labeled "New pull request". Label the pull request and describe briefly what was done in this branch. 

7. Merge the branch with the master branch and close out the pull request. Delete the branch at this time (there should be an indicator that the branch can be safely delete). Once the branch on the repo is deleted, it can be safely deleted from your machine with Branch -> Delete.

8. Close out the issue with a description as per the RA manual. To get a revision-stable link of the repo, navigate with to the folder the code is in. Type and hold "y" on the keyboard and the url will then change to a revision-stable link of the specific commit in history.

### Optional

**If with someone else well-versed in GitHub, practice merging**

* Each person pulls and edits one of the hello files (hello.txt and hello.py) - attempt a merge
  
* Each person pulls and edits hello.txt and the edits are done in different places - attempt a merge
  
* Each person pulls and edits hello.txt but this time edit the same part of the file - attempt a merge and then resolve the merge conflict

**Working with remote branches**
If you would like to access a branch another contributor has made, this is relatively intuitive with GitHub Desktop but in command line git, you first need to fetch the remote branch before doing a branch checkout.
    git fetch origin <remote branch name>
    git checkout <remote branch name>
  
## Further material

For anyone interested in furthering their git knowledge, this other set of [notes](https://ocw.mit.edu/ans7870/6/6.005/s16/classes/05-version-control/) are great for an intuition in version control and can help in visualizing what is happening at every step of the way from staging to committing to pushing and merging. This set of notes is recommended for anyone who wants to incorporate git into all future projects. It is great for understanding what happens under the hood so fixing any issues becomes a lot easier/less stressful.
