#!/bin/bash 
set -u
set -e

reGenesisNode(){
	./reGenesis.sh pblkchain
}

deleteLogsFiles(){

	rm -r logs/*
}

reGenesisNode()