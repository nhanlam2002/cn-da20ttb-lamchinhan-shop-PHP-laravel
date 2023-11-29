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
