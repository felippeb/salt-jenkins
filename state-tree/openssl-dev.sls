{%- if grains['os_family'] == 'RedHat' %}
  {%- set openssl_dev = 'openssl-devel' %}
{%- elif grains['os_family'] == 'Suse' %}
  {%- set openssl_dev = 'libopenssl-devel' %}
{%- else %}
  {%- set openssl_dev = 'libssl-dev' %}
{%- endif %}

openssl-dev-libs:
  pkg.installed:
    - name: {{ openssl_dev }}
    - aggregate: False
