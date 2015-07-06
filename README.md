
#STUDENT QUEUE MANAGER

Description: The Student Queue Manager is designed to manage questions for students who need assistance with their projects.  The SQM will record the timestamp of the questions as their posted, as well as the urgency of the question.  Any student may answer questions posted, but only the student who posted the question can mark it resolved. 

- A table of Users. 

    Includes name, username, instructor boolean.
    Each user may ask many questions, but each question belongs to only one user.
    All CRUD operations except delete.
     

- A table for the Questions. 

    Includes user ID(FK), steps taken, expected result (optional), actual result (optional), code link (optional), timestamp, urgency level, and resolved (boolean). 
    Each user may ask many questions, but each question belongs to one user. (groups will enter their question under one student's name for now)
    All CRUD operations except delete.
    
- Comments table. 

    Includes User ID(FK), Question ID(FK), and comment.
    Each user may have many comments, but each comment belongs to only one user.
    Each comment applies to only one question, but each question may have many comments.
    All CRUD operations except delete.
    
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
- Should be able to see a list of all questions.
- Anyone should be able to reply to any of the questions.
- Only the student who posted the question can mark it resolved.
- Should have one only urgency description per question.
- Possible follow-up actions?

Should Not Cases:

- Users should not be able to remove other users' question.
- Users should not be able to mark other users' questions resolved.
- No users, questions, or comments should be able to be deleted for now.


Additional Requirements:

- For now, groups will enter their question under 1 user's name.
- Incorporate into slack channel somehow (V2). 




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