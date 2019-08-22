# Trigger Netlify Build

This action triggers a build on Netlify.

## Configuration
You will need to add a Build hook to your project on your Netlify dashboard :
1. go to deploys settings
2. build hooks
3. add build hook
4. copy the given secret
5. Add it as a secret on your GitHub repository (Settings > Secrets) under the name `NETLIFY_HOOK_KEY`

## Usage

See [action.yml](action.yml)

Basic:
```yaml
name: CD

on:
 push: # Trigger Netlify build on push
   branches:
     - master
 schedule:
   cron: "0 * * * *" # A Netlify build will be triggered every hour
   branches:
     - master

steps:
- uses: actions/checkout@master
- uses: AntoineAugusti/trigger-netlify-action@v1
  with:
    netlifyHookKey: ${{ secrets.NETLIFY_HOOK_KEY }} # The Netlify build hook secret
```
