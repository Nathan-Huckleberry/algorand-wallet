// Copyright 2019 Algorand, Inc.

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

//    http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//
//  API+Currency.swift

import Magpie

extension AlgorandAPI {
    @discardableResult
    func getCurrencies(
        then handler: @escaping (Response.ModelResult<[Currency]>) -> Void
    ) -> EndpointOperatable {
        return EndpointBuilder(api: self)
            .base(mobileApiBase)
            .path("/api/currencies/")
            .headers(mobileApiHeaders())
            .completionHandler(handler)
            .build()
            .send()
    }
    
    @discardableResult
    func getCurrencyValue(
        for currencyId: String,
        then handler: @escaping (Response.ModelResult<Currency>) -> Void
    ) -> EndpointOperatable {
        return EndpointBuilder(api: self)
            .base(mobileApiBase)
            .path("/api/currencies/\(currencyId)/")
            .headers(mobileApiHeaders())
            .completionHandler(handler)
            .build()
            .send()
    }
}
