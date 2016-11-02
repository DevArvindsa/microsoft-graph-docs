:: Setup
:: -----

setlocal enabledelayedexpansion

IF NOT DEFINED SITE (
  SET SITE=%~dp0%..
)

IF NOT DEFINED DEPLOYMENT_SOURCE (
  SET DEPLOYMENT_SOURCE=%SITE%\repository
)

IF NOT DEFINED DEPLOYMENT_TARGET_DIR (
  SET DEPLOYMENT_TARGET_DIR=%SITE%\wwwroot\GraphDocuments\en-us
)

IF NOT DEFINED DEPLOYMENT_TEMPLATE (
  SET DEPLOYMENT_TEMPLATE=%SITE%\deployments\tools\PostDeploymentActions\InfraTools\md2html\html-template
)

IF NOT DEFINED APIDOCS_PATH (
  SET APIDOCS_PATH=%SITE%\wwwroot\GraphDocuments\en-us
)

xcopy %DEPLOYMENT_SOURCE%\images %DEPLOYMENT_TARGET_DIR%\images /Y
xcopy %DEPLOYMENT_SOURCE%\misc %SITE%\wwwroot\SEO /Y
