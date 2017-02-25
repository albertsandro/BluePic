//
//  Created by Sandro Albert on 24/09/16.
//  Copyright (c) 2016. Sandro Albert All rights reserved.
//

import UIKit
import BMSCore

class User: NSObject {

    let facebookID: String
    let name: String

    init(facebookID: String, name: String) {
        self.facebookID = facebookID
        self.name = name
    }

    init?(_ response: Response?) {

        if let dict = Utils.convertResponseToDictionary(response),
            let facebookID = dict["_id"] as? String,
            let name = dict["name"] as? String {

            self.facebookID = facebookID
            self.name = name

            super.init()
        } else {
            print(NSLocalizedString("Invalid User JSON", comment: ""))
            return nil
        }

    }

}
