# ACME webhook for Alibaba Cloud

This is a cert-manager webhook for implementing Alibaba Cloud DNS01 challenge solving logic

Since aliclouddns has not been included in the core codebase of cert-manager, and might not likely to be included recently...  I wrote this webhook to support Alibaba Cloud DNS01 certificates.

## How to use:

1. clone the repo and generate manifest yaml:

   ```bash
   cd cert-manager-webhook-aliclouddns
   make rendered-manifest.yaml
   ```
   
2. apply the yaml to deploy the webhook:

   ```bash
   kubectl apply -f _out/rendered-manifest.yaml
   ```

3. fill in blanks in files under ``example``:

   ```example
   ├── example
   │   ├── cluster-issuer-letsencrypt-staging.yaml
   │   └── wildcard-certificate-test.yaml
   ```

4. Apply updated yaml files to create a clusterissuer and a test certificate:

   ```bash
   kubectl apply -f example/cluster-issuer-letsencrypt-staging.yaml
   kubectl apply -f example/wildcard-certificate-test.yaml
   ```

## Customize your webhook

You may want to make some customization to this webhook, here're something you can modify:

- ``groupName`` in ``deploy/cert-manager-webhook-aliclouddns/values.yaml`` and ``example/cluster-issuer-letsencrypt-staging.yaml``
- ``NAMESPACE`` in ``Makefile``
- If you like, you can even build your own image (``IMAGE_NAME`` in ``Makefile``)





