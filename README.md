##TW Geeknight Demo
Add below lines in config.xml on Gocd Server:
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