-- Drop tables if they already exist to avoid errors
USE clinic_booking_system;
SELECT DATABASE();

SHOW TABLES;


DROP TABLE IF EXISTS medical_records, appointments, doctor_specializations, specializations, patients, doctors;

-- 1. Patients Table
CREATE TABLE patients (
    patient_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10) NOT NULL CHECK (gender IN ('Male', 'Female', 'Other')),
    dob DATE NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE,
    address TEXT
);

-- 2. Doctors Table
CREATE TABLE doctors (
    doctor_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    hire_date DATE NOT NULL
);

-- 3. Specializations Table
CREATE TABLE specializations (
    specialization_id INT IDENTITY(1,1) PRIMARY KEY,
    specialization_name VARCHAR(100) UNIQUE NOT NULL
);

-- 4. Doctor-Specializations (Many-to-Many)
CREATE TABLE doctor_specializations (
    doctor_id INT,
    specialization_id INT,
    PRIMARY KEY (doctor_id, specialization_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id) ON DELETE CASCADE,
    FOREIGN KEY (specialization_id) REFERENCES specializations(specialization_id) ON DELETE CASCADE
);

-- 5. Appointments Table
CREATE TABLE appointments (
    appointment_id INT IDENTITY(1,1) PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    status VARCHAR(20) DEFAULT 'Scheduled' CHECK (status IN ('Scheduled', 'Completed', 'Cancelled')),
    notes TEXT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id) ON DELETE CASCADE
);

-- 6. Medical Records Table (1-to-1 with appointments)
CREATE TABLE medical_records (
    record_id INT IDENTITY(1,1) PRIMARY KEY,
    appointment_id INT UNIQUE NOT NULL,
    diagnosis TEXT NOT NULL,
    prescription TEXT,
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id) ON DELETE CASCADE
);
