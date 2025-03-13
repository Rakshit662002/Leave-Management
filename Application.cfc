<cfcomponent output="false">
    <cfset this.name = "LeaveManagementApp">
    <cfset this.sessionManagement = true>
    <cfset this.sessionTimeout = createTimeSpan(0, 1, 0, 0)> <!-- 1 hour session -->
    <cfset this.applicationTimeout = createTimeSpan(1, 0, 0, 0)> <!-- 1 day app timeout -->

    <cffunction name="onSessionStart">
        <cfset session.user = "">
    </cffunction>

</cfcomponent>
