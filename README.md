<p align="center">
  <img src=".github/assets/banner.svg" alt="WTF Is...?" width="100%"/>
</p>

<p align="center">
  <strong>Tech jargon explained in plain language.</strong><br>
  No fluff, no history lessons, no "in modern computing paradigms..."<br>
  Just what the thing is, why it exists, and a quick diagram when it helps.
</p>

<p align="center">
  <a href="#concepts"><img src="https://img.shields.io/badge/concepts-857-58a6ff?style=for-the-badge&labelColor=0d1117" alt="Concepts"/></a>
  <a href="#categories"><img src="https://img.shields.io/badge/categories-10-bc8cff?style=for-the-badge&labelColor=0d1117" alt="Categories"/></a>
  <a href="CONTRIBUTING.md"><img src="https://img.shields.io/badge/PRs-welcome-f78166?style=for-the-badge&labelColor=0d1117" alt="PRs Welcome"/></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-CC%20BY--SA%204.0-7ee787?style=for-the-badge&labelColor=0d1117" alt="License"/></a>
</p>

<p align="center">
  <a href="https://github.com/andreahlert/wtf-is/stargazers"><img src="https://img.shields.io/github/stars/andreahlert/wtf-is?style=social" alt="Stars"/></a>
  <a href="https://github.com/andreahlert/wtf-is/network/members"><img src="https://img.shields.io/github/forks/andreahlert/wtf-is?style=social" alt="Forks"/></a>
</p>

---

## How it works

> You search. You find. You understand. In 30 seconds.

Every concept follows the same format:

```
# WTF is [Thing]?

[2-4 sentences. Plain language. No prerequisites.]

[ASCII diagram that actually clarifies something]

Examples: real tools and products that use this
```

---

<a id="categories"></a>

## Concepts

<a id="concepts"></a>

<details>
<summary><b>Infrastructure & DevOps</b> <code>91 concepts</code></summary>
<br>

| Concept | One-liner |
|---------|-----------|
| [Admission Controller](concepts/admission-controller.md) | Validates resources before Kubernetes accepts them |
| [Ansible](concepts/ansible.md) | Agentless automation for server configuration |
| [Artifact](concepts/artifact.md) | Built output ready for deployment |
| [Artifact Repository](concepts/artifact-repository.md) | Central storage for build artifacts |
| [Auto-scaling](concepts/auto-scaling.md) | Automatically add or remove servers |
| [Blue-Green Deployment](concepts/blue-green-deployment.md) | Two identical envs, swap traffic instantly |
| [Buildpack](concepts/buildpack.md) | Auto-detects and builds your app |
| [Cache CI](concepts/cache-ci.md) | Speed up CI by caching dependencies |
| [Canary Release](concepts/canary-release.md) | Roll out to a small group first |
| [CDN](concepts/cdn.md) | Cached copies close to users worldwide |
| [Cgroup](concepts/cgroup.md) | Limits CPU and memory for processes |
| [Chef](concepts/chef.md) | Ruby-based configuration management tool |
| [CI/CD](concepts/ci-cd.md) | Auto-build, auto-test, auto-deploy on push |
| [Cloud Init](concepts/cloud-init.md) | Bootstrap cloud VMs on first boot |
| [Cluster Autoscaler](concepts/cluster-autoscaler.md) | Adds or removes Kubernetes nodes automatically |
| [CNI](concepts/cni.md) | Standard interface for container networking |
| [Configuration Management](concepts/configuration-management.md) | Automate server setup and state |
| [Conftest](concepts/conftest.md) | Test configs against OPA policies |
| [Container](concepts/container.md) | Your app in a box, runs everywhere |
| [Containerd vs CRI-O](concepts/containerd-vs-crio.md) | Two container runtimes for Kubernetes |
| [Container Orchestration](concepts/container-orchestration.md) | Manage containers at scale automatically |
| [Container Registry](concepts/container-registry.md) | Storage for container images |
| [CRI](concepts/cri.md) | Kubernetes interface to container runtimes |
| [Cron](concepts/cron.md) | Schedule tasks to run periodically |
| [Cron Job](concepts/cron-job.md) | Scheduled task in Kubernetes |
| [CSI](concepts/csi.md) | Standard interface for container storage |
| [Custom Resource Definition](concepts/custom-resource-definition.md) | Extend Kubernetes with custom objects |
| [Daemon Set](concepts/daemon-set.md) | Run a pod on every Kubernetes node |
| [Distroless](concepts/distroless.md) | Container image with no OS shell |
| [Docker Compose](concepts/docker-compose.md) | Define multi-container apps in YAML |
| [Docker in Docker](concepts/docker-in-docker.md) | Run Docker inside a Docker container |
| [Environment](concepts/environment.md) | Isolated stage like dev, staging, prod |
| [Feature Flag](concepts/feature-flag.md) | Toggle features on/off without deploying |
| [Feature Toggle](concepts/feature-toggle.md) | Runtime switch to enable/disable features |
| [GitOps](concepts/gitops.md) | Git repo as single source of truth |
| [Health Check](concepts/health-check.md) | Verify a service is running correctly |
| [Health Endpoint](concepts/health-endpoint.md) | HTTP route that reports service status |
| [Helm Chart](concepts/helm-chart.md) | Package manager for Kubernetes apps |
| [Horizontal Pod Autoscaler](concepts/horizontal-pod-autoscaler.md) | Scale pods based on metrics |
| [Hybrid Cloud](concepts/hybrid-cloud.md) | Mix of on-prem and cloud infrastructure |
| [IaC Drift](concepts/iac-drift.md) | When real infra differs from code |
| [Image Pull Policy](concepts/image-pull-policy.md) | When Kubernetes pulls container images |
| [Immutable Infrastructure](concepts/immutable-infrastructure.md) | Replace servers, never patch them |
| [Infrastructure as Code](concepts/infrastructure-as-code.md) | Config files instead of clicking dashboards |
| [Ingress](concepts/ingress.md) | Route external traffic into Kubernetes |
| [Init Container](concepts/init-container.md) | Setup container that runs before main |
| [Kubernetes](concepts/kubernetes.md) | Manages containers so you don't babysit |
| [Kustomize](concepts/kustomize.md) | Patch Kubernetes YAML without templates |
| [Limit Range](concepts/limit-range.md) | Default resource limits for a namespace |
| [Linux Namespace](concepts/linux-namespace.md) | Isolate process views of system resources |
| [Load Balancer](concepts/load-balancer.md) | Spreads traffic across multiple servers |
| [Multi-Cloud](concepts/multi-cloud.md) | Use multiple cloud providers together |
| [Multi-Stage Build](concepts/multi-stage-build.md) | Smaller images by separating build steps |
| [Mutating Webhook](concepts/mutating-webhook.md) | Auto-modify Kubernetes resources on creation |
| [Namespace](concepts/namespace.md) | Logical partition inside a Kubernetes cluster |
| [Network Policy](concepts/network-policy.md) | Firewall rules for Kubernetes pods |
| [Node Affinity](concepts/node-affinity.md) | Schedule pods on specific nodes |
| [OCI](concepts/oci.md) | Standard spec for container images |
| [Operator Pattern](concepts/operator-pattern.md) | Automate app management in Kubernetes |
| [Packer](concepts/packer.md) | Build machine images from templates |
| [Pod](concepts/pod.md) | Smallest deployable unit in Kubernetes |
| [Pod Disruption Budget](concepts/pod-disruption-budget.md) | Minimum pods that must stay running |
| [Podman vs Docker](concepts/podman-vs-docker.md) | Daemonless alternative to Docker |
| [Puppet](concepts/puppet.md) | Declarative server configuration management |
| [Region and Availability Zone](concepts/region-and-availability-zone.md) | Geographic isolation for cloud resources |
| [Reserved Instance](concepts/reserved-instance.md) | Commit to cloud capacity for discounts |
| [Resource Quota](concepts/resource-quota.md) | Limit total resources per namespace |
| [Reverse Proxy](concepts/reverse-proxy.md) | Server that sits in front of backends |
| [Rolling Update](concepts/rolling-update.md) | Deploy gradually, replace pods one by one |
| [Rootless Container](concepts/rootless-container.md) | Run containers without root privileges |
| [Salt](concepts/salt.md) | Event-driven infrastructure automation tool |
| [Scratch Image](concepts/scratch-image.md) | Empty base image for minimal containers |
| [Serverless](concepts/serverless.md) | Run code without managing servers |
| [Sidecar Injection](concepts/sidecar-injection.md) | Auto-add sidecar containers to pods |
| [Skaffold](concepts/skaffold.md) | Automate Kubernetes dev workflow |
| [Spot Instance](concepts/spot-instance.md) | Cheap cloud VMs that can vanish |
| [Stateful Set](concepts/stateful-set.md) | Kubernetes workload with stable identity |
| [Systemd](concepts/systemd.md) | Linux init system and service manager |
| [Taints and Tolerations](concepts/taints-and-tolerations.md) | Repel pods from specific nodes |
| [Telepresence](concepts/telepresence.md) | Develop locally against remote cluster |
| [Terraform State](concepts/terraform-state.md) | Tracks what Terraform manages |
| [Tilt](concepts/tilt.md) | Live-reload for Kubernetes development |
| [Vagrant](concepts/vagrant.md) | Reproducible dev environments via VMs |
| [Virtual Machine](concepts/virtual-machine.md) | Emulated computer running on real hardware |
| [Virtualization](concepts/virtualization.md) | Run multiple OS on one machine |
| [VPC](concepts/vpc.md) | Isolated virtual network in the cloud |
| [Function as a Service](concepts/function-as-a-service.md) | Deploy single functions, pay per call |
| [Dark Launching](concepts/dark-launching.md) | Deploy code without exposing to users |
| [Edge Computing](concepts/edge-computing.md) | Process data closer to the source |
| [Persistent Volume](concepts/persistent-volume.md) | Durable storage for Kubernetes pods |
| [Service Discovery](concepts/service-discovery.md) | Auto-find services on the network |

