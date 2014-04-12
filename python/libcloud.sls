include:
  - python.pip

apache-libcloud:
  pip.installed:
    - bin_env: {{ salt['config.get']('virtualenv_path', None) }}
    - require:
      - cmd: python-pip