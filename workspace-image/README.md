# Custom ansible devspace image

The current ansible-devspaces image leverages KUBEDOCK rather than the Tech Preview nested container feature. To work around this a community version of that image is being created with similar tool sets using native podman/buildah.

/usr/share/ansible/collections/ansible_collections
Collection        Version
----------------- -------
ansible.netcommon 7.1.0  
ansible.posix     1.6.2  
ansible.scm       3.0.0  
ansible.utils     5.1.2 