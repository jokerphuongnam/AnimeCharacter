import Foundation

extension AnimeCharacter {
    init(title: String, description: String, avatar: String) {
        self.init(id: UUID().uuidString,title: title, description: description, avatar: avatar)
    }
}

extension Array where Element == AnimeCharacter {
    static var fakeData: [AnimeCharacter] = {
        return [
            .init(
                title: "Conan",
                description: "là Nhân vật chính trong bộ truyện. Shinichi là một thám tử trung học cấp III nổi tiếng với việc phá được nhiều vụ án hóc búa. Trong một lần đang đi điều tra, Shinichi đã bị thành viên của Tổ chức Áo đen phát hiện và đánh cậu bất tỉnh. Chúng sau đó đã ép cậu phải uống loại thuốc độc vừa được Tổ chức điều chế mang tên APTX 4869 để giết cậu nhằm bịt đầu mối. Thế nhưng, Shinichi không chết mà thay vào đó lại bị teo nhỏ trở thành một đứa bé lớp 1. Cậu liền tới nhà của ông tiến sĩ Agasa, một người bạn thân của gia đình mình để tìm sự giúp đỡ. Từ đây, cậu bắt đầu sống với thân phận mới là Edogawa Conan (江戸川えどがわ コナン (Giang Hộ Xuyên Conan) Edogawa Ko'nan?) nhằm che giấu danh tính thật và bảo vệ người thân khỏi sự liên lụy tới Tổ chức này. Cậu có một quan hệ tình cảm với người bạn thân từ thuở nhỏ của cậu, Mori Ran. Cậu cũng là một cầu thủ bóng đá giỏi, đồng thời còn tỏ ra thông thái về nhiều lĩnh vực khác",
                avatar: "https://znews-photo.zadn.vn/w660/Uploaded/oplukaa/2020_08_13/Conan_thumb.jpg"
            ),
            .init(
                title: "Doraemon",
                description: "là nhân vật chính của tác phẩm, sinh vào ngày 3 tháng 9 năm 2112 tại nhà máy robot Matsushiba. Cậu trở về quá khứ theo lời mời của cháu Nobita là Sewashi để giúp ông cố Nobita thay đổi vận mệnh cho tương lai với chiếc túi không gian bốn chiều trước bụng chứa rất nhiều bảo bối tiện lợi. Doraemon còn có một túi \"sơ cua\" khác để dưới nệm ngủ của mình, nên bảo bối của cậu thường bị Nobita lấy trộm từ túi này khi không được cho mượn. Doraemon là một chú mèo máy thông minh, hiền lành, tốt bụng và luôn quan tâm đến Nobita, nhưng đôi khi cậu cũng tỏ ra nghiêm khắc khi Nobita ỷ lại quá mức vào bảo bối của mình. Cậu thường thua trong trò oẳn tù tì do bàn tay chỉ giơ ra được nắm đấm. Cậu rất thích ăn Dorayaki và rất sợ chuột, do từng bị chuột gặm mất đôi tai khi còn ở thế giới tương lai. Vì bị cụt tai, cậu thường bị nhầm với loài chồn thay vì mèo.",
                avatar: "https://i.pinimg.com/originals/fc/9c/6f/fc9c6fa90e6449ea3a1674f9543c6d56.jpg"
            ),
            .init(
                title: "Songoku",
                description: "là nhân vật chính của manga Dragon Ball. Goku có gốc là một chiến binh của dân tộc Saiya, hiện đang sống và chiến đấu bảo vệ Trái Đất. Cha anh là tướng quân Badock đã hy sinh sau cuộc tấn công của Freiza. Goku được phái xuống để thống trị Trái Đất trong hình hài một con khỉ khổng lồ. Goku được Son Gohan, người mà anh coi là ông nội cảm hoá và nuôi dưỡng. Ở trong rừng sâu khi còn quá nhỏ, Goku là một cậu bé rất trong sáng và tốt bụng. Sau khi gặp Bulma, cuộc đời cậu bắt đầu một bước ngoặt mới. Kể từ đó. biết bao nhiêu lần cậu cứu Trái Đất khỏi những kẻ độc ác như 2 cha con Piccolo (Dragon Ball), Vegeta (Dragon Ball Z), Android (Dragon Ball Z), Cell (Dragon Ball Z), Majin Buu (Dragon Ball Z) và gần đây nhất là Frieza (Dragon Ball Z: Fukkatsu no F). Nhờ chăm chỉ luyện tập và luôn không ngừng thách thức giới hạn của mình, cậu đã vươn lên thành một trong những người mạnh nhất vũ trụ.",
                avatar: "https://i.pinimg.com/originals/88/e5/1a/88e51a57db7489500ac9dab1c235fa80.jpg"
            ),
            .init(
                title: "Luffy",
                description: "là nhân vật chính của One Piece và là thuyền trưởng của băng Hải tặc Mũ Rơm, cậu có biệt danh là \"Luffy Mũ Rơm\" (麦わらのルフィ Mugiwara no Rufi?). Luffy trở thành người người cao su sau khi vô tình ăn trái ác quỷ Gomu Gomu (ゴムゴムの実 Gomu Gomu no Mi?) hệ Paramecia do Shanks lấy được. Luffy có ước mơ là trở thành Vua Hải tặc và là người tìm thấy kho báu \"One Piece\". Ước mơ này cũng như mong muốn ra biển và trở thành hải tặc của Luffy được truyền cảm hứng từ Shanks. Luffy sau đó được ông nội Garp gửi lên cho Dadan - một sơn tặc và 10 năm sau, Luffy lên đường tìm kiếm đồng đội để thành lập băng hải tặc của riêng mình, cuộc hành trình của Luffy bắt đầu và cái tên \"Luffy Mũ Rơm\" dần dần nổi tiếng trong toàn thế giới One Piece. Sau sự ra đi của người anh em kết nghĩa Portgas D. Ace, Luffy cảm thấy mình còn quá yếu. Cậu đã quyết định nhắn toàn băng đi luyện tập và hẹn gặp lại tại quần đảo Sabaody sau 2 năm để tiến vào Tân thế giới. Dưới sự kèm cặp và hướng đẫn của huyền thoại hải tặc Silver Rayleigh - cựu phó thuyền trưởng băng hải tặc Roger, trong 2 năm luyện tập Luffy đã có thể kiểm soát được Haki Bá vương và thành thục cả ba loại Haki cũng như hoàn thiện các kĩ năng chiến đấu, sáng tạo thêm các chiêu thức mới. Luffy có tính cách khá hài hước và đôi khi hơi ngốc nghếch, nhưng đồng thời cậu cũng là thiên tài khi chiến đấu, với khả năng ứng biến tuyệt vời. Luffy rất tin tưởng, yêu quý và tôn trọng các đồng đội của mình. Sau cuộc chiến với Tứ hoàng Big Mom, số tiền truy nã của Luffy hiện tại có giá 1,500,000,000Berry",
                avatar: "https://upload.wikimedia.org/wikipedia/vi/2/25/Monkey_D._Luffy%2C_post_time-skip%2C_OP.png"
            ),
            .init(
                title: "Tatsumaki",
                description: "Là một siêu anh hùng với siêu năng lực mạnh mẽ nhất trong hiệp hội, cô có vẻ bề ngoài trẻ hơn so với tuổi thật của mình. Đúng như thứ hạng của mình, cô mạnh hơn rất nhiều so với các anh hùng cấp S khác. Cô sở hữu khả năng điều khiển các vật thể to lớn, có khả năng nhổ toàn bộ một cơ sở dưới lòng đất cùng với tất cả các cư dân của nó và có khả năng chiến đấu với nhiều quái vật cấp Dragon dễ dàng khi rất nhiều các anh hùng cấp S khác đã không thể đánh bại duy nhất một con.",
                avatar: "https://static.wikia.nocookie.net/onepunchman/images/f/f5/Tatsumaki_full_appearance.png/revision/latest?cb=20200407192341"),
            .init(
                title: "Saitama",
                description: """
là một siêu anh hùng dễ dàng đánh bại bất kỳ đối thủ nào với một cú đấm của mình. Anh là một chàng trai cơ bắp 25 tuổi và bị hói đầu, được biết do quá trình tập luyện quá mức của anh gây ra. Saitama thường xuyên cứu những người vô tội khỏi các quái vật xuất hiện trong thế giới của mình. Tuy nhiên, anh không bao giờ nhận được bất kỳ sự công nhận nào từ dân chúng, mặc dù cuối cùng anh gia nhập Hiệp hội siêu Anh hùng và kể từ đó đã tăng lên đến hạng 7 cấp B. Sau khi đánh bại rất nhiều kẻ thù mà không cần dùng đến nhiều sức của mình, anh cảm thấy buồn chán và trống rỗng, không ngừng tìm kiếm đối thủ người thực sự có thể gây ra một thách thức đối với anh ta. Anh bị xem thường bởi hầu hết thành viên của Hiệp hội siêu Anh hùng và những người bình thường, nguyên nhân anh mất danh tiếng và uy tín của mình vì cách đánh bại kẻ thù một cách dễ dàng (đặc biệt là những kẻ thù đã đánh bại nhiều anh hùng cấp cao) và anh không quan tâm đến dư luận hay thiệt hại tài sản. Mặc dù vậy, Saitama là người có đạo đức hơn so với hầu hết các anh hùng trong sê-ri và không ham muốn hư danh, chẳng hạn như khi anh cải trang mình như một cảnh sát để đánh bại một con quái vật đang tàn phá vì người dân mất niềm tin vào cảnh sát (ngoại truyện).
Saitama mặc trên người mình một bộ trang phục màu vàng với găng tay và đôi ủng màu đỏ, trên vai khoác một áo choàng trắng nhìn rất đơn giản.
Trước thời điểm bắt đầu truyện, Saitama là một đứa trẻ học bình thường. Khi một giáo viên yêu cầu gặp anh ta tại văn phòng trách mắng về Saitama do không làm một số bài tập về nhà của mình, anh đã phải đối mặt với những kẻ bắt nạt và lấy đi tiền của mình. Saitama không quan tâm về việc bị bắt nạt vì anh cũng nghèo như những kẻ bắt nạt. Khi một con heo đất quái vật tấn công những kẻ bắt nạt để lấy số tiền bị đánh cắp của Saitama, một trong những kẻ bắt nạt hối tiếc hành động của mình, tiết lộ anh chỉ muốn nuôi em trai bị bệnh của mình. Chủ nghĩa anh hùng của Saitama được đánh thức lần đầu tiên và anh đuổi theo lấy lại tiền. Mặc dù đã cố gắng hết mình, Saitama vẫn không đủ mạnh để đánh bại những con quái vật. Khi trưởng thành, anh bây giờ là một người làm công ăn lương thất nghiệp trở nên trầm cảm sau nhiều lời từ chối. Một ngày nọ, Saitama cứu một đứa trẻ từ một con quái vật. Hành động này sinh ra hai kết quả lớn: Sức mạnh của anh và Saitama quyết định trở thành một anh hùng đơn giản bởi vì anh thích nó, dựa trên những anh hùng từ thời thơ ấu của mình. Sau khi tập luyện mỗi ngày trong ba năm một cách khủng khiếp, anh tập luyện thường xuyên 100 cái hít đất, 100 cái gập bụng, 100 cái bật nhảy và chạy 10 km mỗi ngày, anh đã đạt được sức mạnh siêu nhân và sở hữu siêu tốc độ, tuy nhiên tóc của anh lại bị rụng hết. Mặc dù Saitama tin sức mạnh của mình là một kết quả của việc tập luyện hàng ngày, tất cả những người nghe về phương pháp của anh, bao gồm cả Genos, cho rằng đó là một phương pháp lố bịch. Trong cuộc chiến với Chúa tể Boros (người mạnh nhất Saitama từng gặp nhưng không thể sánh bằng Saitama), hắn ta cho rằng anh liên tục giữ lại sức mạnh thực sự của mình để làm cho chiến đấu kéo dài hơn, anh buộc phải tung ra cú đấm nghiêm túc gây ra sóng thần và sóng xung kích liên lục địa.
"Thánh phồng tôm Saitama" được coi là một trong những nhân vật được xem là mạnh nhất trong anime và manga, thậm chí còn có nhiều ý kiến cho rằng Songoku cũng chưa chắc đã đánh lạiii nổi. Vì cho đến hiện tại sức mạnh thực sự của Saitama vẫn còn chưa được bật mí hết. Ngoài việc là một siêu anh hùng có sức mạnh khủng khiếp, Saitama còn nổi tiếng với quả đầu trọc cùng biểu cảm gương mặt ''đơ như cây cơ'' trong mọi tình huống. Saitama dường như vô cảm vì anh quá mạnh và hầu như đều kết thúc đối thủ chỉ bằng một cú đấm, ít khi anh cảm nhận được sự thú vị của một trận chiến là như thế nào.
Gương mặt nhìn “ngu không chịu được” ấy cũng quy định tính cách của Saitama. Anh chàng được xem là “hồn nhiên” quá mức trước mọi việc, mà thực tế là do anh ta làm bất cứ việc gì cũng không suy nghĩ, tính toán điều gì. Anh suy nghĩ, hành động nông nổi, hời hợt như một đứa trẻ con. Mặc dù Saitama đã 25 tuổi nhưng chưa hề có bóng hồng nào xuất hiện trong cuộc đời anh ta.
Siêu anh hùng “một đấm” đánh bại mọi kẻ thù cũng có cơ hội trở thành thầy, khi chàng người máy Genos luôn bám lấy anh để theo đuổi giấc mơ trở thành kẻ mạnh nhất. Thực tế, Saitama không dạy được cậu học trò chăm chỉ bài học nào ra hồn, bởi sức mạnh của anh chỉ đến nhờ việc luyện tập chăm chỉ. Tuy nhiên, qua từng hành động cao thượng, làm việc tốt không màng cấp bậc hay danh vọng của Saitama đã tạo động lực để Genos hướng gần hơn đến giá trị đạo đức của một người hùng chân chính.
""",
                avatar: "https://static.wikia.nocookie.net/onepunchman/images/0/07/Saitama_serious_profile.png/revision/latest?cb=20180111085926&path-prefix=vi"
            ),
            .init(
                title: "Marco",
                description: """
là Đội trưởng đội 1 của băng hải tặc Râu Trắng. Marco có biệt danh là "Bất Tử Điểu Marco" (不死鳥マルコ Fushichō Maruko?) do anh sở hữu trái ác quỷ Tori Tori Model: Phoenix (Phượng hoàng) (トリトリの実 モデル "不死鳥" (フェニックス) Tori Tori no Mi Moderu "Fenikkusu"?) thuộc nhóm Zoan Thần Thoại. Sau khi Râu Trắng tạ thế không lâu thì Marco cùng các đồng đội đã vướng vào cuộc chiến với băng hải tặc Râu Đen và phải chịu thất bại nặng nề. Hiện tại Marco đang làm bác sĩ tại quê hương của Râu Trắng là đảo Sphinx.
""",
                avatar: "https://static.wikia.nocookie.net/onepiece/images/0/06/Marco_the_Phoenix.png/revision/latest?cb=20200515171337&path-prefix=vi"
            ),
            .init(
                title: "Roronoa Zoro",
                description: """
là kiếm sĩ của băng hải tặc Mũ Rơm, anh là thành viên thứ hai của băng Mũ Rơm. Zoro theo "Tam Kiếm Phái" và có biệt danh là "Thợ săn Hải tặc Zoro" (海賊狩りのゾロ Kaizoku Gari no Zoro?), anh là chủ sở hữu của ba thanh kiếm nằm trong các thanh kiếm quý của thế giới One Piece. Ước mơ của Zoro là hoàn thành lời hứa với người bạn thân quá cố, trở thành kiếm sĩ mạnh nhất thế giới. Và để làm được điều đó anh phải đánh bại người nắm giữ vị trí này, "Mắt ưng Dracule Mihawk". Zoro đã ra khơi để lên đường thực hiện ước mơ của mình và làm nghề săn tiền thưởng để kiếm sống trước khi gặp Luffy, biệt danh cũng như sự nổi tiếng của Zoro ở East Blue bắt nguồn từ lý do này. Luffy gặp Zoro tại Shells Town, Zoro bị bắt giam ở đây do vướng vào rắc rối với hai cha con Đại tá Chi Nhánh Hải Quân Morgan "Tay Rìu" và Helmeppo. Luffy đã cứu Zoro và trở thành thuyền viên đầu tiên của băng hải tặc Mũ Rơm. Trong khoảng thời gian hai năm luyện tập, Zoro trở thành học trò của "Mắt diều hâu" Dracule Mihawk và ông đã dạy cho anh kiếm pháp cũng như cách sử dụng Haki. Zoro có thể sử dụng hai loại Haki thông thường. Số tiền truy nã của Zoro là 320,000,000 Berry
""",
                avatar: "https://upload.wikimedia.org/wikipedia/vi/5/50/Roronoa_Zoro.png"
            ),
            .init(
                title: "Sinbad",
                description: """
Thuyền trưởng Sinbad là nhân vật chính của câu chuyện, người lãnh đạo hải đoàn và con thuyền "Nomad". Trong tập phim mở màn, anh đã trở về sau hai năm bị lạc và mọi người lầm tưởng anh đã chết. Bên tay trái, anh có đeo một chiếc vòng, chỉ xuất hiện sau trận bão làm anh rơi khỏi con tàu. Zen Gesner đóng vai Sinbad.
""",
                avatar: "https://lh3.googleusercontent.com/proxy/oeLrAi7i2OErJ5yaKZUy34SwRduracGIjgQsHQCWRcAW9wbyfy8uC1T4Nw0HXazVOYvh0mszRyxMTna5EnJtfAJJJJG51ACriP0tFFXsolAR1iWdiAGWFZXFIyMAKSeJVniGxYCxfw50zHoO3A"
            ),
            .init(
                title: "Sanji",
                description: """
là Đầu Bếp của băng hải tặc Mũ Rơm và là thành viên thứ năm của băng. Anh có biệt danh Sanji Chân Đen (黒脚のサンジ Kuro Ashi no Sanji?) và có sở trường chiến đấu bằng chân. Ước mơ của Sanji là tìm thấy vùng biển huyền thoại "All Blue". Sanji là một đầu bếp tài ba và giỏi trong cả chiến đấu lẫn nấu ăn. Sanji rất lịch thiệp với phụ nữ chuẩn với hình mẫu của người đàn ông kiểu Pháp và cũng hơi "dê" một chút. Ngay từ khi còn bé Sanji đã làm phụ bếp trên một con tàu ở du lịch trước khi xảy ra biến cố với hải tặc Zeff "Chân Đỏ" và băng hải tặc Cook của ông ta. Zeff đã ăn một chân của mình và nhường lại phần lương thực cho Sanji khi cả hai bị kẹt trên một đảo đá. Sau đó Sanji đã cùng với Zeff gây dựng nên Nhà hàng trên biển Baratie và trở thành Phó Đầu Bếp tại đây cho tới khi gặp Luffy. Sanji học kĩ năng nấu nướng và phong cách chiến đầu bằng chân được truyền lại từ Zeff. Sau cuộc đụng độ với băng hải tặc Krieg, Sanji quyết định gia nhập băng hải tặc Mũ Rơm và trở thành thuyền viên thứ tư của băng. Trong hai năm luyện tập, Sanji được gửi tới vương quốc Kamabakka (モモイロ島 Momoiro Airando?) và luyện tập dưới sự hướng dẫn của "Nữ hoàng Okama" Ivankov. Sanji còn thường hay tự xưng là "Mr. Prince" (Mr. プリンス Misutā Purinsu?). Sanji có tên thật là Vinsmoke Sanji (ヴィンスモーク・サンジ Vinsumōku Sanji?) và là con trai thứ ba của gia tộc Vinsmoke thuộc vương quốc Germa ở North Blue. Sanji có thể sử dụng hai loại Haki thông thường. Sanji hiện bị truy nã với mức 330,000,000Berrysymbol.png. Sau arc Whole Cake, Sanji được gia đình tặng cho bộ giáp Hắc ẩn, có khả năng tàng hình.
""",
                avatar: "https://hosonhanvat.vn/wp-content/uploads/2020/03/onepiecesanji2.jpg"
            )
        ]
    }()
}
