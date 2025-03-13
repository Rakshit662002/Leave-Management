<cfcomponent>
    <cfset this.dsn = "leave_management">

    <cffunction name="registerEmployee" access="public">
        <cfargument name="name">
        <cfargument name="email">
        <cfargument name="department">
        <cfargument name="role">
        <cfargument name="password">

        <cfquery datasource="#this.dsn#">
            INSERT INTO employees (name, email, department, role, password)
            VALUES (
                <cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.department#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.role#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#hash(arguments.password, 'SHA-256')#" cfsqltype="cf_sql_varchar">
            )
        </cfquery>
    </cffunction>
</cfcomponent>
