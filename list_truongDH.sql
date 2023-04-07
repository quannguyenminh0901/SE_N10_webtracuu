 CREATE DATABASE dhonhanoi;
 USE DHonHaNoi;
 -- drop database dhonhanoi;
 CREATE TABLE truongDH (
MaTruong varchar(10) NOT NULL PRIMARY KEY,
TenTruong VARCHAR(224) NOT NULL,
linkaccess VARCHAR(50)
);


INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('BKA', 'Trường Đại học Bách Khoa Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('MHN', 'Trường Đại học mở Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('QH', 'Trường Đại học Quốc gia Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('QHI', 'Trường Đại học Công nghệ – Đại học Quốc gia Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('QHT', 'Trường ĐH Khoa học Tự nhiên – Đại học Quốc gia Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('QHX', 'Trường ĐH Khoa học Xã hội và Nhân văn – ĐH Quốc gia Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('QHE', 'Trường Đại học Kinh tế – Đại học Quốc gia Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('QHF', '	Trường Đại học Ngoại ngữ – Đại học Quốc gia Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('QHL', 'Khoa Luật – Đại học Quốc gia Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('QHS', 'Trường ĐH Giáo dục – Đại học Quốc gia Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('QHY', 'Khoa Y Dược – Đại học Quốc gia Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('QHQ', 'Khoa Quốc tế – Đại học Quốc gia Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('QHJ', 'Trường Đại học Việt Nhật – Đại học Quốc gia Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('NVH', 'Học viện Âm nhạc Quốc gia Việt Nam');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('TGC', 'Học viện Báo chí và Tuyên truyền');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('HCP', 'Học viện Chính sách và Phát triển');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('BVH', 'Học viện Công nghệ Bưu chính Viễn thông');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('KMA', 'Học viện Kỹ thuật Mật mã');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('NHH', 'Học viện Ngân hàng');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('HQT', 'Học viện Ngoại giao');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('HVN', 'Học viện Nông nghiệp Việt Nam');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('HPN', 'Học viện Phụ nữ Việt Nam');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('HVQ', 'Học viện Quản lý Giáo dục');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('HTC', 'Học viện Tài chính');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('HTN', 'Học viện Thanh Thiếu niên Việt Nam');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('HTA', 'Học viện Tòa án');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('HYD', 'Học viện Y Dược học cổ truyền Việt Nam');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('LDA', 'Trường Đại học Công đoàn');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('GTA', 'Trường Đại học Công nghệ Giao thông vận tải');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('CCM', 'Trường Đại học Công nghiệp Dệt may Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('VHD', 'Trường Đại học Công nghiệp Việt Hung');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('DKH', 'Trường Đại học Dược Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('DDL', 'Trường Đại học Điện lực');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('GHA', 'Trường Đại học Giao thông vận tải');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('NHF', 'Trường Đại học Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('KCN', 'Trường Đại học Khoa học và Công nghệ Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('DKK', 'Trường Đại học Kinh tế Kỹ thuật Công nghiệp');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('KHA', 'Trường Đại học Kinh tế Quốc dân');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('DKS', 'Trường Đại học Kiểm sát Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('KTA', 'Trường Đại học Kiến trúc Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('DLX', 'Trường Đại học Lao động Xã hội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('LNH', 'Trường Đại học Lâm nghiệp');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('LPH', 'Trường Đại học Luật Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('MDA', 'Trường Đại học Mỏ Địa chất Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('MTC', 'Trường Đại học Mỹ thuật Công nghiệp');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('MCA', 'Trường Đại học Mỹ thuật Công nghiệp Á Châu');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('MTH', '	Trường Đại học Mỹ thuật Việt Nam');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('NTH', 'Trường Đại học Ngoại thương');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('DNV', 'Trường Đại học Nội vụ Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('SKD', 'Trường Đại học Sân khấu Điện ảnh');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('SPH', 'Trường Đại học Sư phạm Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('GNT', 'Trường Đại học Sư phạm Nghệ thuật Trung ương Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('TDH', 'Trường Đại học Sư phạm Thể dục thể thao Hà nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('DMT', 'Trường Đại học Tài nguyên và Môi trường Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('C01', 'Trường Đại học Thủ đô Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('TLA', 'Trường Đại học Thủy lợi');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('TMA', 'Trường Đại học Thương mại');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('VHH', 'Trường Đại học Văn hóa Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('XDA', 'Trường Đại học Xây dựng');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('YHB', 'Trường Đại học Y Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('YTC', 'Trường Đại học Y tế Công cộng');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('DDU', 'Trường Đại học Đông Đô');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('DPD', 'Trường Đại học Phương Đông');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('DTL', 'Trường Đại học Thăng Long');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('DDN', 'Trường Đại học Đại Nam ');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('FPT', 'Trường Đại học FPT');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('HBU', 'Trường Đại học Hòa Bình');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('DQK', 'Trường Đại học Kinh doanh và Công nghệ Hà Nội ');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('NTU', 'Trường Đại học Nguyễn Trãi ');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('FBU', 'Trường Đại học Tài chính Ngân hàng Hà Nội');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('TDD', 'Trường Đại học Thành Đô');
INSERT INTO `dhonhanoi`.`truongdh` (`MaTruong`, `TenTruong`) VALUES ('DCQ', 'Trường Đại học Công nghệ và Quản lý Hữu nghị');

-- sắp xếp theo mã trường
select * from truongDH
order by MaTruong ASC;