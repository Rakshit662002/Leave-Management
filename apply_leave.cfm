<cfif NOT structKeyExists(session, "user")>
    <cflocation url="login.cfm">
</cfif>

<cfif structKeyExists(form, "apply")>
    <cfquery datasource="leave_management">
        INSERT INTO leave_requests (employee_id, leave_type, start_date, end_date)
        VALUES (
            <cfqueryparam value="#session.user#" cfsqltype="cf_sql_integer">,
            <cfqueryparam value="#form.leave_type#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#form.start_date#" cfsqltype="cf_sql_date">,
            <cfqueryparam value="#form.end_date#" cfsqltype="cf_sql_date">
        )
    </cfquery>
    <cflocation url="view_leaves.cfm">
</cfif>

<html>
<head>
    <title>Apply for Leave</title>
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
            background-color: rgb(20, 189, 236);
            margin: 0;
            padding: 0;
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

        select, input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: 0.3s ease-in-out;
        }

        input:focus, select:focus {
            border-color: #28a745;
            box-shadow: 0 0 8px rgba(40, 167, 69, 0.3);
            outline: none;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out, transform 0.2s;
        }

        button:hover {
            background-color: #218838;
        }

        button:active {
            animation: buttonClick 0.2s ease-in-out;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Apply for Leave</h2>
        <form method="post">
            <select name="leave_type" required>
                <option value="">Select Leave Type</option>
                <option value="Sick">Sick Leave</option>
                <option value="Casual">Casual Leave</option>
                <option value="Annual">Annual Leave</option>
            </select>
            <input type="date" name="start_date" required>
            <input type="date" name="end_date" required>
            <button type="submit" name="apply">Apply</button>
        </form>
    </div>
</body>
</html>
