<p align="center">
    <img src="./sureThing.png" width="70" height="100" alt="CROSS Logo"/>
</p>

<h3 align="center">Transparency-Contract</i></h3>
<h4 align="center"><i>Extension of <a href="https://github.com/inesc-id/SureThingCore">LCT Contract</a> developed
by <a href="https://github.com/PedroMatias98">Pedro Matias</a></i></h4>
<h4 align="center"><i>(Protobuf + OpenAPI)</i></h4>

---

<p align = "center">Protobuf data type definitions and API service specification of Location Certificate Transparency</p>

## Structure

| Directory                                        |          Description           |
|:-------------------------------------------------|:------------------------------:|
| [Merkle-Tree-Contract](Merkle-Tree-Contract)     |    Contract for Merkle-Tree    |
| [Ledger-Contract](Ledger-Contract)               |    Contract for Ledger API     |
| [Ledger-Contract-Lite](Ledger-Contract-Lite)     | Contract for Ledger Lite API   |
| [Monitor-Contract](Monitor-Contract)             |    Contract for Monitor API    |
| [Auditor-Contract](Auditor-Contract)             |    Contract for Auditor API    |
| [Verifier-Contract](Verifier-Contract)           |   Contract for Verifier API    |
| [Verifier-Contract-Lite](Verifier-Contract-Lite) | Contract for Verifier Lite API |
| [CA-Contract](CA-Contract)                       |      Contract for CA API       |

## Introduction

Location Certificate Transparency (LCT) is a framework of logs, monitors, and auditors created to help mobile users and
location-based service providers oversee location certificates (LCerts) issued or provided to them. LCerts bind
locations, at specific time, to users (provers). Similar
to [Certificate Transparency (CT)](https://certificate.transparency.dev/) that improves the web PKI (Public key
infrastructure), LCT provides an easy way to find misissued or rogue LCerts and strengthens the location certification
systems by creating publicly auditable records of certificate issuance. All issued LCerts should be published to public
LCT logs.

### Benefits of LCT

- Earlier Detection
    - LCT helps detect unauthorized certificates faster.
    - Users can identify any certificate issued without express approval or outside their policy.
- Faster Mitigation
    - Using LCT helps users identify which certificate requires revocation, allowing them to quickly communicate and
      shortening the revocation process of a certificate.
- Better Insight
    - LCT provides public insight into the location certification systems, giving anyone the ability to observe and
      verify the system's health and integrity.
- Strong Security
    - LCT strengthens the chain of trust on location certification systems.
    - Verifying identities and issuing high-assurance location certificates.

### Main Components

The following are the main components of the LCT framework:

1) **Certificate Log**: Certificate logs maintain records of all issued certificates. Multiple independent logs are
   required to allow for backups in case of a log failure or log operator is compromised and also to guarantee consensus
   on log’s activities and avoid collusion. The certificate log is:
    - Append only: Certificates can only be added to the log; they can’t be deleted, modified, or retroactively
      inserted.
    - Cryptographically assured: Log uses Merkle Tree Hash to prevent tampering.
    - Publicly auditable: Anyone can query the log and look for misused or rogue certificates. All certificate logs must
      publicly advertise their URLs and public key.

2) **Certificate Monitor**: A certificate monitor is a service that watches the certificate logs for suspicious
   activities and can fetch information from the logs.

3) **Certificate Auditor**: Certificate auditors check the log to verify that its consistent with other replicated logs,
   that new entries have been added, and that the log has not been corrupted (e.g., inserting, deleting, or modifying a
   certificate). Auditors could be a standalone service or could be a secondary function of a monitor.

### Extra Components

1) **Demo Prover**: Example of a Prover, that can create Location Claims and can submit them to a Verifier. It can also
   ask for Audit Proofs to a Certificate Auditor.
2) **Demo Verifier**: Example of a Verifier that can create Location Certificates and can store them in a Certificate
   Log. It can also use a Certificate Monitor to get stored Location Certificates from the Certificate Log.
3) **CA**: CA that is responsible for signing Certificate Signing Requests.
4) **CertificateRequester**: CertificateRequester is a module that allows the generation of Keys and Certificates for a module.

## Authors

| Name              |         University         |                                                                                                                                                                                         More Info                                                                                                                                                                                          |
|:------------------|:--------------------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| Rafael Figueiredo | Instituto Superior Técnico |             [<img src="https://i.ibb.co/brG8fnX/mail-6.png" width="17">](mailto:rafafigoalexandre@gmail.com "rafafigoalexandre@gmail.com") [<img src="https://github.githubassets.com/favicon.ico" width="17">](https://github.com/rafafigo "rafafigo") [<img src="https://i.ibb.co/TvQPw7N/linkedin-logo.png" width="17">](https://www.linkedin.com/in/rafafigo/ "rafafigo")              |
| Tiago Fonseca     | Instituto Superior Técnico | [<img src="https://i.ibb.co/brG8fnX/mail-6.png" width="17">](mailto:tiagoatfonseca@gmail.com "tiagoatfonseca@gmail.com") [<img src="https://github.githubassets.com/favicon.ico" width="17">](https://github.com/TiagoFonseca99 "TiagoFonseca99") [<img src="https://i.ibb.co/TvQPw7N/linkedin-logo.png" width="17">](https://www.linkedin.com/in/tiago-fonseca-167275197/ "tiagofonseca") |
