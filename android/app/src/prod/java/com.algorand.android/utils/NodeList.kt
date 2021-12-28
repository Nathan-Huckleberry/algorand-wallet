package com.algorand.android.utils

import com.algorand.android.BuildConfig
import com.algorand.android.models.Node

const val CURRENT_DEFAULT_NODE_LIST_VERSION = 22

val defaultNodeList = listOf(
    Node(
        name = "TestNet",
        algodAddress = "http://10.0.2.2:4001",
        algodApiKey = BuildConfig.ALGORAND_API_KEY,
        indexerAddress = "http://10.0.2.2:8980",
        indexerApiKey = BuildConfig.INDEXER_API_KEY,
        isActive = true,
        isAddedDefault = true,
        networkSlug = TESTNET_NETWORK_SLUG
    ),
    Node(
        name = "MainNet",
        algodAddress = "http://10.0.2.2:4001",
        algodApiKey = BuildConfig.ALGORAND_API_KEY,
        indexerAddress = "http://10.0.2.2:8980",
        indexerApiKey = BuildConfig.INDEXER_API_KEY,
        isActive = false,
        isAddedDefault = true,
        networkSlug = MAINNET_NETWORK_SLUG
    )
)
