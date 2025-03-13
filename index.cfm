<cfif structKeyExists(form, "register")>
    <cfset objDB = createObject("component", "components.db")>
    <cfset objDB.registerEmployee(form.name, form.email, form.department, form.role, form.password)>
    <cflocation url="login.cfm">
</cfif>

<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="styles/styles.css">
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
