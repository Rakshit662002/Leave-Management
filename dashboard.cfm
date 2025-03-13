<cfif NOT structKeyExists(session, "user")>
    <cflocation url="login.cfm">
</cfif>

<html>
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" href="styles/styles.css">
</head>
<body>
    <div class="container">
        <h2>Welcome to the Dashboard</h2>
        <a href="apply_leave.cfm">Apply for Leave</a> |
        <a href="view_leaves.cfm">View Leave Requests</a> |
        <a href="logout.cfm">Logout</a>
    </div>
</body>
</html>
