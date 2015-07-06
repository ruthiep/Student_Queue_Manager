
#STUDENT QUEUE MANAGER

Description: The Student Queue Manager is designed to manage questions for students who need assistance with their projects.  The SQM will record the timestamp of the questions as their posted, as well as the urgency of the question.  Any student may answer questions posted, but only the student who posted the question can mark it resolved. 

- A table of Users. 

    Includes name, password, class name?, instructor boolean...what other info here?  Do they pick user name, or should it match...something?
    Each user may ask many questions, but each question belongs to only one user.
    Full CRUD operations (including delete?)
     

- A table for the Questions. 

    Includes user ID(FK), question, steps taken, expected result, actual result, code link, timestamp, urgency level, and resolved (boolean). 
    Each user may ask many questions, but each question belongs to one user. (groups will enter their question under one student's name for now)
    Full CRUD operations?
    
- Comments table. 

    Includes User ID(FK) and comment.
    Each user may have many comments, but each comment belongs to only one user.
    - How to tie to questions table?
    Full CRUD operations?
    - each comment applies to only one question, but each question may have many comments?
    
- Urgency table 

    A static table with the following values:  

      1) "I cannot move forward at all, not even by changing direction."
      2) "This is important, but I can work on something else for a bit."
      3) "General concept question, or otherwise low priority."


Should Cases:

- New users should be able to sign themselves up.
- Users should be able to edit their user information.
- Users should be able to add their question to the queue.
- Users should be able to mark their question resolved.
- Users can edit their own question.
- Anyone should be able to reply to any of the questions.
- Only the student who posted the question can mark it resolved.
- Should have one only urgency description per question.
- Possible follow-up actions?
- Will we even allow a "delete" function?  Or only edit/resolved?

Should Not Cases:

- Users should not be able to remove other users' question.
- Users should not be able to mark other users' questions resolved.


Additional Requirements:

- For now, groups will enter their question under 1 user's name.
- Incorporate into slack channel somehow (V2), for now, do we want a reply by method?
- Some way to track questions not answered within a certain time period?
- Come back to users table.  open to outside ppl asking questions??  


== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.