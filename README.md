# Real-Estate-Portal

@admin login info
@username:root
@password: root

Project : RealState potal
Database: RealState
Username: root
Password: root

Task: 
1:- Admin can see user details who bought, rent/posted and ad.
2:- Admin can view enquiries, sort them based on some features like size/ price/ location and also delete them.

This is  Admin part of a Real state project.it includes:
1 mian class 
3 JFrame

Main Class:- RealState_Admin.java: get access to the admin login page.

Methods:-

mysql_database_connection() :- Connect  with data base and return the connection.
 
1st JFrame:- AdminLoginFrame (Login page for admin)
Admin authentication based on input. If pass then let user enter to the front page which is AdminFrontFrame.java 

Methods:-
 
signInButtonActionPerformed():- When click teh sign in button. Check the username and password with database and get the user to sign in if match.

usernameFieldActionPerformed():- Get the user to use move up and down to focus password field.

passwordFieldActionPerformed():- Get the user to use move up and down to focus password field

usernameFieldKeyPressed():- code for add a feature that let user use up and down key for going to the password field.

passwordFieldKeyPressed():- code for add a feature that let user use up and down key for going to the admin field.

2nd JFrame :- AdminFrontFrame (Front page for user.)

buttons and features:

search        (Unavailable)

User details   (Available)     Go to user detail page.
Enquiries      (Available)     Go to enquiries page.
Logout         (Available)     Log out and go to admin login page.

Properties     (Unavailable)
New Admin      (Unavailable)

Methods:-

userDetailsBActionPerformed():- Let admin to access the user AdminUserDetailFrame page where admin can see  details of user that boutgh, rent or post an ad

enquiriesBActionPerformed():- Let admin to access the AdminEnquiryFrame page where admin can see all the enquiries from user and sort them based on price/ size/ location, also delete them.

logoutActionPerformed():- Admin can log out and go to the login page by clicking log out button.

3rd JFrame:- AdminUserDetails: In this frame admin can see  details of user that bought, rent or post an ad

button and feautures:

Homepage         Go to admin front page.
Logout           Log out and go to admin login page.

Sold             Select to add sold properties or bought propeties in the table.
In Rent          Select to add sold rent propeties in the table.
For Sold         Select to add advertisment properties that for sold.
For rent         Select to add advertisment properties that for rent.
Choice		 Choice Book ,advertisement  to show only relted checkbox and info into the table.

View              To view the user details in the right side.

Methods:-

populate_table():- Set the data into the table.

adrChoiceActionPerformed():-
adsChoiceActionPerformed():-
rentChoiceActionPerformed():-
soldChoceActionPerformed():-
viewButtonActionPerformed():-
uidFieldActionPerformed():-
logoutButtonActionPerformed():-
homepageButtonActionPerformed():-
choice1itemStateChanged():-
uidFieldMouseEntred():-
uidFieldMouseExit():-
uidFieldMouseClicked():-

4th JFrame:- AdminEnquiryFrame: In this frame, admin can see all the enquiries from user and sort them based on price/ size/ location, also delete them.

Button and feautures:

Homepage         Go to admin front page.
Logout           Log out and go to admin login page.

Price            Select to add price in sorting list.
Size             Select to add size in sorting list.
Location         Select to add location in sorting list.
ChoiceOption     Chose option to add with related selection.Increasing->ASC Decreasing->DESC

View             View selected or given enquiry in left side panel.
Delete		 Delete selected or given enquiry from database.

Methods:

populate_table():- Get the data from data base and set to table.

viewButtonActionPerformed():-
deleteButtonActioinPerformed():-
enquiryFieldActionPerformed():-
location_CboxActionPerformed():-
logoutButtonActionPerformed():-
homepageButtonActionPerformed():-
size_CboxActionPerformed():-
price_CboxActionPerformed():-
sorChoicePropertyChanged():-
enquriyFieldMouseEntred():-
enquiryFieldMouseExit():-
enquiryFieldMouseClicked():-
