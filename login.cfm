<cfif structKeyExists(form, "login")>
    <cfset objDB = createObject("component", "components.db")>
    <cfquery name="user" datasource="leave_management">
        SELECT id FROM employees WHERE email = <cfqueryparam value="#form.email#" cfsqltype="cf_sql_varchar">
          AND password = <cfqueryparam value="#hash(form.password, 'SHA-256')#" cfsqltype="cf_sql_varchar">
    </cfquery>

    <cfif user.recordCount EQ 1>
        <cfset session.user = user.id>
        <cflocation url="dashboard.cfm">
    <cfelse>
        <p class="error">Invalid login credentials</p>
    </cfif>
</cfif>

<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="styles/styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
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
        }
        .error {
            color: red;
            margin-bottom: 10px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        button:hover {
            background-color: #0056b3;
        }
        button:active {
            transform: scale(0.98);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form method="post">
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit" name="login">Login</button>
        </form>
    </div>
</body>
</html>
