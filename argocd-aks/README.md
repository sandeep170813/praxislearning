# ArgoCD AKS Deployments

GitOps repository for deploying applications to AKS cluster using ArgoCD with Helm charts.

## Structure

```
argocd-aks/
├── apps/                    # ArgoCD Application manifests
│   └── sample-app.yaml
├── charts/                  # Helm charts
│   └── sample-app/
│       ├── Chart.yaml
│       ├── values.yaml
│       └── templates/
│           ├── deployment.yaml
│           └── service.yaml
└── environments/            # Environment-specific values
    ├── dev/
    ├── staging/
    └── prod/
```

## Usage

1. Install ArgoCD on your AKS cluster
2. Apply the Application manifest:
   ```bash
   kubectl apply -f apps/sample-app.yaml
   ```

3. To deploy to different environments, modify the `valueFiles` path in the Application manifest.

## Adding New Applications

1. Create a new Helm chart in `charts/`
2. Add environment values in `environments/`
3. Create an ArgoCD Application manifest in `apps/`
