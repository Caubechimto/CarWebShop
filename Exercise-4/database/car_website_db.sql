use carweb;

CREATE TABLE user (
  id int primary key NOT NULL AUTO_INCREMENT,
  username varchar(255) unique NOT NULL,
  password varchar(255) NOT NULL,
  fullname varchar(255) DEFAULT NULL,
  phone varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  status int NOT NULL,
  createddate datetime DEFAULT NULL,
  modifieddate datetime DEFAULT NULL,
  createdby varchar(255) DEFAULT NULL,
  modifiedby varchar(255) DEFAULT NULL
);

INSERT INTO user
VALUES 
(1,'nguyenvana','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','nguyen van a',NULL,NULL,1,NULL,NULL,NULL,NULL),
(2,'nguyenvanb','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','nguyen van b',NULL,NULL,1,NULL,NULL,NULL,NULL),
(3,'nguyenvanc','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','nguyen van c',NULL,NULL,1,NULL,NULL,NULL,NULL),
(4,'nguyenvand','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','nguyen van d',NULL,NULL,1,NULL,NULL,NULL,NULL);

CREATE TABLE role (
  id int primary key NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  code varchar(255) NOT NULL,
  createddate datetime DEFAULT NULL,
  modifieddate datetime DEFAULT NULL,
  createdby varchar(255) DEFAULT NULL,
  modifiedby varchar(255) DEFAULT NULL
);

INSERT INTO role 
VALUES 
(1,'Quản lý','ADMIN',NULL,NULL,NULL,NULL),
(2,'Khách hàng','USER',NULL,NULL,NULL,NULL);

CREATE TABLE user_role (
  id int primary key NOT NULL AUTO_INCREMENT,
  role_id int NOT NULL,
  user_id int NOT NULL,
  createddate datetime DEFAULT NULL,
  modifieddate datetime DEFAULT NULL,
  createdby varchar(255) DEFAULT NULL,
  modifiedby varchar(255) DEFAULT NULL,
  KEY fk_user_role (user_id),
  KEY fk_role_user (role_id),
  CONSTRAINT fk_role_user FOREIGN KEY (role_id) REFERENCES role (id),
  CONSTRAINT fk_user_role FOREIGN KEY (user_id) REFERENCES user (id)
);

INSERT INTO user_role 
VALUES (1,1,1,NULL,NULL,NULL,NULL),
(2,2,2,NULL,NULL,NULL,NULL),
(3,2,3,NULL,NULL,NULL,NULL),
(4,2,4,NULL,NULL,NULL,NULL);

create table brands(
	id int primary key auto_increment,
    name varchar(255) not null
);

insert into brands (name)
values
('Vinfast'),
('Mazda'),
('KIA'),
('Toyota'),
('Ford'),
('Huyndai'),
('Honda'),
('Mitsubishi'),
('Nissan'),
('Mercedes'),
('BMW'),
('Lexus'),
('Audi'),
('Volvo'),
('Subaru'),
('Peugeot'),
('Volkswagen'),
('Suzuki'),
('Isuzu'),
('Jeep'),
('Porsche'),
('Land Rover');

create table cars(
	id int primary key auto_increment,
    name varchar(255) not null,
    model varchar(255),
    brand_id int,
    foreign key (brand_id) references brands(id),
    seat int,
    transmission varchar(255),
    year int,
    price int,
    engine nvarchar(255),
    fuel varchar(255),
    airbag int,
    consumption nvarchar(255),
    status enum ('NEW', 'OLD'),
    origin nvarchar(255),
    imageURL varchar(255),
    description text
);

