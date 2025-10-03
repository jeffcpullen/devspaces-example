# Ansible Development in Red Hat OpenShift Dev Spaces

This repository can be used for launching an Ansible focused Developer Workspace in Red Hat OpenShift Dev Spaces. It assumes a Red Hat OpenShift cluster that supports features that are tech preview as of OpenShift 4.19. For more information on how the cluster is configured see the "Additional Information" section below.

## Getting Started

Once you have a Red Hat OpenShift environment configured and/or available that supports nested containers, you can use this repository in Red Hat OpenShift Dev Spaces to develop and test Ansible content. To do this you should first login your Red Hat OpenShift console. After you've signed in you can access Red Hat OpenShift Dev Spaces by clicking the 9 square icon in the top right of the console and clicking, "Red Hat OpenShift Dev Spaces".

If it is your first time using this cluster's Red Hat OpenShift Dev Spaces you will be redirected to an authorization page to link Dev Spaces with OpenShift Oauth.

## Git Authentication

If you would like to add Personal Access tokens for Github, Gitlab or Bitbucket this can be set once and applied to all your workspaces. This is done after logging into the Red Hat OpenShift DevSpaces dashboard, then in the top right drop down next to your username and icon and select, "User Preferences". In the User Preferences page you will want to select "Personal Access Tokens" and add a git Personal Access Token (PAT).

See creating a Github Personal Access Token section below and the official Red Hat Documentation for [Authenticating to a Git server from a workspace](https://docs.redhat.com/en/documentation/red_hat_openshift_dev_spaces/3.23/html/user_guide/getting-started-with-devspaces#authenticating-to-a-git-server-from-a-workspace)

## Adding additional repositories

Once you've authenticated to your git provider (either inside the workspace, or by adding a PAT in your user preferences) you can clone repositories into your workspace. This can be done through the workspace interface or by opening the terminal and using standard git CLI commands.

You can also fork this repository and modify the devfile.yaml to have additional repositories automatically added to your workspace. The devfile.yaml has examples commented out that can be customized for your particular use case.

To launch your workspace from your repository fork follow the official Red Hat documentation at [Starting a workspace from a git repository URL](https://docs.redhat.com/en/documentation/red_hat_openshift_dev_spaces/3.23/html/user_guide/getting-started-with-devspaces#starting-a-workspace-from-a-git-repository-url).

## Creating a Github Personal Access Token

. Log into your GitHub account
. Click on your profile avatar, and select "Settings."
. In the left sidebar, scroll down and click on "Developer settings."
. Click on "Personal access tokens" and then choose "Tokens (classic)" or "Fine-grained tokens" depending on your needs. For most Red Hat OpenShift Dev Spaces integrations, classic tokens are sufficient.
. Click on "Generate new token" (or "Generate new token (classic)" if you selected classic tokens).
. Configure Token Details

    Note: Provide a descriptive name for your token.
    Expiration: Set an expiration date for the token. For security, it is recommended to set a reasonable expiration.
    Scopes: Select the necessary permissions (scopes) for the token. For accessing private repositories, the repo scope (or more granular fine-grained permissions) is typically required.

. Click "Generate token."
. Immediately copy the generated token. It will only be displayed once and cannot be retrieved again. Store it securely.

## Differences from standard Development Workspace

This repository deviates from the typical Red Hat OpenShift 4.19 Dev Space configurations and images in that it uses rootless podman instead of kubedock. If you would like to learn more about Kubedock see the official Red Hat Documentation at [Running containers with kubedock](https://docs.redhat.com/en/documentation/red_hat_openshift_dev_spaces/3.23/html/user_guide/getting-started-with-devspaces#authenticating-to-a-git-server-from-a-workspace)

## Additional Information

[Enable nested containers in OpenShift Dev Spaces with user namespaces](https://developers.redhat.com/articles/2024/12/02/enable-nested-containers-openshift-dev-spaces-user-namespaces) for more information about configuring and using nested containers in OpenShift Dev Spaces.

[ocp-4-18-nested-container-tech-preview](https://github.com/cgruver/ocp-4-18-nested-container-tech-preview)

[devspace-419-nested-podman](https://github.com/jeffcpullen/devspace-419-nested-podman)

IMPORTANT: These features are Tech Preview as of Red Hat OpenShift 4.19. See [Technology Preview Features - Scope of Support](https://access.redhat.com/support/offerings/techpreview)

If you want to modify or update the Sample tiles in the Red Hat OpenShift Dev Spaces dashboard see the official Red Hat documentation at [Configuring getting started samples](https://docs.redhat.com/en/documentation/red_hat_openshift_dev_spaces/3.23/html/administration_guide/configuring-devspaces#configuring-getting-started-samples)
