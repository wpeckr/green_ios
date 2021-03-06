import Foundation

struct TxInputOutputData: Codable {
    enum CodingKeys: String, CodingKey {
        case address = "address"
        case addressee = "addressee"
        case addressType = "address_type"
        case isChange = "is_change"
        case isOutput = "is_output"
        case isRelevant = "is_relevant"
        case isSpent = "is_spent"
        case pointer = "pointer"
        case prevoutScript = "prevout_script"
        case ptIdx = "pt_idx"
        case recoveryXpub = "recovery_xpub"
        case satoshi = "satoshi"
        case script = "script"
        case scriptType = "script_type"
        case sequence = "sequence"
        case subaccount = "subaccount"
        case subtype = "subtype"
        case txhash = "txhash"
        case serviceXpub = "service_xpub"
        case userPath = "user_path"
        case commitment = "commitment"
        case assetId = "asset_id"
        case assetTag = "asset_tag"
        case publicKey = "public_key"
        case userStatus = "user_status"
        case blockHeight = "block_height"
        case nonceCommitment = "nonce_commitment"
        case assetblinder = "assetblinder"
        case amountblinder = "amountblinder"
    }
    let address: String?
    let addressee: String?
    let addressType: String?
    let isChange: Bool?
    let isOutput: Int?
    let isRelevant: Int?
    let isSpent: Int?
    let pointer: Int?
    let prevoutScript: String?
    let ptIdx: UInt?
    let recoveryXpub: String?
    let satoshi: UInt64?
    let script: String?
    let scriptType: UInt32?
    let sequence: UInt64?
    let subaccount: Int?
    let subtype: Int?
    let txhash: String?
    let serviceXpub: String?
    let userPath: [UInt32]?
    let commitment: String?
    let assetId: String?
    let assetTag: String?
    let publicKey: String?
    let userStatus: Int?
    let blockHeight: UInt32?
    let nonceCommitment: String?
    let assetblinder: String? // asset blinding factor
    let amountblinder: String? // value blinding factor

    var abf: [UInt8] {
        get { return [UInt8](hexToData(assetblinder ?? "")).reversed() }
    }
    var vbf: [UInt8] {
        get { return [UInt8](hexToData(amountblinder ?? "")).reversed() }
    }
}
