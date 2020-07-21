// Copyright (c) 2018, The TurtleCoin Developers
// Copyright (c) 2019-2020 The Lithe Project
//
// Please see the included LICENSE file for more information.

package walletdrpc

/* Table of Contents:
 * - /save
 * - /reset
 * - /createAddress
 * - /deleteAddress
 * - /getSpendKeys
 * - /getBalance
 * - /getBlockHashes
 * - /getTransactionHashes
 * - /getTransactions
 * - /getUnconfirmedTransactionHashes
 * - /getTransaction
 * - /getSendTransaction
 * - /createDelayedTransaction
 * - /getDelayedTransactionHashes
 * - /deleteDelayedTransaction
 * - /sendDelayedTransaction
 * - /getViewKey
 * - /getStatus
 * - /getAddresses
 * - /getMessagesFromExtra
 * - /estimateFusion
 * - /sendFusionTransaction
 * - @NEED: /getMnemonicSeed
 * - @NEED: /getFeeInfo
 */

// rpcPayload is the struct with the right formatting for passing to the post request
type rpcPayload struct {
	JSONRPC  string                  `json:"jsonrpc"`
	Method   string                  `json:"method"`
	Params   *map[string]interface{} `json:"params,omitempty"`
	Password string                  `json:"password"`
	ID       int                     `json:"id"`
}

func buildRPCPayload(
	method string,
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return rpcPayload{
		JSONRPC:  "2.0",
		Method:   method,
		Password: rpcPassword,
		ID:       id,
		Params:   &params}
}

/* /save ----------------------------------------------------- */
func rpcPayloadSave(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"save",
		id,
		rpcPassword,
		params)
}

/* /reset ----------------------------------------------------- */
func rpcPayloadReset(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"reset",
		id,
		rpcPassword,
		params)
}

/* /createAddress ----------------------------------------------------- */
func rpcPayloadCreateAddress(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"createAddress",
		id,
		rpcPassword,
		params)
}

/* /deleteAddress ----------------------------------------------------- */
func rpcPayloadDeleteAddress(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"deleteAddress",
		id,
		rpcPassword,
		params)
}

/* /getSpendKeys ----------------------------------------------------- */
func rpcPayloadGetSpendKeys(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"getSpendKeys",
		id,
		rpcPassword,
		params)
}

/* /getBalance ----------------------------------------------------- */
func rpcPayloadGetBalance(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"getBalance",
		id,
		rpcPassword,
		params)
}

/* /getBlockHashes ----------------------------------------------------- */
func rpcPayloadGetBlockHashes(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"getBlockHashes",
		id,
		rpcPassword,
		params)
}

/* /getTransactionHashes ----------------------------------------------------- */
func rpcPayloadGetTransactionHashes(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"getTransactionHashes",
		id,
		rpcPassword,
		params)
}

/* /getTransactions ----------------------------------------------------- */
func rpcPayloadGetTransactions(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"getTransactions",
		id,
		rpcPassword,
		params)
}

/* /getUnconfirmedTransactionHashes ----------------------------------------------------- */
func rpcPayloadGetUnconfirmedTransactionHashes(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"getUnconfirmedTransactionHashes",
		id,
		rpcPassword,
		params)
}

/* /getTransaction ----------------------------------------------------- */
func rpcPayloadGetTransaction(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"getTransaction",
		id,
		rpcPassword,
		params)
}

/* /getSendTransaction ----------------------------------------------------- */
func rpcPayloadSendTransaction(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"sendTransaction",
		id,
		rpcPassword,
		params)
}

/* /createDelayedTransaction ----------------------------------------------------- */
func rpcPayloadCreateDelayedTransaction(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"createDelayedTransaction",
		id,
		rpcPassword,
		params)
}

/* /getDelayedTransactionHashes ----------------------------------------------------- */
func rpcPayloadGetDelayedTransactionHashes(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"getDelayedTransactionHashes",
		id,
		rpcPassword,
		params)
}

/* /deleteDelayedTransaction ----------------------------------------------------- */
func rpcPayloadDeleteDelayedTransaction(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"deleteDelayedTransaction",
		id,
		rpcPassword,
		params)
}

/* /sendDelayedTransaction ----------------------------------------------------- */
func rpcPayloadSendDelayedTransaction(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"sendDelayedTransaction",
		id,
		rpcPassword,
		params)
}

/* /getViewKey ----------------------------------------------------- */
func rpcPayloadGetViewKey(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"getViewKey",
		id,
		rpcPassword,
		params)
}

/* /getStatus ----------------------------------------------------- */
func rpcPayloadGetStatus(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"getStatus",
		id,
		rpcPassword,
		params)
}

/* /getAddresses ----------------------------------------------------- */
func rpcPayloadGetAddresses(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"getAddresses",
		id,
		rpcPassword,
		params)
}

/* /getMessagesFromExtra ----------------------------------------------------- */
func rpcPayloadGetMessagesFromExtra(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"getMessagesFromExtra",
		id,
		rpcPassword,
		params)
}

/* /estimateFusion ----------------------------------------------------- */
func rpcPayloadEstimateFusion(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"estimateFusion",
		id,
		rpcPassword,
		params)
}

/* /sendFusionTransaction ----------------------------------------------------- */
func rpcPayloadSendFusionTransaction(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"sendFusionTransaction",
		id,
		rpcPassword,
		params)
}


/* /getMnemonicSeed ----------------------------------------------------- */
/*func rpcPayloadGetMnemonicSeed(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"getMnemonicSeed",
		id,
		rpcPassword,
		params)
} */

/* /getFeeInfo ----------------------------------------------------- */
/*func rpcPayloadGetFeeInfo(
	id int,
	rpcPassword string,
	params map[string]interface{}) rpcPayload {

	return buildRPCPayload(
		"getFeeInfo",
		id,
		rpcPassword,
		params)
} */