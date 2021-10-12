%comment%----- Login page for Media Entertainment -----%endcomment%

<HTML> 
    <head>
        <meta http-equiv="Pragma" content="no-cache">
        <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
        <META HTTP-EQUIV="Expires" CONTENT="-1">
        <title>Login</title>
    </head>
    
    <body>

		<H2>Please enter Login Details</H2>
		<HR>	
		<FORM name="loginFrm" ACTION="DisplayPackages.dsp" METHOD="POST">
			<table width="30%">  			
			
				<tr>
					<td>Username:</td>
					<td> <INPUT TYPE="Text" NAME="custname" VALUE="%value custname%"> </td>
				</tr>

				<tr>
					<td>Password:</td>
					<td> <INPUT TYPE="password" NAME="password" VALUE="%value password%"> </td>
				</tr>
			</table>	
			
			</BR>
			<INPUT TYPE="SUBMIT" VALUE="Submit">

		</FORM>
		<HR>

    </body>
</html>
