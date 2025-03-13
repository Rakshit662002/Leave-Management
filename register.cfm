<cfif structKeyExists(form, "register")>
    <cfset objDB = createObject("component", "components.db")>
    <cfset objDB.registerEmployee(form.name, form.email, form.department, form.role, form.password)>
    <cflocation url="login.cfm">
</cfif>

<html>
<head>
    <title>Register</title>
    <style>
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes buttonClick {
            0% { transform: scale(1); }
            50% { transform: scale(0.95); }
            100% { transform: scale(1); }
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            margin: 50;
            padding: 50;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
            animation: fadeIn 0.6s ease-out;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: 0.3s ease-in-out;
        }

        input:focus {
            border-color: #6a11cb;
            box-shadow: 0 0 8px rgba(106, 17, 203, 0.3);
            outline: none;
        }

        button {
            width: 100%;
            padding: 10px;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease-in-out, transform 0.2s;
        }

        button:hover {
            background: linear-gradient(135deg, #5a0fb4, #1d5ee0);
        }

        button:active {
            animation: buttonClick 0.2s ease-in-out;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Employee Registration</h2>
        <form method="post">
            <input type="text" name="name" placeholder="Full Name" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="text" name="department" placeholder="Department" required>
            <input type="text" name="role" placeholder="Role" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit" name="register">Register</button>
        </form>
    </div>
</body>
</html>
