# TW Geeknight Demo

## **PreRequisite**:

1. Install Java 11
> Note: Java version requirement depends on GOCD version being used
2. Install GoServer
> Installation instruction as per OS are available on [GOCD official site](https://docs.gocd.org/current/installation/installing_go_server.html)
3. Install GoAgent
> Installation instruction as per OS are available on [GOCD official site](https://docs.gocd.org/current/installation/installing_go_agent.html)
4. Registering your agent with the server
Open the GoCD server dashboard
> If localhost, server url is: http://localhost:8153/go
Follow the instructions [here](https://docs.gocd.org/current/configuration/managing_a_build_cloud.html) to find the agent you’ve just installed on the list and add the agent to your cloud. The GoCD server will now schedule work for this agent.


## **Steps to build CICD pipeline for your project**
1. Commit your code in Github code repository.
2. Register your repo in GOCD
Go to Admin tab, open "Config XML"
Add below lines in file:
```
  <config-repos>
    <config-repo id="gocd_demo" pluginId="yaml.config.plugin">
      <git url="https://github.com/ashikansal/gocd_demo.git" />
      <rules>
        <allow action="refer" type="pipeline_group">demo_app</allow>
        <deny action="refer" type="pipeline_group">*</deny>
      </rules>
    </config-repo>
  </config-repos>
```