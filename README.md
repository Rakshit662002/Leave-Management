
## Employee Leave Management System  

### 📌 Project Overview  
The **Employee Leave Management System** is a web-based application built using **ColdFusion** and **MySQL**. It allows employees to apply for leave, and managers/admins to review and approve or reject requests. The system ensures seamless leave tracking and management.  

---

## 🚀 Features  
✅ Employee login and authentication  
✅ Apply for leave (date, reason, type)  
✅ Admin panel for leave approval/rejection  
✅ Leave history and tracking  
✅ Secure session management  
✅ User-friendly interface with responsive design  

---

## 🛠️ Technologies Used  
- **ColdFusion** (CFM)  
- **MySQL** (Database)  
- **HTML, CSS, JavaScript** (Frontend)  
- **Bootstrap** (Responsive UI)  

---

## ⚙️ Installation Steps  

### 1️⃣ Clone the Repository  
```bash
git clone https://github.com/your-username/employee-leave-management.git
```
Replace `your-username` with your actual GitHub username.  

### 2️⃣ Setup MySQL Database  
- Import the `leave_management.sql` file into your MySQL database.  
- Update **db.cfc** with your database credentials:  
  ```cfm
  <cfset this.datasource = "your_database_name">
  <cfset this.username = "your_db_username">
  <cfset this.password = "your_db_password">
  ```

### 3️⃣ Configure ColdFusion  
- Ensure **ColdFusion Server** is installed and running.  
- Place the project files in your ColdFusion webroot (`wwwroot`).  

### 4️⃣ Run the Project  
- Open **VS Code** and navigate to your project folder.  
- Start the ColdFusion server.  
- Open your browser and visit:  
  ```
  http://localhost:8500/leave_management/index.cfm
  ```

---

## 📸 Screenshots  
(Add some UI screenshots here for better presentation.)  

---

## 🔐 User Roles  
| Role      | Features |
|-----------|------------------------------------------------|
| Employee  | Apply for leave, check leave status, history. |
| Admin     | Approve/reject leave, manage employees.       |

---

## 🛠 Troubleshooting  
- If you see **SESSION is undefined**, enable session management in `Application.cfc`:  
  ```cfm
  <cfset this.sessionManagement = true>
  <cfset this.sessionTimeout = createTimeSpan(0,1,0,0)> <!-- 1 hour session -->
  ```

---

## 🤝 Contributing  
Want to improve this project? Feel free to fork and create a pull request! 🚀  

---

## 📄 License  
This project is licensed under the **MIT License**.  

---

Let me know if you need any modifications! 🚀🔥
