# allure-single-file-report-action
Single file reporting fork of https://github.com/simple-elf/allure-report-action

Since Allure `--single-file` reporting does not yet support history, this is a much simpler version of the original action that only generates a single report file. All history-related functionality has been removed.


## Usage

```yaml
- name: Generate Allure report
  uses: jcleigh/allure-single-file-report-action@v1
  with:
    allure_results: allure-results
    allure_report: allure-report
```


## Inputs

### `allure_results`

**Required** The relative path to the Allure results directory. 

Default: `allure-results`

### `allure_report`

**Required** The relative path to the directory where Allure will write the generated report. 

Default: `allure-report`


## References
- [Add single file mode feature request](https://github.com/allure-framework/allure2/issues/755)
- [Single file mode does not support history yet](https://github.com/orgs/allure-framework/discussions/2127)
- [Original action that this is based on](https://github.com/simple-elf/allure-report-action)