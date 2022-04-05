<?xml version="1.0" encoding="UTF-8"?>
<Root>
  <DeploymentSet allowEmptyValues="false" assetCompositeName="Books2" deploymentSetName="myDeploymentSet" serverAliasName="Rohit_Test_VarSubsRepo" targetServerName="testbed_107" targetServerType="IS">
    <Property propertyName="activatePkgOnInstall" propertyValue="true"/>
    <Property propertyName="archivePkgOnInstall" propertyValue="true"/>
    <Property propertyName="compilePackage" propertyValue="true"/>
    <Property propertyName="fragPackage" propertyValue="true"/>
    <Property propertyName="clearACLs" propertyValue="false"/>
    <Property propertyName="disallowActivePackageInstall" propertyValue="false"/>
    <Property propertyName="packageExecutionCheck" propertyValue="0"/>
    <Property propertyName="suspendTriggersDuringDeploy" propertyValue="false"/>
    <Property propertyName="syncDocTypesToBroker" propertyValue="true"/>
    <Property propertyName="restartRuntimes" propertyValue="false"/>
    <Component name="connection.Sample_NoConn" type="artconnection">
      <Property propertyName="art.deployment.state" propertyValue="disable"/>
      <Property propertyName="transactionType" propertyValue="NO_TRANSACTION"/>
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
  </DeploymentSet>
 </Root>
