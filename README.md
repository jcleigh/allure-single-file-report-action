# allure-single-file-report-action
Single file reporting fork of https://github.com/simple-elf/allure-report-action

Since Allure `--single-file` reporting does not yet support history, this is a much simpler version of the original action that only generates a single report file. All history-related functionality has been removed.

## Inputs

### `allure_results`

**Required** The relative path to the Allure results directory. 

Default `allure-results`

### `allure_report`

**Required** The relative path to the directory where Allure will write the generated report. 

Default `allure-report`