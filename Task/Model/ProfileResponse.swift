
import Foundation
struct ProfileResponse : Decodable {
	let results : [Results]?
	let info : Info?

	enum CodingKeys: String, CodingKey {

		case results = "results"
		case info = "info"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		results = try values.decodeIfPresent([Results].self, forKey: .results)
		info = try values.decodeIfPresent(Info.self, forKey: .info)
	}

}
