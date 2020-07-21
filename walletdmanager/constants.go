// Copyright (c) 2018, The TurtleCoin Developers
// Copyright (c) 2019-2020 The Lithe Project
//
// Please see the included LICENSE file for more information.

package walletdmanager

const (
	// DefaultTransferFee is the default fee. It is expressed in CCX
	DefaultTransferFee float64 = 0.001

	walletdLogSessionFilename            = "walletd-session.log"
	walletdLogFilename                   = "walletd.log"
	daemonLogSessionFilename             = "conceald-session.log"
	daemonLogFilename                    = "conceald.log"
	walletdLogLevel                      = "3" // should be at least 3 as I use some logs messages to confirm creation of wallet
)