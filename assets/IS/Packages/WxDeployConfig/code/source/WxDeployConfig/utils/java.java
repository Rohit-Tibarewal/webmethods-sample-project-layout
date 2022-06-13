package WxDeployConfig.utils;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;
// --- <<IS-END-IMPORTS>> ---

public final class java

{
	// ---( internal utility methods )---

	final static java _instance = new java();

	static java _newInstance() { return new java(); }

	static java _cast(Object o) { return (java)o; }

	// ---( server methods )---




	public static final void convertEpochToTimestamp (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(convertEpochToTimestamp)>> ---
		// @sigtype java 3.5
		// [i] field:0:required epochTime
		// [i] field:0:required datePattern
		// [i] field:0:required timePattern
		// [i] field:0:required dateTimePattern
		// [o] field:0:required date
		// [o] field:0:required time
		// [o] field:0:required dateTime
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
			String	epochTime = IDataUtil.getString( pipelineCursor, "epochTime" );
			String	datePattern = IDataUtil.getString( pipelineCursor, "datePattern" );
			String	timePattern = IDataUtil.getString( pipelineCursor, "timePattern" );
			String	dateTimePattern = IDataUtil.getString( pipelineCursor, "dateTimePattern" );
		pipelineCursor.destroy();
		
		long unix_seconds = Long.parseLong(epochTime);
		Date dateVal = new Date(unix_seconds);
		
		IDataCursor pipelineCursor_1 = pipeline.getCursor();
		
		if(datePattern!=null)
		{
			SimpleDateFormat dateFormatter = new SimpleDateFormat(datePattern);
			String java_date = dateFormatter.format(dateVal);
			IDataUtil.put( pipelineCursor_1, "date", java_date );
		}
		if(timePattern!=null)
		{
			SimpleDateFormat dateFormatter = new SimpleDateFormat(timePattern);
			String java_date = dateFormatter.format(dateVal);
			IDataUtil.put( pipelineCursor_1, "time", java_date );
		}
		
		if(dateTimePattern!=null)
		{
			SimpleDateFormat dateFormatter = new SimpleDateFormat(dateTimePattern);
			String java_date = dateFormatter.format(dateVal);
			IDataUtil.put( pipelineCursor_1, "dateTime", java_date );
		}
		
		pipelineCursor_1.destroy();
		
			
		// --- <<IS-END>> ---

                
	}



	public static final void getBuildServerProperties (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(getBuildServerProperties)>> ---
		// @sigtype java 3.5
		// [i] field:0:required propertyFile
		// [o] record:0:required properties
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
			String	propertyFile = IDataUtil.getString( pipelineCursor, "propertyFile" );
		pipelineCursor.destroy();
		
		String host="";
		String port="";
		String taskIds="";
		
		try {
			FileReader reader = new FileReader(propertyFile);
			Properties prop=new Properties();
			prop.load(reader);
			try {
				host=prop.getProperty("host").toString();
			} catch (Exception e) {
				host="";
			}
			
			try {
				port=prop.getProperty("port").toString();
			} catch (Exception e) {
				port="";
			}
			
			try {
				port=prop.getProperty("port").toString();
			} catch (Exception e) {
				port="";
			}
			
			try {
				taskIds=prop.getProperty("taskIds").toString();
			} catch (Exception e) {
				taskIds="";
			}
			
		} catch (Exception e) {
			host="";
			port="";
			taskIds="";			
		}
		
		
		// pipeline
		IDataCursor pipelineCursor_1 = pipeline.getCursor();
		
		// properties
		IData	properties = IDataFactory.create();
		IDataCursor propCursor=properties.getCursor();
			IDataUtil.put( propCursor, "host", host );
			IDataUtil.put( propCursor, "port", port );
			IDataUtil.put( propCursor, "taskIds", taskIds );
			
		propCursor.destroy();
		IDataUtil.put( pipelineCursor_1, "properties", properties );
		pipelineCursor_1.destroy();
		
			
		// --- <<IS-END>> ---

                
	}



	public static final void trimWhiteSpaces (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(trimWhiteSpaces)>> ---
		// @sigtype java 3.5
		// --- <<IS-END>> ---

                
	}



	public static final void writeToFile (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(writeToFile)>> ---
		// @sigtype java 3.5
		// [i] field:0:required fileName
		// [i] field:0:required inputStr
		// [o] field:0:required writeStatus
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
			String	fileName = IDataUtil.getString( pipelineCursor, "fileName" );
			String	inputStr = IDataUtil.getString( pipelineCursor, "inputStr" );
		pipelineCursor.destroy();
		
		
		// pipeline
		IDataCursor pipelineCursor_1 = pipeline.getCursor();
		
		File f=new File(fileName);
		FileWriter fw;
		BufferedWriter bw;
		
		try{
			if(!f.exists())
			{
				   f.createNewFile();
			}		
			fw = new FileWriter(f.getAbsolutePath());
			bw = new BufferedWriter(fw);
			bw.write(inputStr);
			bw.close();
			IDataUtil.put( pipelineCursor_1, "writeStatus", "Success" );
		}
		catch(Exception ex)
		{
			IDataUtil.put( pipelineCursor_1, "writeStatus", "Failed" );
		}
		pipelineCursor_1.destroy();
			
		// --- <<IS-END>> ---

                
	}
}

