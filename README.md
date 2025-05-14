Clinic Booking System
Description
This project is a Clinic Booking System designed to manage patient appointments, doctor schedules, medical records, and doctor-specializations. It aims to streamline the process of scheduling, viewing appointments, and storing medical records for a clinic.

Key Features:
Patient Management: Allows the clinic to manage patient details, including personal information, contact details, and medical history.

Doctor Management: Manages the doctors, their contact details, and their specializations.

Appointments: Patients can schedule, view, and manage their appointments with doctors. The status of appointments can be updated to 'Scheduled', 'Completed', or 'Cancelled'.

Medical Records: For each completed appointment, a medical record with diagnosis and prescription can be added and stored.

Doctor Specializations: Doctors are assigned specific specializations, which can be linked to their appointments.

How to Run/Setup the Project
Set Up the Database:

Import the clinic_booking_system.sql file to your MySQL server. You can do this by running the script directly in your MySQL command line or MySQL Workbench.

Steps to Import SQL:

Open MySQL Workbench or any SQL client connected to your MySQL server.

Open the clinic_booking_system.sql file.

Run the script, which will create the necessary tables (patients, doctors, appointments, specializations, doctor_specializations, medical_records) in the database.

The script contains CREATE TABLE statements, foreign key constraints, and necessary configurations.

Testing the System:

Once the database is set up, you can manually insert sample data for patients, doctors, and appointments using SQL queries.

You can then run SELECT queries to check the data, update statuses, or add new records.

ERD (Entity-Relationship Diagram)
You can include a link to your ERD or insert a screenshot of the ERD here.

ERD Screenshot:
https://github.com/Bramuelwesonga/Clinic-Booking-System-DB/blob/main/clinic_booking_system.sql

Repository Contents:
clinic_booking_system.sql: The main SQL file for creating the entire database structure and its relationships.

README.md: This file, providing an overview and setup instructions.

SQL File (clinic_booking_system.sql)
This file contains the full database creation script. Below is an overview of the SQL commands used:

Patients Table: Stores patient information like name, contact details, and address.

Doctors Table: Stores doctor details, including contact information and hire date.

Specializations Table: Contains a list of doctor specializations.

Doctor-Specializations Table: A many-to-many relationship between doctors and their specializations.

Appointments Table: Links patients with doctors for scheduled appointments.

Medical Records Table: Stores medical records for each completed appointment.

How to contribute:
Fork the repository to your own GitHub account.

Clone your fork locally to make changes.

Make changes and commit them.

Push your changes back to your GitHub fork.

Open a pull request for review.