INSERT INTO cars VALUES 
(1,'VinFast VF5 Plus','SUV',1,5,'TU_DONG',2021,468,'Động cơ điện','DIEN',6,'>300KM/lần sạc','NEW','Việt Nam','https://cdn.dailyxe.com.vn/image/ngoai-that-vinfat-vf5-12-320245j.jpg','VinFast VF5 Plus sở hữu có ngoại thất bắt mắt. Mẫu xe này được thiết kế bởi các thương hiệu nổi tiếng trên thế giới gồm Torino Design và Pininfarina. Xe VF5 sử dụng ngôn ngữ thiết kế hiện đại, cá tính mang đậm phong cách Âu Mỹ có thể hút khách hàng toàn cầu cũng như tại Việt Nam.'),(2,'All NEW Mazda 3 Deluxe','SEDAN',2,5,'TU_DONG',2019,579,'Skyactiv-G 1.5L','XANG',7,'6.8L/100KM','OLD','Nhật Bản','https://cdn.dailyxe.com.vn/image/ngoai-that-mazda3-all-new-2020-04-88956j.jpg','Mazda 3 Deluxe là một trong những phiên bản của dòng xe New Mazda 3 được cho ra mắt. Mẫu xe sedan sở hữu ngôn ngữ thiết kế Kodo được chăm chút tỉ mỉ vốn được xem là cái hồn của Mazda từ trước tới nay. Phong cách thiết kế này hướng tới sự tối giản nhưng vẫn đảm bảo yếu tố thanh lịch đầy quyến rũ.'),(3,'All NEW Mazda 3 Sport Luxury','HATCHBACK',2,5,'TU_DONG',2022,639,'Skyactiv-G 1.5L','XANG',7,'5.98L/100KM','NEW','Thái Lan','https://cdn.dailyxe.com.vn/image/ngoai-that-mazda3-sprt-2020-01-87471j.jpg','Mazda 3 Sport Luxury - Bản Hatchback của Mazda 3 và là một trong các phiên bản của dòng xe New Mazda 3 Sport. Phong cách thiết kế của mẫu xe này vẫn trung thành với ngôn ngữ thiết kế Kodo được chăm chút tỉ mỉ, hướng tới sự tối giản nhưng vẫn đảm bảo yếu tố thanh lịch đầy quyến rũ.'),(4,'NEW KIA Morning X-Line','HATCHBACK',3,5,'TU_DONG',2020,424,'Kappa 1.25L','XANG',2,'6L/100KM','OLD','Việt Nam','https://cdn.dailyxe.com.vn/image/new-morning-x-line-1-319615j.jpg','Sau thời gian dài im hơi lặng tiếng, Thaco Trường Hải đã chính thức giới thiệu New KIA Morning mới nhất. Mẫu xe này sẽ được ra mắt trong thời gian tới với hai phiên bản X-Line và GT-Line. Bước sang thế hệ mới, KIA Morning nhận được rất nhiều cải tiến từ ngoại thất, nội thất giúp dòng xe khẳng định lại kỷ nguyên huy hoàng năm xưa. '),(5,'NEW KIA Carnival 2.2D Luxury 8S','MPV',3,8,'TU_DONG',2024,1299,'Smartstream 2.2D','DAU',7,'6.5L/100KM','NEW','Hàn Quốc','https://cdn.dailyxe.com.vn/image/kia-carnival-2024-02-333824j.jpg','Dù sở hữu trang bị không quá nổi bật như các bản còn lại nhưng New KIA Carnival 2.2D Luxury 8S vẫn nhận được sự quan tâm của đông đảo người bởi sự chênh lệch đáng kể về mặt giá bán cùng sự đầu tư đáng kể về diện mạo và không gian nội thất.'),(6,'Toyota Wigo E','HATCHBACK',4,5,'SO_SAN',2021,360,'3NR-VE','XANG',2,'5.14L/100KM','OLD','Việt Nam','https://cdn.dailyxe.com.vn/image/banner-03-308959j.jpg','Toyota Wigo E là một mẫu xe hatchback nhỏ gọn và tiện ích thuộc dòng xe Toyota Wigo thế hệ 2 ra mắt trong đầu năm 2023. Hãng quyết tâm cạnh tranh để giành ngôi đầu bảng trong phân khúc xe đô thị hạng A khi đối đầu cạnh tranh với Hyundai Grand i10 và Kia Morning trong phân khúc xe đô thị nhỏ. Toyota Wigo E sẽ là lựa chọn hoàn hảo cho những khách hàng ưa thích di chuyển linh hoạt trong đô thị nhộn nhịp.'),(7,'Toyota Innova Cross','MPV',4,8,'TU_DONG',2023,810,'M20A-FKS','XANG',6,'9.75L/100KM','NEW','Việt Nam','https://cdn.dailyxe.com.vn/image/ngoai-that-innova-cross-01-323522j.jpg','Toyota Innova Cross thế hệ mới được bổ sung nhiều tiện nghi và tính năng an toàn hơn, tập trung vào khả năng vận hành hiệu quả nên thu hút sự quan tâm của đông đảo khách hàng.'),(8,'Toyota Hilux 2.4L 4x4 MT','PICKUP',4,5,'SO_SAN',2024,668,'2GD-FTV 2.4L','DAU',5,'7L/100KM','OLD','Việt Nam','https://cdn.dailyxe.com.vn/image/ngoai-that-toyota-hilux-24l-2024-08-328726j.jpg','Toyota Hilux được biết đến là mẫu xe bán tải được ưa chuộng hàng đầu thế giới, luôn có doanh số thuộc top bán chạy tại thị trường Đông Nam Á bởi tính thực dụng hay sự bền bỉ lâu dài của thương hiệu vốn nổi tiếng của Nhật.'),(9,'Ford Everest Ambiente 2.0L AT 4x2','SUV',5,7,'TU_DONG',2020,1099,'Single Turbo Diesel 2.0L','DAU',7,'8.51L/100KM','NEW','Thái Lan','https://cdn.dailyxe.com.vn/image/ngoai-that-ford-everest-07-288484j.jpg','Ngày 1/7 vừa qua, Ford Việt Nam đã trình làng mẫu SUV 7 chỗ Everest với 4 phiên bản, tăng 1 phiên bản Ambiente so với thế hệ cũ. Ford Everest có nhiều thay đổi về ngoại hình cũng như trang bị, dự kiến sẽ đến tay khách hàng vào giữa tháng 8/2022.'),(10,'Ford Ranger XL 2.0L 4x4 MT','PICKUP',5,5,'SO_SAN',2023,669,'Turbo Diesel 2.0L','DAU',6,'8L/100KM','OLD','Thái Lan','https://cdn.dailyxe.com.vn/image/ngoai-that-ranger-xl-09-295418j.jpg','Ford Ranger thế hệ mới được nâng cấp toàn diện từ vận hành đến thiết kế nội - ngoại thất, mang đến những trải nghiệm hấp dẫn hơn cho khách hàng. Trong đó, Ford Ranger XL 2.0L 4x4 MT chính là phiên bản tiêu chuẩn của dòng xe bán tải đến từ Mỹ.'),(11,'Hyundai Grand i10 HATCHBACK 1.2 MT','HATCHBACK',6,5,'SO_SAN',2024,360,'I4','XANG',2,'6.3L/100KM','NEW','Ấn Độ','https://cdn.dailyxe.com.vn/image/new-hyundai-i10-hatchback-05-330700j.jpg','Tại Việt Nam, New Hyundai i10 Hatchback đã luôn khẳng định vị thế và sự thành công bậc nhất trong phân khúc xe cỡ nhỏ khi luôn đứng trong top đầu doanh số.'),(12,'Hyundai Stargazer','MPV',6,7,'TU_DONG',2022,489,'SmartStream G2.5','XANG',2,'6.28L/100KM','OLD','Ấn Độ','https://cdn.dailyxe.com.vn/image/ngoai-that-hyundai-stargazer-07-295619j.jpg','Hyundai Stargazer Tiêu Chuẩn vừa ra mắt tại Việt Nam, trở thành đối thủ mới của Mitsubishi Xpander, Toyota Veloz Cross, Suzuki XL7 trong phân khúc MPV 7 chỗ cỡ nhỏ. Giá xe Hyundai Stargazer cũng là một trong những yếu tố tạo nên sức cạnh tranh lớn.'),(13,'Honda Civic Type R','HATCHBACK',7,5,'TU_DONG',2023,2399,'I4','XANG',8,'8.6L/100KM','NEW','Nhật Bản','https://cdn.dailyxe.com.vn/image/baner-ngoai-that-honda-civic-type-r-04-308266j.jpg','Honda Civic Type R mẫu xe thể thao hiệu năng cao đến từ thương hiệu xe hơi Honda nổi tiếng của Nhật Bản. Với kiểu dáng hatchback đầy chất thể thao, đường nét thiết kế đầy sắc sảo cùng động cơ đầy mạnh mẽ, Honda Civic phiên bản Type R đã nhanh chóng nhận về cho mình các giải thưởng toàn cầu chỉ sau thời gian ngắn ra mắt.'),(14,'NEW Mitsubishi Pajero Sport Diesel 4x2 AT','SUV',8,7,'TU_DONG',2024,1130,'MIVEC 2.4L','DAU',6,'8.4L/100KM','OLD','Thái Lan','https://cdn.dailyxe.com.vn/image/ngoai-that-mitsubishi-pajero-sport-2020-02-151490j.jpg','New Mitsubishi Pajero Sport Diesel 4x2 AT là mẫu SUV đang chạy đua công nghệ với các đối thủ Fortuner, Everest bằng việc lắp hàng loạt tính năng an toàn chủ động và, chỉ còn bản máy dầu 2.4 MIVEC. Hãng xe Nhật tỏ ra không mặn mà với nhóm khách hàng mua xe chạy dịch vụ như cách Toyota, Ford làm với Fortuner, Everest bằng các phiên bản tầm thấp giá dưới 1 tỷ. Mitsubishi chọn cho mình hướng đi khác biệt khi trang bị hàng loạt công nghệ an toàn, tiện nghi cho Mitsubishi Pajero Sport.'),(15,'Mitsubishi Triton 2WD AT GLX','PICKUP',8,5,'TU_DONG',2022,655,'MIVEC Turbo Diesel 2.4','DAU',3,'10L/100KM','NEW','Thái Lan','https://cdn.dailyxe.com.vn/image/mitsubishi-triton-2024-03-333599j.jpg','Mitsubishi Triton 2WD AT GLX thuộc thế hệ thứ mới có mức giá khởi điểm từ 655 triệu đồng với nhiều điểm tinh chỉnh nổi bật, đem đến một diện mạo bên ngoài mới mạnh mẽ cá tính, nội thất tiện nghi cùng động cơ vận hành vượt trội.'),(16,'Nissan Kicks e-Power E','SUV',9,5,'TU_DONG',2023,789,'1.2L Hybrid E-Power','XANG',2,'4.6L/100KM','OLD','Nhật Bản','https://cdn.dailyxe.com.vn/image/ngoai-that-nissan-kicks-09-296609j.jpg','Nissan Kicks e-POWER vừa ra mắt chính thức tại Việt Nam bao gồm 2 phiên bản đi cùng giá bán khởi điểm 789 triệu đồng. Tại nước ta, Nissan Kicks e-POWER có đến 6 tuỳ chọn màu sắc ngoại thất gồm đỏ, xám, trắng ngọc trai, xanh, cam, đen. Mẫu xe SUV đô thị này cạnh tranh trực tiếp với những cái tên như Honda HR-V, Kia Seltos, Hyundai Creta, Mazda CX-30.'),(17,'Mercedes-AMG C63 S E Performance','SEDAN',10,4,'TU_DONG',2024,4900,'2.0L','XANG',6,'12L/100KM','NEW','Đức','https://cdn.dailyxe.com.vn/image/mercedes-amg-c-63-s-e-performance-10-328123j.jpg','Mercedes-AMG C 63 S E Performance thế hệ mới, bứt phá mọi cung đường, hứa hẹn đem lại những trải nghiệm tuyệt vời đến người dùng bởi khối động cơ điện kết hợp với động cơ đốt trong giúp hiệu suất vận hành nâng cao.'),(18,'BMW 730Li M-Sport','SEDAN',11,4,'TU_DONG',2023,3919,'B48 2.0L','XANG',6,'6.6L/100KM','OLD','Đức','https://cdn.dailyxe.com.vn/image/ngoai-that-bmw-730li-m-sport-02-121562j.jpg','BMW 730Li M Sport nằm trong 3 phiên bản mới nhất của mẫu sedan đầu bảng BMW 7 Series vừa cập cảng Việt Nam. BMW 730Li M Sport thế hệ mới có ngoại hình ngầu và khác biệt hơn hẳn khi sử dụng gói ngoại thất M Sport cực “chất”, đi cùng trang bị nội thất và khả năng vận hành không thua bất cứ đối thủ nào hiện nay. Bảng giá BMW 7 Series rơi vào khoảng 3,969 tỷ đến 6,299 tỷ đồng tùy phiên bản.'),(19,'Lexus ES 250 F Sport','SEDAN',12,4,'TU_DONG',2022,2710,'I4','XANG',10,'7.1L/100KM','NEW','Nhật Bản','https://cdn.dailyxe.com.vn/image/ngoai-that-lexus-es-250f-sport-11-299924j.jpg','Lexus ES 250 F Sport sở hữu ngoại hình sang trọng cùng rất nhiều trang bị độc quyền, tạo nên một mẫu xe sedan hạng sang mang phong cách thể thao cuốn hút. Mẫu sedan ES 250 F Sport mang đến cho người dùng làn gió mới ở phân khúc sedan hạng. Giá xe Lexus ES khá dễ tiếp cận khách hàng trong phân khúc sedan cỡ trung hạng sang.'),(20,'Audi Q2 35 TFSI COD','SUV',13,5,'TU_DONG',2022,1590,'I4 1.4L','XANG',6,'7.56L/100KM','OLD','Đức','https://cdn.dailyxe.com.vn/image/ngoai-that-audi-q2-12-304876j.jpg','Audi Q2 35 TFSI COD sở hữu ngoại hình mới mẻ, với nội thất tiện nghi cùng khả năng vận hành vượt trội. Từ thế hệ Audi Q2 trở đi, các phiên bản có số đuôi chẵn khác sẽ được định hình sản phẩm mang phong cách lai giữa SUV và Coupe thể thao. Đối thủ của Audi Q2 trên thị trường ôtô Việt Nam có thể kể tới như Mercedes GLA, BMW X1 hay MINI Countryman,... Giá xe Audi Q2 được đánh giá khá hợp lý và rất phù hợp với những khách hàng trẻ tuổi.'),(21,'Volvo XC90 Ultimate','SUV',14,4,'TU_DONG',2021,4050,'I4 2.0L','XANG',7,'12.95L/100KM','NEW','Thuỵ Điển','https://cdn.dailyxe.com.vn/image/32-128306j.jpg','Volvo XC90 Ultimate là chiếc SUV 7 chỗ hạng sang được nhập khẩu trực tiếp từ Thụy Điển. Ấn tượng của mỗi chiếc xe Volvo XC90 đó là diện mạo đơn giản nhưng vẫn thật tinh tế của một chiếc SUV sang trọng. Giá xe Volvo XC90 ở mỗi phiên bản được cập nhật một cách chi tiết đến tất cả khách hàng.'),(22,'Subaru WRX Wagon 2.4 CVT tS EyeSight','SEDAN',15,5,'SO_SAN',2022,2079,'2.4L','XANG',7,'10.2L/100KM','OLD','Nhật Bản','https://cdn.dailyxe.com.vn/image/subaru-wrx-04-338007j.jpg','Subaru WRX có lịch sử khi tham gia các giải đua xe huyền thoại, giờ đây WRX không chỉ là một chiếc xe, mà còn là một tuyên ngôn về phong cách sống năng động và cá tính. Thiết kế ngoại thất thể thao, hầm hố cùng nội thất đậm chất thể thao đã tạo nên một biểu tượng bất hủ trong làng xe hơi.'),(23,'NEW Peugeot 5008 AL','SUV',16,7,'TU_DONG',2020,1084,'THP 1.6L','XANG',6,'6.87L/100KM','NEW','Pháp','https://cdn.dailyxe.com.vn/image/ngoai-that-peugeot-5008-gt-05-249434j.jpg','Thaco vừa chính thức giới thiệu mẫu SUV 7 chỗ New Peugeot 5008. Khi nhu cầu sử dụng xe gầm cao ngày càng trở nên phổ biến, nhất là trong phân khúc SUV Châu Âu, thì việc giới thiệu New Peugeot 5008 với thiết kế nổi bật và công nghệ an toàn đẳng cấp giúp người tiêu dùng có thêm nhiều lựa chọn. Trong đó, New Peugeot 5008 AL chính là phiên bản tiêu chuẩn của dòng xe.'),(24,'Volkswagen Polo HATCHBACK 1.6L','HATCHBACK',17,5,'TU_DONG',2022,695,'I4','XANG',2,'7.41L/100KM','OLD','Ấn Độ','https://cdn.dailyxe.com.vn/image/ngoai-that-volkswagen-polo-hatchback-01-168504j.jpg','Volkswagen Polo là một trong những hãng ô tô lâu đời của Đức. Mới đây hãng xe này vừa cho ra mắt phiên bản mới nhất là Volkswagen Polo Hatchback 1.6L với đa dạng tiện nghi và giá bán hấp dẫn.'),(25,'Suzuki XL7 Hybrid','MPV',18,7,'TU_DONG',2021,608,'K15B','XANG',2,'6.6L/100KM','NEW','Việt Nam','https://cdn.dailyxe.com.vn/image/suzuki-xl7-hybrid-2tone-07-332836j.jpg','Ngày 20/8 vừa qua, Suzuki Việt Nam cho ra mắt phiên bản nâng cấp giữa vòng đời của Suzuki XL7 Hybrid với 1 phiên bản duy nhất là Hybrid với 2 Tone màu. Mẫu xe MPV mang phong cách SUV được nhập khẩu trực tiếp từ Indonesia.'),(26,'Suzuki Ertiga Hybrid MT','MPV',18,7,'SO_SAN',2020,538,'K15B','XANG',2,'6.41L/100KM','OLD','Việt Nam','https://cdn.dailyxe.com.vn/image/ngoai-that-suzuki-ertiga-hybrid-08-295672j.jpg','Ngày 27/9, Suzuki Việt Nam giới thiệu Ertiga, mẫu MPV đầu tiên trong phân khúc có cấu hình động cơ hybrid nhẹ (mild hybrid) đem đến khả năng tiết kiệm nhiên liệu tốt hơn bản cũ. Xe Suzuki Ertiga Hybrid được bán ra với 3 phiên bản: MT giá 539 triệu, AT 609 triệu và Sport Limited 678 triệu đồng. Trong đó, Suzuki Ertiga Hybrid MT là bản tiêu chuẩn có mức giá rẻ nhất phải kể đến.'),(27,'Isuzu D-Max','PICKUP',19,5,'TU_DONG',2021,880,'RZ4E - TC','XANG',7,'7.7L/100KM','NEW','Việt Nam','https://cdn.dailyxe.com.vn/image/isuzu-d-max-02-338185j.jpg','Isuzu Việt Nam đã chính thức trình làng mẫu bán tải Isuzu D-Max tại triển lãm Vietnam Motor Show 2024. Với những nâng cấp đáng kể về thiết kế và trang bị, D-Max hứa hẹn sẽ mang đến một làn gió mới cho phân khúc bán tải tại Việt Nam, được nhập khẩu nguyên chiếc từ Thái Lan.'),(28,'Jeep RAM 1500 Laramie','PICKUP',20,5,'TU_DONG',2020,5388,'V8 5.7L','XANG',7,'17.43L/100KM','OLD','Mỹ','https://cdn.dailyxe.com.vn/image/ngoai-that-jeep-ram-1500-01-284825j.jpg','Jeep Vietnam chính thức ra mắt thị trường Việt Nam thương hiệu xe RAM. Dòng xe được nhập về đầu tiên là RAM 1500 với 03 phiên bản: Jeep RAM 1500 Laramie, Laramie Night Edition và Longhorn. Giá xe Jeep Ram cũng được công bố cụ thể đến tất cả khách hàng quan tâm.'),(29,'Porsche Panamera','SEDAN',21,4,'TU_DONG',2023,6250,'V6','XANG',8,'7L/100KM','NEW','Đức','https://cdn.dailyxe.com.vn/image/porsche-panamera-01-325744j.jpg','Porsche Panamera trải qua ba vòng đời với nhiều điểm cải tiến hứa hẹn đem đến cho khách hàng sự kết hợp hoàn hảo giữa phong cách thể thao, sang trọng và công nghệ hiện đại, hoàn mỹ từ trong ra ngoài.'),(30,'Range Rover SE 3.0','SUV',22,5,'TU_DONG',2024,25509,'I6','XANG',8,'7L/100KM','OLD','Anh','https://cdn.dailyxe.com.vn/image/range-rover-13-324507j.jpg','Range Rover dòng xe hạng sang đến từ Anh quốc, trải qua 4 vòng đời, giờ đây thế hệ thứ 5 được ra mắt thu hút nhiều sự chú ý bởi những trang bị công nghệ tiên tiến độc quyền, cùng lối thiết kế tối giản sang trọng, mang hơi thở đến từ tương lai.');


create table test_drive(
	id int primary key auto_increment,
    user_id int,
    foreign key (user_id) references user(id),
    car_id int,
    foreign key (car_id) references cars(id),
    date date,
    status enum('pending', 'confirmed', 'completed', 'cancelled') default 'pending',
    drive_time int ,
	created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp
);

create table warranty(
	id int primary key auto_increment,
    user_id int,
    foreign key (user_id) references user(id),
    car_id int,
    foreign key (car_id) references cars(id),
    start_date date,
    end_date date,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp
);
