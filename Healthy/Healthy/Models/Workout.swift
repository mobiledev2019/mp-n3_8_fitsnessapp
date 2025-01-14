/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Workout : Codable {
	let name : String?
	let level : String?
	let pic_pad : String?
	let pic_phone : String?
	let brief : String?
	let order : Int?
	let time : Int?
	let exercises : [Exercises]?
	let calorie : Int?
	let type : String?
	let id : Int?

	enum CodingKeys: String, CodingKey {

		case name = "name"
		case level = "level"
		case pic_pad = "pic_pad"
		case pic_phone = "pic_phone"
		case brief = "brief"
		case order = "order"
		case time = "time"
		case exercises = "exercises"
		case calorie = "calorie"
		case type = "type"
		case id = "id"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		level = try values.decodeIfPresent(String.self, forKey: .level)
		pic_pad = try values.decodeIfPresent(String.self, forKey: .pic_pad)
		pic_phone = try values.decodeIfPresent(String.self, forKey: .pic_phone)
		brief = try values.decodeIfPresent(String.self, forKey: .brief)
		order = try values.decodeIfPresent(Int.self, forKey: .order)
		time = try values.decodeIfPresent(Int.self, forKey: .time)
		exercises = try values.decodeIfPresent([Exercises].self, forKey: .exercises)
		calorie = try values.decodeIfPresent(Int.self, forKey: .calorie)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
	}

}
