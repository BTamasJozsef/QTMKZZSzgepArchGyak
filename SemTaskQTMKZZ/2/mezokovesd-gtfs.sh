#!/bin/bash

download_url="https://gtfs.kti.hu/public-gtfs/volanbusz_gtfs.zip"
download_folder="gtfs_downloaded"
unzipped_folder="gtfs_unzipped"
lakohely="Mezőkövesd"

download_and_unzip(){
	wget -N "$download_url" -P "$download_folder"
	unzip -o "$download_folder/*.zip" -d "$unzipped_folder"
}

listing_routes(){
	echo "Jaratszamok $lakohely-rol:"
	cat "$unzipped_folder/routes.txt" | grep "$lakohely" | cut -d, -f3

	echo "Jaratszamok $lakohely-re:"
	cat "$unzipped_folder/routes.txt" | grep "$lakohely" | cut -d, -f3
}

download_and_unzip
listing_routes