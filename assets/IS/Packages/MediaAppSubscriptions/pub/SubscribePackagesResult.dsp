%comment%----- Displays Package Subscription Details -----%endcomment%

<HTML> 
    <head>
        <meta http-equiv="Pragma" content="no-cache">
        <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
        <META HTTP-EQUIV="Expires" CONTENT="-1">
        <title>Subscription Details</title>
    </head>
    
    <body>
		%invoke MediaAppSubscriptions.services:registerMediaAppPack%
		<H2>Subscription Details</H2>
			<table width="100%" BORDER="1">  			
				<tr>
				  <td width="20%">Thank you <b>%value custname%</b>,</td>	  
				</tr>
				<tr>
				  <td width="20%">You have Successfully subscribed for <b>%value packname%</b> at <b>%value cost%</b> for <b>%value validity%</b> validity.</td> 
				</tr>			
			</table>							
		%endinvoke%	
    </body>
</html>
