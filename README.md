# PHP Security Checker action

This action controls checks if your application uses dependencies with known security vulnerabilities.

Based on [sensiolabs/security-checker](https://github.com/sensiolabs/security-checker)

## Inputs

### `composer-lock`

The folder to control. Default `"./composer-lock"`.

## Example usage

```yaml
- name: PHP Security Checker
  uses: StephaneBour/actions-php-security-checker@1.1
  with:
    composer-lock: './composer-lock'
```
