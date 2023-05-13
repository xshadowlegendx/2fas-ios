//
//  This file is part of the 2FAS iOS app (https://github.com/twofas/2fas-ios)
//  Copyright © 2023 Two Factor Authentication Service, Inc.
//  Contributed by Zbigniew Cisiński. All rights reserved.
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program. If not, see <https://www.gnu.org/licenses/>
//

import Foundation

// swiftlint:disable all
protocol LegacyServiceDatabase: AnyObject {
    func serviceTypeID(for serviceType: ServiceType) -> ServiceTypeID?
}

final class LegacyServiceDatabaseImpl {
    init() {}
}

extension LegacyServiceDatabaseImpl: LegacyServiceDatabase {
    func serviceTypeID(for serviceType: ServiceType) -> ServiceTypeID? {
        switch serviceType {
            case .amazon: return UUID(uuidString: "D50D085C-87A1-4C03-80AA-D2384971C6F3")
            case .tibia: return UUID(uuidString: "0642640D-52F8-4D2A-BA7F-B2E98DCC4760")
            case .vk: return UUID(uuidString: "3EE94C0D-4C2C-4B59-A35E-9251BED8D7CE")
            case .wordpress: return UUID(uuidString: "8A6E8DDE-9546-4E62-A30A-143DEE285D79")
            case .ifttt: return UUID(uuidString: "7EC6284A-152F-4AC6-A702-95A21BFB7E02")
            case .ovh: return UUID(uuidString: "4AD7CE16-C64D-4F18-B009-30A270DC782A")
            case .zoho: return UUID(uuidString: "21D5DCC4-4C1B-4D90-99D0-5CD35C815526")
            case .digitalOcean: return UUID(uuidString: "7F1B59E5-FD1D-4E2F-A6C3-C38C44C53C6E")
            case .zendesk: return UUID(uuidString: "4C1FAA51-FEFB-4AB5-9201-C54B794D32BA")
            case .teamViewer: return UUID(uuidString: "BBF98616-DAB0-48D4-859A-0877AD00766A")
            case .stripe: return UUID(uuidString: "DFC48ABC-3FD9-4456-833F-FCAA52691CCC")
            case .sourceForge: return UUID(uuidString: "B16F2BAD-B094-43E9-8347-E4A02C04A561")
            case .hootsuite: return UUID(uuidString: "1F732634-E6CC-4219-83D4-9E78D41372F8")
            case .slack: return UUID(uuidString: "14B0712A-B660-4550-AC94-BC0EA75E3228")
            case .braintree: return UUID(uuidString: "261606E8-1535-454D-B762-DBE5F20F3A17")
            case .bitpay: return UUID(uuidString: "137459FD-0F05-489A-95AF-FD0245C3FA0E")
            case .google: return UUID(uuidString: "FDB95870-569C-471F-84CE-0356D13DA20E")
            case .TwoFASSecret, .TwoFASMobileSecret: return UUID(uuidString: "89EFCC2D-52F4-4AC3-988D-5D7F3B3CD0A7")
            case .ea: return UUID(uuidString: "4CB1849D-650C-48FF-BD99-420859F3D1C8")
            case .blockchain: return UUID(uuidString: "E0D3D638-1FA2-4AA4-8242-4920BD151226")
            case .buffer: return UUID(uuidString: "85AD45BE-DA07-4B6D-B373-8ACBE7148C37")
            case .cloudflare: return UUID(uuidString: "C8EBF624-C4D2-4E6A-AEAC-FC235494AB92")
            case .mailChimp: return UUID(uuidString: "0658227C-EF86-4948-B737-EC1BFC11CBBB")
            case .qnap: return UUID(uuidString: "0D096E23-0594-47AF-ABAC-51AAAE14F19C")
            case .dnsMadeEasy: return UUID(uuidString: "A544DEDE-602A-4B3B-B8DD-4FF63F49D1EE")
            case .gitlab: return UUID(uuidString: "3D516EA8-A8B7-4687-82F7-A3B8E9DF68D1")
            case .github: return UUID(uuidString: "3EC08D85-D803-4B6A-A2F4-F5D24C9BBA67")
            case .evernote: return UUID(uuidString: "8BF52F46-80C9-45B2-B29D-C6CA8C08EEA8")
            case .goDaddy: return UUID(uuidString: "EE369040-4AC2-4CEB-9569-1B1C65288A8B")
            case .kickstarter: return UUID(uuidString: "D353DC43-CACD-4618-9169-6BDA93D940F1")
            case .dropbox: return UUID(uuidString: "5D2778B3-E293-49E7-A39E-66D86C21DD96")
            case .heroku: return UUID(uuidString: "D4EABA7A-4FB0-4447-96B1-005FBF8CDF38")
            case .lastPass: return UUID(uuidString: "EC0D13E2-3479-49FB-AEAA-67DAB162CADD")
            case .hetzner: return UUID(uuidString: "F762BEA4-D385-4A35-BE4A-FFCDA80931E9")
            case .minergate: return UUID(uuidString: "DD1FC65B-34A9-4C97-B3A1-F7DA1385CE61")
            case .poloniex: return UUID(uuidString: "6DC6C359-75A2-48CA-82E7-CF6AC8D98A68")
            case .bittrex: return UUID(uuidString: "8CD97A5C-E890-47EE-8597-8095BBA4D400")
            case .bitbucket: return UUID(uuidString: "9DF3F288-9201-477C-9B6F-6A8163F5B980")
            case .beamPro: return UUID(uuidString: "E709DC4B-2A72-4F6F-9C8A-6B3DBEBC42E5")
            case .facebook: return UUID(uuidString: "744E788D-3975-43AC-8166-0029C9A0871C")
            case .angelList: return UUID(uuidString: "5D4C1AD0-35E7-4205-811B-52D596651CA2")
            case .microsoft: return UUID(uuidString: "BE900C77-FE67-4F9B-805B-10C899125FA5")
            case .skrill: return UUID(uuidString: "8D2B7CFD-2D6E-4A82-AF14-4D60924ABF84")
            case .sentry: return UUID(uuidString: "AF78A598-DA12-473D-8E83-B95CFE0D3384")
            case .opskins: return UUID(uuidString: "8E344EE0-9350-45E4-B6EF-4F7C06BA3798")
            case .binance, .binanceUS: return UUID(uuidString: "9746650C-0DC6-438B-982F-5C38DC72CCE1")
            case .bitbay: return UUID(uuidString: "D25508F8-C64B-41D3-905A-E95D484B034A")
            case .bitskins: return UUID(uuidString: "690233B0-1E1D-4E7A-A89B-375862CC4666")
            case .btcMarkets: return UUID(uuidString: "F6DE2CAF-AA67-4E98-A6AA-3682B826A21C")
            case .coinbase: return UUID(uuidString: "5FAC27E0-E0E4-4E5C-BA7C-54CA0C5F1482")
            case .cryptoMKT: return UUID(uuidString: "964358CA-60E7-4613-8A33-9B31C53B79A6")
            case .discord: return UUID(uuidString: "5C9EFDDE-CB62-4304-9F04-D120084A53DD")
            case .niceHashBuying: return UUID(uuidString: "7C373102-9D13-489E-9BAA-325903B550E5")
            case .niceHashLogin: return UUID(uuidString: "19CAC7CF-5548-4869-A33F-6A13A4AE5E6F")
            case .niceHashWithdraw: return UUID(uuidString: "473B0856-B105-4F77-B7EF-F5BF4529837C")
            case .epicGames: return UUID(uuidString: "21701630-A5D2-457C-A983-BFBF4EFA801C")
            case .xero: return UUID(uuidString: "B0A1E86B-BAA4-43F5-B2C7-16DCAC2120B5")
            case .ubisoft: return UUID(uuidString: "3C9FB79F-A473-47EB-AA75-F5EF5B35829B")
            case .mega: return UUID(uuidString: "EDF4885F-6C13-4C3D-8AA8-378F9177879D")
            case .snapchat: return UUID(uuidString: "CDEC1FEC-5E6F-4470-9A15-60631F6C4383")
            case .instagram: return UUID(uuidString: "588921BF-6DF7-4D92-A881-9AF92E15642B")
            case .netSuite: return UUID(uuidString: "DF8F7DEA-9B3D-4058-BD1E-4A2E8D93F45E")
            case .humbleBundle: return UUID(uuidString: "1AEDAFD0-B21E-4220-A276-D3001BFA9702")
            case .firefox: return UUID(uuidString: "8545BF3B-1BBE-4ECB-A623-CFDFE5F3FC38")
            case .nintendo: return UUID(uuidString: "7432959F-6958-4529-8149-F6F071B3D21D")
            case .kuCoin: return UUID(uuidString: "CA2A983D-42BE-496F-9DC9-520C78FB6978")
            case .myob: return UUID(uuidString: "CD2CCD13-EED6-4B66-8A89-8C3F0799B9B6")
            case .litebit_eu: return UUID(uuidString: "63CBF7E9-87B0-41D1-B242-C90AD2783A63")
            case .twitter: return UUID(uuidString: "A2987AB4-AC5C-48CE-863C-D3D3D1220FDB")
            case .bitcoinMeester: return UUID(uuidString: "C6A0E139-D7B3-4351-8741-CFDD296B5802")
            case .atlantiss: return UUID(uuidString: "923C55FC-7ECA-4027-B853-C97955B356CC")
            case .autodesk: return UUID(uuidString: "9703B1B3-9942-4789-80E3-A8EF8C52DAAD")
            case .bitfinex, .bitfinex_fromName: return UUID(uuidString: "51CED224-0DC2-4A46-BE4F-3F6FEFC7C48F")
            case .preceda, .preceda_fromName: return UUID(uuidString: "D85A3247-BF4E-4C8D-AAE8-A17F896013DE")
            case .jura, .jura_fromName: return UUID(uuidString: "F478C5EA-D8E6-4325-B418-A84013520D7C")
            case .blockchains, .blockchains_fromName: return UUID(uuidString: "FB35F352-AEFB-4FF9-B618-2E7C2FD5C18E")
            case .coinsquare_io, .coinsquare_io_fromName: return UUID(uuidString: "B872CBD5-DCAA-4A36-83DC-29B273009726")
            case .bitvavo, .bitvavo_fromName: return UUID(uuidString: "6BE22AFD-1D40-4375-B5DA-5581B886EDB8")
            case .coindeal_io, .coindeal_io_fromName: return UUID(uuidString: "C4C182D1-88D7-4C0A-BC67-1AEB28FA21DB")
            case .brave, .brave_fromName: return UUID(uuidString: "7D012425-7019-4320-90A5-38963E4A022E")
            case .onelogin,. onelogin_fromName: return UUID(uuidString: "3FD6917B-0EB2-4306-B4B1-000256F61977")
            case .sofi: return UUID(uuidString: "0F80C3FB-86D2-42CD-8C59-059A35B5083D")
            case .trello: return UUID(uuidString: "62E56D6C-C438-4949-A033-C7588B92E403")
            case .uphold: return UUID(uuidString: "A5ED7742-3798-40F6-AFFC-8BB459AF80EA")
            case .fintegri: return UUID(uuidString: "EB93E63C-BAB4-4E1E-8CFF-916A33BA760A")
            case .wordfence: return UUID(uuidString: "CAF4B0DF-D8BD-442C-A57E-9C8187239899")
            case .jagex: return UUID(uuidString: "7C839F74-7DF8-4EA8-9E45-E9AD8AC37197")
            case .gamdom: return UUID(uuidString: "9E13F24A-774D-4D11-B3EA-B688CF3FF82C")
            case .payPal: return UUID(uuidString: "5CF8BE69-25F5-4D43-AA51-2D54930D247A")
            case .karatbit: return UUID(uuidString: "24C038C9-41B6-46B2-BAFD-046FC074EF54")
            case .devexMail: return UUID(uuidString: "A85B7921-5DA3-43AF-BA05-9AAC1FC9A6D4")
            case .reddit: return UUID(uuidString: "15ABC44C-E519-488B-98F2-3A75AAF270AF")
            case .logingov: return UUID(uuidString: "94712FF8-BBE1-41BC-8B81-0F0395463E88")
            case .uscis: return UUID(uuidString: "323A5859-1DA6-4FA8-8EC9-E90E44575F6D")
            case .okonto: return UUID(uuidString: "19A5F44C-BC4A-4F80-9903-2C61668C5A0A")
            case .freshDesk: return UUID(uuidString: "4E82C347-7AD9-4B73-BB4D-C6301EED0004")
            case .hubSpot: return UUID(uuidString: "C99DFE6D-6D75-42CE-A1FB-0C8FBBF70D72")
            case .chargebee: return UUID(uuidString: "5318083F-0330-4384-869F-8C76AD862337")
            case .discourse: return UUID(uuidString: "8D8CD023-32C3-41D7-AFA2-1434B7B81A68")
            case .linkedIn: return UUID(uuidString: "924F8361-2435-41FE-8070-B2F6B105B042")
            case .onePassword: return UUID(uuidString: "29A9BB30-C40F-4B43-8877-2460915178C5")
            case .namecheap: return UUID(uuidString: "F2425ECC-F42A-4F0F-8D39-254FC7AE35BA")
            case .shopify: return UUID(uuidString: "B3AD7C69-D5DC-47E8-82B0-AC607E151329")
            case .jamfNow: return UUID(uuidString: "096B26F8-E5C9-467B-ACA7-E2FDB63C7E36")
            case .kraken: return UUID(uuidString: "450CAB07-490E-4645-A336-126A798314AE")
            case .bitMax: return UUID(uuidString: "D519742D-DB19-440A-B9AF-CD4C31A58603")
            case .gateIo: return UUID(uuidString: "D54E6374-570E-445F-ABF8-608E8BCA5162")
            case .upwork: return UUID(uuidString: "0847B922-D5EE-478D-8705-FC661DC2E83A")
            case .protonMail, .proton: return UUID(uuidString: "1174FB7D-CB22-4855-B454-D1D25ACB3753")
            case .bitriseIo: return UUID(uuidString: "699C584E-79CF-414B-94D5-64784459F7ED")
            case .adobe: return UUID(uuidString: "AE853D4D-CF42-43B3-A2A8-4BD61536A9E7")
            case .nvidia: return UUID(uuidString: "82DFFA18-98AB-469B-A585-0F5ED9990B9B")
            case .twitch: return UUID(uuidString: "CDADF221-4F82-448A-A738-C12CCFF5898A")
            case .bitwarden: return UUID(uuidString: "D0EDD58D-E40A-444D-A440-E4907B0A22D6")
            case .samsung: return UUID(uuidString: "F3DAE646-0CFA-467D-9ECC-06790E1AA6D2")
            case .uber: return UUID(uuidString: "63F0BDAF-94FE-4B4C-983F-90442877F0EC")
            case .zoom: return UUID(uuidString: "45741EB0-3388-4D54-8816-20A4BBA036EB")
            case .activision: return UUID(uuidString: "1B35B8EE-DE08-4623-8BE9-9A52D3606A08")
            case .homeAssistant: return UUID(uuidString: "0680591A-0464-44CC-8546-D61666088DBC")
            case .nordAccount: return UUID(uuidString: "2EE903FF-A9FD-44CE-970E-47FEA122A860")
            case .twentyI: return UUID(uuidString: "B545E75E-34CF-4186-B246-DC02AF28DE70")
            case .ascendEx: return UUID(uuidString: "513A463D-0A51-4CBC-B531-6E2C69AA7A76")
            case .backBlaze: return UUID(uuidString: "54F6272F-E6C1-4A88-8E2C-A1B0A490C55D")
            case .bitpanda: return UUID(uuidString: "4E7A1659-0A8A-42D5-A699-30837AAC73C4")
            case .gmx: return UUID(uuidString: "B235239B-0FF5-4D74-BABB-3A76E8DCE4EB")
            case .jetBrains: return UUID(uuidString: "80F023AF-B7E2-4395-A700-769BF968DCF6")
            case .joomla: return UUID(uuidString: "F5A9A8E5-3167-4B11-A680-03D8AAD50784")
            case .nextcloud: return UUID(uuidString: "DCBC5CC0-60D3-4235-9430-4A8C06286283")
            case .opera: return UUID(uuidString: "9DA37985-6D4E-4E30-A2CC-449BA401D8CF")
            case .tebex: return UUID(uuidString: "E32CB9ED-F0A0-46E5-8011-0C8D33617ADF")
            case .tumblr: return UUID(uuidString: "E325587D-695F-49B2-82A3-130E10640DB1")
            case .unity: return UUID(uuidString: "743215A7-3115-4E48-A8F9-E87B103428AE")
            case .xing: return UUID(uuidString: "376E354B-4DAA-4D4E-A285-0D6BD3372AB0")
            case .telderi: return UUID(uuidString: "26AC0A8E-28AB-43E0-B93A-C728DF165800")
            case .tastyworks: return UUID(uuidString: "AEDECA67-57D4-450D-9737-F7DB26FA4E46")
            case .parsec: return UUID(uuidString: "AB5170D5-098B-4D87-A248-64BADB66CFB3")
            case .pulseway: return UUID(uuidString: "1EAFB2B3-17D9-417F-8D1D-AFB6D9ACA878")
            case .uptimeRobot: return UUID(uuidString: "121ACF58-0E10-4E0D-A967-2DAD5F8E5929")
            case .oracle: return UUID(uuidString: "B6B72488-1F7B-431D-AFE0-4889496DEB70")
            case .roboForm: return UUID(uuidString: "882C9046-B11F-4F4F-9F66-7095202A03A7")
            case .razer: return UUID(uuidString: "FD842CD6-1CE0-4B09-A7D7-EE10F30845B2")
            case .adGuard: return UUID(uuidString: "0755B13F-D3D1-43B0-B6A8-4348519CBDC7")
            case .ubiquiti: return UUID(uuidString: "80FFDC39-F0BA-40A1-826A-0AFB5084F8A0")
            case .hurricaneElectric: return UUID(uuidString: "F506D1B4-099D-495E-A1A4-C7ECEC4D007D")
            case .box: return UUID(uuidString: "4F2A249A-EB12-48E7-BFFC-A78BF7888D73")
            case .gitea: return UUID(uuidString: "EED0167A-C72D-4A0F-80C1-5FF560B513CF")
            case .gogs: return UUID(uuidString: "FB2C6356-A37D-4515-A54A-8403471D5885")
            case .wikijs: return UUID(uuidString: "C755E985-7434-4272-971B-A0AF16D4BF11")
            case .intuit: return UUID(uuidString: "316212F6-5086-4BB2-8CA1-FDD411280A23")
            case .sony: return UUID(uuidString: "B8CCC448-1C97-4D5C-A781-25C48996B00F")
            case .drupal, .drupal_fromName: return UUID(uuidString: "15FC4637-25C0-416E-9FCC-AFE99DAB8ABE")
            case .robinhood: return UUID(uuidString: "E085EA95-678D-4B5D-97B4-2B7107567069")
            case .kayako: return UUID(uuidString: "170388D7-479C-40D6-B624-B72D22ECF552")
            case .bybit: return UUID(uuidString: "D6570704-868F-4CCA-990F-3F0FDCEAE277")
            case .docker: return UUID(uuidString: "1C6EF27D-7D4B-4827-9D8F-8AECCE460008")
            case .choice: return UUID(uuidString: "F028CE41-346F-48A4-B83C-50A51F2D701E")
            case .wyze: return UUID(uuidString: "8F4C7951-526E-49B9-8996-28D65D15ED47")
            case .fritzbox: return UUID(uuidString: "33368632-D426-425B-9C0E-FF8CABAA0C07")
            case .cryptoCom: return UUID(uuidString: "FA0801C4-E26B-47B2-85B3-8E1F3DCD21C5")
            case .coinList: return UUID(uuidString: "E899321B-2AA9-44C6-B619-5AACB7955954")
            case .plex: return UUID(uuidString: "ED64D5AF-2641-465F-9936-4C5BC6075695")
            case .hackTheBox: return UUID(uuidString: "F3379D7D-69ED-4970-9B18-F293B993B829")
            case .squareEnix: return UUID(uuidString: "E5DEE7B9-C921-41ED-8B24-E74C6B72DAA8")
            case .arenaNet: return UUID(uuidString: "FA63A7F1-557E-4EDA-813A-274E405F0559")
            case .fSecure: return UUID(uuidString: "F27AF1A5-53FC-44CE-80EA-8FA8C9CA04BC")
            case .phpMyAdmin: return UUID(uuidString: "2EB3A952-7E2D-4088-88F0-0B0C2BDDE135")
            case .ring: return UUID(uuidString: "044D1095-EDE6-4033-938C-4A409AB3A2C6")
            case .trimble: return UUID(uuidString: "B4ED9356-1B2D-4A21-BA2B-C96EEB4EDCF3")
            case .rockstarGames: return UUID(uuidString: "DEEAD8DD-C9E3-463A-8C73-1E75C5EC13CF")
            case .salesForce: return UUID(uuidString: "29661992-71DD-42BA-9D45-2AF7BDBA4276")
            case .ftxUS, .ftx: return UUID(uuidString: "F4308A8D-6983-466B-A51E-345F1C2D4273")
            case .sophosSFOS: return UUID(uuidString: "2ED97493-8E5A-4B96-8E85-36D67C92C40A")
            case .synologyDSM, .synology: return UUID(uuidString: "49B75004-2EE0-46DE-934E-F62E9271BD02")
            case .patreon: return UUID(uuidString: "A6625835-3C28-42CD-820D-2EBCC08320D0")
            case .bitkub: return UUID(uuidString: "6AB5F6F1-40F4-41E4-82FF-0DD11F9B676C")
            case .coinDCX: return UUID(uuidString: "23EEA0CA-0AC4-459E-8782-F2A8DFA632DE")
            case .coinSpot: return UUID(uuidString: "EB82164F-AA83-44AF-A943-387A0BB19C08")
            case .roblox: return UUID(uuidString: "D33DD19C-CE43-45A2-B204-FC636F69E75E")
            case .wazirX: return UUID(uuidString: "4AE6BFEF-0003-446C-9FC8-E0A03DD84163")
            case .mongoDB: return UUID(uuidString: "5E62A68A-88F4-4F3F-AD60-DF8EA34BDC57")
            case .governmentGateway, .hmrc_fromName: return UUID(uuidString: "0E479FCD-6A38-4431-9605-8A3D8B260E29")
            case .whiteBIT: return UUID(uuidString: "35498C4E-19AE-4E2B-92DE-B110BAACE547")
            case .arbeitsagentur: return UUID(uuidString: "1D3774AA-BD1A-4D57-B453-5EF78943233B")
            case .aws: return UUID(uuidString: "9A24D1CA-DA74-4F81-88AE-D3D174300E30")
            case .enZona: return UUID(uuidString: "79549405-BA55-4C7B-9D48-3B15002B5B30")
            case .paxful: return UUID(uuidString: "B78BBA1B-4733-42BC-A1D5-CA18D53E291F")
            case .questrade: return UUID(uuidString: "F76DC205-7C4A-4413-B80B-75BF8898502E")
            case .tMobile: return UUID(uuidString: "0777BBC7-AC7F-4EF0-AB3A-A5A3D8D29168")
            case .tesla: return UUID(uuidString: "89D4DA87-F110-4A4F-862A-051032180536")
            case .windscribe: return UUID(uuidString: "B8869267-E0A5-407C-9B77-8C664896B252")
            case .yahoo: return UUID(uuidString: "2820A93A-F4D4-484A-ADAA-F46B186709C4")
            case .grammarly: return UUID(uuidString: "3BF3C372-753B-4A6A-B6EC-B92637FCF1DD")
            case .steam: return UUID(uuidString: "D241EDFF-480F-4201-840A-5A1C1D1323C2")
            case .tikTok: return UUID(uuidString: "0F92D0C5-2B96-4F8E-91EF-9A026E048B80")
            case .vimeo: return UUID(uuidString: "C97EBAA8-7380-4E5D-9059-397F2A1FC982")
            case .idme: return UUID(uuidString: "1A8546AD-903D-4F3D-9589-F7282D426007")
            case .norton: return UUID(uuidString: "3842FBA8-47C3-45BB-9700-932E86721063")
            case .surfshark: return UUID(uuidString: "3D2E931B-A5C1-4BF6-BEC8-64D823A85680")
            case .nextDNS: return UUID(uuidString: "BE114956-58BB-4909-8668-44E728554556")
            case .pCloud: return UUID(uuidString: "B08A2F47-2883-4190-861D-6042EE86D334")
            case .trueNAS: return UUID(uuidString: "280053BA-084F-4F1F-A672-524DC7BA09D9")
            case .openVPN: return UUID(uuidString: "97B7C609-EDCE-400D-B0CE-A1894AC4305B")
            case .anyDesk: return UUID(uuidString: "C679176D-D306-4A06-876A-3334B47D3975")
            case .proxmox: return UUID(uuidString: "3B0C488C-BD30-4EDF-9441-8A6F97791124")
            case .kaspersky: return UUID(uuidString: "BC1329AD-925B-4F51-8FF2-0079975D9BC0")
            case .ionos: return UUID(uuidString: "002FD04D-4046-4629-952B-EE92F17E2E09")
            case .pyPI: return UUID(uuidString: "48223642-089D-4E35-97DA-4FBC4BA81C35")
            case .tradingView: return UUID(uuidString: "F0DD74A7-28FB-4C77-9541-3D2A2DF53268")
            case .coursera: return UUID(uuidString: "B18932D2-4DDE-49E7-8F28-6568958E376A")
            case .figma: return UUID(uuidString: "8E6B9EEA-CE00-4371-884A-B540B3467950")
            case .avast: return UUID(uuidString: "CB6E08B9-DD63-45FE-A3C9-EE5A95EF4355")
            case .okx: return UUID(uuidString: "A9F9DEEB-C0DB-447C-9316-0BCC5C17D81D")
            case .nexo: return UUID(uuidString: "D5E2786C-9601-4B11-A33C-9F818BAFF264")
            case .linusTechTips: return UUID(uuidString: "97DCDED8-02B9-42A4-AF3B-F5D414B45D05")
            case .noIP: return UUID(uuidString: "A45A6C25-FC03-48C6-A2D5-C160C3D51F45")
            case .trendMicro: return UUID(uuidString: "EA543918-C254-443B-9CCA-33DB8AA1A21D")
            case .xda: return UUID(uuidString: "C6A5B0B8-7C7F-4469-A5B2-4E97F4B93EB1")
            case .webDE: return UUID(uuidString: "3A26C02C-1C6E-49BA-B282-C640F6C05804")
            case .atlassian: return UUID(uuidString: "5BA2C9CD-CCA9-4330-A09D-7ADF5AFD0184")
            case .cisco: return UUID(uuidString: "B4017DB1-4377-42E0-849C-C70EE3D4F699")
            case .wargaming: return UUID(uuidString: "2C406558-A7FB-4C0A-BFE1-9287CFD6EEE4")
            case .allegro: return UUID(uuidString: "9A6E29D3-54BE-4793-AF01-7D9F1CA4F941")
            case .faceit: return UUID(uuidString: "1CFBA37C-40BC-4ADF-A38A-7EB89848A1F0")
            case .etsy: return UUID(uuidString: "EE990E63-4E8D-4AA5-BE25-FD945108AAAC")
            case .cashApp: return UUID(uuidString: "454F77F3-C3B6-421B-8BB2-F2F0D627139F")
            case .mercadoLibre: return UUID(uuidString: "56CC9FC0-0F57-4777-A3E0-CCAAD03234A8")
            case .mercadoLivre: return UUID(uuidString: "29266734-6296-49CE-BF2E-B346762B5B42")
            case .cosmicPvP_fromName: return UUID(uuidString: "6481DFA9-0BB0-4A14-A431-0E1A3AC8CEAB")
                
            default: return nil
        }
    }
}
// swiftlint:enable all
