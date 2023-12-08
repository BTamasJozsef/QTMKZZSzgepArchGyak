#!/bin/bash

download_url="https://gtfs.kti.hu/public-gtfs/volanbusz_gtfs.zip"
downloaded="gtfs_downloaded"
unzipped="gtfs_unzipped"
place="Mezőkövesd"

download_and_unzip(){
	wget -N "$download_url" -P "$downloaded"
	unzip -o "$downloaded/*.zip" -d "$unzipped"
}

listing_routes(){
	echo "Jaratszamok $lakohely-rol:"
	cat "$unzipped/routes.txt" | grep ",$place" | cut -d, -f4

	echo "Jaratszamok $lakohely-re:"
	cat "$unzipped/routes.txt" | grep "$place," | cut -d, -f4
}

download_and_unzip
listing_routes