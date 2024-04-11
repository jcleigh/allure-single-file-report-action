#! /usr/bin/env bash

unset JAVA_HOME

#echo "executor.json"
echo '{"name":"GitHub Actions","type":"github","reportName":"Allure Single File Report",' > executor.json
echo "\"buildUrl\":\"${INPUT_GITHUB_SERVER_URL}/${INPUT_GITHUB_REPO}/actions/runs/${INPUT_GITHUB_RUN_ID}\"," >> executor.json
echo "\"buildName\":\"GitHub Actions Run #${INPUT_GITHUB_RUN_ID}\",\"buildOrder\":\"${INPUT_GITHUB_RUN_NUM}\"}" >> executor.json
#cat executor.json
mv ./executor.json ./${INPUT_ALLURE_RESULTS}

echo "generating report from ${INPUT_ALLURE_RESULTS} to ${INPUT_ALLURE_REPORT} ..."
#ls -l ${INPUT_ALLURE_RESULTS}
allure generate --clean --single-file ${INPUT_ALLURE_RESULTS} -o ${INPUT_ALLURE_REPORT}
#echo "listing report directory ..."
#ls -l ${INPUT_ALLURE_REPORT}
