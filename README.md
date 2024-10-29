# Student Management System

A web-based application built with Python and Django that allows for managing student records, including student information, class details, and more. This project is designed to store and display student details with various fields such as name, class, roll number, date of birth, contact information, and guardian information.

## Features

- Add, update, and delete student records.
- View detailed information about each student.
- Organized student information by classes.
- User-friendly interface for managing student data.

## Project Structure

The project is organized with the following models and functionalities:

1. **Models**:
    - `StudentList`: Stores student information including name, class, roll number, and guardian information.
    - `ClassList`: Stores class-related details.

2. **Modules**:
    - `Student Management`: Core functionality for adding, updating, and viewing student records.
    - `Class Management`: Handles class lists and relationships with students.

## Technologies Used

- **Backend**: Python (Django)
- **Frontend**: HTML, CSS, JavaScript
- **Database**: MySQL
- **Version Control**: Git

## Requirements

To run this project, you will need:

- Python 3.x
- Django
- MySQL
- Git (for version control)

## Installation

1. **Clone the Repository**:

    ```bash
    git clone https://github.com/yourusername/student-management-system.git
    cd student-management-system
    ```

2. **Create a Virtual Environment**:

    ```bash
    python -m venv venv
    source venv/bin/activate  # On Windows use `venv\Scripts\activate`
    ```

3. **Install the Dependencies**:

    ```bash
    pip install -r requirements.txt
    ```

4. **Set Up the Database**:

    - Create a MySQL database named `student_management` (or your preferred name).
    - Configure database settings in `settings.py`:

      ```python
      DATABASES = {
          'default': {
              'ENGINE': 'django.db.backends.mysql',
              'NAME': 'student_management',
              'USER': 'your_mysql_user',
              'PASSWORD': 'your_mysql_password',
              'HOST': 'localhost',
              'PORT': '3306',
          }
      }
      ```

5. **Apply Migrations**:

    ```bash
    python manage.py makemigrations
    python manage.py migrate
    ```

6. **Create a Superuser** (optional, for admin access):

    ```bash
    python manage.py createsuperuser
    ```

7. **Run the Development Server**:

    ```bash
    python manage.py runserver
    ```

8. **Access the Application**:

    Open your browser and go to `http://127.0.0.1:8000`.

## Usage

- Navigate to the student list page to see a list of students.
- Use the "Add Student" button to add a new student.
- Click on a student's name to view their details.
- Update or delete student records as needed.

## Directory Structure

