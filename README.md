### Simple Gitlab CI Example

1. Runner machine: Install docker and docker-compose
1. Runner machine: Registering the runner as shell
1. Runner machine: Run the runner
1. Runner machine: Allow gitlab-runner to access docker service
1. Gitlab: Disable shared runner on CI settings
1. Gitlab: Generate access token with `api` and `registry` access enabled
1. Docker: Log into registry.gitlab.com using access token
1. Runner machine: Generate SSH key, put itself into `authorized_keys`
1. Set private key and registry token as envar on CI settings

#### Default pipeline

![Screenshot from 2019-06-26 20-55-41](https://user-images.githubusercontent.com/2534060/60185902-f5cc6a00-9854-11e9-9649-c839e2b5bfa1.png)


#### Prod deployment pipeline

```
ACTION=prod
```

![Screenshot from 2019-06-26 20-56-40](https://user-images.githubusercontent.com/2534060/60185910-fb29b480-9854-11e9-902d-506232d4d060.png)

