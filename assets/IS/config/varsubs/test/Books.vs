<?xml version="1.0" encoding="UTF-8"?><Root>
  <DeploymentSet allowEmptyValues="false" assetCompositeName="Books" deploymentSetName="myDeploymentSet" serverAliasName="sagdevops-cicdRepo" targetServerName="testbed_107" targetServerType="IS">
    <Component name="connection.Local105DBConn_NoTxn" type="artconnection">
      <Property propertyName="art.deployment.state" propertyValue="disable"/>
      <Property propertyName="transactionType" propertyValue="LOCAL_TRANSACTION"/>
      <Property propertyName="datasourceClass" propertyValue="com.mysql.jdbc.jdbc2.optional.MysqlDataSource"/>
      <Property propertyName="serverName" propertyValue="localhost"/>
      <Property propertyName="user" propertyValue="TESTTEST"/>
      <Property propertyName="password" propertyValue="TESTTEST"/>
      <Property propertyName="databaseName" propertyValue="wmuser107TESTTEST"/>
      <Property propertyName="portNumber" propertyValue="TESTTEST"/>
      <Property propertyName="networkProtocol" propertyValue=""/>
	  <Property propertyName="otherProperties" propertyValue="TESTTEST"/>
	  <Property propertyName=".CMGRPROP.poolable" propertyValue="true"/>
	  <Property propertyName=".CMGRPROP.minimumPoolSize" propertyValue="5"/>
	  <Property propertyName=".CMGRPROP.maximumPoolSize" propertyValue="10"/>
	  <Property propertyName=".CMGRPROP.poolIncrementSize" propertyValue="1"/>
	  <Property propertyName=".CMGRPROP.blockingTimeout" propertyValue="2000"/>
	  <Property propertyName=".CMGRPROP.expireTimeout" propertyValue="2000"/>
	  <Property propertyName=".CMGRPROP.startupRetryCount" propertyValue="0"/>
	  <Property propertyName=".CMGRPROP.startupBackoffSecs" propertyValue="10"/>
	  <Property propertyName=".CMGRPROP.heartBeatInterval" propertyValue="0"/>
    </Component>
  </DeploymentSet>
</Root>
