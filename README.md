# puzzling-pro-cache-bust

### ACT I

- command step #1 calls for service A
- service A is built
- container A is spun up, with a volume mapped to project directory on Docker host
- command step #1 is run, and modifies file within mapped volume

### ACT II

- command step #2 calls for service B
- service B is built, Dockerfile copying in modified file from command step #1
- In spite of no recorded git changes for file, Docker image layer cache busts since modification is now detected with file


#### To run:

File can be modified (demonstrating cache bust) by running build with commit message of 'bust cache'

#### Running via `jet steps`

```
jet steps --ci-commit-message='bust cache'
```

