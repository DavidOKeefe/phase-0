## Tracking Changes Reflection

- How does tracking and adding changes make developers' lives easier?
- What is a commit?
- What are the best practices for commit messages?
- What does the HEAD^ argument mean?
- What are the 3 stages of a git change and how do you move a file from one stage to the other?
- Write a handy cheatsheet of the commands you need to commit your changes?
- What is a pull request and how do you create and merge one?
- Why are pull requests preferred when working with teams?

Tracking and adding changes allow developers to organize changes to files so they can be committed using version control. A commit is a save point for files being tracked and added. When committing changes, it's best practice to use the imperative tense and to structure your message with a subject and a description (similar to an email). The first line(subject) should be no more than 50 characters and subsequent lines should not exceed 72 characters. This is so messages will display properly on an 80-character terminal when running **git log**.

Since commits are to be made frequently it may be necessary to reverse commits that have already been made. For this you'll want to use the **HEAD** argument and it's variants to refer to your different commits. **HEAD** is your current commit, **HEAD^** is your last commit and **HEAD~2** is the second to last commit. You can increment **~2** to access all prevous commits. An example of using this would be the **git reset --soft HEAD^** command. Think of **git reset** as the opposite of **git add**

The three stages of a git change for a tracked file are:
  - Stage 1: File(s) have been modified but the changes are not yet staged. The **git add .** command will move all files to the next stage. You can also move individual files to staging by replacing the **.** with the file name.
  - Stage 2: File(s) have been staged and can be committed. The **git commit** command will commit your staged changes. If your commit message is short, you can use the **git commit -m "Commit Message"** to complete the commit with one step. Othewise, add your commit message using your defaulted text editor.
  - Stage 3: Files(s) have been committed

Some useful git commands for committing changes:
  - git branch
  - git status
  - git add
  - git add .
  - git add file-name
  - git add -p
  - git commit -m "commit message"
  - git commit
  - git log

Pull requests are a way of submitting completed work so the work can be reviewed before the changes are incorporated into the project. Pull requests are created through Github. First, push your branch to Github using the **git push origin branch-name** command. Navigate to the project repository and you should see a button to create a pull request towards the top of the page. Github will allow you to add comments to you pull request (if necessary). Once created, Github will give you, or your team members, an option to merge the pull request into the master branch. Teams prefer using pull requests because it maintains code quality by giving members an opportunity to review submissions before they are merged into master.
