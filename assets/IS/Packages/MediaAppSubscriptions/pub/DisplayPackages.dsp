%comment%----- Displays Available Entertainment Packages -----%endcomment%

<HTML> 
    <head>
        <meta http-equiv="Pragma" content="no-cache">
        <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
        <META HTTP-EQUIV="Expires" CONTENT="-1">
        <title>Display Packages</title>
		
		<script language="javascript" type="text/javascript">
			function myFunction(row) {
				var x=row.cells;
				document.getElementById("description").value = x[1].innerHTML;
				document.getElementById("cost").value = x[2].innerHTML;
				document.getElementById("validity").value = x[3].innerHTML;
			}
		</script>
    </head>
    
    <body>

		%invoke MediaAppSubscriptions.services:getPackagesList%
		<H2>Package Details</H2>
		<HR>
		%ifvar packDetails -isnotempty%
	
		<FORM name="displaySubsPacks" ACTION="PaymentDetails.dsp" METHOD="POST">
			<P>
				<B>Select your Entertainment Package:</B>
			</P>
			<td>Customer Name:</td><td> <INPUT TYPE="Text" readonly="tue" NAME="custname" VALUE="%value custname%"></td>
			<table width="100%" BORDER="1">  			
			<tr>
			  <td><b>Pack Name</b></td>
			   <td><b>Description</b></td>
			   <td><b>Cost</b></td>
			   <td><b>Validity</b></td>
			</tr>
			
			%loop packDetails%
			<P>
			<tr onclick="myFunction(this)">
               
			   <td><INPUT TYPE="RADIO" NAME="packname" VALUE="%value packname%">%value packname%</td>
			   <td>%value description%</td>
			   <td>%value cost%</td>
			   <td>%value validity%</td>
			</tr>
			</P>

			%endloop%
			</table>				
			</BR>
			<INPUT TYPE="SUBMIT" VALUE="Submit">
			<input type="hidden" name="description"  id="description" >
			<input type="hidden" name="cost" id="cost" >
			<input type="hidden" name="validity" id="validity">
		</FORM>
		<HR>
		%endifvar%
		%endinvoke% 

    </body>
</html>
