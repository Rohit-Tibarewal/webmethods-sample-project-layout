%comment%----- Payment details for Entertainment Packages -----%endcomment%

<HTML> 
    <head>
        <meta http-equiv="Pragma" content="no-cache">
        <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
        <META HTTP-EQUIV="Expires" CONTENT="-1">
        <title>Payment Details</title>
    </head>
    
    <body>

		<H2>Enter Payment Details</H2>
		<HR>	
		<FORM name="paymentDetailsFrm" ACTION="SubscribePackagesResult.dsp" METHOD="POST">
			<P>
				You are going to make Payment of <B>%value cost%</B> for <B>%value packname%</B>
			</P>
			<table width="30%">  			
			
				<tr>
					<td>Card holder Name:</td>
					<td> <INPUT TYPE="Text" NAME="cardHolderName" VALUE="%value custname%"> </td>
				</tr>
				<tr>
					<td>Card Type:</td>				
					<td><INPUT TYPE="RADIO" NAME="cardType" VALUE="MasterCard">MasterCard</td>
					<td><INPUT TYPE="RADIO" NAME="cardType" VALUE="VISA">VISA</td>
				 </tr>
				<tr>
					<td>Card Number:</td>
					<td> <INPUT TYPE="Text" NAME="cardNumber" VALUE="%value cardNumber%"> </td>
				</tr>
				<tr>
					<td>CVV:</td>
					<td> <INPUT TYPE="password" NAME="cardCVV" VALUE="%value cardCVV%">
					</td> 
					</tr>			
				<tr>
					<td>Expiry:</td>
					<td> <INPUT TYPE="Text" NAME="cardExpiry" VALUE="%value cardExpiry%"> </td>
					</tr>			
			</table>	
			
			</BR>
			<INPUT TYPE="SUBMIT" VALUE="Submit" >

			<input type="hidden" name="packname"  value="%value packname%" >
			<input type="hidden" name="description"  value="%value description%" >
			<input type="hidden" name="cost" value="%value cost%" >
			<input type="hidden" name="validity" value="%value validity%">
			<input type="hidden" name="custname" value="%value custname%">

		</FORM>
		<HR>
		
		%endinvoke% 

    </body>
</html>
