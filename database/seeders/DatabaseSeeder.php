<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $databases = [
            [
                'table' => 'roles',
                'data' => [
                    [
                        'id' => 1,
                        'name' => 'Quản trị viên',
                    ],
                    [
                        'id' => 2,
                        'name' => 'Nhân Viên',
                    ],
                    [
                        'id' => 3,
                        'name' => 'Khách hàng',
                    ]
                ],
            ],
            [
                'table' => 'users',
                'data' => [
                    [
                        'id' => 1,
                        'name' => 'Admin',
                        'email' => 'admin@gmail.com',
                        'password' => Hash::make('password'),
                        'email_verified_at' => now(),
                        'phone_number' => '0000000000',
                        'active' => 1,
                        'role_id' => 1
                    ]
                ]
            ],
            [
                'table' => 'brands',
                'data' => [
                    [
                        'id' => 1,
                        'name' => 'NAshley'
                    ],
                    [
                        'id' => 2,
                        'name' => 'Aaron'
                    ],
                    [
                        'id' => 3,
                        'name' => 'ADunelm Group'
                    ],
                    [
                        'id' => 4,
                        'name' => 'Row'
                    ],
                    [
                        'id' => 5,
                        'name' => 'French Heritage'
                    ],
                ]
            ],
            [
                'table' => 'categories',
                'data' => [
                    [
                        'id' => 1,
                        'name' => 'Hiện đại',
                        'parent_id' => 0,
                        'slug' => 'hien-dai'
                    ],
                    [
                        'id' => 2,
                        'name' => 'Cổ điển',
                        'parent_id' => 0,
                        'slug' => 'co-dien'
                    ],
                    [
                        'id' => 3,
                        'name' => 'Tủ Đồ',
                        'parent_id' => 1,
                        'slug' => 'tu-do'
                    ],
                    [
                        'id' => 4,
                        'name' => 'Ghế Sofa',
                        'parent_id' => 1,
                        'slug' => 'ghe-sofa'
                    ],
                    [
                        'id' => 5,
                        'name' => 'Bàn gỗ',
                        'parent_id' => 1,
                        'slug' => 'ban-go'
                    ],
                    [
                        'id' => 6,
                        'name' => 'Đèn chùm',
                        'parent_id' => 1,
                        'slug' => 'den-chum'
                    ],
                    [
                        'id' => 7,
                        'name' => 'Kệ tivi',
                        'parent_id' => 1,
                        'slug' => 'ke-tivi'
                    ],
                    [
                        'id' => 8,
                        'name' => 'Giường ngủ',
                        'parent_id' => 1,
                        'slug' => 'giuong-ngu'
                    ],
                    [
                        'id' => 9,
                        'name' => 'Đèn để bàn',
                        'parent_id' => 2,
                        'slug' => 'den-de-ban'
                    ],
                    [
                        'id' => 10,
                        'name' => 'Đồng hồ treo tường',
                        'parent_id' => 2,
                        'slug' => 'dong-ho-treo-tuong'
                    ],
                    [
                        'id' => 11,
                        'name' => 'Tranh treo tường',
                        'parent_id' => 2,
                        'slug' => 'tranh-treo-tuong'
                    ],
                    [
                        'id' => 12,
                        'name' => 'Nhà bếp',
                        'parent_id' => 2,
                        'slug' => 'nha-bep'
                    ],
                    [
                        'id' => 13,
                        'name' => 'Bộ tách trà',
                        'parent_id' => 2,
                        'slug' => 'bo-tach-tra'
                    ],
                ]
            ],
            [
                'table' => 'payments',
                'data' => [
                    [
                        'id' => 1,
                        'name' => 'Khi nhận hàng',
                        'status' => 1,
                        'img' => '1682960154.png',
                    ],
                    [
                        'id' => 2,
                        'name' => 'Ví điện tử Momo',
                        'status' => 1,
                        'img' => '1682960202.png',
                    ],
                ]
            ],
            [
                'table' => 'colors',
                'data' => [
                    [
                        'id' => 1,
                        'name' => 'Trắng'
                    ],
                    [
                        'id' => 2,
                        'name' => 'Đen'
                    ],
                    [
                        'id' => 3,
                        'name' => 'Xám'
                    ],
                    [
                        'id' => 4,
                        'name' => 'Đỏ'
                    ],
                    [
                        'id' => 5,
                        'name' => 'Vàng'
                    ],
                    [
                        'id' => 6,
                        'name' => 'Xanh'
                    ],
                    [
                        'id' => 7,
                        'name' => 'Tím'
                    ],
                ]
            ],
            [
                'table' => 'sizes',
                'data' => [
                    [
                        'id' => 1,
                        'name' => 'To'
                    ],
                    [
                        'id' => 2,
                        'name' => 'Vừa'
                    ],
                    [
                        'id' => 3,
                        'name' => 'Nhỏ'
                    ],
                    [
                        'id' => 4,
                        'name' => 'Custom'
                    ],
                ]
            ],
            [
                'table' => 'setting',
                'data' => [
                    [
                        'id' => 1,
                        'logo' => 'logo.png',
                        'name' => 'WebWeb',
                        'email' => 'WebWeb@gmail.com',
                        'address' => 'P1, TP Trà Vinh',
                        'phone_number' => '0399929933',
                        'maintenance' => 2,
                        'notification' => '<b>WEBSITE tạm thời bảo trì để nâng cấp xin  quay lại sau</b>',
                        'introduction' => '
                            <h3 style="text-align: center; ">
                            <b>GIỚI THIỆU VỀ FLATSHOP</b>
                            </h3><h5><br></h5><h5><span style="font-family: " source="" sans="" pro";"="" times="" new="" roman"; "="">
                            Chào mừng đến với website bán thời trang của chúng tôi! 
                            Chúng tôi tự hào là một trong những cửa hàng trực tuyến hàng đầu về thời trang, 
                            cung cấp cho khách hàng những sản phẩm thời trang chất lượng cao và đa dạng.
                            </span><br></h5><h5><br></h5><h5>
                            Đối với chúng tôi, thời trang là một niềm đam mê và một nghệ thuật. 
                            Chúng tôi không chỉ cung cấp cho khách hàng những sản phẩm thời trang đẹp và chất lượng, 
                            mà còn mang đến cho họ những trải nghiệm mua sắm tuyệt vời. Chúng tôi luôn nỗ lực để đáp ứng nhu cầu của khách hàng,
                            từ việc cung cấp những sản phẩm mới nhất đến việc cải tiến dịch vụ khách hàng.
                            <br></h5><h5><br></h5><h5>
                            Chúng tôi cam kết chỉ bán những sản phẩm thời trang được làm từ chất liệu tốt nhất, 
                            đảm bảo độ bền cao và giá trị sử dụng lâu dài. Chúng tôi luôn đảm bảo rằng mỗi sản phẩm đều được kiểm tra kỹ lưỡng trước khi đưa vào bán hàng, 
                            để đảm bảo rằng chúng đáp ứng các tiêu chuẩn chất lượng mà chúng tôi đặt ra.
                            <br></h5><h5><br></h5><h5>
                            Chúng tôi luôn cập nhật các xu hướng thời trang mới nhất, 
                            đảm bảo rằng bạn sẽ luôn có những sản phẩm đẹp và phù hợp với phong cách của mình. 
                            Từ những bộ cánh phong cách đường phố đến những thiết kế sang trọng cho các buổi tiệc, 
                            chúng tôi có tất cả những gì bạn cần để thể hiện phong cách cá nhân của mình.
                            <br></h5><h5><br></h5><h5>Ngoài ra, 
                            chúng tôi cũng cung cấp cho khách hàng các phụ kiện thời trang đa dạng, từ giày dép, túi xách, 
                            đồng hồ đến trang sức và nhiều thứ khác, giúp khách hàng hoàn thiện phong cách của mình một cách tuyệt vời.
                            <br></h5><h5><br></h5><h5>
                            Đội ngũ nhân viên của chúng tôi luôn sẵn sàng hỗ trợ bạn trong quá trình mua sắm. 
                            Chúng tôi cam kết đem đến cho khách hàng những trải nghiệm mua sắm tuyệt vời, từ việc tìm kiếm sản phẩm đến việc đặt hàng và nhận hàng.
                            </h5><p><br></p><h5>
                            Chúng tôi tự hào giới thiệu cho bạn những sản phẩm thời trang đa dạng và phong phú. 
                            Từ những bộ cánh casual hàng ngày đến những thiết kế sang trọng cho các dịp đặc biệt, 
                            chúng tôi có tất cả những gì bạn cần để thể hiện phong cách cá nhân của mình.
                            <br></h5><h5><br></h5><h5>Với những thiết kế đa dạng, 
                            chúng tôi cam kết đem đến cho khách hàng những trải nghiệm mua sắm tuyệt vời. 
                            Những sản phẩm của chúng tôi được thiết kế và sản xuất bởi những thương hiệu nổi tiếng trên thế giới, 
                            đảm bảo về chất lượng và độ bền.<br></h5><h5><br></h5><h5>Nếu bạn đang tìm kiếm những bộ cánh năng động và trẻ trung, 
                            hãy khám phá các sản phẩm áo thun, quần jean, áo khoác bomber, 
                            hoặc các thiết kế streetwear đầy phong cách. 
                            Nếu bạn cần một bộ cánh lịch sự cho một buổi tiệc hoặc sự kiện quan trọng, 
                            chúng tôi cũng có các thiết kế sang trọng như váy dạ hội, đầm maxi, áo sơ mi hay quần tây.
                            <br></h5><h5><br></h5><h5>
                            Ngoài ra, chúng tôi cũng cung cấp các sản phẩm thời trang thể thao, 
                            đáp ứng nhu cầu của những khách hàng yêu thích các hoạt động thể thao và thích sự thoải mái khi mặc.
                            <br>
                            Hãy truy cập vào website của chúng tôi để khám phá thêm các sản phẩm thời trang đa dạng và phong phú. 
                            Chúng tôi tin rằng, bạn sẽ tìm thấy những sản phẩm ưng ý và phù hợp với phong cách cá nhân của mình.</h5>
                        '
                    ],
                ]
            ]
        ];

        foreach ($databases as $database ) {
            $recordNumber = DB::table($database['table'])->count();
            foreach ($database['data'] as $key => $record) {
                if ($key >= $recordNumber)
                DB::table($database['table'])->insert($record);
            }
        }
    }
}