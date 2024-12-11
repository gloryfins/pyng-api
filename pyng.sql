-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 03:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pyng`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `product_url` text NOT NULL,
  `image_url` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `original_price` int(11) NOT NULL,
  `discounted_price` int(11) NOT NULL,
  `rating` decimal(10,1) NOT NULL,
  `sold_unit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `name`, `product_url`, `image_url`, `category`, `original_price`, `discounted_price`, `rating`, `sold_unit`) VALUES
(1, 'Official Xiaomi POCO F6 8/256GB 12/512GB | Snapdragon 8s Gen 3 | LiquidCool Technology 4.0 dengan IceLoop | Layar AMOLED CrystalRes 120Hz Flow', 'https://www.blibli.com/p/official-xiaomi-poco-f6-8-256gb-12-512gb-snapdragon-8s-gen-3-liquidcool-technology-4-0-dengan-iceloop-layar-amoled-crystalres-120hz-flow/ps--XIO-60022-01059?ds=XIO-60022-01059-00003', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/MTA-170050885/xiaomi_official_xiaomi_poco_f6_8-256gb_12-512gb_-_snapdragon_8s_gen_3_-_liquidcool_technology_4-0_dengan_iceloop_-_layar_amoled_crystalres_120hz_flow_full01_ehbgo093.jpg?w=392', 'ANDROID', 4999000, 4679000, 4.9, 4700),
(2, 'Official POCO M6 Pro | 8+256GB | 120Hz Flow AMOLED 64MP triple camera dengan OIS 67W turbo charging', 'https://www.blibli.com/p/official-poco-m6-pro-8-256gb-120hz-flow-amoled-64mp-triple-camera-dengan-ois-67w-turbo-charging/ps--XIO-60022-00998?ds=XIO-60022-00998-00001', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/MTA-154955687/xiaomi_official_poco_m6_pro_-_8-256gb_-_120hz_flow_amoled_64mp_triple_camera_dengan_ois_67w_turbo_charging_full01_der714z7.jpg?w=355', 'ANDROID', 2999000, 2356130, 4.9, 5400),
(3, 'Xiaomi 14T Pro (12/256) (12/512) | Leica Summilux optical lens | Light Fusion 900 image sensor |MediaTek Dimensity 9300+ | 144Hz AI display | 5000mAh', 'https://www.blibli.com/p/xiaomi-14t-pro-12-256-12-512-leica-summilux-optical-lens-light-fusion-900-image-sensor-mediatek-dimensity-9300-144hz-ai-display-5000mah/ps--XIO-60022-01099?ds=XIO-60022-01099-00001', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/MTA-178577315/xiaomi_xiaomi_14t_pro_-12-256-_-12-512-_-_leica_summilux_optical_lens_-_light_fusion_900_image_sensor_-mediatek_dimensity_9300-_-_144hz_ai_display_-_5000mah_full01_f138qt6c.jpg?w=355', 'ANDROID', 8499000, 7933630, 4.7, 931),
(4, 'POCO C75 (6/128GB) (8/256GB) | Layar 6,88\" | 50MP AI | Refresh rate 120 Hz | Baterai 5.160mAh | 18W Pengisian cepat [Official Store]', 'https://www.blibli.com/p/poco-c75-6-128gb-8-256gb-layar-6-88-50mp-ai-refresh-rate-120-hz-baterai-5-160mah-18w-pengisian-cepat-official-store/ps--XIO-60022-01118?ds=XIO-60022-01118-00001', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/MTA-178914361/xiaomi_poco_c75_-6-128gb-_-8-256gb-_-_layar_6-88-_-_50mp_ai_-_refresh_rate_120_hz_-_baterai_5-160mah_-_18w_pengisian_cepat_-official_store-_full01_r5iabnoi.jpg?w=355', 'ANDROID', 1499000, 1289000, 4.9, 2600),
(5, 'Xiaomi Redmi A3 (4GB/128GB) | Layar Muluz 90 Hz | Sensor Sidik Jari & Face Unlock | Desain Inovatif [Official Store]', 'https://www.blibli.com/p/xiaomi-redmi-a3-4gb-128gb-layar-muluz-90-hz-sensor-sidik-jari-face-unlock-desain-inovatif-official-store/ps--XIO-60022-01000?ds=XIO-60022-01000-00002', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/MTA-155779754/xiaomi_xiaomi_redmi_a3_-4gb-128gb-_-_layar_muluz_90_hz_-_sensor_sidik_jari_-_face_unlock_-_desain_inovatif_-official_store-_full01_ilrz1ofx.jpg?w=355', 'ANDROID', 1199000, 1128000, 4.9, 984),
(6, 'Official Xiaomi Redmi Note 13 [8+256GB] | Layar 120 Hz FHD+ AMOLED Tiga kamera 108 MP Prosesor Snapdragon 685', 'https://www.blibli.com/p/official-xiaomi-redmi-note-13-8-256gb-layar-120-hz-fhd-amoled-tiga-kamera-108-mp-prosesor-snapdragon-685/ps--XIO-60022-01002?ds=XIO-60022-01002-00003', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/MTA-155953518/xiaomi_official_xiaomi_redmi_note_13_-8-256gb-_-_layar_120_hz_fhd-_amoled_tiga_kamera_108_mp_prosesor-snapdragon-685_full01_qnbne1tl.jpg?w=355', 'ANDROID', 2799000, 2324000, 4.9, 535),
(7, 'Xiaomi Redmi 14C (6GB/128GB) (8GB/256GB) | Layar 6.88\" | Refresh rate 120 Hz | 50 MP dual kamera AI | Baterai 5.160 mAh | NFC [Official Store]', 'https://www.blibli.com/p/xiaomi-redmi-14c-6gb-128gb-8gb-256gb-layar-6-88-refresh-rate-120-hz-50-mp-dual-kamera-ai-baterai-5-160-mah-nfc-official-store/ps--XIO-60022-01098?ds=XIO-60022-01098-00001', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/MTA-178525991/xiaomi_xiaomi_redmi_14c_-6gb-128gb-_-8gb-256gb-_-_layar_6-88-_-_refresh_rate_120_hz_-_50_mp_dual_kamera_ai_-_baterai_5-160_mah_-_nfc_-official_store-_full01_eabdv4t.jpg', 'ANDROID', 1499000, 1448000, 4.9, 591),
(8, 'Samsung Galaxy A05s Smartphone [6/128GB] + Travel Adaptor 25w', 'https://www.blibli.com/p/samsung-galaxy-a05s-smartphone-6-128gb-travel-adaptor-25w/ps--SAO-60034-02292?ds=SAO-60034-02292-00003', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/MTA-133552274/samsung_samsung_galaxy_a05s_smartphone_-6-128gb-_-_travel_adaptor_25w_full106_bwmlxk9s.jpeg?w=355', 'ANDROID', 2399000, 1871040, 4.9, 6200),
(9, 'Samsung Galaxy A15 5G Smartphone [8/256GB] + Travel Adaptor (25W) WO Cable', 'https://www.blibli.com/p/samsung-galaxy-a15-5g-smartphone-8-256gb-travel-adaptor-25w-wo-cable/ps--SAO-60034-02384?ds=SAO-60034-02384-00002', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/MTA-150250028/samsung_samsung_galaxy_a15_5g_smartphone_-8-256gb-_-_travel_adaptor_-25w-_wo_cable_full59_62uhije.jpeg?w=355', 'ANDROID', 3699000, 3167040, 4.9, 3400),
(10, 'Samsung Galaxy A55 5G Smartphone [8/256GB]', 'https://www.blibli.com/p/samsung-galaxy-a55-5g-smartphone-8-256gb/ps--SAO-60034-02461?ds=SAO-60034-02461-00002', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/MTA-156773932/samsung_samsung_galaxy_a55_5g_smartphone_-8-256gb-_full109_gjaqpx07.jpeg?w=355', 'ANDROID', 6499000, 5336640, 4.9, 2100),
(11, 'Samsung Galaxy A55 5G Smartphone [12/256GB]', 'https://www.blibli.com/p/samsung-galaxy-a55-5g-smartphone-12-256gb/ps--SAO-60034-02462?ds=SAO-60034-02462-00001', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/MTA-156773952/samsung_samsung_galaxy_a55_5g_smartphone_-12-256gb-_full71_k0oq1iag.jpeg?w=355', 'ANDROID', 6499000, 5922240, 4.9, 1500),
(12, 'Samsung Galaxy A35 5G Smartphone [8/256GB]', 'https://www.blibli.com/p/samsung-galaxy-a35-5g-smartphone-8-256gb/ps--SAO-60034-02460?ds=SAO-60034-02460-00004', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/MTA-156773088/samsung_samsung_galaxy_a35_5g_smartphone_-8-256gb-_full62_k7we9leh.jpeg?w=355', 'ANDROID', 5499000, 4629000, 4.9, 1100),
(13, 'iPhone 13', 'https://www.blibli.com/p/iphone-13/ps--APF-70017-00003?ds=APF-70017-00003-00018', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//100/MTA-53912377/apple_iphone_13_full36_nzelmtg5.jpg?w=355', 'IPHONE', 8998999, 0, 4.9, 6800),
(14, 'iPhone 15', 'https://www.blibli.com/p/iphone-15/ps--APF-70017-00303?ds=APF-70017-00303-00005', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/MTA-134607074/apple_iphone_15_full22_opdq26x3.jpeg', 'IPHONE', 16499000, 12998999, 4.9, 2100),
(15, 'iPhone 14', 'https://www.blibli.com/p/iphone-14/ps--APF-70017-00169?ds=APF-70017-00169-00014', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//105/MTA-66928371/apple_iphone_14_full10_mxs2e2k7.jpg', 'IPHONE', 15999000, 11998999, 4.9, 1800),
(16, 'iPhone 14 Pro', 'https://www.blibli.com/p/iphone-14-pro/ps--APF-70017-00139?ds=APF-70017-00139-00010', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//115/MTA-58880589/apple_iphone_14_pro_full05_mijau6ot.jpg', '', 19949000, 19698999, 4.9, 2600);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
