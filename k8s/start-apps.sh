helm dependency build test-argocd
helm upgrade --install argocd --namespace=argocd --values=test-argocd/values/values-override.yaml --create-namespace --wait test-argocd/


helm dependency build test-argocd-apps/ 
helm upgrade --install argocd-apps --namespace=argocd --values=test-argocd-apps/values/values-override.yaml test-argocd-apps/ 
