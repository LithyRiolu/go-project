// Copyright (c) 2018, The TurtleCoin Developers
// Copyright (c) 2019-2020 The Lithe Project
//
// Please see the included LICENSE file for more information.

package main

const (
	stashVersion                = "0.1"
	urlCryptoCompareCCX         = "https://min-api.cryptocompare.com/data/price?fsym=CCX&tsyms=USD"
	logFileFilename             = "Stash.log"
	urlBlockExplorer            = "https://explorer.conceal.network//"
	dbFilename                  = "settings.db"
	numberTransactionsToDisplay = 20

	// default remote node - @NOTE: Taken from seed list CryptoNoteConfig.h
	defaultRemoteDaemonAddress = "212.237.59.97"
	defaultRemoteDaemonPort    = "15000"
	defaultRemoteDaemonName    = "Gamma"
	defaultRemoteDaemonSSL     = false
)