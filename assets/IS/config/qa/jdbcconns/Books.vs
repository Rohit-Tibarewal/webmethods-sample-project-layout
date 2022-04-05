<?xml version="1.0" encoding="UTF-8"?>
<Root>
  <DeploymentSet allowEmptyValues="false" assetCompositeName="Books" deploymentSetName="myDeploymentSet" serverAliasName="sagdevops-cicdRepo" targetServerName="XYZ" targetServerType="IS">
    <Component name="connection.Local105DBConn_NoTxn" type="artconnection">
      <Property propertyName="art.deployment.state" propertyValue="disable"/>
      <Property propertyName="transactionType" propertyValue="LOCAL_TRANSACTION"/>
      <Property propertyName="datasourceClass" propertyValue="com.mysql.jdbc.jdbc2.optional.MysqlDataSource"/>
      <Property propertyName="serverName" propertyValue="localhost"/>
      <Property propertyName="user" propertyValue="situser"/>
      <Property propertyName="password" propertyValue="manage12345"/>
      <Property propertyName="databaseName" propertyValue="sitwm107"/>
      <Property propertyName="portNumber" propertyValue="3306"/>
      <Property propertyName="networkProtocol" propertyValue=""/>
	  <Property propertyName="otherProperties" propertyValue="relaxAutoCommit=true;useLegacyDatetimeCode=false;useSSL=false;useTimezone=true;serverTimezone=UTC"/>
	  <Property propertyName=".CMGRPROP.poolable" propertyValue="true"/>
	  <Property propertyName=".CMGRPROP.minimumPoolSize" propertyValue="1"/>
	  <Property propertyName=".CMGRPROP.maximumPoolSize" propertyValue="10"/>
	  <Property propertyName=".CMGRPROP.poolIncrementSize" propertyValue="1"/>
	  <Property propertyName=".CMGRPROP.blockingTimeout" propertyValue="1000"/>
	  <Property propertyName=".CMGRPROP.expireTimeout" propertyValue="1000"/>
	  <Property propertyName=".CMGRPROP.startupRetryCount" propertyValue="0"/>
	  <Property propertyName=".CMGRPROP.startupBackoffSecs" propertyValue="10"/>
	  <Property propertyName=".CMGRPROP.heartBeatInterval" propertyValue="0"/>
    </Component>
	<Component name="connection.SampleConnection2_NT" type="artconnection">
      <Property propertyName="art.deployment.state" propertyValue="disable"/>
      <Property propertyName="transactionType" propertyValue="LOCAL_TRANSACTION"/>
      <Property propertyName="datasourceClass" propertyValue="com.mysql.jdbc.jdbc2.optional.MysqlDataSource"/>
      <Property propertyName="serverName" propertyValue="localhost"/>
      <Property propertyName="user" propertyValue="QAXXX2"/>
      <Property propertyName="password" propertyValue="QAXXX2"/>
      <Property propertyName="databaseName" propertyValue="wmuser107QAXXX2"/>
      <Property propertyName="portNumber" propertyValue="1111"/>
      <Property propertyName="networkProtocol" propertyValue=""/>
	  <Property propertyName="otherProperties" propertyValue="QAXXX2"/>
	  <Property propertyName=".CMGRPROP.poolable" propertyValue="true"/>
	  <Property propertyName=".CMGRPROP.minimumPoolSize" propertyValue="1"/>
	  <Property propertyName=".CMGRPROP.maximumPoolSize" propertyValue="10"/>
	  <Property propertyName=".CMGRPROP.poolIncrementSize" propertyValue="1"/>
	  <Property propertyName=".CMGRPROP.blockingTimeout" propertyValue="2000"/>
	  <Property propertyName=".CMGRPROP.expireTimeout" propertyValue="2000"/>
	  <Property propertyName=".CMGRPROP.startupRetryCount" propertyValue="0"/>
	  <Property propertyName=".CMGRPROP.startupBackoffSecs" propertyValue="10"/>
	  <Property propertyName=".CMGRPROP.heartBeatInterval" propertyValue="0"/>
    </Component>
	<Component name="connection.SampleConnection3_XA" type="artconnection">
      <Property propertyName="art.deployment.state" propertyValue="disable"/>
      <Property propertyName="transactionType" propertyValue="LOCAL_TRANSACTION"/>
      <Property propertyName="datasourceClass" propertyValue="com.mysql.jdbc.jdbc2.optional.MysqlDataSource"/>
      <Property propertyName="serverName" propertyValue="localhost"/>
      <Property propertyName="user" propertyValue="QAXXX3"/>
      <Property propertyName="password" propertyValue="QAXXX3"/>
      <Property propertyName="databaseName" propertyValue="wmuser107QAXXX3"/>
      <Property propertyName="portNumber" propertyValue="1111"/>
      <Property propertyName="networkProtocol" propertyValue=""/>
	  <Property propertyName="otherProperties" propertyValue="QAXXX3"/>
	  <Property propertyName=".CMGRPROP.poolable" propertyValue="true"/>
	  <Property propertyName=".CMGRPROP.minimumPoolSize" propertyValue="2"/>
	  <Property propertyName=".CMGRPROP.maximumPoolSize" propertyValue="20"/>
	  <Property propertyName=".CMGRPROP.poolIncrementSize" propertyValue="1"/>
	  <Property propertyName=".CMGRPROP.blockingTimeout" propertyValue="2000"/>
	  <Property propertyName=".CMGRPROP.expireTimeout" propertyValue="2000"/>
	  <Property propertyName=".CMGRPROP.startupRetryCount" propertyValue="0"/>
	  <Property propertyName=".CMGRPROP.startupBackoffSecs" propertyValue="10"/>
	  <Property propertyName=".CMGRPROP.heartBeatInterval" propertyValue="0"/>
    </Component>
  </DeploymentSet>

</Root>
