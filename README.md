# ACME webhook for Alibaba Cloud

This is a cert-manager webhook for implementing Alibaba Cloud DNS01 challenge solving logic

Since aliclouddns has not been included in the core codebase of cert-manager, and might not likely to be included recently...  I wrote this webhook to support Alibaba Cloud DNS01 certificates.

## How to use:


2. apply the yaml to deploy the webhook:

   ```bash
   kubectl apply -f https://raw.githubusercontent.com/beebird/cert-manager-webhook-aliclouddns/master/deploy/rendered-manifest.yaml
   ```

3. download and update example issuer and cert files:

   ```example
   ├── example
   │   ├── cluster-issuer-letsencrypt-staging.yaml
   │   └── wildcard-certificate-test.yaml
   ```
   ```bash
   curl -SsL -o issuer.yaml https://raw.githubusercontent.com/beebird/cert-manager-webhook-aliclouddns/master/example/cluster-issuer-letsencrypt-staging.yaml
   curl -SsL -o certificate.yaml  https://raw.githubusercontent.com/beebird/cert-manager-webhook-aliclouddns/master/example/wildcard-certificate-test.yaml
   ```

4. Apply updated yaml files to create a clusterissuer and a test certificate:

   ```bash
   kubectl apply -f issuer.yaml
   kubectl apply -f certificate.yaml
   ```

## Customize your webhook

You may want to make some customization to this webhook, here're the steps:

- clone the repo

- modify ``groupName`` in ``deploy/cert-manager-webhook-aliclouddns/values.yaml`` and ``example/cluster-issuer-letsencrypt-staging.yaml``

- modify ``NAMESPACE`` in ``Makefile``

- If you like, you can even build your own image (``IMAGE_NAME`` in ``Makefile``)

- generate manifest yaml:

  ```bash
  cd cert-manager-webhook-aliclouddns
  make rendered-manifest.yaml
  ```

  





