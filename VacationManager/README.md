# README


About :
======
The Vacation Manager is an application for Managers to schedule vacation for their workers based on a prior leave application. The app allows for the manager to signup and login with an email and password. The system currently associates users with their emails alone. Their names will be added, displayed in future versions. The vacation set up has a few constraints mentioned in the About section of the app. Once set up, the system emails the manager with the relevant information!

Ruby & Rails version:
=====================
Ruby 2.3.0 and Rails 5.0.2

* System dependencies

* Configuration

* Database creation

* Database initialization

Current Functionality:
======================

1. Manager(User) login & signup
2. View of the vacations scheduled
3. email manager with the vacation info


Work in progress:
================

1. Integration testing with Capybara
2. Fabricate users,test data with factories

Next Revision:
==============

1. Display names, email-ids of the workers associated with the manager 
2. View and change the status on vacations
3. Approve, reject feature on the vacations page

Test suite:
===========
Rspec for testing models
Testing & development using Rspec, Capybara in progress
Spec/features
Vacation page  --visit page,click on new vacation,fill in email,fill in start_date,fill in end_date,Vacation created, vacations path



