

import Foundation
struct Timezone : Decodable {
	let offset : String?
	let description : String?

	enum CodingKeys: String, CodingKey {

		case offset = "offset"
		case description = "description"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		offset = try values.decodeIfPresent(String.self, forKey: .offset)
		description = try values.decodeIfPresent(String.self, forKey: .description)
	}

}