</details>

<details>
<summary><b>Architecture & Patterns</b> <code>91 concepts</code></summary>
<br>

| Concept | One-liner |
|---------|-----------|
| [Adapter Pattern](concepts/adapter-pattern.md) | Convert one interface to another |
| [Aggregate](concepts/aggregate.md) | Cluster of domain objects as one unit |
| [API Composition](concepts/api-composition.md) | Combine multiple API calls into one |
| [API Gateway](concepts/api-gateway.md) | Single entry point for all API traffic |
| [API Versioning](concepts/api-versioning.md) | Manage breaking changes in your API |
| [Backend for Frontend](concepts/backend-for-frontend.md) | Custom backend per frontend type |
| [Backpressure](concepts/backpressure.md) | Slow down producers when consumers lag |
| [Bounded Context](concepts/bounded-context.md) | Clear boundary around a domain model |
| [Bulkhead Pattern](concepts/bulkhead-pattern.md) | Isolate failures to one compartment |
| [Circuit Breaker](concepts/circuit-breaker.md) | Stop calling a failing service temporarily |
| [Clean Architecture](concepts/clean-architecture.md) | Dependencies point inward only |
| [Command Pattern](concepts/command-pattern.md) | Encapsulate a request as an object |
| [CQRS](concepts/cqrs.md) | Separate models for reads and writes |
| [Data Contract](concepts/data-contract.md) | Agreement on data format between teams |
| [Dead Letter Queue](concepts/dead-letter-queue.md) | Parking lot for failed messages |
| [Decorator Pattern](concepts/decorator-pattern.md) | Add behavior without changing the class |
| [Dependency Injection](concepts/dependency-injection.md) | Pass dependencies instead of creating them |
| [Domain Driven Design](concepts/domain-driven-design.md) | Model software around business domains |
| [DRY](concepts/dry.md) | Don't repeat yourself |
| [Event Driven Architecture](concepts/event-driven-architecture.md) | Components communicate through events |
| [Event Sourcing](concepts/event-sourcing.md) | Store events, replay to get state |
| [Eventual Consistency](concepts/eventual-consistency.md) | Data syncs across replicas eventually |
| [Facade Pattern](concepts/facade-pattern.md) | Simple interface to a complex system |
| [Factory Pattern](concepts/factory-pattern.md) | Create objects without specifying the class |
| [Gateway Aggregation](concepts/gateway-aggregation.md) | Combine multiple backend calls at gateway |
| [HATEOAS](concepts/hateoas.md) | API responses include navigation links |
| [Hexagonal Architecture](concepts/hexagonal-architecture.md) | Ports and adapters, core stays pure |
| [Idempotency](concepts/idempotency.md) | Same operation, same result every time |
| [Inbox Pattern](concepts/inbox-pattern.md) | Deduplicate incoming messages reliably |
| [Inversion of Control](concepts/inversion-of-control.md) | Framework calls your code, not vice versa |
| [KISS](concepts/kiss.md) | Keep it simple, stupid |
| [Layered Architecture](concepts/layered-architecture.md) | Organize code in horizontal layers |
| [Message Queue](concepts/message-queue.md) | Async communication between services |
| [Microservices](concepts/microservices.md) | Small independent services, not one big app |
| [Monorepo](concepts/monorepo.md) | Multiple projects, one Git repo |
| [Observer Pattern](concepts/observer-pattern.md) | Notify subscribers when state changes |
| [Onion Architecture](concepts/onion-architecture.md) | Domain at the center, deps point inward |
| [OpenAPI](concepts/openapi.md) | Standard spec for describing REST APIs |
| [Outbox Pattern](concepts/outbox-pattern.md) | Reliable event publishing via database |
| [Proxy Pattern](concepts/proxy-pattern.md) | Stand-in object controlling access |
| [Pub/Sub](concepts/pub-sub.md) | Publish messages, subscribers get them |
| [Rate Limiting](concepts/rate-limiting.md) | Cap how many requests a client can make |
| [Reactive Programming](concepts/reactive-programming.md) | Data streams that react to changes |
| [Repository Pattern](concepts/repository-pattern.md) | Abstract data access behind an interface |
| [REST](concepts/rest.md) | Stateless API over HTTP with resources |
| [Retry Pattern](concepts/retry-pattern.md) | Try again on transient failures |
| [Saga Pattern](concepts/saga-pattern.md) | Multi-service transactions with undo steps |
| [Service Mesh](concepts/service-mesh.md) | Invisible layer handling service traffic |
| [Service Registry](concepts/service-registry.md) | Central directory of available services |
| [Sidecar Pattern](concepts/sidecar-pattern.md) | Helper container next to your app |
| [Singleton Pattern](concepts/singleton-pattern.md) | Only one instance of a class exists |
| [SOLID Principles](concepts/solid-principles.md) | Five rules for clean OOP design |
| [Specification Pattern](concepts/specification-pattern.md) | Encapsulate business rules as objects |
| [Strangler Fig Pattern](concepts/strangler-fig-pattern.md) | Gradually replace legacy systems |
| [Strategy Pattern](concepts/strategy-pattern.md) | Swap algorithms at runtime |
| [Timeout Pattern](concepts/timeout-pattern.md) | Fail fast if response takes too long |
| [Token Bucket](concepts/token-bucket.md) | Rate limiting with burst allowance |
| [Twelve Factor App](concepts/twelve-factor-app.md) | Twelve rules for cloud-native apps |
| [Two Phase Commit](concepts/two-phase-commit.md) | Distributed transaction with prepare/commit |
| [Unit of Work](concepts/unit-of-work.md) | Track changes and commit as one batch |
| [Webhook](concepts/webhook.md) | HTTP callback triggered by an event |
| [YAGNI](concepts/yagni.md) | You aren't gonna need it |
| [Leaky Bucket](concepts/leaky-bucket.md) | Rate limiting with steady output |
| [Sliding Window](concepts/sliding-window.md) | Track events in a rolling time frame |
| [Consistent Hashing](concepts/consistent-hashing.md) | Distribute keys with minimal remapping |
| [Leader Election](concepts/leader-election.md) | Pick one node to coordinate the rest |
| [Distributed Lock](concepts/distributed-lock.md) | Mutual exclusion across multiple nodes |
| [Quorum](concepts/quorum.md) | Majority agreement for distributed decisions |
| [Raft Consensus](concepts/raft-consensus.md) | Understandable distributed consensus algorithm |
| [Paxos](concepts/paxos.md) | Classic distributed consensus protocol |
| [Gossip Protocol](concepts/gossip-protocol.md) | Nodes spread info like rumors |
| [Vector Clock](concepts/vector-clock.md) | Track causality in distributed systems |
| [Lamport Timestamp](concepts/lamport-timestamp.md) | Logical clock for event ordering |
| [CRDT](concepts/crdt.md) | Data structures that merge without conflicts |
| [Conflict Resolution](concepts/conflict-resolution.md) | Decide which concurrent write wins |
| [Backpressure Reactive](concepts/backpressure-reactive.md) | Signal upstream to slow down |
| [SOAP](concepts/soap.md) | XML-based protocol for web services |
| [JSON Schema](concepts/json-schema.md) | Validate JSON structure and types |
| [Protobuf](concepts/protobuf.md) | Google's binary serialization format |
| [Thrift](concepts/thrift.md) | Cross-language RPC framework by Facebook |
| [Avro](concepts/avro.md) | Row-based binary serialization with schema |
| [DAG](concepts/dag.md) | Graph with directed edges and no cycles |
| [Polling vs Pushing](concepts/polling-vs-pushing.md) | Ask repeatedly vs get notified |
| [Server Sent Events](concepts/server-sent-events.md) | One-way server-to-client event stream |
| [Long Polling](concepts/long-polling.md) | Hold request open until data arrives |
| [Async API](concepts/async-api.md) | Spec for event-driven API contracts |
| [RPC](concepts/rpc.md) | Call a function on a remote server |

</details>

<details>
<summary><b>Networking & Protocols</b> <code>91 concepts</code></summary>
<br>

