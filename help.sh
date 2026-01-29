for f in \
  lib/windows/policies/all-windows-updates-installed.policies.yml \
  lib/all/queries/collect-failed-login-attempts.queries.yml \
  lib/agent-options.yml \
  lib/windows/software/cloudflare-warp.yml
do
  echo "==== $f ===="
  nl -ba "$f" | sed -n '18,28p'
done
