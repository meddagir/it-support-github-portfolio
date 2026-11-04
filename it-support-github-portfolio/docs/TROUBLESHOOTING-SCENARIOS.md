# Fictional troubleshooting scenarios

## Slow Windows workstation
1. Confirm impact and scope.
2. Run the read-only Windows health script.
3. Review CPU, memory, disk space, and startup processes.
4. Inspect Event Viewer and recent software changes.
5. Document findings and escalate if needed.

## Printer queue stuck
1. Confirm the printer and user impact.
2. Check connectivity and printer status.
3. Inspect queue and driver; do not clear a shared queue without approval.
4. Test print with non-sensitive sample content.
5. Document resolution.

## Domain login failure
1. Confirm username and error (never collect password).
2. Check network and DNS.
3. Check account status using approved admin tooling.
4. Review time sync and domain connectivity.
5. Escalate policy or identity issues.

## Network connectivity
1. Collect IP/gateway/DNS settings.
2. Ping gateway and a known endpoint.
3. Test DNS resolution.
4. Determine whether failure is local, DNS, routing or upstream.
5. Escalate with sanitized evidence.
