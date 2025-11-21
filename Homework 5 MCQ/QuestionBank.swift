import Foundation

struct Choice: Identifiable {
    let id = UUID()
    let description: String
    let is_correct: Bool
}

struct Question: Identifiable {
    let id = UUID()
    let description: String
    let explanation: String
    let picture: String    // 對應 Assets 的圖片名
    let choices: [Choice]
}

let QuestionBank: [Question] = [
    Question(
        description: "這幅畫的名稱是？",
        explanation: "《蒙娜麗莎》，達文西約1503–1506年間於義大利創作，屬高文藝復興時期的代表作。\n畫中女子以微妙的微笑與含蓄的表情著稱，達文西運用暈塗法（sfumato）在膚色與輪廓之間建立柔和過渡，讓面龐呈現立體感與生命力。\n背景的遠景以大氣透視營造深度，人物與自然和諧統一。作品不只是一幅肖像，更是對人性與心理的細膩觀察，對後世肖像畫影響深遠。",
        picture: "Mona_Lisa",
        choices: [
            Choice(description: "蒙娜麗莎", is_correct: true),
            Choice(description: "維納斯的誕生", is_correct: false),
            Choice(description: "少女與珍珠耳環", is_correct: false),
            Choice(description: "粉紅聖母", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫描繪的是哪位作家？",
        explanation: "梵谷的自畫像系列（約1889年前後），後印象派的重要範例。\n作品以強烈的筆觸、旋動的背景與高度主觀的色彩，呈現藝術家敏銳而焦灼的內心世界。梵谷常以自畫像作為技法練習與情感抒發的場域，臉部的筆觸方向與背景的渦旋形勢彼此呼應，形成動態張力。\n這些自畫像不只記錄外貌，更傳達其精神狀態與藝術追求。",
        picture: "Vincent_van_Gogh_Self_Portrait",
        choices: [
            Choice(description: "文森·梵谷", is_correct: true),
            Choice(description: "達文西", is_correct: false),
            Choice(description: "莫內", is_correct: false),
            Choice(description: "維梅爾", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫的名稱是？",
        explanation: "《星夜》，梵谷於1889年在聖雷米療養院創作，後印象派經典。\n畫面以旋渦狀的夜空、閃耀的星辰與明亮的月亮構成強烈視覺節奏，村莊與教堂塔尖在下方保持相對寧靜，形成動靜對比。\n梵谷以誇張的色彩與筆觸表現主觀感受，將自然景象轉化為情感與精神的象徵，對20世紀表現主義與現代藝術影響深遠。",
        picture: "The_Starry_Night",
        choices: [
            Choice(description: "星夜", is_correct: true),
            Choice(description: "花園長椅上的卡蜜兒·莫內", is_correct: false),
            Choice(description: "草地上的午餐", is_correct: false),
            Choice(description: "夜巡", is_correct: false)
        ]
    ),
    Question(
        description: "誰畫了這幅畫？",
        explanation: "《戴珍珠耳環的少女》，維梅爾約1665年作，巴洛克時期荷蘭畫派。\n作品被視為“tronie”（人物表情研究）而非正式肖像，少女回眸的瞬間、柔和的側光與深色背景形成強烈對比，突顯肌膚與珍珠的光澤。\n維梅爾以精準的光線與色彩節制聞名，藍與黃的和諧搭配強化了清新氣質。簡潔的構圖與凝止的時間感，使作品具有長久的魅力。",
        picture: "Girl_with_a_Pearl_Earring",
        choices: [
            Choice(description: "維梅爾", is_correct: true),
            Choice(description: "林布蘭", is_correct: false),
            Choice(description: "卡薩特", is_correct: false),
            Choice(description: "畢卡索", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫以哪場歷史事件為主題？",
        explanation: "《自由引導人民》，歐仁·德拉克洛瓦，1830年，浪漫主義代表作。\n女神形象的“自由”高舉三色旗，帶領各階層人民跨越障礙，象徵民族與公民的覺醒。畫面以暖冷對比與斜向構圖強化動勢，煙硝與瓦礫營造真實戰況。\n作品以寓意與現實交織，既是歷史紀念，也是自由精神的象徵圖像，影響後世政治圖像與民族敘事。",
        picture: "Liberty_Leading_the_People",
        choices: [
            Choice(description: "法國七月革命", is_correct: true),
            Choice(description: "滑鐵盧戰役", is_correct: false),
            Choice(description: "美國獨立戰爭", is_correct: false),
            Choice(description: "拿破崙東征", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫的作者是誰？",
        explanation: "《印象·日出》，克勞德·莫內，1872年，印象派的里程碑。\n勒阿弗爾港晨霧中的光色變化，以快速筆觸與薄塗捕捉瞬間印象。畫展評論以“印象”嘲諷，卻意外成為流派之名。\n作品重視自然光的即時效果而非細節描摹，開啟以色彩與氛圍為主的繪畫語言，對近代藝術影響深遠。",
        picture: "Impression_Sunrise",
        choices: [
            Choice(description: "莫內", is_correct: true),
            Choice(description: "雷諾瓦", is_correct: false),
            Choice(description: "梵谷", is_correct: false),
            Choice(description: "畢卡索", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫的名稱是？",
        explanation: "《雅典學院》，拉斐爾，1509–1511年，梵蒂岡宗座宮的壁畫。\n柏拉圖與亞里士多德居中對話，周圍匯集古希臘哲學家與學者。穩定對稱的建築透視與優雅的人物姿態，體現高文藝復興對理性與和諧的追求。\n拉斐爾善於整合構圖與人物關係，使複雜場面仍清晰有序，是人文精神的視覺化結晶。",
        picture: "The_School_of_Athens",
        choices: [
            Choice(description: "雅典學院", is_correct: true),
            Choice(description: "夜巡", is_correct: false),
            Choice(description: "醫生的解剖課", is_correct: false),
            Choice(description: "大英博物館", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫的畫家是哪一位？",
        explanation: "《夜巡》，林布蘭，1642年，荷蘭黃金時代名作。\n以戲劇性的明暗對照與動態構圖，將市民自衛隊點名的場景塑造成充滿張力的群像。人物間的視線與動作引導觀者在畫面中遊走。\n林布蘭擅長以光影刻畫心理與故事，使集體肖像脫離靜態排排站的慣例，開創群像畫新高度。",
        picture: "The_Night_Watch",
        choices: [
            Choice(description: "林布蘭", is_correct: true),
            Choice(description: "拉斐爾", is_correct: false),
            Choice(description: "德拉克洛瓦", is_correct: false),
            Choice(description: "維梅爾", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫的主題是什麼？",
        explanation: "《戴珍珠耳環的少女》，維梅爾約1665年。\n深色背景讓人物與耳飾的光澤更為突出，少女半張的唇與濕潤的眼神營造親近感。藍與黃的對比形成清亮調性。\n作品以簡約構圖與精準光線，捕捉稍縱即逝的回眸，展現日常中的詩意。",
        picture: "Girl_with_a_Pearl_Earring",
        choices: [
            Choice(description: "少女與珍珠耳環", is_correct: true),
            Choice(description: "維納斯誕生", is_correct: false),
            Choice(description: "自畫像", is_correct: false),
            Choice(description: "星夜", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫的作者是誰？",
        explanation: "《惠斯勒之母》，詹姆斯·麥克尼爾·惠斯勒，1871年。\n克制的灰黑調與幾何化構圖，讓人物的莊重與寧靜更為鮮明。畫面如同編排過的“音樂”，強調形式與節奏。\n此作被視為對母親的致敬，也展現藝術家對“藝術為藝術”的理念探索。",
        picture: "Whistler_Mother",
        choices: [
            Choice(description: "惠斯勒", is_correct: true),
            Choice(description: "林布蘭", is_correct: false),
            Choice(description: "莫內", is_correct: false),
            Choice(description: "卡耶博特", is_correct: false)
        ]
    ),
    Question(
        description: "哪位畫家畫了這幅畫？",
        explanation: "《草地上的午餐》，愛德華·馬內，1863年，現代藝術的轉捩點。\n穿著時裝的男子與裸體女子同席，將古典主題搬到當代情境，挑戰傳統審美與道德界線。明暗對比與平塗式筆觸形成鮮明視覺語言。\n作品在沙龍遭遇爭議，卻促使藝術走向真實與現代性，影響印象派與後續潮流。",
        picture: "Luncheon_on_the_Grass",
        choices: [
            Choice(description: "馬內", is_correct: true),
            Choice(description: "莫內", is_correct: false),
            Choice(description: "雷諾瓦", is_correct: false),
            Choice(description: "梵谷", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫的名稱是？",
        explanation: "《維納斯的誕生》，波提切利，約1480年代，早期文藝復興代表作。\n愛神維納斯自貝殼上登岸，線性優雅的輪廓與清麗的色調，呈現詩意與神話理想。人物姿態柔美，風中飄動的髮絲與衣褶強化韻律感。\n作品展現人文主義對古典神話的再詮釋，成為西方美學的經典圖像。",
        picture: "The_Birth_of_Venus",
        choices: [
            Choice(description: "維納斯的誕生", is_correct: true),
            Choice(description: "蒙娜麗莎", is_correct: false),
            Choice(description: "少女與珍珠耳環", is_correct: false),
            Choice(description: "粉紅聖母", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫描繪了哪位英雄？",
        explanation: "《拿破崙翻越阿爾卑斯山》，雅克-路易·大衛，1801–1805年，新古典主義。\n拿破崙以昂然姿態騎馬越嶺，披風與鬃毛在風中飛揚，將領袖形象理想化。岩石上刻有歷史名字，將個人與歷史連結。\n作品以清晰輪廓與光潔色面強化紀念性，成為政治宣傳與英雄形象的典範。",
        picture: "Napoleon_Crossing_the_Alps",
        choices: [
            Choice(description: "拿破崙", is_correct: true),
            Choice(description: "凱薩", is_correct: false),
            Choice(description: "亞歷山大大帝", is_correct: false),
            Choice(description: "成吉思汗", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫的主題是？",
        explanation: "《人間樂園》，希羅尼穆斯·波希，約1490–1510年，三聯作。\n左翼為伊甸樂園，中幅展現人類沉溺於感官享樂，右翼描繪地獄懲罰。奇想生物與超現實組合充滿象徵與諷喻。\n作品以繁複細節與寓意交織，揭示人性與道德的張力，對後世超現實與幻想藝術影響深刻。",
        picture: "The_Garden_of_Earthly_Delights",
        choices: [
            Choice(description: "樂園與地獄", is_correct: true),
            Choice(description: "人類起源", is_correct: false),
            Choice(description: "維納斯誕生", is_correct: false),
            Choice(description: "巴黎生活", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫的作者是誰？",
        explanation: "《晚禱》，讓-弗朗索瓦·米勒，1857–1859年，巴比松畫派代表。\n鐘聲響起時，農夫在田間放下工作祈禱，夕陽光線與沉靜色調營造虔誠氛圍。人物姿態樸實，呈現對勞動與信仰的尊重。\n作品以真誠的人文關懷感動觀者，影響寫實主義與鄉土題材的發展。",
        picture: "The_Angelus",
        choices: [
            Choice(description: "米勒", is_correct: true),
            Choice(description: "莫內", is_correct: false),
            Choice(description: "馬內", is_correct: false),
            Choice(description: "拉斐爾", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫的名稱是？",
        explanation: "《杜普博士的解剖課》，林布蘭，1632年，荷蘭黃金時代。\n醫師杜普向同業講解解剖，強烈光束聚焦於屍體與講解者手勢，形成敘事中心。群像各自表情專注，彼此間的視線構成隱形線條。\n作品結合科學理性與戲劇光影，將學術活動轉化為引人入勝的舞台場景。",
        picture: "Anatomy_Lesson_of_Dr._Nicolaes_Tulp",
        choices: [
            Choice(description: "杜普博士的解剖課", is_correct: true),
            Choice(description: "夜巡", is_correct: false),
            Choice(description: "雅典學院", is_correct: false),
            Choice(description: "粉紅聖母", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫的畫家是哪一位？",
        explanation: "《花園長椅上的卡蜜兒·莫內》，克勞德·莫內。\n畫家妻子卡蜜兒在花園中小憩，斑斕光影灑落其上，綠植與服飾的色塊相互呼應。筆觸輕快，捕捉午後光線的短暫變化。\n作品展現印象派對日常生活與自然光色的熱愛，溫柔而親密。",
        picture: "Camille_Monet_on_a_Garden_Bench",
        choices: [
            Choice(description: "莫內", is_correct: true),
            Choice(description: "馬內", is_correct: false),
            Choice(description: "畢卡索", is_correct: false),
            Choice(description: "印象派", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫的名稱是？",
        explanation: "《夜晚的露天咖啡座》，梵谷，1888年，作於亞爾。\n在深藍夜幕下，黃色燈光將露台映照得溫暖明亮，石板路與遠處星空形成空間深度。梵谷以互補色對比與密集筆觸營造活躍氣氛。\n作品將日常街景轉化為詩意夜色，展現他對色彩與光的獨到理解。",
        picture: "Café_Terrace_at_Night",
        choices: [
            Choice(description: "夜晚的露天咖啡座", is_correct: true),
            Choice(description: "草地上的午餐", is_correct: false),
            Choice(description: "巴黎街頭雨天", is_correct: false),
            Choice(description: "大碗島的星期日下午", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫的作者是誰？",
        explanation: "《倒牛奶的女僕》，維梅爾，約1658–1660年。\n室內柔光從左側灑入，女僕專注於倒牛奶的瞬間，麵包籃與陶器呈現細膩質感。牆面與桌面的幾何關係讓構圖穩定。\n作品彰顯日常勞動的尊嚴與美感，是荷蘭風俗畫的高峰。",
        picture: "The_Milkmaid",
        choices: [
            Choice(description: "維梅爾", is_correct: true),
            Choice(description: "德加", is_correct: false),
            Choice(description: "米勒", is_correct: false),
            Choice(description: "卡薩特", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫的主題是？",
        explanation: "《維納斯與阿多尼斯》，提香，威尼斯畫派代表。\n神話敘事中，維納斯挽留即將狩獵的阿多尼斯，纖柔與力量形成對比。提香以溫暖的紅與深邃的藍綠組構色面，肌膚與布料的質感極富魅力。\n作品兼具情感張力與視覺華麗，成為神話題材的典範。",
        picture: "Venus_and_Adonis",
        choices: [
            Choice(description: "維納斯與阿多尼斯", is_correct: true),
            Choice(description: "維納斯誕生", is_correct: false),
            Choice(description: "亞當與夏娃", is_correct: false),
            Choice(description: "少女與珍珠耳環", is_correct: false)
        ]
    ),
    Question(
        description: "這幅畫的名稱是？",
        explanation: "《粉紅聖母》，拉斐爾，高文藝復興風格的精緻之作。\n聖母與聖嬰之間溫柔的互動，構圖圓融、姿態優雅，粉紅色調營造親密與祥和。拉斐爾善於藉面部表情與肢體語言傳達情感。\n作品體現和諧、平衡與理想化美感，成為宗教題材的人性化典範。",
        picture: "Madonna_of_the_Pinks",
        choices: [
            Choice(description: "粉紅聖母", is_correct: true),
            Choice(description: "蒙娜麗莎", is_correct: false),
            Choice(description: "少女與珍珠耳環", is_correct: false),
            Choice(description: "夜巡", is_correct: false)
        ]
    )
]