| Concept | One-liner |
|---------|-----------|
| [AMQP](concepts/amqp.md) | Standard protocol for message queuing |
| [Anycast](concepts/anycast.md) | Route to nearest server with same IP |
| [ARP](concepts/arp.md) | Map IP addresses to MAC addresses |
| [BGP](concepts/bgp.md) | Protocol that routes internet traffic globally |
| [Broadcast](concepts/broadcast.md) | Send data to all devices on network |
| [Brotli](concepts/brotli.md) | Modern compression for web content |
| [Cache Control](concepts/cache-control.md) | HTTP header controlling cache behavior |
| [Chunked Transfer](concepts/chunked-transfer.md) | Stream HTTP data in pieces |
| [CIDR](concepts/cidr.md) | Compact notation for IP address ranges |
| [CNAME vs A Record](concepts/cname-vs-a-record.md) | Alias vs direct IP DNS records |
| [Content Negotiation](concepts/content-negotiation.md) | Client and server agree on format |
| [CORS](concepts/cors.md) | Browser blocks cross-origin unless allowed |
| [CORS Preflight](concepts/cors-preflight.md) | OPTIONS request before actual cross-origin call |
| [DHCP](concepts/dhcp.md) | Auto-assign IP addresses to devices |
| [DNS](concepts/dns.md) | Translates domain names into IP addresses |
| [DNS over HTTPS](concepts/dns-over-https.md) | Encrypt DNS queries over HTTPS |
| [DNS over TLS](concepts/dns-over-tls.md) | Encrypt DNS queries over TLS |
| [DNSSEC](concepts/dnssec.md) | Authenticate DNS responses cryptographically |
| [DPDK](concepts/dpdk.md) | Bypass kernel for fast packet processing |
| [ETag](concepts/etag.md) | Version tag for HTTP cache validation |
| [Forward Proxy](concepts/forward-proxy.md) | Proxy that acts on behalf of clients |
| [FTP vs SFTP](concepts/ftp-vs-sftp.md) | File transfer, plain vs encrypted |
| [GraphQL](concepts/graphql.md) | Ask for exactly the data you need |
| [gRPC](concepts/grpc.md) | Fast binary RPC framework |
| [Head of Line Blocking](concepts/head-of-line-blocking.md) | One slow request blocks the rest |
| [HTTP](concepts/http.md) | Protocol powering the web |
| [HTTP/2](concepts/http2.md) | Multiplexed, binary HTTP upgrade |
| [HTTP/3](concepts/http3.md) | HTTP over QUIC, faster connections |
| [ICE](concepts/ice.md) | Find the best path for peer connections |
| [ICMP](concepts/icmp.md) | Network diagnostic and error messages |
| [IMAP vs POP3](concepts/imap-vs-pop3.md) | Sync email vs download and delete |
| [IP Address](concepts/ip-address.md) | Unique number identifying a device |
| [IPv4 vs IPv6](concepts/ipv4-vs-ipv6.md) | 32-bit vs 128-bit address space |
| [iSCSI](concepts/iscsi.md) | Block storage over IP networks |
| [Keep Alive](concepts/keep-alive.md) | Reuse TCP connections for multiple requests |
| [MAC Address](concepts/mac-address.md) | Hardware identifier for network interfaces |
| [MQTT](concepts/mqtt.md) | Lightweight messaging for IoT devices |
| [mTLS](concepts/mtls.md) | Both sides verify certificates |
| [Multicast](concepts/multicast.md) | Send data to a group of receivers |
| [Multiplexing](concepts/multiplexing.md) | Multiple streams over one connection |
| [MX Record](concepts/mx-record.md) | DNS record pointing to mail server |
| [NAT Gateway](concepts/nat-gateway.md) | Let private IPs reach the internet |
| [NATS](concepts/nats.md) | Lightweight cloud-native messaging system |
| [NFS](concepts/nfs.md) | Share files over a network |
| [OAuth 2.0](concepts/oauth.md) | Let apps access accounts without passwords |
| [OSI Model](concepts/osi-model.md) | Seven layers of network communication |
| [OSPF](concepts/ospf.md) | Interior routing protocol for IP networks |
| [Overlay Network](concepts/overlay-network.md) | Virtual network on top of physical one |
| [Peering](concepts/peering.md) | Direct connection between two networks |
| [Port](concepts/port.md) | Number identifying a network service |
| [Private Link](concepts/private-link.md) | Access cloud services without public internet |
| [Proxy Server](concepts/proxy-server.md) | Intermediary between client and server |
| [PTR Record](concepts/ptr-record.md) | Reverse DNS, IP to domain lookup |
| [QUIC](concepts/quic.md) | UDP-based transport, faster than TCP |
| [Range Request](concepts/range-request.md) | Download part of a file via HTTP |
| [RDMA](concepts/rdma.md) | Access remote memory without CPU overhead |
| [Redirect](concepts/redirect.md) | Send client to a different URL |
| [SDP](concepts/sdp.md) | Describe multimedia session parameters |
| [SIP](concepts/sip.md) | Protocol for voice and video calls |
| [SMB](concepts/smb.md) | Windows file sharing protocol |
| [SMTP](concepts/smtp.md) | Protocol for sending email |
| [SNI](concepts/sni.md) | Host multiple TLS sites on one IP |
| [Socket](concepts/socket.md) | Endpoint for two-way network communication |
| [SOCKS Proxy](concepts/socks-proxy.md) | Route any traffic through a proxy |
| [SSL Termination](concepts/ssl-termination.md) | Decrypt TLS at the load balancer |
| [STOMP](concepts/stomp.md) | Simple text protocol for message brokers |
| [STUN](concepts/stun.md) | Discover your public IP behind NAT |
| [Subnet](concepts/subnet.md) | Subdivide a network into smaller parts |
| [TCP](concepts/tcp.md) | Reliable, ordered data delivery protocol |
| [TCP/IP Model](concepts/tcp-ip-model.md) | Four-layer internet protocol stack |
| [TCP vs UDP](concepts/tcp-vs-udp.md) | Reliable vs fast, pick one |
| [TLS](concepts/tls.md) | Encrypt data in transit |
| [Traceroute](concepts/traceroute.md) | Trace the path packets take |
| [Transit Gateway](concepts/transit-gateway.md) | Hub connecting multiple VPCs together |
| [Transparent Proxy](concepts/transparent-proxy.md) | Proxy that intercepts without client config |
| [TTL](concepts/ttl.md) | How long data stays valid |
| [TURN](concepts/turn.md) | Relay traffic when direct connection fails |
| [TXT Record](concepts/txt-record.md) | Arbitrary text in DNS records |
| [UDP](concepts/udp.md) | Fast, connectionless data delivery |
| [Unicast](concepts/unicast.md) | Send data to one specific receiver |
| [Vary Header](concepts/vary-header.md) | Tell caches which headers matter |
| [VPN](concepts/vpn.md) | Encrypted tunnel to a private network |
| [WebRTC](concepts/webrtc.md) | Real-time peer-to-peer communication |
| [WebSocket](concepts/websocket.md) | Persistent two-way client-server connection |
| [WireGuard](concepts/wireguard.md) | Modern, fast, simple VPN tunnel |
| [Network Segmentation](concepts/network-segmentation.md) | Divide network into isolated zones |
| [Security Group](concepts/security-group.md) | Virtual firewall for cloud instances |
| [Firewall](concepts/firewall.md) | Block or allow network traffic |
| [Server Push](concepts/server-push.md) | Server sends data before client asks |
| [Compression](concepts/compression.md) | Reduce data size for faster transfer |
| [IP Allowlist](concepts/ip-allowlist.md) | Only allow specific IP addresses |

</details>

<details>
<summary><b>Data & Databases</b> <code>87 concepts</code></summary>
<br>

