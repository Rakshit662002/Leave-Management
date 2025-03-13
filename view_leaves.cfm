<cfif NOT structKeyExists(session, "user")>
    <cflocation url="login.cfm">
</cfif>

<cfquery name="leaves" datasource="leave_management">
    SELECT * FROM leave_requests WHERE employee_id = <cfqueryparam value="#session.user#" cfsqltype="cf_sql_integer">
</cfquery>

<html>
<head>
    <title>View Leave Requests</title>
    <style>
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
            width: 400px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }
        th {
            background-color: #28a745;
            color: white;
        }
        a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Your Leave Requests</h2>
        <table>
            <tr>
                <th>Leave Type</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Status</th>
            </tr>
            <cfoutput query="leaves">
                <tr>
                    <td>#leave_type#</td>
                    <td>#start_date#</td>
                    <td>#end_date#</td>
                    <td>#status#</td>
                </tr>
            </cfoutput>
        </table>
        <a href="dashboard.cfm">Back to Dashboard</a>
    </div>
</body>
</html>