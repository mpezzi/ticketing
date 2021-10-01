.PHONY: setup
setup:
	kubectl create secret generic jwt-secret --from-literal=JWT_KEY=demo-jwt-secret
	kubectl create secret generic stripe-secret --from-literal=STRIPE_KEY=demo-stripe-secret

.PHONY: dev
dev:
	skaffold dev