| Concept | One-liner |
|---------|-----------|
| [ACID](concepts/acid.md) | Four guarantees for database transactions |
| [B-Tree](concepts/b-tree.md) | Balanced tree for fast disk lookups |
| [Block Storage](concepts/block-storage.md) | Raw storage volumes for VMs |
| [Bloom Filter](concepts/bloom-filter.md) | Probably yes, definitely no data structure |
| [CAP Theorem](concepts/cap-theorem.md) | Pick two: consistency, availability, partition |
| [Cache Aside](concepts/cache-aside.md) | Load into cache on demand |
| [Cache Invalidation](concepts/cache-invalidation.md) | Remove stale data from cache |
| [Change Data Capture](concepts/change-data-capture.md) | Stream database changes as events |
| [Column Store](concepts/column-store.md) | Store data by column for analytics |
| [Composite Key](concepts/composite-key.md) | Primary key from multiple columns |
| [Connection Pool](concepts/connection-pool.md) | Reuse database connections for efficiency |
| [Connection Pooling](concepts/connection-pooling.md) | Share connections across requests |
| [Connection String](concepts/connection-string.md) | URL-like config to connect to a database |
| [Cursor Pagination](concepts/cursor-pagination.md) | Page through results with a pointer |
| [Data Catalog](concepts/data-catalog.md) | Searchable inventory of data assets |
| [Data Fabric](concepts/data-fabric.md) | Unified data access across environments |
| [Data Lake vs Data Warehouse](concepts/data-lake-vs-data-warehouse.md) | Raw dump vs cleaned and structured |
| [Data Lineage](concepts/data-lineage.md) | Track where data came from |
| [Data Masking](concepts/data-masking.md) | Hide sensitive data in non-prod |
| [Data Mesh](concepts/data-mesh.md) | Decentralized domain-owned data |
| [Data Observability](concepts/data-observability.md) | Monitor data health and quality |
| [Data Quality](concepts/data-quality.md) | Ensure data is accurate and complete |
| [Database Migration](concepts/database-migration.md) | Versioned changes to database schema |
| [Dbt](concepts/dbt.md) | Transform data inside the warehouse |
| [Delta Lake](concepts/delta-lake.md) | ACID transactions on data lakes |
| [Denormalization](concepts/denormalization.md) | Duplicate data for faster reads |
| [Dirty Read](concepts/dirty-read.md) | Read uncommitted data from another transaction |
| [Document Database](concepts/document-database.md) | Store data as JSON-like documents |
| [Embedded Database](concepts/embedded-database.md) | Database running inside your app process |
| [ETL vs ELT](concepts/etl-vs-elt.md) | Transform before or after loading |
| [Explain Plan](concepts/explain-plan.md) | Show how the database runs a query |
| [File Storage](concepts/file-storage.md) | Hierarchical storage with folders and files |
| [Foreign Key](concepts/foreign-key.md) | Link rows between two tables |
| [Full Text Search](concepts/full-text-search.md) | Search documents by word content |
| [Graph Database](concepts/graph-database.md) | Store data as nodes and relationships |
| [Iceberg](concepts/iceberg.md) | Open table format for huge datasets |
| [In-Memory Database](concepts/in-memory-database.md) | Store everything in RAM for speed |
| [Index](concepts/index.md) | Speed up queries by presorting data |
| [Inverted Index](concepts/inverted-index.md) | Map words to documents containing them |
| [Key-Value Store](concepts/key-value-store.md) | Simplest database: key in, value out |
| [Lakehouse](concepts/lakehouse.md) | Data lake with warehouse features |
| [LRU Cache](concepts/lru-cache.md) | Evict least recently used items first |
| [LSM Tree](concepts/lsm-tree.md) | Write-optimized tree structure for storage |
| [Materialized View](concepts/materialized-view.md) | Precomputed query results stored as table |
| [MVCC](concepts/mvcc.md) | Concurrent reads without locking |
| [Multi-Primary](concepts/multi-primary.md) | Multiple nodes accept writes simultaneously |
| [N+1 Problem](concepts/n-plus-one.md) | One query per row, should be one total |
| [Natural Key](concepts/natural-key.md) | Use real-world data as primary key |
| [NewSQL](concepts/newsql.md) | SQL databases that scale horizontally |
| [Normalization](concepts/normalization.md) | Organize data to reduce redundancy |
| [Object Storage](concepts/object-storage.md) | Store blobs with metadata at scale |
| [Offset Pagination](concepts/offset-pagination.md) | Skip N rows, take M rows |
| [Optimistic Locking](concepts/optimistic-locking.md) | Check for conflicts before committing |
| [ORC](concepts/orc.md) | Columnar storage format for Hadoop |
| [ORM](concepts/orm.md) | Map database rows to code objects |
| [Parquet](concepts/parquet.md) | Columnar file format for big data |
| [Partition](concepts/partition.md) | Split table data across storage units |
| [Pessimistic Locking](concepts/pessimistic-locking.md) | Lock rows before reading or writing |
| [Phantom Read](concepts/phantom-read.md) | New rows appear mid-transaction |
| [Primary Replica](concepts/primary-replica.md) | One writer, many readers |
| [Query Builder](concepts/query-builder.md) | Build SQL queries programmatically |
| [Query Planner](concepts/query-planner.md) | Optimizer choosing the best query path |
| [Read Committed](concepts/read-committed.md) | Only see committed data |
| [Read Replica](concepts/read-replica.md) | Copy of database for read scaling |
| [Read Uncommitted](concepts/read-uncommitted.md) | Lowest isolation, see uncommitted changes |
| [Replication](concepts/replication.md) | Copy data across multiple nodes |
| [Schema Evolution](concepts/schema-evolution.md) | Change data schemas without breaking consumers |
| [Schema Registry](concepts/schema-registry.md) | Central store for data schemas |
| [Serializable Isolation](concepts/serializable-isolation.md) | Strictest isolation, transactions look serial |
| [Sharding](concepts/sharding.md) | Split database into smaller pieces |
| [Slowly Changing Dimension](concepts/slowly-changing-dimension.md) | Track historical changes in dimensions |
| [Snapshot Isolation](concepts/snapshot-isolation.md) | Each transaction sees a frozen snapshot |
| [Snowflake ID](concepts/snowflake-id.md) | Unique, time-sorted distributed IDs |
| [Snowflake Schema](concepts/snowflake-schema.md) | Normalized star schema for data warehouses |
| [Star Schema](concepts/star-schema.md) | Central fact table with dimension tables |
| [Stored Procedure](concepts/stored-procedure.md) | Precompiled SQL code in the database |
| [Surrogate Key](concepts/surrogate-key.md) | Auto-generated ID with no business meaning |
| [Time Series Database](concepts/time-series-database.md) | Optimized for timestamped data |
| [Trigger](concepts/trigger.md) | Auto-run code on database events |
| [ULID](concepts/ulid.md) | Sortable unique ID with timestamp |
| [UUID](concepts/uuid.md) | Universally unique identifier |
| [Vacuum](concepts/vacuum.md) | Reclaim dead row space in databases |
| [Vector Database](concepts/vector-database.md) | Search by similarity, not exact match |
| [View](concepts/view.md) | Virtual table defined by a query |
| [WAL](concepts/wal.md) | Log changes before writing to disk |
| [Wide Column Store](concepts/wide-column-store.md) | Flexible columns per row at scale |
| [Write Ahead Log](concepts/write-ahead-log.md) | Durability by logging before writing |
| [Write Behind Cache](concepts/write-behind-cache.md) | Write to cache, sync to DB later |
| [Write Through Cache](concepts/write-through-cache.md) | Write to cache and DB simultaneously |

</details>

<details>
<summary><b>Security & Compliance</b> <code>85 concepts</code></summary>
<br>

