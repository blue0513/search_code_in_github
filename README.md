# Search Code in Github

Find the frequency of use of the codes in Github.

## Usage

#### 0. Install `octokit.rb`

You need to install [`octokit.rb`](https://github.com/octokit/octokit.rb) to use GitHub API.

```shell
$ bundle install
```

#### 1. Rename `config.yml.example` as `config.yml`

This code loads `config.yml` in the first step to setup.

#### 2. Edit `access_token` in `config.yml`

Access [personal access token page](https://github.com/settings/tokens) and generate new token.

Then write it to `config.yml`.

#### 3. Execute `github_api.rb`

You can find the frequency of use of the codes in github.

```shell
$ ruby github_api.rb "SEARCH_CODE_1" "SEARCH_CODE_2" ....
```

The result is hash style like this.

```shell
$ ruby github_api.rb "excluded_condition" "exclusion_condition"
$ {"excluded_condition"=>3, "exclusion_condition"=>253}
```
