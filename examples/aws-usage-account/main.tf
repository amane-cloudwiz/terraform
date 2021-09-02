provider "aws" {
  region = "us-east-1"
  profile = "cloudwiz-profile"
}

locals {
  mcx_tenant_id    = "xudzbzgz4a_xh126"
  mcx_bearer_token = "eyJhbGciOiJSUzI1NiIsImtpZCI6IjJjZGFiZDIwNzVjODQxNDI0NDY3MTNlM2U0NGU5ZDcxOGU3YzJkYjQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vc2FuZGJveC0zMDk4MDMiLCJhdWQiOiJzYW5kYm94LTMwOTgwMyIsImF1dGhfdGltZSI6MTYzMDU3MDczOSwidXNlcl9pZCI6IlJjM2NPclNaMkpnMEs1czFLRHpybTJuMThNTzIiLCJzdWIiOiJSYzNjT3JTWjJKZzBLNXMxS0R6cm0ybjE4TU8yIiwiaWF0IjoxNjMwNTcwNzM5LCJleHAiOjE2MzA1NzQzMzksImVtYWlsIjoic3NpZGRpcXVpQGNsb3Vkd2l6LmlvIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImZpcmViYXNlIjp7ImlkZW50aXRpZXMiOnsic2FtbC5zYW5kYm94LTMwOTgwMy14dWR6YnpnejRhX3hoMTI2IjpbInNzaWRkaXF1aUBjbG91ZHdpei5pbyJdLCJlbWFpbCI6WyJzc2lkZGlxdWlAY2xvdWR3aXouaW8iXX0sInNpZ25faW5fcHJvdmlkZXIiOiJzYW1sLnNhbmRib3gtMzA5ODAzLXh1ZHpiemd6NGFfeGgxMjYiLCJzaWduX2luX2F0dHJpYnV0ZXMiOnsiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS9pZGVudGl0eS9jbGFpbXMvZGlzcGxheW5hbWUiOiJTYWZpIFNpZGRpcXVpIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS9pZGVudGl0eS9jbGFpbXMvdGVuYW50aWQiOiI2NTkwZWUzMC0yYmI4LTRhZDUtOWJhYi01M2E5NDI3ZmY0ZWYiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL2lkZW50aXR5L2NsYWltcy9pZGVudGl0eXByb3ZpZGVyIjoiaHR0cHM6Ly9zdHMud2luZG93cy5uZXQvNjU5MGVlMzAtMmJiOC00YWQ1LTliYWItNTNhOTQyN2ZmNGVmLyIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vaWRlbnRpdHkvY2xhaW1zL29iamVjdGlkZW50aWZpZXIiOiJjOTVkMjUxZS04NzU0LTQwYTUtYjU4Yi03ZWZkZmZiMzY2N2YiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9naXZlbm5hbWUiOiJTYWZpIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6InNzaWRkaXF1aUBjbG91ZHdpei5pbyIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vY2xhaW1zL2F1dGhubWV0aG9kc3JlZmVyZW5jZXMiOlsiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2F1dGhlbnRpY2F0aW9ubWV0aG9kL3Bhc3N3b3JkIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS9jbGFpbXMvbXVsdGlwbGVhdXRobiJdLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9zdXJuYW1lIjoiU2lkZGlxdWkiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9lbWFpbGFkZHJlc3MiOiJzc2lkZGlxdWlAY2xvdWR3aXouaW8ifSwidGVuYW50IjoieHVkemJ6Z3o0YS14aDEyNiJ9fQ.B1MVM8iOMOmFENnqe_3HgfzlkBa7hOCkytbK7u0uJWbxTqCb4N_QGMUQlyR0aSn_naG2cRbiAIXjJfb-uOIPeNJTXrvEnRf6KcRuo4jMlWwd60HKwBPL_wyz2zw75FDSojM-FvExB9avTgH8Bdbmc3jUdx6YQg1NfaADBayPxMaBnY_Tryv3q7XU5BCZmeO5vfFKvkmZ1dJxBoesS-aEbnqNuEGRpRhJBMQcMP6Ptpc0Q0VWyxoQqvQA_ayt4utWl602f0_CuFcuciN7dBnz7Ha4zExGZU39RtJY5vredHnzzLu0q56Zd0clud9SRE_emhJouYUYUDD-7d7whV8Y9Q"
}

module "aws-usage-account" {
  source           = "../../modules/aws-usage-account"
  mcx_tenant_id    = local.mcx_tenant_id
  mcx_bearer_token = local.mcx_bearer_token
  domain           = "cloudwiz"
  regions          = ""
}