| Concept | One-liner |
|---------|-----------|
| [API Key](concepts/api-key.md) | Simple token to authenticate API requests |
| [Argon2](concepts/argon2.md) | Memory-hard password hashing algorithm |
| [Asymmetric Encryption](concepts/asymmetric-encryption.md) | Public key encrypts, private key decrypts |
| [Attestation](concepts/attestation.md) | Proof that software is what it claims |
| [Attack Surface](concepts/attack-surface.md) | All possible points of unauthorized entry |
| [Bastion Host](concepts/bastion-host.md) | Hardened gateway to private networks |
| [Bcrypt](concepts/bcrypt.md) | Slow-by-design password hashing function |
| [Broken Authentication](concepts/broken-authentication.md) | Flaws that let attackers bypass login |
| [Bug Bounty](concepts/bug-bounty.md) | Pay hackers to find vulnerabilities |
| [Certificate Authority](concepts/certificate-authority.md) | Trusted entity that issues TLS certificates |
| [Certificate Pinning](concepts/certificate-pinning.md) | Accept only specific TLS certificates |
| [Command Injection](concepts/command-injection.md) | Attacker runs OS commands via input |
| [Content Security Policy](concepts/content-security-policy.md) | Browser rules blocking unsafe content |
| [Cookie Security](concepts/cookie-security.md) | Flags protecting cookies from attacks |
| [Cosign](concepts/cosign.md) | Sign and verify container images |
| [CSRF](concepts/csrf.md) | Trick users into unwanted actions |
| [CVE](concepts/cve.md) | Unique ID for a known vulnerability |
| [CVSS](concepts/cvss.md) | Score measuring vulnerability severity |
| [CWE](concepts/cwe.md) | Catalog of software weakness types |
| [DAST](concepts/dast.md) | Test running app for vulnerabilities |
| [DDoS](concepts/ddos.md) | Overwhelm a service with traffic |
| [Defense in Depth](concepts/defense-in-depth.md) | Multiple layers of security controls |
| [Dependency Confusion](concepts/dependency-confusion.md) | Install malicious package by name collision |
| [Dependency Pinning](concepts/dependency-pinning.md) | Lock dependency versions exactly |
| [Digital Signature](concepts/digital-signature.md) | Prove authenticity with cryptography |
| [Encryption at Rest](concepts/encryption-at-rest.md) | Encrypt stored data on disk |
| [Encryption in Transit](concepts/encryption-in-transit.md) | Encrypt data while being sent |
| [End-to-End Encryption](concepts/end-to-end-encryption.md) | Only sender and receiver can read |
| [Envelope Encryption](concepts/envelope-encryption.md) | Encrypt data key with master key |
| [FIDO2](concepts/fido2.md) | Passwordless authentication standard |
| [GDPR](concepts/gdpr.md) | EU data privacy regulation |
| [Hashing](concepts/hashing.md) | One-way function producing fixed output |
| [HIPAA](concepts/hipaa.md) | US healthcare data protection law |
| [HMAC](concepts/hmac.md) | Hash-based message authentication code |
| [HSM](concepts/hsm.md) | Hardware device that protects crypto keys |
| [HSTS](concepts/hsts.md) | Force HTTPS connections in browsers |
| [IAST](concepts/iast.md) | Security testing inside the running app |
| [IDOR](concepts/idor.md) | Access other users' data via IDs |
| [Insufficient Logging](concepts/insufficient-logging.md) | Not enough logs to detect attacks |
| [Intrusion Detection](concepts/intrusion-detection.md) | Monitor for suspicious network activity |
| [ISO 27001](concepts/iso-27001.md) | International info security standard |
| [Jump Server](concepts/jump-server.md) | Stepping stone to access private servers |
| [JWT](concepts/jwt.md) | Signed JSON token proving identity |
| [Key Rotation](concepts/key-rotation.md) | Replace cryptographic keys periodically |
| [KMS](concepts/kms.md) | Managed service for encryption keys |
| [Let's Encrypt](concepts/lets-encrypt.md) | Free automated TLS certificates |
| [MFA](concepts/mfa.md) | Require multiple proofs of identity |
| [OAuth Grant Type](concepts/oauth-grant-type.md) | Different flows for getting OAuth tokens |
| [OAuth Scope](concepts/oauth-scope.md) | Limit what an OAuth token can access |
| [OCSP](concepts/ocsp.md) | Check if a certificate is revoked |
| [OIDC](concepts/oidc.md) | Identity layer on top of OAuth |
| [OPA](concepts/opa.md) | General-purpose policy engine |
| [OWASP Top Ten](concepts/owasp-top-ten.md) | Top ten web security risks |
| [Passkey](concepts/passkey.md) | Passwordless login using device keys |
| [PCI DSS](concepts/pci-dss.md) | Payment card security standard |
| [Penetration Testing](concepts/penetration-testing.md) | Simulated attack to find vulnerabilities |
| [PII](concepts/pii.md) | Data that identifies a person |
| [PKI](concepts/pki.md) | Framework for managing digital certificates |
| [Policy as Code](concepts/policy-as-code.md) | Write security rules as code |
| [Principle of Least Privilege](concepts/principle-of-least-privilege.md) | Give minimum permissions needed |
| [Provenance](concepts/provenance.md) | Track origin and history of artifacts |
| [RBAC](concepts/rbac.md) | Permissions via roles, roles to users |
| [Red Teaming](concepts/red-teaming.md) | Simulate real attacks on your system |
| [Refresh Token](concepts/refresh-token.md) | Get new access tokens without re-login |
| [Responsible Disclosure](concepts/responsible-disclosure.md) | Report vulnerabilities privately first |
| [Salting](concepts/salting.md) | Add random data before hashing passwords |
| [Same Origin Policy](concepts/same-origin-policy.md) | Browser restricts cross-origin access |
| [SAML](concepts/saml.md) | XML-based single sign-on standard |
| [SAST](concepts/sast.md) | Scan source code for vulnerabilities |
| [SBOM](concepts/sbom.md) | List of all software components used |
| [SCA](concepts/sca.md) | Find vulnerabilities in dependencies |
| [Secret CI](concepts/secret-ci.md) | Manage secrets in CI/CD pipelines |
| [Secret Manager](concepts/secret-manager.md) | Secure storage for keys and passwords |
| [Security by Design](concepts/security-by-design.md) | Build security in from the start |
| [Security Headers](concepts/security-headers.md) | HTTP headers that improve security |
| [Security Misconfiguration](concepts/security-misconfiguration.md) | Insecure defaults left unchanged |
| [Sensitive Data Exposure](concepts/sensitive-data-exposure.md) | Leaking private data unintentionally |
| [Service Account](concepts/service-account.md) | Non-human identity for automation |
| [SIEM](concepts/siem.md) | Aggregate and analyze security logs |
| [Sigstore](concepts/sigstore.md) | Sign, verify, and protect software supply chain |
| [SOAR](concepts/soar.md) | Automate security incident response |
| [SOC2](concepts/soc2.md) | Trust standard for service organizations |
| [SQL Injection](concepts/sql-injection.md) | Inject malicious SQL through user input |
| [SSO](concepts/sso.md) | One login for multiple applications |
| [SSRF](concepts/ssrf.md) | Trick server into making internal requests |
| [Supply Chain Attack](concepts/supply-chain-attack.md) | Compromise software through dependencies |
| [Symmetric Encryption](concepts/symmetric-encryption.md) | Same key encrypts and decrypts |
| [SYN Flood](concepts/syn-flood.md) | Overwhelm server with half-open connections |
| [Threat Modeling](concepts/threat-modeling.md) | Identify and prioritize security threats |
| [TFSec](concepts/tfsec.md) | Static analysis for Terraform security |
| [TOTP](concepts/totp.md) | Time-based one-time passwords |
| [Trivy](concepts/trivy.md) | Scan containers for vulnerabilities |
| [Typosquatting](concepts/typosquatting.md) | Malicious packages with similar names |
| [WAF](concepts/waf.md) | Filter malicious HTTP traffic |
| [WAF Rules](concepts/waf-rules.md) | Patterns that block web attacks |
| [X.509](concepts/x509.md) | Standard format for digital certificates |
| [XML External Entity](concepts/xml-external-entity.md) | Attack via malicious XML parsing |
| [XSS](concepts/xss.md) | Inject scripts into web pages |
| [Zero Trust](concepts/zero-trust.md) | Never trust, always verify |
| [Session Management](concepts/session-management.md) | Track user state across requests |

</details>

<details>
<summary><b>AI & Machine Learning</b> <code>85 concepts</code></summary>
<br>

| Concept | One-liner |
|---------|-----------|
| [Activation Function](concepts/activation-function.md) | Non-linear function in neural networks |
| [Agent](concepts/agent.md) | AI that takes actions autonomously |
| [AI Safety](concepts/ai-safety.md) | Prevent harmful AI behavior |
| [Alignment](concepts/alignment.md) | Make AI follow human intentions |
| [Attention Mechanism](concepts/attention-mechanism.md) | Focus on relevant parts of input |
| [Backpropagation](concepts/backpropagation.md) | Train networks by propagating error backward |
| [Batch Inference](concepts/batch-inference.md) | Run predictions on many inputs at once |
| [Batch Normalization](concepts/batch-normalization.md) | Normalize layer inputs during training |
| [Beam Search](concepts/beam-search.md) | Keep top-k candidates during generation |
| [BERT](concepts/bert.md) | Bidirectional encoder for language understanding |
| [Bias Variance Tradeoff](concepts/bias-variance-tradeoff.md) | Balance underfitting and overfitting |
| [Chain of Thought](concepts/chain-of-thought.md) | Prompt LLMs to reason step by step |
| [CLIP](concepts/clip.md) | Connect images and text in one model |
| [Context Window](concepts/context-window.md) | Maximum tokens an LLM can process |
| [Convolution](concepts/convolution.md) | Filter that detects patterns in data |
| [Cross Validation](concepts/cross-validation.md) | Evaluate model on multiple data splits |
| [Deep Learning](concepts/deep-learning.md) | Neural networks with many layers |
| [Diffusion Model](concepts/diffusion-model.md) | Generate data by denoising random noise |
| [Distillation](concepts/distillation.md) | Compress big model into smaller one |
| [DPO](concepts/dpo.md) | Align LLMs with preference data directly |
| [Dropout](concepts/dropout.md) | Randomly disable neurons during training |
| [Embedding](concepts/embedding.md) | Convert data into numbers capturing meaning |
| [Eval](concepts/eval.md) | Measure model quality with benchmarks |
| [Experiment Tracking](concepts/experiment-tracking.md) | Log ML experiments for comparison |
| [Feature Store](concepts/feature-store.md) | Centralized storage for ML features |
| [Few-Shot Learning](concepts/few-shot-learning.md) | Learn from just a few examples |
| [Fine-tuning vs Prompting](concepts/fine-tuning-vs-prompting.md) | Train the model vs tell it what to do |
| [Flash Attention](concepts/flash-attention.md) | Memory-efficient attention computation |
| [Function Calling](concepts/function-calling.md) | LLMs invoke external tools via functions |
| [GAN](concepts/gan.md) | Two networks competing to generate data |
| [GPT](concepts/gpt.md) | Generative pre-trained transformer model |
| [Gradient Descent](concepts/gradient-descent.md) | Optimize by following the steepest slope |
| [Greedy Decoding](concepts/greedy-decoding.md) | Always pick the most likely next token |
| [Grounding](concepts/grounding.md) | Tie LLM output to factual sources |
| [Guardrails](concepts/guardrails.md) | Constraints on AI model outputs |
| [Hallucination](concepts/hallucination.md) | AI confidently generates wrong info |
| [Hyperparameter Tuning](concepts/hyperparameter-tuning.md) | Optimize training configuration settings |
| [KV Cache](concepts/kv-cache.md) | Cache key-value pairs for faster generation |
| [Learning Rate](concepts/learning-rate.md) | Step size for model weight updates |
| [LLM](concepts/llm.md) | Large language model for text generation |
| [LoRA](concepts/lora.md) | Efficient fine-tuning with low-rank adapters |
| [Loss Function](concepts/loss-function.md) | Measures how wrong the model is |
| [LSTM](concepts/lstm.md) | Recurrent network with long-term memory |
| [Mixture of Experts](concepts/mixture-of-experts.md) | Route inputs to specialized sub-models |
| [ML Pipeline](concepts/ml-pipeline.md) | Automated sequence of ML steps |
| [MLOps](concepts/mlops.md) | DevOps practices for machine learning |
| [Model Registry](concepts/model-registry.md) | Version and track ML models |
| [Model Serving](concepts/model-serving.md) | Deploy models to handle predictions |
| [Multimodal](concepts/multimodal.md) | AI handling text, images, and more |
| [Named Entity Recognition](concepts/named-entity-recognition.md) | Extract names, places, dates from text |
| [Neural Network](concepts/neural-network.md) | Layers of connected nodes that learn |
| [NLP](concepts/nlp.md) | Teach computers to understand language |
| [Object Detection](concepts/object-detection.md) | Find and locate objects in images |
| [OCR](concepts/ocr.md) | Extract text from images |
| [Overfitting](concepts/overfitting.md) | Model memorizes training data too well |
| [Pre-training](concepts/pre-training.md) | Initial training on massive datasets |
| [Prompt Engineering](concepts/prompt-engineering.md) | Craft inputs to get better AI outputs |
| [Pruning](concepts/pruning.md) | Remove unnecessary model weights |
| [QLoRA](concepts/qlora.md) | Quantized LoRA for even cheaper tuning |
| [Quantization](concepts/quantization.md) | Reduce model precision to save memory |
| [RAG](concepts/rag.md) | Search docs first, then ask the LLM |
| [Recurrent Neural Network](concepts/recurrent-neural-network.md) | Network with memory of past inputs |
| [Regularization](concepts/regularization.md) | Prevent overfitting with penalties |
| [RLHF](concepts/rlhf.md) | Train AI using human feedback rewards |
| [Semantic Segmentation](concepts/semantic-segmentation.md) | Label every pixel in an image |
| [Sentiment Analysis](concepts/sentiment-analysis.md) | Detect positive or negative tone |
| [Speculative Decoding](concepts/speculative-decoding.md) | Speed up generation with draft model |
| [Stable Diffusion](concepts/stable-diffusion.md) | Open-source image generation model |
| [Streaming Inference](concepts/streaming-inference.md) | Output tokens as they are generated |
| [System Prompt](concepts/system-prompt.md) | Hidden instructions that guide the AI |
| [Temperature](concepts/temperature.md) | Controls randomness in AI outputs |
| [Text Classification](concepts/text-classification.md) | Assign categories to text |
| [Tokenization](concepts/tokenization.md) | Split text into tokens for models |
| [Tokenizer](concepts/tokenizer.md) | Tool that converts text to tokens |
| [Tool Use](concepts/tool-use.md) | AI calls external tools for actions |
| [Top-p](concepts/top-p.md) | Sample from most likely tokens |
| [Transfer Learning](concepts/transfer-learning.md) | Reuse a trained model for new tasks |
| [Transformer](concepts/transformer.md) | Attention-based architecture behind LLMs |
| [Underfitting](concepts/underfitting.md) | Model too simple to capture patterns |
| [VAE](concepts/vae.md) | Generate data via learned latent space |
| [Vision Transformer](concepts/vision-transformer.md) | Apply transformer architecture to images |
| [Word Embedding](concepts/word-embedding.md) | Map words to dense vectors |
| [Word2Vec](concepts/word2vec.md) | Classic word embedding algorithm |
| [Zero-Shot Learning](concepts/zero-shot-learning.md) | Classify without any training examples |

</details>

<details>
<summary><b>Frontend & Web</b> <code>82 concepts</code></summary>
<br>

| Concept | One-liner |
|---------|-----------|
| [A/B Testing](concepts/a-b-testing.md) | Compare two versions with real users |
| [Abort Controller](concepts/abort-controller.md) | Cancel in-flight fetch requests |
| [Above the Fold](concepts/above-the-fold.md) | Content visible without scrolling |
| [Accessibility](concepts/accessibility.md) | Make apps usable for everyone |
| [ARIA](concepts/aria.md) | Attributes for screen reader support |
| [Bundler](concepts/bundler.md) | Combine JS files into optimized bundles |
| [Cache API](concepts/cache-api.md) | Programmatic cache in service workers |
| [Callback Hell](concepts/callback-hell.md) | Deeply nested async callbacks |
| [Capacitor](concepts/capacitor.md) | Run web apps as native mobile apps |
| [Code Splitting](concepts/code-splitting.md) | Load only the code you need now |
| [Component Library](concepts/component-library.md) | Reusable UI components in a package |
| [Cookie](concepts/cookie.md) | Small data stored in the browser |
| [Critical Rendering Path](concepts/critical-rendering-path.md) | Steps browser takes to first paint |
| [CSS-in-JS](concepts/css-in-js.md) | Write styles in JavaScript |
| [CSS Modules](concepts/css-modules.md) | Scoped CSS classes per component |
| [Cumulative Layout Shift](concepts/cumulative-layout-shift.md) | Measure visual stability of page |
| [Custom Elements](concepts/custom-elements.md) | Define your own HTML tags |
| [Debounce](concepts/debounce.md) | Wait until user stops typing |
| [Design System](concepts/design-system.md) | Unified design rules and components |
| [Design Tokens](concepts/design-tokens.md) | Design values as platform-agnostic variables |
| [Edge Rendering](concepts/edge-rendering.md) | Render pages at CDN edge locations |
| [Fetch API](concepts/fetch-api.md) | Modern browser API for HTTP requests |
| [First Input Delay](concepts/first-input-delay.md) | Time until page responds to interaction |
| [Flutter](concepts/flutter.md) | Cross-platform UI framework by Google |
| [Flux](concepts/flux.md) | Unidirectional data flow pattern |
| [Form Validation](concepts/form-validation.md) | Check user input before submitting |
| [Headless CMS](concepts/headless-cms.md) | Content API without a frontend |
| [Hot Module Replacement](concepts/hot-module-replacement.md) | Update code without full page reload |
| [Hydration](concepts/hydration.md) | Attach JS to server-rendered HTML |
| [I18n](concepts/i18n.md) | Adapt app for multiple languages |
| [IndexedDB](concepts/indexeddb.md) | Browser database for large structured data |
| [Infinite Scroll](concepts/infinite-scroll.md) | Load more content as user scrolls |
| [Intersection Observer](concepts/intersection-observer.md) | Detect when element enters viewport |
| [Islands Architecture](concepts/islands-architecture.md) | Static page with interactive islands |
| [ISR](concepts/isr.md) | Regenerate static pages on demand |
| [JAMstack](concepts/jamstack.md) | JavaScript, APIs, and Markup stack |
| [JSX](concepts/jsx.md) | HTML-like syntax inside JavaScript |
| [L10n](concepts/l10n.md) | Translate and adapt for a locale |
| [Largest Contentful Paint](concepts/largest-contentful-paint.md) | Time until biggest element renders |
| [Lazy Loading](concepts/lazy-loading.md) | Load resources only when needed |
| [Local Storage](concepts/local-storage.md) | Persistent key-value store in browser |
| [Minification](concepts/minification.md) | Remove whitespace to shrink code |
| [Mobile First](concepts/mobile-first.md) | Design for small screens first |
| [MPA](concepts/mpa.md) | Each page is a full server response |
| [Mutation Observer](concepts/mutation-observer.md) | Watch for DOM changes |
| [Offline First](concepts/offline-first.md) | App works without internet connection |
| [One-Way Data Flow](concepts/one-way-data-flow.md) | Data flows in one direction only |
| [Optimistic UI](concepts/optimistic-ui.md) | Show success before server confirms |
| [Partial Hydration](concepts/partial-hydration.md) | Hydrate only interactive parts |
| [Polyfill](concepts/polyfill.md) | Add missing browser features via code |
| [Progressive Web App](concepts/progressive-web-app.md) | Web app with native-like features |
| [React Native](concepts/react-native.md) | Build native mobile apps with React |
| [Reactivity](concepts/reactivity.md) | UI updates automatically when data changes |
| [Redux](concepts/redux.md) | Predictable state container for JS apps |
| [Resize Observer](concepts/resize-observer.md) | Detect when element changes size |
| [Responsive Design](concepts/responsive-design.md) | Layout adapts to any screen size |
| [Service Worker](concepts/service-worker.md) | Background script for offline and caching |
| [Session Storage](concepts/session-storage.md) | Per-tab storage cleared on close |
| [Shadow DOM](concepts/shadow-dom.md) | Encapsulated DOM inside a component |
| [Shared Worker](concepts/shared-worker.md) | Background thread shared across tabs |
| [Signals](concepts/signals.md) | Fine-grained reactive state primitives |
| [Skeleton Screen](concepts/skeleton-screen.md) | Placeholder shapes while loading |
| [Source Map](concepts/source-map.md) | Map minified code back to source |
| [SPA](concepts/spa.md) | Single page, dynamic content updates |
| [SSG](concepts/ssg.md) | Generate static HTML at build time |
| [SSR](concepts/ssr.md) | Render HTML on the server per request |
| [State Management](concepts/state-management.md) | Centralized app state handling |
| [Storybook](concepts/storybook.md) | Develop UI components in isolation |
| [Streaming SSR](concepts/streaming-ssr.md) | Send HTML chunks as they render |
| [Throttle](concepts/throttle.md) | Limit how often a function runs |
| [Time to First Byte](concepts/time-to-first-byte.md) | Time until first server response byte |
| [Transpiler](concepts/transpiler.md) | Convert code from one language to another |
| [Tree Shaking](concepts/tree-shaking.md) | Remove unused code from bundles |
| [Two-Way Binding](concepts/two-way-binding.md) | UI and data stay in sync both ways |
| [TypeScript](concepts/typescript.md) | JavaScript with static types |
| [Utility First CSS](concepts/utility-first-css.md) | Small utility classes instead of custom CSS |
| [Virtual DOM](concepts/virtual-dom.md) | In-memory DOM for efficient updates |
| [Web Assembly](concepts/web-assembly.md) | Run compiled code in the browser |
| [Web Components](concepts/web-components.md) | Native browser custom elements |
| [Web Manifest](concepts/web-manifest.md) | Metadata for installable web apps |
| [Web Vitals](concepts/web-vitals.md) | Core metrics for web performance |
| [Web Worker](concepts/web-worker.md) | Run scripts in background thread |

</details>

<details>
<summary><b>Testing & Observability</b> <code>82 concepts</code></summary>
<br>

| Concept | One-liner |
|---------|-----------|
| [Acceptance Test](concepts/acceptance-test.md) | Verify the feature meets requirements |
| [Alerting](concepts/alerting.md) | Notify when metrics cross thresholds |
| [APM](concepts/apm.md) | Monitor application performance in production |
| [Arrange Act Assert](concepts/arrange-act-assert.md) | Three-phase test structure pattern |
| [Baggage](concepts/baggage.md) | Propagate context across distributed services |
| [BDD](concepts/bdd.md) | Write tests as behavior specifications |
| [Benchmark](concepts/benchmark.md) | Measure code performance consistently |
| [Blameless Postmortem](concepts/blameless-postmortem.md) | Learn from incidents without blaming |
| [Branch Coverage](concepts/branch-coverage.md) | Percentage of code branches tested |
| [Burn Rate](concepts/burn-rate.md) | How fast you consume error budget |
| [Chaos Engineering](concepts/chaos-engineering.md) | Break things on purpose to improve |
| [Chaos Test](concepts/chaos-test.md) | Test system resilience with failures |
| [Code Coverage](concepts/code-coverage.md) | Percentage of code executed by tests |
| [Contract Testing](concepts/contract-testing.md) | Verify API agreements between services |
| [Counter](concepts/counter.md) | Metric that only goes up |
| [Dashboard](concepts/dashboard.md) | Visual display of key metrics |
| [Datadog](concepts/datadog.md) | Cloud monitoring and observability platform |
| [Distributed Tracing](concepts/distributed-tracing.md) | Follow requests across services |
| [ELK Stack](concepts/elk-stack.md) | Elasticsearch, Logstash, Kibana combo |
| [End-to-End Test](concepts/end-to-end-test.md) | Test the whole system like a user |
| [Error Budget](concepts/error-budget.md) | Allowed amount of downtime per period |
| [Fake](concepts/fake.md) | Working but simplified test implementation |
| [Fixture](concepts/fixture.md) | Predefined data for repeatable tests |
| [Flaky Test](concepts/flaky-test.md) | Test that passes and fails randomly |
| [Fluentd](concepts/fluentd.md) | Unified logging data collector |
| [Fuzz Testing](concepts/fuzz-testing.md) | Feed random data to find crashes |
| [Game Day](concepts/game-day.md) | Planned chaos exercise for teams |
| [Gauge](concepts/gauge.md) | Metric that goes up or down |
| [Given When Then](concepts/given-when-then.md) | Test structure for BDD scenarios |
| [Golden File Testing](concepts/golden-file-testing.md) | Compare output against saved snapshot |
| [Golden Signals](concepts/golden-signals.md) | Four key metrics: latency, traffic, errors, saturation |
| [Grafana](concepts/grafana.md) | Dashboard and visualization platform |
| [Hermetic Test](concepts/hermetic-test.md) | Test with no external dependencies |
| [Histogram](concepts/histogram.md) | Metric tracking value distribution |
| [Incident Management](concepts/incident-management.md) | Process for handling production outages |
| [Integration Test](concepts/integration-test.md) | Test how components work together |
| [Jaeger](concepts/jaeger.md) | Distributed tracing system |
| [Load Test](concepts/load-test.md) | Simulate many users hitting your app |
| [Log Aggregation](concepts/log-aggregation.md) | Collect logs from all services centrally |
| [Log Level](concepts/log-level.md) | Severity classification for log messages |
| [Log Rotation](concepts/log-rotation.md) | Archive old logs, delete oldest |
| [Mean Time Between Failures](concepts/mean-time-between-failures.md) | Average time system runs without failing |
| [Mean Time to Detect](concepts/mean-time-to-detect.md) | How quickly you spot a problem |
| [Mean Time to Resolve](concepts/mean-time-to-resolve.md) | How quickly you fix a problem |
| [Metrics](concepts/metrics.md) | Numeric measurements over time |
| [Mock](concepts/mock.md) | Fake object with expected behavior |
| [Monit](concepts/monit.md) | Lightweight process monitoring tool |
| [Mutation Testing](concepts/mutation-testing.md) | Modify code to check test quality |
| [New Relic](concepts/new-relic.md) | Observability platform for applications |
| [Observability](concepts/observability.md) | Understand systems from their outputs |
| [On-Call](concepts/on-call.md) | Being available for production incidents |
| [OpenTelemetry](concepts/opentelemetry.md) | Standard for traces, metrics, and logs |
| [PagerDuty](concepts/pagerduty.md) | Incident alerting and response platform |
| [Parallel Run](concepts/parallel-run.md) | Run old and new system simultaneously |
| [Percentile](concepts/percentile.md) | Value below which X% of data falls |
| [Prometheus](concepts/prometheus.md) | Pull-based metrics monitoring system |
| [Property Based Testing](concepts/property-based-testing.md) | Test with auto-generated inputs |
| [RED Method](concepts/red-method.md) | Rate, errors, duration for services |
| [Regression Test](concepts/regression-test.md) | Ensure old features still work |
| [Runbook](concepts/runbook.md) | Step-by-step incident response guide |
| [SLA](concepts/sla.md) | Service level agreement with customers |
| [SLI](concepts/sli.md) | Measurable indicator of service quality |
| [SLO](concepts/slo.md) | Target value for a service indicator |
| [Smoke Test](concepts/smoke-test.md) | Quick test that basics work |
| [Snapshot Testing](concepts/snapshot-testing.md) | Compare output to saved reference |
| [Soak Test](concepts/soak-test.md) | Long-running test for stability |
| [Span](concepts/span.md) | Single operation in a distributed trace |
| [Spy](concepts/spy.md) | Track function calls without replacing |
| [Statuspage](concepts/statuspage.md) | Public page showing system status |
| [Stress Test](concepts/stress-test.md) | Push system beyond normal limits |
| [Structured Logging](concepts/structured-logging.md) | Log as key-value pairs, not strings |
| [Stub](concepts/stub.md) | Return canned answers for testing |
| [Synthetic Monitoring](concepts/synthetic-monitoring.md) | Simulate users to detect issues |
| [TDD](concepts/tdd.md) | Write tests before writing code |
| [Test Container](concepts/test-container.md) | Disposable containers for integration tests |
| [Test Coverage](concepts/test-coverage.md) | How much code your tests exercise |
| [Test Double](concepts/test-double.md) | Generic term for fake test objects |
| [Test Factory](concepts/test-factory.md) | Generate test data programmatically |
| [Test Isolation](concepts/test-isolation.md) | Each test runs independently |
| [Test Parallelism](concepts/test-parallelism.md) | Run tests at the same time |
| [Test Pyramid](concepts/test-pyramid.md) | More unit tests, fewer E2E tests |
| [Testing Trophy](concepts/testing-trophy.md) | Focus on integration tests most |
| [Three Pillars](concepts/three-pillars.md) | Logs, metrics, traces for observability |
| [Trace Context](concepts/trace-context.md) | W3C standard for trace propagation |
| [Trace ID](concepts/trace-id.md) | Unique ID linking related spans |
| [Unit Test](concepts/unit-test.md) | Test a single function in isolation |
| [USE Method](concepts/use-method.md) | Utilization, saturation, errors for resources |
| [Zipkin](concepts/zipkin.md) | Distributed tracing system |

</details>

<details>
<summary><b>Programming Concepts</b> <code>83 concepts</code></summary>
<br>

| Concept | One-liner |
|---------|-----------|
| [Abstract Class](concepts/abstract-class.md) | Class that can't be instantiated directly |
| [Algebraic Data Type](concepts/algebraic-data-type.md) | Types composed of sums and products |
| [Annotation](concepts/annotation.md) | Metadata attached to code elements |
| [AOT Compilation](concepts/aot-compilation.md) | Compile before running, not during |
| [Arrow](concepts/arrow.md) | Columnar in-memory data format |
| [Async/Await](concepts/async-await.md) | Write async code that looks synchronous |
| [Atomic Operation](concepts/atomic-operation.md) | Operation that completes fully or not at all |
| [Big-O](concepts/big-o.md) | Measure algorithm efficiency growth rate |
| [Borrow Checker](concepts/borrow-checker.md) | Rust's compile-time memory safety enforcer |
| [Bytecode](concepts/bytecode.md) | Intermediate code for virtual machines |
| [Callback](concepts/callback.md) | Function passed to another function |
| [Channel](concepts/channel.md) | Typed pipe for goroutine communication |
| [Closure](concepts/closure.md) | Function that captures surrounding variables |
| [Code Smell](concepts/code-smell.md) | Hint that something needs refactoring |
| [Communicating Sequential Processes](concepts/communicating-sequential-processes.md) | Concurrent processes sharing via channels |
| [Compile Time vs Runtime](concepts/compile-time-vs-runtime.md) | Build phase vs execution phase |
| [Concurrency](concepts/concurrency.md) | Handle multiple tasks at overlapping times |
| [Concurrency vs Parallelism](concepts/concurrency-vs-parallelism.md) | Juggling tasks vs doing them simultaneously |
| [Coroutine](concepts/coroutine.md) | Suspendable function for async work |
| [Currying](concepts/currying.md) | Transform multi-arg function into chain |
| [Deadlock](concepts/deadlock.md) | Two threads waiting for each other forever |
| [Deserialization](concepts/deserialization.md) | Convert stored data back into objects |
| [Eager Evaluation](concepts/eager-evaluation.md) | Compute values immediately when defined |
| [Encoding](concepts/encoding.md) | Convert data to a specific format |
| [Event Loop](concepts/event-loop.md) | Single thread handling async callbacks |
| [Exit Code](concepts/exit-code.md) | Number indicating process success or failure |
| [Functional Programming](concepts/functional-programming.md) | Program with pure functions, no side effects |
| [Functor](concepts/functor.md) | Type you can map a function over |
| [Garbage Collection](concepts/garbage-collection.md) | Auto-free unused memory |
| [Generator](concepts/generator.md) | Function that yields values one at a time |
| [Generics](concepts/generics.md) | Write code that works with any type |
| [Goroutine](concepts/goroutine.md) | Lightweight thread in Go |
| [Green Thread](concepts/green-thread.md) | User-space thread managed by runtime |
| [Hash Table](concepts/hash-table.md) | Key-value store with O(1) average lookup |
| [Higher Order Function](concepts/higher-order-function.md) | Function taking or returning functions |
| [Immutability](concepts/immutability.md) | Data that cannot be changed after creation |
| [Inheritance vs Composition](concepts/inheritance-vs-composition.md) | Extend behavior by IS-A vs HAS-A |
| [Interfaces](concepts/interfaces.md) | Contract defining what methods exist |
| [Interpreter](concepts/interpreter.md) | Execute code line by line |
| [Iterator](concepts/iterator.md) | Object that produces values one by one |
| [JIT Compilation](concepts/jit-compilation.md) | Compile code while the program runs |
| [Lazy Evaluation](concepts/lazy-evaluation.md) | Compute values only when needed |
| [Lock-Free](concepts/lock-free.md) | Concurrent access without locks |
| [Macro](concepts/macro.md) | Code that generates code at compile time |
| [Map Filter Reduce](concepts/map-filter-reduce.md) | Transform, select, and combine collections |
| [Marshalling](concepts/marshalling.md) | Convert objects to transferable format |
| [Memory Safety](concepts/memory-safety.md) | Prevent invalid memory access bugs |
| [Metaprogramming](concepts/metaprogramming.md) | Code that writes or modifies code |
| [Monad](concepts/monad.md) | Chainable type wrapping a value |
| [Monkeypatching](concepts/monkeypatching.md) | Modify code at runtime dynamically |
| [Mutex](concepts/mutex.md) | Lock ensuring one thread at a time |
| [Null Safety](concepts/null-safety.md) | Prevent null reference errors at compile time |
| [Option Type](concepts/option-type.md) | Explicitly represent presence or absence |
| [Ownership](concepts/ownership.md) | Each value has one owner in Rust |
| [Parallelism](concepts/parallelism.md) | Do multiple things at the same time |
| [Pattern Matching](concepts/pattern-matching.md) | Destructure and branch on shape of data |
| [Pipe](concepts/pipe.md) | Connect output of one process to another |
| [Polymorphism](concepts/polymorphism.md) | Same interface, different implementations |
| [Process](concepts/process.md) | Running instance of a program |
| [Promise](concepts/promise.md) | Placeholder for a future async result |
| [Pure Function](concepts/pure-function.md) | Same input always gives same output |
| [Race Condition](concepts/race-condition.md) | Bug from unpredictable timing of operations |
| [Recursion](concepts/recursion.md) | Function that calls itself |
| [Red-Black Tree](concepts/red-black-tree.md) | Self-balancing binary search tree |
| [Reference Counting](concepts/reference-counting.md) | Track how many pointers to an object |
| [Reflection](concepts/reflection.md) | Inspect and modify code at runtime |
| [Result Type](concepts/result-type.md) | Represent success or failure explicitly |
| [Semaphore](concepts/semaphore.md) | Limit concurrent access to a resource |
| [Serialization](concepts/serialization.md) | Convert objects to storable format |
| [Side Effect](concepts/side-effect.md) | Function that changes external state |
| [Signal](concepts/signal.md) | OS notification sent to a process |
| [Skip List](concepts/skip-list.md) | Probabilistic sorted data structure |
| [Stdin Stdout Stderr](concepts/stdin-stdout-stderr.md) | Standard input, output, error streams |
| [Technical Debt](concepts/technical-debt.md) | Shortcuts now, cleanup cost later |
| [Thread](concepts/thread.md) | Lightweight unit of execution in a process |
| [Traits](concepts/traits.md) | Shared behavior definitions in Rust |
| [Trie](concepts/trie.md) | Tree for fast prefix lookups |
| [AST](concepts/ast.md) | Tree representation of parsed code |
| [Base Properties](concepts/base-properties.md) | Shared defaults for a group of configs |
| [Refactoring](concepts/refactoring.md) | Improve code without changing behavior |
| [Actor Model](concepts/actor-model.md) | Concurrency via isolated message-passing actors |

</details>

<details>
<summary><b>Developer Tools & Workflow</b> <code>82 concepts</code></summary>
<br>

| Concept | One-liner |
|---------|-----------|
| [Branch by Abstraction](concepts/branch-by-abstraction.md) | Swap implementations without feature branches |
| [Changelog](concepts/changelog.md) | Record of notable project changes |
| [Codespace](concepts/codespace.md) | Cloud-hosted development environment |
| [Commit Lint](concepts/commit-lint.md) | Enforce commit message conventions |
| [Conventional Commits](concepts/conventional-commits.md) | Structured commit message format |
| [DAP](concepts/dap.md) | Standard protocol for debuggers |
| [Devcontainer](concepts/devcontainer.md) | Dev environment defined in a container |
| [Dotenv](concepts/dotenv.md) | Load env vars from a .env file |
| [Dotfiles](concepts/dotfiles.md) | Configuration files for your tools |
| [Editorconfig](concepts/editorconfig.md) | Consistent coding style across editors |
| [Env File](concepts/env-file.md) | File storing environment variables |
| [ESLint](concepts/eslint.md) | Pluggable JavaScript linting tool |
| [Formatter](concepts/formatter.md) | Auto-format code to consistent style |
| [Git Bisect](concepts/git-bisect.md) | Binary search for the bad commit |
| [Git Blame](concepts/git-blame.md) | See who changed each line |
| [Git Cherry Pick](concepts/git-cherry-pick.md) | Apply a single commit to another branch |
| [Git Flow](concepts/git-flow.md) | Branching model with release branches |
| [Git Hook](concepts/git-hook.md) | Script triggered by git events |
| [GitHub Actions](concepts/github-actions.md) | CI/CD built into GitHub |
| [GitHub Flow](concepts/github-flow.md) | Simple branch and merge workflow |
| [Git Merge](concepts/git-merge.md) | Combine two branches together |
| [Gitpod](concepts/gitpod.md) | Cloud dev environments from a URL |
| [Git Rebase](concepts/git-rebase.md) | Replay commits on top of another branch |
| [Git Reflog](concepts/git-reflog.md) | History of all ref changes locally |
| [Git Stash](concepts/git-stash.md) | Temporarily save uncommitted changes |
| [Git Submodule](concepts/git-submodule.md) | Embed one git repo inside another |
| [Git Tag](concepts/git-tag.md) | Named reference to a specific commit |
| [Git Worktree](concepts/git-worktree.md) | Multiple working dirs for one repo |
| [Husky](concepts/husky.md) | Git hooks for Node.js projects |
| [IDE](concepts/ide.md) | Feature-rich code editor |
| [Job](concepts/job.md) | Single task in a CI/CD pipeline |
| [Just](concepts/just.md) | Simple command runner like make |
| [Linter](concepts/linter.md) | Tool that checks code for problems |
| [Lint Staged](concepts/lint-staged.md) | Run linters only on staged files |
| [Lockfile](concepts/lockfile.md) | Pins exact dependency versions |
| [LSP](concepts/lsp.md) | Standard protocol for editor intelligence |
| [Makefile](concepts/makefile.md) | Define build tasks with make |
| [Matrix Build](concepts/matrix-build.md) | Run CI across multiple configurations |
| [Nix](concepts/nix.md) | Reproducible builds and environments |
| [Package Manager](concepts/package-manager.md) | Install and manage project dependencies |
| [Pre-commit Hook](concepts/pre-commit-hook.md) | Run checks before each commit |
| [Prettier](concepts/prettier.md) | Opinionated code formatter |
| [Release Please](concepts/release-please.md) | Automate releases from conventional commits |
| [REPL](concepts/repl.md) | Interactive code execution loop |
| [Reproducible Build](concepts/reproducible-build.md) | Same source always produces same binary |
| [Semantic Release](concepts/semantic-release.md) | Auto-version based on commit messages |
| [Semantic Versioning](concepts/semantic-versioning.md) | Major.minor.patch version scheme |
| [Self-Hosted Runner](concepts/self-hosted-runner.md) | Run CI on your own machines |
| [Shebang](concepts/shebang.md) | First line telling which interpreter to use |
| [Shell Script](concepts/shell-script.md) | Automate tasks with shell commands |
| [Step](concepts/step.md) | Single action inside a CI job |
| [Supervisor](concepts/supervisor.md) | Keep processes running automatically |
| [Taskfile](concepts/taskfile.md) | YAML-based task runner |
| [Terminal Multiplexer](concepts/terminal-multiplexer.md) | Multiple terminals in one window |
| [Tmux](concepts/tmux.md) | Terminal multiplexer for session management |
| [Trunk Based Development](concepts/trunk-based-development.md) | Everyone commits to main frequently |
| [Workflow](concepts/workflow.md) | Sequence of automated CI/CD steps |
| [CSP](concepts/csp.md) | Content Security Policy for browsers |
| [Datadog](concepts/datadog.md) | Cloud monitoring and observability platform |
| [Docker Compose](concepts/docker-compose.md) | Define multi-container apps in YAML |
| [Flyway](concepts/flyway.md) | Database migration version control |
| [Grafana](concepts/grafana.md) | Dashboard and visualization platform |
| [Rsync](concepts/rsync.md) | Efficient file synchronization tool |
| [SSH Tunnel](concepts/ssh-tunnel.md) | Encrypted port forwarding over SSH |
</details>

---

## Want to contribute?

See [CONTRIBUTING.md](CONTRIBUTING.md). The short version:

1. Pick a concept that's missing
2. Write it using the format above (keep it short!)
3. Open a PR with the title `add: concept-name`

**Concept ideas that need someone to write them:**
`Service Level Objective Template` · `Dependency Graph` · `Build Cache` · `Multi-Tenancy` · `Cell-Based Architecture` · `Data Locality` · `Copy-on-Write` · `Memory-Mapped File` · `Consensus Algorithm` · `Bloom Clock` · `Merkle Tree` · `Zero-Copy` · `io_uring` · `Capability-Based Security` · `Formal Verification`

---

<p align="center">
  <sub>If this helped you, consider giving it a star. It helps others find it too.</sub>
</p>
