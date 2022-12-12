#!/bin/sh

cd Merkle-Tree-Contract
mvn clean install
cd ../CA-Contract
mvn clean install
cd ../Ledger-Contract
mvn clean install
cd ../Auditor-Contract
mvn clean install
cd ../Monitor-Contract
mvn clean install
cd ../Verifier-Contract
mvn clean install