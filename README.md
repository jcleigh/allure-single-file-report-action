# allure-single-file-report-action
Single file reporting fork of https://github.com/simple-elf/allure-report-action

Since Allure `--single-file` reporting does not yet support history, this is a much simpler version of the original action that only generates a single report file. All history-related functionality has been removed.

This action uses Ubuntu runners with Java 8 (Temurin distribution) and automatically downloads and installs the Allure CLI. The Allure binary path is exposed as `$ALLURE_BIN` for use in subsequent workflow steps.

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


## Implementation

This action is implemented as a composite action that:
1. Sets up Java 8 using the official `actions/setup-java` action with Temurin distribution
2. Downloads and installs Allure CLI version 2.27.0 via wget/tar
3. Exposes the Allure binary path as `$ALLURE_BIN` environment variable for subsequent workflow steps
4. Generates a single-file Allure report from the test results

The action runs on Ubuntu runners and does not depend on Docker images.

### Migration from v1.0.0

This version migrates from a Docker-based action to a composite action. The `Dockerfile` and `entrypoint.sh` files have been removed. 

**Good news:** If you're already using this action, no changes are required to your workflow files. The action interface (inputs/outputs) remains the same, but it now runs directly on the Ubuntu runner instead of in a Docker container, providing better performance.

## References
- [Add single file mode feature request](https://github.com/allure-framework/allure2/issues/755)
- [Single file mode does not support history yet](https://github.com/orgs/allure-framework/discussions/2127)
- [Original action that this is based on](https://github.com/simple-elf/allure-report-action)