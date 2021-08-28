-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 28, 2021 at 11:52 AM
-- Server version: 8.0.26-0ubuntu0.20.04.2
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saipbar`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_user_menus`
--

CREATE TABLE `tbl_admin_user_menus` (
  `id` int NOT NULL,
  `label` varchar(100) DEFAULT NULL,
  `function_name` varchar(100) DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `controller_name` varchar(50) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `order_by` int DEFAULT NULL,
  `is_ignore` int DEFAULT '0',
  `is_ignore_menu` int DEFAULT '1',
  `parent_id` int DEFAULT '0',
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_admin_user_menus`
--

INSERT INTO `tbl_admin_user_menus` (`id`, `label`, `function_name`, `menu_name`, `controller_name`, `icon`, `order_by`, `is_ignore`, `is_ignore_menu`, `parent_id`, `del_status`) VALUES
(1, 'pos', 'POS', 'POS', 'POS', NULL, 18, 1, 0, 19, 'Live'),
(2, 'purchase', 'purchases', 'Purchase', 'Purchase', 'truck', 6, 0, 0, 0, 'Live'),
(3, 'inventory', 'index', 'Inventory', 'Inventory', 'server', 8, 0, 0, 0, 'Live'),
(4, 'waste', 'wastes', 'Waste', 'Waste', 'trash-2', 10, 0, 0, 0, 'Live'),
(5, 'expense', 'expenses', 'Expense', 'Expense', 'dollar-sign', 11, 0, 0, 0, 'Live'),
(6, 'report', NULL, 'Report', 'Report', 'file-text', 15, 0, 0, 0, 'Live'),
(7, 'dashboard', 'dashboard', 'Dashboard', 'Dashboard', 'grid', 5, 0, 0, 0, 'Live'),
(8, 'master', NULL, 'Master', 'Master', 'server', 16, 0, 1, 0, 'Live'),
(9, 'user', NULL, 'User', 'User', NULL, 19, 1, 1, 0, 'Live'),
(10, 'supplier_due_payment', 'supplierPayments', 'Supplier Payment', 'SupplierPayment', 'dollar-sign', 12, 0, 0, 0, 'Live'),
(11, 'inventory_adjustments', 'inventoryAdjustments', 'Inventory Adjustment', 'Inventory_adjustment', 'sun', 9, 0, 0, 0, 'Live'),
(12, 'customer_due_receive', 'customerDueReceives', 'Customer Due Receive', 'Customer_due_receive', 'dollar-sign', 13, 0, 0, 0, 'Live'),
(13, 'attendance', 'attendances', 'Attendance', 'Attendance', 'clock', 14, 0, 0, 0, 'Live'),
(14, 'bar', 'panel', 'Bar', 'Bar', NULL, 21, 1, 0, 19, 'Live'),
(15, 'kitchen', 'panel', 'Kitchen', 'Kitchen', NULL, 22, 1, 0, 19, 'Live'),
(16, 'waiter', 'panel', 'Waiter', 'Waiter', NULL, 23, 1, 0, 19, 'Live'),
(17, 'outlets', NULL, 'Outlet', 'Outlet', 'hard-drive', 3, 0, 0, 0, 'Live'),
(18, 'user', 'User', 'User', 'User', NULL, 36, 1, 0, 0, 'Live'),
(19, 'all_screen', NULL, NULL, NULL, 'file-text', 4, 0, 1, 0, 'Live'),
(20, 'account_user', NULL, NULL, NULL, 'settings', 17, 0, 1, 0, 'Live'),
(21, 'home', 'userProfile', 'userProfile', 'Authentication', 'home', 1, 0, 1, 0, 'Live'),
(22, 'setting', 'index', 'index', 'setting', 'settings', 2, 0, 0, 0, 'Live'),
(23, 'sale', 'sales', 'sales', 'Sale', 'shopping-cart', 7, 0, 0, 0, 'Live'),
(24, 'register_report', 'registerReport', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(25, 'daily_summary_report', 'dailySummaryReport', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(26, 'food_sale_report', 'foodMenuSales', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(27, 'daily_sale_report', 'saleReportByDate', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(28, 'detailed_sale_report', 'detailedSaleReport', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(29, 'consumption_report', 'consumptionReport', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(30, 'inventory_report', 'inventoryReport', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(31, 'low_inventory_report', 'getInventoryAlertList', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(32, 'profit_loss_report', 'profitLossReport', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(33, 'kitchen_performance_report', 'kitchenPerformanceReport', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(34, 'attendance_report', 'attendanceReport', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(35, 'supplier_ledger', 'supplierReport', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(36, 'supplier_due_report', 'supplierDueReport', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(37, 'customer_due_report', 'customerDueReport', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(38, 'customer_ledger', 'customerReport', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(39, 'purchase_report', 'purchaseReportByDate', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(40, 'expense_report', 'expenseReport', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(41, 'waste_report', 'wasteReport', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(42, 'vat_report', 'vatReport', NULL, 'Report', NULL, NULL, 1, 1, 6, 'Live'),
(43, 'ingredient_categories', 'ingredientCategories', NULL, 'ingredientCategory', NULL, NULL, 1, 0, 8, 'Live'),
(44, 'ingredient_units', 'Units', NULL, 'Unit', NULL, NULL, 1, 0, 8, 'Live'),
(45, 'ingredients', 'ingredients', NULL, 'ingredient', NULL, NULL, 1, 0, 8, 'Live'),
(46, 'modifiers', 'modifiers', NULL, 'modifier', NULL, NULL, 1, 0, 8, 'Live'),
(47, 'food_menu_categories', 'foodMenuCategories', NULL, 'foodMenuCategory', NULL, NULL, 1, 0, 8, 'Live'),
(48, 'food_menus', 'foodMenus', NULL, 'foodMenu', NULL, NULL, 1, 0, 8, 'Live'),
(49, 'suppliers', 'suppliers', NULL, 'supplier', NULL, NULL, 1, 0, 8, 'Live'),
(50, 'customers', 'customers', NULL, 'customer', NULL, NULL, 1, 0, 8, 'Live'),
(51, 'expense_items', 'expenseItems', NULL, 'expenseItems', NULL, NULL, 1, 0, 8, 'Live'),
(52, 'payment_methods', 'paymentMethods', NULL, 'paymentMethod', NULL, NULL, 1, 0, 8, 'Live'),
(53, 'tables', 'tables', NULL, 'table', NULL, NULL, 1, 0, 8, 'Live'),
(54, 'manage_users', 'users', NULL, 'User', NULL, NULL, 1, 0, 20, 'Live'),
(55, 'change_profile', 'changeProfile', NULL, 'Authentication', NULL, NULL, 1, 0, 20, 'Live'),
(56, 'change_password', 'changePassword', NULL, 'Authentication', NULL, NULL, 1, 0, 20, 'Live'),
(57, 'logout', 'logOut', NULL, 'Authentication', NULL, NULL, 1, 1, 20, 'Live'),
(58, 'transfer', 'transfers', 'Transfer', 'Transfer', 'truck', NULL, 0, 0, 0, 'Live'),
(59, 'send_sms', 'smsService', 'smsService', 'Short_message_service', 'mail', 15, 0, 0, 0, 'Live'),
(60, 'rooms', 'rooms', NULL, 'room', NULL, 0, 1, 0, 8, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `id` int NOT NULL,
  `reference_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `note` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `del_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_companies`
--

CREATE TABLE `tbl_companies` (
  `id` int NOT NULL,
  `business_name` varchar(50) DEFAULT NULL,
  `website` text,
  `date_format` varchar(50) DEFAULT NULL,
  `zone_name` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `currency_position` varchar(100) DEFAULT NULL,
  `precision` varchar(10) DEFAULT NULL,
  `default_customer` int DEFAULT '1',
  `default_waiter` int DEFAULT NULL,
  `default_payment` int DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `invoice_footer` varchar(500) DEFAULT NULL,
  `print_format` varchar(500) DEFAULT 'Thermal',
  `pre_or_post_payment` varchar(500) DEFAULT 'Post Payment',
  `sms_setting_check` varchar(20) DEFAULT NULL,
  `invoice_logo` text,
  `company_id` int DEFAULT NULL,
  `collect_tax` varchar(50) DEFAULT NULL,
  `tax_title` varchar(100) DEFAULT NULL,
  `tax_registration_no` varchar(100) DEFAULT NULL,
  `tax_is_gst` varchar(50) DEFAULT NULL,
  `state_code` varchar(50) DEFAULT NULL,
  `tax_setting` text,
  `outlet_qty` int DEFAULT NULL,
  `sms_enable_status` int DEFAULT NULL,
  `sms_details` text,
  `smtp_enable_status` int DEFAULT NULL,
  `smtp_details` text,
  `whatsapp_share_number` varchar(20) DEFAULT NULL,
  `language_manifesto` varchar(20) DEFAULT NULL,
  `white_label` text,
  `del_status` varchar(10) DEFAULT 'Live',
  `propina` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_companies`
--

INSERT INTO `tbl_companies` (`id`, `business_name`, `website`, `date_format`, `zone_name`, `currency`, `currency_position`, `precision`, `default_customer`, `default_waiter`, `default_payment`, `address`, `phone`, `invoice_footer`, `print_format`, `pre_or_post_payment`, `sms_setting_check`, `invoice_logo`, `company_id`, `collect_tax`, `tax_title`, `tax_registration_no`, `tax_is_gst`, `state_code`, `tax_setting`, `outlet_qty`, `sms_enable_status`, `sms_details`, `smtp_enable_status`, `smtp_details`, `whatsapp_share_number`, `language_manifesto`, `white_label`, `del_status`, `propina`) VALUES
(1, 'SaipBar', 'Resetsv.com', 'd/m/Y', 'America/El_Salvador', '$', 'Before Amount', '2', 1, 2, 1, '384, KALIBARY ROAD, PIROJPUR-8500', '01812391633', 'Gracias por preferirnos!', '80mm', 'Post Payment', 'Yes', '51c53f03fe73343d0f7f7691546edd9f.png', 1, 'Yes', 'BISTROBAR', '000000-0', 'Yes', '0931232', '[{\"id\":\"19\",\"tax\":\"IVA\",\"tax_rate\":\"13\"}]', 2, 5, '{\"email_address\":\"\",\"password\":\"\"}', 1, '{\"host_name\":\"fb.com\",\"port_address\":\"31\",\"user_name\":\"df\",\"password\":\"kfd\"}', '01812391633', 'revhgbrev', '{\"site_name\":\"iRestora PLUS - Next Gen Restaurant POS\",\"footer\":\"iRestora PLUS - Next Gen Restaurant POS\",\"system_logo\":\"93ddd1cfd25f29986c3815608532212f.png\"}', 'Live', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `gst_number` varchar(50) DEFAULT NULL,
  `pre_or_post_payment` varchar(20) DEFAULT 'Post Payment',
  `area_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `date_of_birth` date DEFAULT NULL,
  `date_of_anniversary` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`id`, `name`, `phone`, `email`, `address`, `password`, `gst_number`, `pre_or_post_payment`, `area_id`, `user_id`, `company_id`, `del_status`, `date_of_birth`, `date_of_anniversary`) VALUES
(1, '-Cliente Standard-', '', NULL, NULL, NULL, NULL, 'Post Payment', 0, 1, 1, 'Live', NULL, NULL),
(27, 'Cliente Delivery', '12345678', '', 'calle 1', NULL, '123-456-789', 'Post Payment', NULL, 1, 1, 'Live', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_due_receives`
--

CREATE TABLE `tbl_customer_due_receives` (
  `id` int NOT NULL,
  `reference_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `only_date` date DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `note` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `del_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenses`
--

CREATE TABLE `tbl_expenses` (
  `id` int NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_expenses`
--

INSERT INTO `tbl_expenses` (`id`, `date`, `amount`, `category_id`, `employee_id`, `note`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, '2021-07-01', 25.00, 1, 1, 'Se realiza pago de recibo de luz npe no. 465535492486896896', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense_items`
--

CREATE TABLE `tbl_expense_items` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_expense_items`
--

INSERT INTO `tbl_expense_items` (`id`, `name`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'Pago de servicios', '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menus`
--

CREATE TABLE `tbl_food_menus` (
  `id` int NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `sale_price` float(10,2) DEFAULT NULL,
  `tax_information` text,
  `user_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `veg_item` varchar(50) DEFAULT 'Veg No',
  `beverage_item` varchar(50) DEFAULT 'Beverage No',
  `bar_item` varchar(50) DEFAULT 'Bar No',
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_food_menus`
--

INSERT INTO `tbl_food_menus` (`id`, `code`, `name`, `category_id`, `description`, `sale_price`, `tax_information`, `user_id`, `company_id`, `photo`, `veg_item`, `beverage_item`, `bar_item`, `del_status`) VALUES
(1, '0001', 'Gaseosa', 25, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(2, '0002', 'Fuze Tea', 25, '', 1.50, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(3, '0003', 'Powerade', 25, '', 1.50, '[{\"tax_field_id\":\"19\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IVA\",\"tax_field_percentage\":0}]', 1, 1, 'b2cb02695cc3676a99ffcd0b99fa8460.jpg', 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(4, '0004', 'Fury Energi', 25, '', 1.50, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(5, '0005', 'Agua Cristal', 25, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(6, '0006', 'Jugo Del Valle', 25, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(7, '0007', 'Michelada De Corona', 26, '', 4.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(8, '0008', 'Michelada De Suprema', 26, '', 3.50, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(9, '0009', 'Michelada De Cerveza Nacional', 26, '', 3.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(10, '0010', 'Pilsener', 26, '', 1.35, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Deleted'),
(11, '0011', 'Golden', 26, '', 1.35, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Deleted'),
(12, '0012', 'Extra', 26, '', 1.35, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Deleted'),
(13, '0013', 'Suprema', 26, '', 1.75, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(14, '0014', 'Santa Cruz', 26, '', 1.75, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(15, '0015', 'Corona', 26, '', 2.50, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(16, '0016', 'Stela', 26, '', 2.50, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(17, '0017', 'Michelov Ultra', 26, '', 2.50, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(18, '0018', 'Smirnoff', 26, '', 2.50, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(19, '0019', 'Balde Nacional 8 Unidades', 27, '', 10.00, '[{\"tax_field_id\":\"19\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IVA\",\"tax_field_percentage\":\"0\"}]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(20, '0020', 'Balde De Suprema 6 Unidades', 27, '', 10.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(21, '0021', 'Balde De Santa Cruz 6 Unidades', 27, '', 10.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(22, '0022', 'Balde De Corona 6 Unidades', 27, '', 15.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(23, '0023', 'Balde Michelov Ultra 6 Unidades', 27, '', 15.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(24, '0024', 'Balde De Stela 6 Unidades', 27, '', 15.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(25, '0025', 'Balde De Smirnoff 6 Unidades', 27, '', 15.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(26, '0026', 'Hielerazo De Nacional 24 Unidades', 27, '', 30.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(27, '0027', 'Hielerazo De Suprema 24 Unidades', 27, '', 35.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(28, '0028', 'Hielerazo De Corona 24 Unidades', 27, '', 55.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(29, '0029', 'Hielerazo De Smirnoff 24 Unidades', 27, '', 55.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(30, '0030', 'Orden De Hielo Pequeña', 27, '', 0.50, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(31, '0031', 'Orden De Hielo Grande', 27, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(32, '0032', 'Tequila Jose Cuervo Sencillo', 28, '', 2.50, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(33, '0033', 'Tequila Jose Cuervo Doble', 28, '', 4.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(34, '0034', 'Ron Botran Añejo Sencillo', 28, '', 2.50, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(35, '0035', 'Ron Botran Añejo Doble', 28, '', 4.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(36, '0036', 'Ron Venado Blanco Sencillo', 28, '', 2.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(37, '0037', 'Ron Venado Blanco Doble', 28, '', 3.50, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(38, '0038', 'Botella', 29, '', 6.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(39, '0039', 'Litro', 29, '', 8.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(40, '0040', 'Pata De Elefante', 29, '', 12.00, '[]', 1, 1, NULL, 'Veg No', 'Bev Yes', 'Bar Yes', 'Live'),
(41, '0041', 'Unidad De Taco Al Pastor', 30, '', 1.25, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(42, '0042', 'Unidad De Taco De Res', 30, '', 1.25, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(43, '0043', 'Unidad De Taco De  Pollo', 30, '', 1.25, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(44, '0044', 'Unidad De Taco Mixto', 30, '', 1.25, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(45, '0045', 'Orden De 4 Tacos Al Pastor', 30, '', 4.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(46, '0046', 'Orden De 4 Tacos De Res', 30, '', 4.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(47, '0047', 'Orden De 4 Tacos De Pollo', 30, '', 4.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(48, '0048', 'Orden De 4 Tacos Mixtos', 30, '', 4.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(49, '0049', 'Orden De 6 Tacos Al Pastor', 30, '', 6.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(50, '0050', 'Orden De 6 Tacos De Res', 30, '', 6.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(51, '0051', 'Orden De 6 Tacos De Pollo', 30, '', 6.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(52, '0052', 'Orden De 6 Tacos Mixtos', 30, '', 6.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(53, '0053', 'Torta Al Pastor', 31, '', 4.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(54, '0054', 'Torta De Res', 31, '', 4.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(55, '0055', 'Torta De Pollo', 31, '', 4.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(56, '0056', 'Torta Mixta', 31, '', 4.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(57, '0057', 'Alambres', 32, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(58, '0058', 'Gringas Al Pastor', 33, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(59, '0059', 'Gringas De Res', 33, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(60, '0060', 'Gringas De Pollo', 33, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(61, '0061', 'Gringas Mixtas', 33, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(62, '0062', 'Media Sopa De Tortilla', 34, '', 3.50, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(63, '0063', 'Sopa De Tortilla Completa', 34, '', 6.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(64, '0064', 'Quesadilla Al Pastor', 35, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(65, '0065', 'Quesadilla De Res', 35, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(66, '0066', 'Quesadilla De Pollo', 35, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(67, '0067', 'Quesadilla Mixta', 35, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(68, '0068', 'Quesadilla Vegetariana', 35, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(69, '0069', 'Burrito Al Pastor', 36, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(70, '0070', 'Burito De Res', 36, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(71, '0071', 'Burrito De Pollo', 36, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(72, '0072', 'Burito Mixto', 36, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(73, '0073', '#1 Plato De Los Mismo', 37, '', 10.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(74, '0074', '#2- Plato De Tacos Y Mas', 37, '', 7.00, '[{\"tax_field_id\":\"19\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IVA\",\"tax_field_percentage\":\"0\"}]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(75, '0075', '#3- Mar &amp; Tierra', 37, '', 12.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(76, '0076', '#4- Mar Tierra &amp; Aire', 37, '', 16.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(77, '0077', '#5- Plato De La Casa', 37, '', 6.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(78, '0078', '#6- Costilla De Cerdo', 37, '', 7.50, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(79, '0079', '#7- Pechuga Semideshuesada', 37, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(80, '0080', '#8- Orden De Chorizos', 37, '', 4.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(81, '0081', '# La Boca Del Cholo', 38, '', 15.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(82, '0082', '#9- Boca Jumbo', 38, '', 10.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(83, '0083', '#10- Boca Junior', 38, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(84, '0084', '#11- Orden De Papas Fritas', 38, '', 3.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(85, '0085', '#12- Orden De Paleton De Res', 38, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(86, '0086', '#13- Orden De Alitas', 38, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(87, '0087', '#14- Orden De Camarones (Boquiado)', 38, '', 6.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(88, '0088', '#15- Orden De Carnitas De Res', 38, '', 3.50, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(89, '0089', '#16- 1 Lb Chicharrones', 38, '', 13.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(90, '0090', '#17- Media Libra De Chicharrones', 38, '', 7.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(91, '0091', '#18- Camarones Al Ajillo', 39, '', 14.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(92, '0092', 'Coctel de conchas pequeño', 39, '', 6.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(93, '0093', 'Coctel de conchas grande', 39, '', 8.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(94, '0094', 'Coctel de camarones en salsa rosa', 39, '', 10.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(95, '0095', 'Ceviche de camarones', 39, '', 10.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(96, '0096', 'Sopa de camarones', 39, '', 5.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(97, '0097', 'Sopa de camarones con huevo', 39, '', 6.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(98, '0098', 'Orden De Limon', 40, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(99, '0099', 'Orden De Queso', 40, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(100, '0100', 'Orden De Cuajada', 40, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(101, '0101', 'Orden De Chirimol', 40, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(102, '0102', 'Orden De Escabeche', 40, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(103, '0103', 'Orden De Cebollines', 40, '', 2.50, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(104, '0104', 'Tortilla Extra', 40, '', 0.25, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(105, '0105', 'Orden De Tres Tortillas', 40, '', 0.50, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(106, '0106', 'Orden De Aguacate', 40, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(107, '0107', 'Café', 41, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(108, '0108', 'Leche', 41, '', 1.25, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(109, '0109', 'Café Con Leche', 41, '', 1.50, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(110, '0110', 'Chocolate', 41, '', 1.50, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(111, '0111', 'Licuados Con Leche', 25, '', 2.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(112, '0112', 'Jugo De Naranja Natural', 25, '', 2.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(113, '0113', 'Horchata Con Leche', 25, '', 2.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(114, '0114', 'Refresco Natural Del Dia', 25, '', 2.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(115, '0115', 'Blue Lime', 25, '', 2.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(116, '0116', 'Limonada', 25, '', 2.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(117, '0117', 'Costilla', 42, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(118, '0118', 'Chorizo tuza', 42, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(119, '0119', 'Chorizo argentino', 42, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(120, '0120', 'Salchichas chicharron', 42, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(121, '0121', 'Chilipopers', 42, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(122, '0122', 'Chicharrones', 42, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(123, '0123', 'Arrayan', 42, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(124, '0124', 'Pepino', 42, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(125, '0125', 'Jicama', 42, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(126, '0126', 'jocote', 42, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(127, '0127', 'Mango', 42, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(128, '0128', 'Paternas', 42, '', 1.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(129, '0129', 'Palenton de res', 42, '', 1.50, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(130, '0130', 'Camarones empanisados', 42, '', 2.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(131, '0131', 'Camarones al ajillo', 42, '', 2.00, '[{\"tax_field_id\":\"19\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IVA\",\"tax_field_percentage\":0}]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(132, '0132', 'Alitas empanisadas', 42, '', 2.00, '[]', 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(133, '133', 'Cerveza nacional', 26, '', 1.35, '[{\"tax_field_id\":\"19\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IVA\",\"tax_field_percentage\":\"13\"}]', 1, 1, NULL, 'Veg No', 'Beverage Yes', 'Bar Yes', 'Live'),
(134, '134', 'Cerveza Gallo', 26, '', 1.25, '[{\"tax_field_id\":\"19\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IVA\",\"tax_field_percentage\":\"13\"}]', 1, 1, NULL, 'Veg No', 'Beverage Yes', 'Bar Yes', 'Live'),
(135, '135', 'Barra de Dulce ', 43, '', 0.50, '[{\"tax_field_id\":\"19\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IVA\",\"tax_field_percentage\":\"13\"}]', 1, 1, NULL, 'Veg Yes', 'Beverage No', 'Bar Yes', 'Live'),
(136, '136', 'Clorets', 43, 'Dos por $0.25', 0.25, '[{\"tax_field_id\":\"19\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IVA\",\"tax_field_percentage\":\"13\"}]', 1, 1, '0f03aa0df911ed5f6b4ea6f7fdef4633.jpg', 'Veg Yes', 'Bev No', 'Bar Yes', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menus_ingredients`
--

CREATE TABLE `tbl_food_menus_ingredients` (
  `id` bigint NOT NULL,
  `ingredient_id` int DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `food_menu_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_food_menus_ingredients`
--

INSERT INTO `tbl_food_menus_ingredients` (`id`, `ingredient_id`, `consumption`, `food_menu_id`, `user_id`, `company_id`, `del_status`) VALUES
(1, 1, 750.00, 51, 1, 1, 'Live'),
(3, 136, 2.00, 136, 1, 1, 'Live'),
(4, 159, 1.00, 133, 1, 1, 'Live'),
(5, 157, 1.00, 107, 1, 1, 'Live'),
(6, 159, 8.00, 19, 1, 1, 'Live'),
(8, 155, 3.00, 131, 1, 1, 'Live'),
(9, 142, 1.00, 74, 1, 1, 'Live'),
(10, 141, 1.00, 74, 1, 1, 'Live'),
(11, 148, 2.00, 74, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menus_modifiers`
--

CREATE TABLE `tbl_food_menus_modifiers` (
  `id` bigint NOT NULL,
  `modifier_id` int DEFAULT NULL,
  `food_menu_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menu_categories`
--

CREATE TABLE `tbl_food_menu_categories` (
  `id` int NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_food_menu_categories`
--

INSERT INTO `tbl_food_menu_categories` (`id`, `category_name`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(25, 'Bebidas sin alcohol', NULL, 1, 1, 'Live'),
(26, 'Bebidas con alcohol', NULL, 1, 1, 'Live'),
(27, 'Baldes y Hieleras', '', 1, 1, 'Live'),
(28, 'Tragos', NULL, 1, 1, 'Live'),
(29, 'descorches', NULL, 1, 1, 'Live'),
(30, 'Tacos', NULL, 1, 1, 'Live'),
(31, 'tortas', NULL, 1, 1, 'Live'),
(32, 'alambres', NULL, 1, 1, 'Live'),
(33, 'gringas', NULL, 1, 1, 'Live'),
(34, 'sopas', NULL, 1, 1, 'Live'),
(35, 'quesadilla', NULL, 1, 1, 'Live'),
(36, 'burritos', NULL, 1, 1, 'Live'),
(37, 'Asados', NULL, 1, 1, 'Live'),
(38, 'Platos de boca', NULL, 1, 1, 'Live'),
(39, 'Mariscos', NULL, 1, 1, 'Live'),
(40, 'Extras', NULL, 1, 1, 'Live'),
(41, 'Bebidas calientes', NULL, 1, 1, 'Live'),
(42, 'Bocas', NULL, 1, 1, 'Live'),
(43, 'varios', '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holds`
--

CREATE TABLE `tbl_holds` (
  `id` int NOT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `hold_no` varchar(30) NOT NULL,
  `total_items` int DEFAULT NULL,
  `sub_total` float(10,2) DEFAULT NULL,
  `paid_amount` double(10,2) DEFAULT NULL,
  `due_amount` double(10,2) DEFAULT NULL,
  `due_payment_date` date DEFAULT NULL,
  `disc` varchar(50) DEFAULT NULL,
  `disc_actual` float(10,2) DEFAULT NULL,
  `vat` float(10,2) DEFAULT NULL,
  `total_payable` float(10,2) DEFAULT NULL,
  `payment_method_id` int DEFAULT NULL,
  `table_id` int DEFAULT NULL,
  `total_item_discount_amount` float(10,2) NOT NULL,
  `sub_total_with_discount` float(10,2) NOT NULL,
  `sub_total_discount_amount` float(10,2) NOT NULL,
  `total_discount_amount` float(10,2) NOT NULL,
  `charge_type` varchar(30) DEFAULT NULL,
  `delivery_charge` float(10,2) NOT NULL,
  `sub_total_discount_value` varchar(10) NOT NULL,
  `sub_total_discount_type` varchar(20) NOT NULL,
  `token_no` varchar(50) DEFAULT NULL,
  `sale_date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sale_time` varchar(15) NOT NULL,
  `user_id` int DEFAULT NULL,
  `waiter_id` int DEFAULT '0',
  `outlet_id` int DEFAULT NULL,
  `order_status` tinyint(1) DEFAULT NULL COMMENT '1=new order, 2=cancelled order, 3=invoiced order',
  `sale_vat_objects` text,
  `order_type` tinyint(1) DEFAULT NULL COMMENT '1=dine in, 2 = take away, 3 = delivery',
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_holds`
--

INSERT INTO `tbl_holds` (`id`, `customer_id`, `hold_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `due_payment_date`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `charge_type`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `token_no`, `sale_date`, `date_time`, `sale_time`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `sale_vat_objects`, `order_type`, `del_status`) VALUES
(1, '1', '1', 8, 20.60, NULL, NULL, NULL, NULL, NULL, 0.00, 20.60, NULL, 0, 0.00, 20.60, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', NULL, '2021-06-24', '2021-06-24 16:23:47', '2021-06-24 10:2', 1, 5, 1, 1, '[]', 2, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holds_details`
--

CREATE TABLE `tbl_holds_details` (
  `id` int NOT NULL,
  `food_menu_id` int DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `menu_price_without_discount` float(10,2) NOT NULL,
  `menu_price_with_discount` float(10,2) NOT NULL,
  `menu_unit_price` float(10,2) NOT NULL,
  `menu_vat_percentage` float(10,2) NOT NULL,
  `menu_taxes` text,
  `menu_discount_value` varchar(20) DEFAULT NULL,
  `discount_type` varchar(20) NOT NULL,
  `menu_note` varchar(150) DEFAULT NULL,
  `discount_amount` double(10,2) DEFAULT NULL,
  `holds_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_holds_details`
--

INSERT INTO `tbl_holds_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `holds_id`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, 7, 'COPA DE VINO BLANCO (1082)', 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 1, 1, 1, 'Live'),
(2, 6, 'COPA DE VINO TINTO (1081)', 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 1, 1, 1, 'Live'),
(3, 44, 'CORONA (1119)', 1, 2.25, 2.25, 2.25, 0.00, '[]', '0', 'fixed', '', 0.00, 1, 1, 1, 'Live'),
(4, 8, 'SANGRIA (1083)', 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 1, 1, 1, 'Live'),
(5, 41, 'SMIRNOFF (1116)', 1, 2.25, 2.25, 2.25, 0.00, '[]', '0', 'fixed', '', 0.00, 1, 1, 1, 'Live'),
(6, 45, 'COPA 1 (1120)', 1, 2.50, 2.50, 2.50, 0.00, '[]', '0', 'fixed', '', 0.00, 1, 1, 1, 'Live'),
(7, 48, 'PAN DULCE (1123)', 1, 0.60, 0.60, 0.60, 0.00, '[]', '0', 'fixed', '', 0.00, 1, 1, 1, 'Live'),
(8, 47, 'SORBETE DE CONO (1122)', 1, 1.00, 1.00, 1.00, 0.00, '[]', '0', 'fixed', '', 0.00, 1, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holds_details_modifiers`
--

CREATE TABLE `tbl_holds_details_modifiers` (
  `id` int NOT NULL,
  `modifier_id` int NOT NULL,
  `modifier_price` float(10,2) NOT NULL,
  `food_menu_id` int NOT NULL,
  `holds_id` int NOT NULL,
  `holds_details_id` int NOT NULL,
  `user_id` int NOT NULL,
  `outlet_id` int NOT NULL,
  `customer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holds_table`
--

CREATE TABLE `tbl_holds_table` (
  `id` bigint NOT NULL,
  `persons` int NOT NULL,
  `booking_time` datetime NOT NULL,
  `hold_id` int NOT NULL,
  `hold_no` varchar(20) NOT NULL,
  `outlet_id` int NOT NULL,
  `table_id` int NOT NULL,
  `del_status` varchar(20) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='tbl_hold_table';

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ingredients`
--

CREATE TABLE `tbl_ingredients` (
  `id` int NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `purchase_price` float(10,2) DEFAULT NULL,
  `alert_quantity` float(10,2) DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_ingredients`
--

INSERT INTO `tbl_ingredients` (`id`, `code`, `name`, `category_id`, `purchase_price`, `alert_quantity`, `unit_id`, `user_id`, `company_id`, `del_status`) VALUES
(136, '001', 'Clorets', 27, 0.03, 60.00, 4, 1, 1, 'Live'),
(137, '1', 'tortilla de taco', 28, 0.06, 200.00, 2, 1, 1, 'Live'),
(138, '2', 'pan almohada', 28, 0.30, 30.00, 2, 1, 1, 'Live'),
(139, '3', 'tortilla de harina grande', 28, 0.22, 10.00, 2, 1, 1, 'Live'),
(140, '4', 'tortilla de harina mediana', 28, 0.19, 5.00, 2, 1, 1, 'Live'),
(141, '5', 'tortilla de harina pequeña', 28, 0.17, 20.00, 2, 1, 1, 'Live'),
(142, '6', 'porcion de carne', 29, 1.00, 30.00, 2, 1, 1, 'Live'),
(143, '7', 'pechuga semi deshuesada', 29, 0.95, 5.00, 2, 1, 1, 'Live'),
(144, '8', 'costilla de cerdo', 29, 1.50, 5.00, 2, 1, 1, 'Live'),
(145, '9', 'salchicha', 30, 0.18, 20.00, 2, 1, 1, 'Live'),
(146, '10', 'chorizo argentino', 30, 0.37, 10.00, 2, 1, 1, 'Live'),
(147, '11', 'medallon', 30, 0.10, 20.00, 2, 1, 1, 'Live'),
(148, '12', 'chorizo de tuza', 29, 0.25, 60.00, 2, 1, 1, 'Live'),
(149, '13', 'paleton de res', 29, 0.38, 8.00, 2, 1, 1, 'Live'),
(150, '14', 'chicharrones', 29, 2.25, 4.00, 5, 1, 1, 'Live'),
(151, '15', 'coctel de camaron', 31, 3.50, 2.00, 5, 1, 1, 'Live'),
(152, '16', 'orden papas', 32, 1.00, 5.00, 5, 1, 1, 'Live'),
(153, '17', 'alitas', 30, 0.35, 6.00, 2, 1, 1, 'Live'),
(154, '18', 'conchas', 31, 0.25, 12.00, 5, 1, 1, 'Live'),
(155, '19', 'camarones jumbo', 31, 1.00, 6.00, 2, 1, 1, 'Live'),
(156, '20', 'camarones boca', 31, 0.20, 20.00, 2, 1, 1, 'Live'),
(157, '21', 'café', 33, 0.10, 5.00, 2, 1, 1, 'Live'),
(158, '22', 'chocolate', 33, 0.10, 5.00, 2, 1, 1, 'Live'),
(159, '23', 'nacionales', 34, 0.70, 300.00, 2, 1, 1, 'Live'),
(160, '24', 'sodas', 33, 0.50, 50.00, 2, 1, 1, 'Live'),
(161, '25', 'agua', 33, 0.35, 25.00, 2, 1, 1, 'Live'),
(162, '26', 'stela artois', 34, 1.14, 6.00, 2, 1, 1, 'Live'),
(163, '27', 'santa cruz', 34, 0.80, 6.00, 2, 1, 1, 'Live'),
(164, '28', 'gallo', 34, 0.65, 10.00, 2, 1, 1, 'Live'),
(165, '29', 'jugo del valle', 33, 0.35, 10.00, 2, 1, 1, 'Live'),
(166, '30', 'corona extra', 34, 1.14, 12.00, 2, 1, 1, 'Live'),
(167, '31', 'suprema', 34, 0.80, 6.00, 2, 1, 1, 'Live'),
(168, '32', 'fury energy', 33, 0.90, 2.00, 2, 1, 1, 'Live'),
(169, '33', 'fuze tea', 33, 0.70, 6.00, 2, 1, 1, 'Live'),
(170, '34', 'michelob ultra', 34, 1.14, 6.00, 2, 1, 1, 'Live'),
(171, '35', 'smirnoff', 34, 1.33, 6.00, 2, 1, 1, 'Live'),
(172, '36', 'powerade', 33, 0.70, 2.00, 2, 1, 1, 'Live'),
(173, '37', 'licuados', 33, 1.00, 5.00, 2, 1, 1, 'Live'),
(174, '38', 'horchata', 33, 1.00, 5.00, 2, 1, 1, 'Live'),
(175, '39', 'blue lime', 33, 1.25, 2.00, 2, 1, 1, 'Live'),
(176, '40', 'limonada', 33, 1.00, 5.00, 2, 1, 1, 'Live'),
(177, '41', 'leche', 33, 0.60, 5.00, 2, 1, 1, 'Live'),
(178, '42', 'café c/ leche', 33, 0.75, 5.00, 2, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ingredient_categories`
--

CREATE TABLE `tbl_ingredient_categories` (
  `id` int NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_ingredient_categories`
--

INSERT INTO `tbl_ingredient_categories` (`id`, `category_name`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(27, 'Dulces y Golosinas', '', 1, 1, 'Live'),
(28, 'mexicano', NULL, 1, 1, 'Live'),
(29, 'asados', NULL, 1, 1, 'Live'),
(30, 'embutidos', NULL, 1, 1, 'Live'),
(31, 'mariscos', NULL, 1, 1, 'Live'),
(32, 'verduras', NULL, 1, 1, 'Live'),
(33, 'bebida sin alcohol', NULL, 1, 1, 'Live'),
(34, 'bebida alcoholica', NULL, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventory_adjustment`
--

CREATE TABLE `tbl_inventory_adjustment` (
  `id` int NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventory_adjustment_ingredients`
--

CREATE TABLE `tbl_inventory_adjustment_ingredients` (
  `id` int NOT NULL,
  `ingredient_id` int DEFAULT NULL,
  `consumption_amount` float(10,2) DEFAULT NULL,
  `inventory_adjustment_id` int DEFAULT NULL,
  `consumption_status` enum('Plus','Minus') DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu_list`
--

CREATE TABLE `tbl_menu_list` (
  `id` int NOT NULL,
  `label` varchar(100) DEFAULT NULL,
  `controller` varchar(100) DEFAULT NULL,
  `initial_function` varchar(100) DEFAULT NULL,
  `order_by` int DEFAULT NULL,
  `del_status` varchar(20) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modifiers`
--

CREATE TABLE `tbl_modifiers` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modifier_ingredients`
--

CREATE TABLE `tbl_modifier_ingredients` (
  `id` bigint NOT NULL,
  `ingredient_id` int DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `modifier_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE `tbl_notifications` (
  `id` bigint NOT NULL,
  `notification` text NOT NULL,
  `sale_id` int NOT NULL,
  `outlet_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification_bar_kitchen_panel`
--

CREATE TABLE `tbl_notification_bar_kitchen_panel` (
  `id` int NOT NULL,
  `notification` text NOT NULL,
  `sale_id` int NOT NULL,
  `outlet_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_notification_bar_kitchen_panel`
--

INSERT INTO `tbl_notification_bar_kitchen_panel` (`id`, `notification`, `sale_id`, `outlet_id`) VALUES
(1, 'Orden:A 000005 ha sido modificado', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders_table`
--

CREATE TABLE `tbl_orders_table` (
  `id` bigint NOT NULL,
  `persons` int NOT NULL,
  `booking_time` datetime NOT NULL,
  `sale_id` int NOT NULL,
  `sale_no` varchar(20) NOT NULL,
  `outlet_id` int NOT NULL,
  `table_id` int NOT NULL,
  `del_status` varchar(20) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='tbl_hold_table';

--
-- Dumping data for table `tbl_orders_table`
--

INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES
(1, 1, '2021-06-24 14:04:39', 6, '000006', 1, 1, 'Deleted');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_outlets`
--

CREATE TABLE `tbl_outlets` (
  `id` int NOT NULL,
  `outlet_name` varchar(50) DEFAULT NULL,
  `outlet_code` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `default_waiter` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `food_menus` text,
  `active_status` varchar(20) DEFAULT 'active',
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_outlets`
--

INSERT INTO `tbl_outlets` (`id`, `outlet_name`, `outlet_code`, `address`, `phone`, `email`, `default_waiter`, `company_id`, `food_menus`, `active_status`, `del_status`) VALUES
(1, 'SaipBar', '000001', 'Small Systems, Big Solutions!', '(503) 7205-5408', 'admin@resetsv.com', 0, 1, '81,73,83,84,85,86,87,88,89,90,91,74,75,76,77,78,79,80,82,5,57,132,123,22,21,25,24,20,23,19,135,115,38,70,72,69,71,107,109,131,130,134,133,95,122,121,110,119,118,136,94,93,92,15,117,4,2,1,58,60,59,61,28,26,29,27,113,125,126,112,6,108,111,116,39,127,62,9,7,8,17,45,47,46,48,49,51,50,52,106,103,101,100,102,31,30,98,99,105,129,40,128,124,3,64,66,65,67,68,114,35,34,37,36,120,14,18,96,97,63,16,13,33,32,53,55,54,56,104,41,43,42,44', 'active', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_methods`
--

CREATE TABLE `tbl_payment_methods` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `user_id` int NOT NULL,
  `company_id` int NOT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment_methods`
--

INSERT INTO `tbl_payment_methods` (`id`, `name`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'Efectivo', 'Efectivo', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

CREATE TABLE `tbl_purchase` (
  `id` int NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `date` varchar(15) NOT NULL,
  `subtotal` float(10,2) DEFAULT NULL,
  `other` float(10,2) DEFAULT NULL,
  `grand_total` float(10,2) DEFAULT NULL,
  `paid` float(10,2) DEFAULT NULL,
  `due` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_purchase`
--

INSERT INTO `tbl_purchase` (`id`, `reference_no`, `supplier_id`, `date`, `subtotal`, `other`, `grand_total`, `paid`, `due`, `note`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, '000001', 1, '2021-07-01', NULL, NULL, 780.00, 780.00, 0.00, '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_ingredients`
--

CREATE TABLE `tbl_purchase_ingredients` (
  `id` int NOT NULL,
  `ingredient_id` int DEFAULT NULL,
  `unit_price` float(10,2) DEFAULT NULL,
  `quantity_amount` float(10,2) DEFAULT NULL,
  `total` float(10,2) DEFAULT NULL,
  `purchase_id` int DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_purchase_ingredients`
--

INSERT INTO `tbl_purchase_ingredients` (`id`, `ingredient_id`, `unit_price`, `quantity_amount`, `total`, `purchase_id`, `outlet_id`, `del_status`) VALUES
(1, 159, 0.65, 1200.00, 780.00, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE `tbl_register` (
  `id` int NOT NULL,
  `opening_balance` float(10,2) DEFAULT NULL,
  `closing_balance` float(10,2) DEFAULT NULL,
  `opening_balance_date_time` datetime DEFAULT NULL,
  `closing_balance_date_time` datetime DEFAULT NULL,
  `sale_paid_amount` float(10,2) DEFAULT NULL,
  `customer_due_receive` float(10,2) DEFAULT NULL,
  `payment_methods_sale` text,
  `register_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=open,2=closed',
  `user_id` int DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_register`
--

INSERT INTO `tbl_register` (`id`, `opening_balance`, `closing_balance`, `opening_balance_date_time`, `closing_balance_date_time`, `sale_paid_amount`, `customer_due_receive`, `payment_methods_sale`, `register_status`, `user_id`, `outlet_id`, `company_id`) VALUES
(1, 0.00, 0.00, '2021-06-13 00:31:00', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(2, 0.00, 0.00, '2021-06-14 11:27:17', '2021-06-14 15:48:55', NULL, NULL, '{\"Cash\": ,\"Paypal\": ,\"Card\": }', 2, 1, 1, 1),
(3, 100.00, 0.00, '2021-06-14 15:49:05', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(4, 0.00, 0.00, '2021-06-23 23:44:45', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(5, 0.00, 0.00, '2021-06-24 01:00:56', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(6, 0.00, 0.00, '2021-06-24 13:01:26', NULL, NULL, NULL, NULL, 1, 5, 1, 1),
(7, 0.00, 0.00, '2021-06-25 10:58:16', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(8, 0.00, 0.00, '2021-06-26 14:25:25', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(9, 0.00, 0.00, '2021-06-27 10:59:03', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(10, 0.00, 0.00, '2021-06-27 10:59:38', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(11, 0.00, 0.00, '2021-06-30 11:47:56', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(12, 0.00, 0.00, '2021-07-01 16:17:25', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(13, 0.00, 0.00, '2021-07-02 16:34:53', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(14, 0.00, 0.00, '2021-07-02 18:57:34', '2021-07-02 18:58:10', NULL, NULL, '{\"Cash\": ,\"Paypal\": ,\"Card\": }', 2, 5, 1, 1),
(15, 0.00, 0.00, '2021-07-02 18:58:17', NULL, NULL, NULL, NULL, 1, 5, 1, 1),
(16, 0.00, 0.00, '2021-07-04 21:00:49', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(17, 0.00, 0.00, '2021-07-09 08:56:48', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(18, 0.00, 0.00, '2021-07-10 18:05:05', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(19, 0.00, 0.00, '2021-07-10 18:05:08', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(20, 0.00, 0.00, '2021-07-21 08:49:52', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(21, 0.00, 0.00, '2021-07-21 09:05:00', NULL, NULL, NULL, NULL, 1, 6, 1, 1),
(22, 0.00, 0.00, '2021-07-22 20:52:11', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(23, 0.00, 0.00, '2021-07-23 08:56:58', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(24, 0.00, 0.00, '2021-07-24 10:00:47', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(25, 10000.00, 0.00, '2021-07-30 12:15:32', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(26, 123456.00, 0.00, '2021-07-30 12:15:51', NULL, NULL, NULL, NULL, 1, 5, 1, 1),
(27, 500000.00, 0.00, '2021-08-23 14:44:02', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(28, 10000.00, 0.00, '2021-08-25 10:58:16', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(29, 10000.00, 0.00, '2021-08-26 21:06:26', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(30, 10000.00, 0.00, '2021-08-27 13:34:09', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(31, 10000.00, 0.00, '2021-08-28 07:20:25', NULL, NULL, NULL, NULL, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rooms`
--

CREATE TABLE `tbl_rooms` (
  `id` int NOT NULL,
  `name` varchar(120) COLLATE utf8_spanish2_ci NOT NULL,
  `company_id` int DEFAULT NULL,
  `del_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT 'Live',
  `outlet_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `tbl_rooms`
--

INSERT INTO `tbl_rooms` (`id`, `name`, `company_id`, `del_status`, `outlet_id`, `user_id`) VALUES
(2, 'Comedor', 1, 'Deleted', 1, 1),
(3, 'Rarita Cocina', 1, 'Deleted', 1, 1),
(4, 'Espacio Vacio', 1, 'Deleted', 1, 1),
(5, 'Bonita', 1, 'Live', 1, 1),
(6, 'Salas 11', 1, 'Live', 1, 1),
(7, 'Sala 1', 1, 'Live', 1, 1),
(8, 'sala 3', 1, 'Deleted', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales`
--

CREATE TABLE `tbl_sales` (
  `id` int NOT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `sale_no` varchar(30) NOT NULL DEFAULT '000000',
  `total_items` int DEFAULT NULL,
  `sub_total` float(10,2) DEFAULT NULL,
  `paid_amount` double(10,2) DEFAULT NULL,
  `due_amount` float(10,2) DEFAULT NULL,
  `disc` varchar(50) DEFAULT NULL,
  `disc_actual` float(10,2) DEFAULT NULL,
  `vat` float(10,2) DEFAULT NULL,
  `total_payable` float(10,2) DEFAULT NULL,
  `payment_method_id` int DEFAULT NULL,
  `close_time` time NOT NULL,
  `table_id` int DEFAULT NULL,
  `total_item_discount_amount` float(10,2) NOT NULL,
  `sub_total_with_discount` float(10,2) NOT NULL,
  `sub_total_discount_amount` float(10,2) NOT NULL,
  `total_discount_amount` float(10,2) NOT NULL,
  `charge_type` varchar(30) DEFAULT NULL,
  `delivery_charge` float(10,2) NOT NULL,
  `sub_total_discount_value` varchar(10) NOT NULL,
  `sub_total_discount_type` varchar(20) NOT NULL,
  `sale_date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_time` time NOT NULL,
  `cooking_start_time` datetime NOT NULL,
  `cooking_done_time` datetime NOT NULL,
  `modified` enum('Yes','No') NOT NULL DEFAULT 'No',
  `user_id` int DEFAULT NULL,
  `waiter_id` int NOT NULL DEFAULT '0',
  `outlet_id` int DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order, 2=invoiced order, 3=closed order',
  `order_type` tinyint(1) NOT NULL COMMENT '1=dine in, 2 = take away, 3 = delivery',
  `del_status` varchar(50) DEFAULT 'Live',
  `given_amount` float(10,2) DEFAULT NULL,
  `change_amount` float(10,2) DEFAULT NULL,
  `sale_vat_objects` text,
  `future_sale_status` int NOT NULL DEFAULT '1',
  `propina` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_sales`
--

INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `charge_type`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `given_amount`, `change_amount`, `sale_vat_objects`, `future_sale_status`, `propina`) VALUES
(1, '27', '000001', 2, 3.50, 3.50, 0.00, NULL, NULL, 0.00, 3.50, 1, '16:55:55', NULL, 0.00, 3.50, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-06-24', '2021-06-24 07:02:17', '01:02:17', '0000-00-00 00:00:00', '2021-06-24 01:05:15', 'No', 1, 0, 1, 3, 3, 'Live', 5.00, 1.50, '[]', 1, 0),
(2, '27', '000002', 3, 13.50, 13.50, 0.00, NULL, NULL, 0.00, 13.50, 1, '16:56:14', NULL, 0.00, 13.50, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-06-24', '2021-06-24 07:30:22', '01:30:22', '0000-00-00 00:00:00', '2021-06-24 10:20:36', 'No', 1, 5, 1, 3, 3, 'Live', 15.00, 1.50, '[]', 1, 0),
(3, '1', '000003', 5, 16.50, 16.50, 0.00, NULL, NULL, 0.00, 16.50, 1, '10:26:28', NULL, 0.00, 16.50, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-06-24', '2021-06-24 16:19:05', '10:19:05', '0000-00-00 00:00:00', '2021-06-24 10:20:17', 'No', 1, 5, 1, 3, 2, 'Live', 20.00, 3.50, '[]', 1, 0),
(4, '27', '000004', 4, 6.35, 6.35, 0.00, NULL, NULL, 0.00, 6.35, 1, '12:40:36', NULL, 0.00, 6.35, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-06-24', '2021-06-24 16:24:00', '10:24:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 5, 1, 3, 2, 'Live', 10.00, 3.65, '[]', 1, 0),
(5, '1', '000005', 5, 12.25, 12.25, 0.00, NULL, NULL, 0.00, 12.25, 1, '16:57:02', NULL, 0.00, 12.25, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-06-24', '2021-06-24 21:05:11', '15:05:11', '0000-00-00 00:00:00', '2021-06-24 18:25:16', 'Yes', 1, 5, 1, 3, 1, 'Live', 15.00, 2.75, '[]', 1, 0),
(6, '1', '000006', 3, 13.50, 13.50, 0.00, NULL, NULL, 0.00, 13.50, 1, '16:56:55', NULL, 0.00, 13.50, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-06-24', '2021-06-24 20:04:39', '14:04:39', '0000-00-00 00:00:00', '2021-06-25 11:55:43', 'No', 1, 5, 1, 3, 1, 'Live', 15.00, 1.50, '[]', 1, 0),
(7, '1', '000007', 2, 3.50, 3.50, 0.00, NULL, NULL, 0.00, 3.50, 1, '16:56:46', NULL, 0.00, 3.50, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-06-24', '2021-06-24 21:13:15', '15:13:15', '0000-00-00 00:00:00', '2021-06-24 17:08:23', 'No', 1, 5, 1, 3, 2, 'Live', 5.00, 1.50, '[]', 1, 0),
(8, '1', '000008', 3, 11.50, 11.50, 0.00, NULL, NULL, 0.00, 11.50, 1, '16:56:38', NULL, 0.00, 11.50, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-06-24', '2021-06-24 23:07:52', '17:07:52', '0000-00-00 00:00:00', '2021-06-24 18:21:03', 'No', 1, 5, 1, 3, 2, 'Live', 15.00, 3.50, '[]', 1, 0),
(9, '1', '000009', 2, 10.00, 10.00, 0.00, NULL, NULL, 0.00, 10.00, 1, '16:56:30', NULL, 0.00, 10.00, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-06-24', '2021-06-24 23:24:04', '17:24:04', '2021-06-24 18:19:46', '2021-06-24 18:20:14', 'No', 1, 5, 1, 3, 2, 'Live', 10.00, 0.00, '[]', 1, 0),
(10, '1', '000010', 4, 9.75, 9.75, 0.00, NULL, NULL, 0.00, 9.75, 1, '16:56:23', NULL, 0.00, 9.75, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-06-25', '2021-06-25 16:38:26', '11:38:26', '2021-06-25 11:55:25', '2021-06-25 11:38:59', 'No', 1, 5, 1, 3, 2, 'Live', 10.00, 0.25, '[]', 1, 0),
(11, '1', '000011', 4, 50.00, 50.00, 0.00, NULL, NULL, 0.00, 50.00, 1, '08:27:28', NULL, 0.00, 50.00, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-07-01', '2021-07-01 23:16:44', '17:16:44', '0000-00-00 00:00:00', '2021-07-01 17:17:33', 'No', 1, 5, 1, 3, 2, 'Live', 0.00, 0.00, '[]', 1, 0),
(12, '1', '000012', 3, 11.00, 11.00, 0.00, NULL, NULL, 0.00, 11.00, 1, '08:26:15', NULL, 0.00, 11.00, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-07-02', '2021-07-03 00:50:22', '18:50:22', '0000-00-00 00:00:00', '2021-07-02 18:51:33', 'No', 1, 5, 1, 3, 1, 'Live', 0.00, 0.00, '[{\"tax_field_id\":\"1\",\"tax_field_type\":\"IVA\",\"tax_field_amount\":\"0.00\"}]', 1, 0),
(13, '1', '000013', 3, 6.75, 6.75, 0.00, NULL, NULL, 0.00, 6.75, 1, '09:16:32', NULL, 0.00, 6.75, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-07-02', '2021-07-03 01:01:11', '19:01:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 5, 5, 1, 3, 2, 'Live', 5.00, -1.75, '[]', 1, 0),
(14, '1', '000014', 2, 5.50, 5.50, 0.00, NULL, NULL, 0.00, 5.50, 1, '08:31:07', NULL, 0.00, 5.50, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-07-02', '2021-07-03 01:02:48', '19:02:48', '0000-00-00 00:00:00', '2021-07-23 11:42:36', 'No', 5, 5, 1, 3, 2, 'Live', 0.00, 0.00, '[]', 1, 0),
(15, '27', '000015', 2, 5.25, 5.25, 0.00, NULL, NULL, 0.00, 5.25, 1, '12:42:01', NULL, 0.00, 5.25, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-07-02', '2021-07-03 01:03:05', '19:03:05', '2021-07-23 11:42:23', '2021-07-23 11:59:43', 'No', 5, 5, 1, 3, 3, 'Live', 6.00, 0.75, '[]', 1, 0),
(16, '27', '000016', 2, 7.25, 7.25, 0.00, NULL, NULL, 0.00, 7.25, 1, '08:31:18', NULL, 0.00, 7.25, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-07-02', '2021-07-03 01:03:24', '19:03:24', '0000-00-00 00:00:00', '2021-07-23 11:59:30', 'No', 5, 0, 1, 3, 3, 'Live', 0.00, 0.00, '[]', 1, 0),
(18, '1', '000018', 2, 8.00, 8.00, 0.00, NULL, NULL, 0.00, 8.00, 1, '08:32:24', NULL, 0.00, 8.00, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-07-23', '2021-07-23 15:02:27', '09:02:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 5, 1, 3, 1, 'Live', 0.00, 0.00, '[]', 1, 0),
(19, '1', '000019', 1, 10.00, 10.00, 0.00, NULL, NULL, 0.00, 10.00, 1, '08:29:49', NULL, 0.00, 10.00, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-07-02', '2021-07-23 17:41:48', '11:41:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 6, 1, 3, 1, 'Live', 0.00, 0.00, '[]', 1, 0),
(20, '1', '000020', 9, 66.75, 66.75, 0.00, NULL, NULL, 0.00, 66.75, 1, '11:01:24', NULL, 0.00, 66.75, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-07-02', '2021-07-23 17:49:14', '11:49:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 5, 1, 3, 1, 'Live', 70.00, 3.25, '[]', 1, 0),
(21, '27', '000021', 2, 7.50, 7.50, 0.00, NULL, NULL, 0.00, 7.50, 1, '08:34:30', NULL, 0.00, 7.50, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-08-28', '2021-08-28 12:34:08', '08:34:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 5, 1, 3, 2, 'Live', 0.00, 0.00, '[]', 1, 0),
(22, '1', '000022', 2, 7.50, 7.50, 0.00, NULL, NULL, 0.00, 7.50, 1, '08:35:45', NULL, 0.00, 7.50, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-08-28', '2021-08-28 12:35:35', '08:35:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 5, 1, 3, 2, 'Live', 0.00, 0.00, '[]', 1, 0),
(23, '1', '000023', 3, 11.50, 11.50, 0.00, NULL, NULL, 0.00, 11.50, 1, '08:37:18', NULL, 0.00, 11.50, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-08-28', '2021-08-28 12:37:04', '08:37:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 5, 1, 3, 2, 'Live', 0.00, 0.00, '[]', 1, 100),
(24, '1', '000024', 3, 11.00, 16.00, 0.00, NULL, NULL, 0.00, 11.00, 1, '08:49:08', NULL, 0.00, 11.00, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-08-28', '2021-08-28 12:38:11', '08:38:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 5, 1, 3, 2, 'Live', 0.00, 0.00, '[]', 1, 5),
(25, '1', '000025', 3, 11.00, 11.00, 0.00, NULL, NULL, 0.00, 11.00, 1, '08:49:44', NULL, 0.00, 11.00, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-08-28', '2021-08-28 12:49:35', '08:49:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 5, 1, 3, 2, 'Live', 0.00, 0.00, '[]', 1, 0),
(26, '1', '000026', 3, 11.00, 12.10, 0.00, NULL, NULL, 0.00, 11.00, 1, '08:50:05', NULL, 0.00, 11.00, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-08-28', '2021-08-28 12:49:53', '08:49:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 5, 1, 3, 2, 'Live', 0.00, 0.00, '[]', 1, 10),
(27, '1', '000027', 3, 11.00, 16.00, 0.00, NULL, NULL, 0.00, 11.00, 1, '08:50:42', NULL, 0.00, 11.00, 0.00, 0.00, 'delivery', 0.00, '', 'fixed', '2021-08-28', '2021-08-28 12:50:32', '08:50:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 5, 1, 3, 2, 'Live', 0.00, 0.00, '[]', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_details`
--

CREATE TABLE `tbl_sales_details` (
  `id` bigint NOT NULL,
  `food_menu_id` int DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `tmp_qty` int DEFAULT NULL,
  `menu_price_without_discount` float(10,2) NOT NULL,
  `menu_price_with_discount` float(10,2) NOT NULL,
  `menu_unit_price` float(10,2) NOT NULL,
  `menu_vat_percentage` float(10,2) NOT NULL,
  `menu_taxes` text,
  `menu_discount_value` varchar(20) DEFAULT NULL,
  `discount_type` varchar(20) NOT NULL,
  `menu_note` varchar(150) DEFAULT NULL,
  `discount_amount` double(10,2) DEFAULT NULL,
  `item_type` varchar(50) DEFAULT NULL,
  `cooking_status` varchar(30) DEFAULT NULL,
  `cooking_start_time` datetime NOT NULL,
  `cooking_done_time` datetime NOT NULL,
  `previous_id` bigint NOT NULL,
  `sales_id` int DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `user_id` int DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_sales_details`
--

INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `tmp_qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, 38, 'PILSENER (1113)', 1, 1, 1.25, 1.25, 1.25, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-06-24 01:05:15', 1, 1, 0, 1, 1, 'Live'),
(2, 42, 'MILLER (1117)', 1, 1, 2.25, 2.25, 2.25, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-06-24 01:05:15', 2, 1, 0, 1, 1, 'Live'),
(3, 2, 'COCTEL DE CONCHAS GRANDE (1077)', 1, 1, 6.00, 6.00, 6.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Done', '0000-00-00 00:00:00', '2021-06-24 10:19:29', 3, 2, 0, 1, 1, 'Live'),
(4, 3, 'COCTEL DE CONCHAS MEDIANO (1078)', 1, 1, 3.50, 3.50, 3.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Done', '0000-00-00 00:00:00', '2021-06-24 10:19:29', 4, 2, 0, 1, 1, 'Live'),
(5, 7, 'COPA DE VINO BLANCO (1082)', 1, 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-06-24 10:20:36', 5, 2, 0, 1, 1, 'Live'),
(6, 7, 'COPA DE VINO BLANCO (1082)', 1, 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-06-24 10:20:17', 6, 3, 0, 1, 1, 'Live'),
(7, 6, 'COPA DE VINO TINTO (1081)', 1, 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-06-24 10:20:17', 7, 3, 0, 1, 1, 'Live'),
(8, 44, 'CORONA (1119)', 1, 1, 2.25, 2.25, 2.25, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-06-24 10:20:17', 8, 3, 0, 1, 1, 'Live'),
(9, 8, 'SANGRIA (1083)', 1, 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-06-24 10:20:17', 9, 3, 0, 1, 1, 'Live'),
(10, 41, 'SMIRNOFF (1116)', 1, 1, 2.25, 2.25, 2.25, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-06-24 10:20:17', 10, 3, 0, 1, 1, 'Live'),
(11, 45, 'COPA 1 (1120)', 1, 1, 2.50, 2.50, 2.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 11, 4, 0, 1, 1, 'Live'),
(12, 46, 'COPA 2 (1121)', 1, 1, 2.25, 2.25, 2.25, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 12, 4, 0, 1, 1, 'Live'),
(13, 48, 'PAN DULCE (1123)', 1, 1, 0.60, 0.60, 0.60, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 13, 4, 0, 1, 1, 'Live'),
(14, 47, 'SORBETE DE CONO (1122)', 1, 1, 1.00, 1.00, 1.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 14, 4, 0, 1, 1, 'Live'),
(18, 2, 'COCTEL DE CONCHAS GRANDE (1077)', 1, 1, 6.00, 6.00, 6.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Done', '2021-06-24 15:12:55', '2021-06-24 17:08:01', 18, 6, 0, 1, 1, 'Live'),
(19, 3, 'COCTEL DE CONCHAS MEDIANO (1078)', 1, 1, 3.50, 3.50, 3.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Done', '2021-06-24 15:12:55', '2021-06-24 17:08:01', 19, 6, 0, 1, 1, 'Live'),
(20, 8, 'SANGRIA (1083)', 1, 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Started Preparing', '0000-00-00 00:00:00', '2021-06-25 11:55:43', 20, 6, 0, 1, 1, 'Live'),
(21, 42, 'MILLER (1117)', 1, 0, 2.25, 2.25, 2.25, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Started Preparing', '0000-00-00 00:00:00', '2021-06-24 17:52:46', 15, 5, 0, 1, 1, 'Live'),
(22, 46, 'COPA 2 (1121)', 1, 0, 2.25, 2.25, 2.25, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Done', '2021-06-24 18:25:01', '2021-06-24 18:25:16', 16, 5, 0, 1, 1, 'Live'),
(23, 45, 'COPA 1 (1120)', 1, 0, 2.50, 2.50, 2.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Done', '2021-06-24 18:25:01', '2021-06-24 18:25:16', 17, 5, 0, 1, 1, 'Live'),
(24, 8, 'SANGRIA (1083)', 1, 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Started Preparing', '0000-00-00 00:00:00', '2021-06-24 17:52:47', 24, 5, 0, 1, 1, 'Live'),
(25, 38, 'PILSENER (1113)', 1, 1, 1.25, 1.25, 1.25, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Started Preparing', '0000-00-00 00:00:00', '2021-06-24 17:52:47', 25, 5, 0, 1, 1, 'Live'),
(26, 42, 'MILLER (1117)', 1, 1, 2.25, 2.25, 2.25, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-06-24 17:08:23', 26, 7, 0, 1, 1, 'Live'),
(27, 38, 'PILSENER (1113)', 1, 1, 1.25, 1.25, 1.25, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-06-24 17:08:23', 27, 7, 0, 1, 1, 'Live'),
(28, 3, 'COCTEL DE CONCHAS MEDIANO (1078)', 1, 1, 3.50, 3.50, 3.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Done', '0000-00-00 00:00:00', '2021-06-24 18:21:03', 28, 8, 0, 1, 1, 'Live'),
(29, 7, 'COPA DE VINO BLANCO (1082)', 1, 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-06-24 17:24:50', 29, 8, 0, 1, 1, 'Live'),
(30, 6, 'COPA DE VINO TINTO (1081)', 1, 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-06-24 17:24:50', 30, 8, 0, 1, 1, 'Live'),
(31, 8, 'SANGRIA (1083)', 1, 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Started Preparing', '0000-00-00 00:00:00', '2021-06-24 17:24:44', 31, 9, 0, 1, 1, 'Live'),
(32, 2, 'COCTEL DE CONCHAS GRANDE (1077)', 1, 1, 6.00, 6.00, 6.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Done', '2021-06-24 18:19:46', '2021-06-24 18:20:14', 32, 9, 0, 1, 1, 'Live'),
(33, 46, 'COPA 2 (1121)', 1, 1, 2.25, 2.25, 2.25, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Started Cooking', '2021-06-25 11:55:25', '0000-00-00 00:00:00', 33, 10, 0, 1, 1, 'Live'),
(34, 44, 'CORONA (1119)', 1, 1, 2.25, 2.25, 2.25, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-06-25 11:38:59', 34, 10, 0, 1, 1, 'Live'),
(35, 38, 'PILSENER (1113)', 1, 1, 1.25, 1.25, 1.25, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-06-25 11:38:59', 35, 10, 0, 1, 1, 'Live'),
(36, 6, 'COPA DE VINO TINTO (1081)', 1, 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-06-25 11:38:59', 36, 10, 0, 1, 1, 'Live'),
(37, 21, 'Balde De Santa Cruz 6 Unidades (0021)', 1, 1, 10.00, 10.00, 10.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-07-01 17:17:32', 37, 11, 0, 1, 1, 'Live'),
(38, 22, 'Balde De Corona 6 Unidades (0022)', 1, 1, 15.00, 15.00, 15.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-07-01 17:17:33', 38, 11, 0, 1, 1, 'Live'),
(39, 25, 'Balde De Smirnoff 6 Unidades (0025)', 1, 1, 15.00, 15.00, 15.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-07-01 17:17:33', 39, 11, 0, 1, 1, 'Live'),
(40, 19, 'Balde Nacional 8 Unidades (0019)', 1, 1, 10.00, 10.00, 10.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-07-01 17:17:33', 40, 11, 0, 1, 1, 'Live'),
(41, 8, 'Michelada De Suprema (0008)', 1, 1, 3.50, 3.50, 3.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-07-02 18:51:32', 41, 12, 0, 1, 1, 'Live'),
(42, 38, 'Botella (0038)', 1, 1, 6.00, 6.00, 6.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-07-02 18:51:33', 42, 12, 0, 1, 1, 'Live'),
(43, 3, 'Powerade (0003)', 1, 1, 1.50, 1.50, 1.50, 0.00, '[{\"tax_field_id\":\"19\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IVA\",\"tax_field_percentage\":0,\"item_vat_amount_for_unit_item\":\"0.00\",\"item_vat_amount_for_all_quantity\":\"0.00\"}]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-07-02 18:51:33', 43, 12, 0, 1, 1, 'Live'),
(44, 2, 'Fuze Tea (0002)', 1, 1, 1.50, 1.50, 1.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 44, 13, 0, 5, 1, 'Live'),
(45, 7, 'Michelada De Corona (0007)', 1, 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 45, 13, 0, 5, 1, 'Live'),
(46, 44, 'Unidad De Taco Mixto (0044)', 1, 1, 1.25, 1.25, 1.25, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 46, 13, 0, 5, 1, 'Live'),
(47, 2, 'Fuze Tea (0002)', 1, 1, 1.50, 1.50, 1.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-07-23 11:42:36', 47, 14, 0, 5, 1, 'Live'),
(48, 7, 'Michelada De Corona (0007)', 1, 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Done', '0000-00-00 00:00:00', '2021-07-23 11:42:36', 48, 14, 0, 5, 1, 'Live'),
(49, 45, 'Orden De 4 Tacos Al Pastor (0045)', 1, 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Done', '2021-07-23 11:42:23', '2021-07-23 11:59:42', 49, 15, 0, 5, 1, 'Live'),
(50, 44, 'Unidad De Taco Mixto (0044)', 1, 1, 1.25, 1.25, 1.25, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Done', '2021-07-23 11:42:23', '2021-07-23 11:59:43', 50, 15, 0, 5, 1, 'Live'),
(51, 38, 'Botella (0038)', 1, 1, 6.00, 6.00, 6.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', 'Started Preparing', '0000-00-00 00:00:00', '2021-07-23 11:42:55', 51, 16, 0, 5, 1, 'Live'),
(52, 42, 'Unidad De Taco De Res (0042)', 1, 1, 1.25, 1.25, 1.25, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Done', '0000-00-00 00:00:00', '2021-07-23 11:59:30', 52, 16, 0, 5, 1, 'Live'),
(55, 45, 'Orden De 4 Tacos Al Pastor (0045)', 1, 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Started Cooking', '2021-07-23 12:09:17', '0000-00-00 00:00:00', 55, 18, 0, 1, 1, 'Live'),
(56, 46, 'Orden De 4 Tacos De Res (0046)', 1, 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Started Cooking', '2021-07-23 12:09:17', '0000-00-00 00:00:00', 56, 18, 0, 1, 1, 'Live'),
(57, 94, 'Coctel de camarones en salsa rosa (0094)', 1, 1, 10.00, 10.00, 10.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Started Cooking', '2021-07-23 11:43:21', '0000-00-00 00:00:00', 57, 19, 0, 1, 1, 'Live'),
(58, 38, 'Botella (0038)', 1, 1, 6.00, 6.00, 6.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 58, 20, 0, 1, 1, 'Live'),
(59, 38, 'Botella (0038)', 1, 1, 6.00, 6.00, 6.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 59, 20, 0, 1, 1, 'Live'),
(60, 2, 'Fuze Tea (0002)', 1, 1, 1.50, 1.50, 1.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 60, 20, 0, 1, 1, 'Live'),
(61, 41, 'Unidad De Taco Al Pastor (0041)', 1, 1, 1.25, 1.25, 1.25, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Started Cooking', '2021-07-23 12:09:48', '0000-00-00 00:00:00', 61, 20, 0, 1, 1, 'Live'),
(62, 94, 'Coctel de camarones en salsa rosa (0094)', 1, 1, 10.00, 10.00, 10.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Started Cooking', '2021-07-23 12:09:48', '0000-00-00 00:00:00', 62, 20, 0, 1, 1, 'Live'),
(63, 76, '#4- Mar Tierra &amp; Aire (0076)', 1, 1, 16.00, 16.00, 16.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Started Cooking', '2021-07-23 12:09:48', '0000-00-00 00:00:00', 63, 20, 0, 1, 1, 'Live'),
(64, 76, '#4- Mar Tierra &amp; Aire (0076)', 1, 1, 16.00, 16.00, 16.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Started Cooking', '2021-07-23 12:09:48', '0000-00-00 00:00:00', 64, 20, 0, 1, 1, 'Live'),
(65, 68, 'Quesadilla Vegetariana (0068)', 1, 1, 5.00, 5.00, 5.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Started Cooking', '2021-07-23 12:09:48', '0000-00-00 00:00:00', 65, 20, 0, 1, 1, 'Live'),
(66, 64, 'Quesadilla Al Pastor (0064)', 1, 1, 5.00, 5.00, 5.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', 'Started Cooking', '2021-07-23 12:09:48', '0000-00-00 00:00:00', 66, 20, 0, 1, 1, 'Live'),
(67, 38, 'Botella (0038)', 1, 1, 6.00, 6.00, 6.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 67, 21, 0, 1, 1, 'Live'),
(68, 2, 'Fuze Tea (0002)', 1, 1, 1.50, 1.50, 1.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 68, 21, 0, 1, 1, 'Live'),
(69, 38, 'Botella (0038)', 1, 1, 6.00, 6.00, 6.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 69, 22, 0, 1, 1, 'Live'),
(70, 2, 'Fuze Tea (0002)', 1, 1, 1.50, 1.50, 1.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 70, 22, 0, 1, 1, 'Live'),
(71, 38, 'Botella (0038)', 1, 1, 6.00, 6.00, 6.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 71, 23, 0, 1, 1, 'Live'),
(72, 2, 'Fuze Tea (0002)', 1, 1, 1.50, 1.50, 1.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 72, 23, 0, 1, 1, 'Live'),
(73, 45, 'Orden De 4 Tacos Al Pastor (0045)', 1, 1, 4.00, 4.00, 4.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 73, 23, 0, 1, 1, 'Live'),
(74, 38, 'Botella (0038)', 1, 1, 6.00, 6.00, 6.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 74, 24, 0, 1, 1, 'Live'),
(75, 2, 'Fuze Tea (0002)', 1, 1, 1.50, 1.50, 1.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 75, 24, 0, 1, 1, 'Live'),
(76, 8, 'Michelada De Suprema (0008)', 1, 1, 3.50, 3.50, 3.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 76, 24, 0, 1, 1, 'Live'),
(77, 38, 'Botella (0038)', 1, 1, 6.00, 6.00, 6.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 77, 25, 0, 1, 1, 'Live'),
(78, 2, 'Fuze Tea (0002)', 1, 1, 1.50, 1.50, 1.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 78, 25, 0, 1, 1, 'Live'),
(79, 8, 'Michelada De Suprema (0008)', 1, 1, 3.50, 3.50, 3.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 79, 25, 0, 1, 1, 'Live'),
(80, 38, 'Botella (0038)', 1, 1, 6.00, 6.00, 6.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 80, 26, 0, 1, 1, 'Live'),
(81, 2, 'Fuze Tea (0002)', 1, 1, 1.50, 1.50, 1.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 81, 26, 0, 1, 1, 'Live'),
(82, 8, 'Michelada De Suprema (0008)', 1, 1, 3.50, 3.50, 3.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 82, 26, 0, 1, 1, 'Live'),
(83, 38, 'Botella (0038)', 1, 1, 6.00, 6.00, 6.00, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 83, 27, 0, 1, 1, 'Live'),
(84, 2, 'Fuze Tea (0002)', 1, 1, 1.50, 1.50, 1.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 84, 27, 0, 1, 1, 'Live'),
(85, 8, 'Michelada De Suprema (0008)', 1, 1, 3.50, 3.50, 3.50, 0.00, '[]', '0', 'fixed', '', 0.00, 'Bar Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 85, 27, 0, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_details_modifiers`
--

CREATE TABLE `tbl_sales_details_modifiers` (
  `id` bigint NOT NULL,
  `modifier_id` int NOT NULL,
  `modifier_price` float(10,2) NOT NULL,
  `food_menu_id` int NOT NULL,
  `sales_id` int NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `sales_details_id` int NOT NULL,
  `user_id` int NOT NULL,
  `outlet_id` int NOT NULL,
  `customer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_consumptions`
--

CREATE TABLE `tbl_sale_consumptions` (
  `id` bigint NOT NULL,
  `sale_id` int DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `user_id` int DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_sale_consumptions`
--

INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, 1, 0, 1, 1, 'Live'),
(2, 2, 0, 1, 1, 'Live'),
(3, 3, 0, 1, 1, 'Live'),
(4, 4, 0, 1, 1, 'Live'),
(6, 6, 0, 1, 1, 'Live'),
(7, 5, 0, 1, 1, 'Live'),
(8, 7, 0, 1, 1, 'Live'),
(9, 8, 0, 1, 1, 'Live'),
(10, 9, 0, 1, 1, 'Live'),
(11, 10, 0, 1, 1, 'Live'),
(12, 11, 0, 1, 1, 'Live'),
(13, 12, 0, 1, 1, 'Live'),
(14, 13, 0, 5, 1, 'Live'),
(15, 14, 0, 5, 1, 'Live'),
(16, 15, 0, 5, 1, 'Live'),
(17, 16, 0, 5, 1, 'Live'),
(19, 18, 0, 1, 1, 'Live'),
(20, 19, 0, 1, 1, 'Live'),
(21, 20, 0, 1, 1, 'Live'),
(22, 21, 0, 1, 1, 'Live'),
(23, 22, 0, 1, 1, 'Live'),
(24, 23, 0, 1, 1, 'Live'),
(25, 24, 0, 1, 1, 'Live'),
(26, 25, 0, 1, 1, 'Live'),
(27, 26, 0, 1, 1, 'Live'),
(28, 27, 0, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_consumptions_of_menus`
--

CREATE TABLE `tbl_sale_consumptions_of_menus` (
  `id` bigint NOT NULL,
  `ingredient_id` int DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `sale_consumption_id` int DEFAULT NULL,
  `sales_id` int NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `food_menu_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_consumptions_of_modifiers_of_menus`
--

CREATE TABLE `tbl_sale_consumptions_of_modifiers_of_menus` (
  `id` bigint NOT NULL,
  `ingredient_id` int DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `sale_consumption_id` int DEFAULT NULL,
  `sales_id` int NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `food_menu_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sessions`
--

CREATE TABLE `tbl_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_sessions`
--

INSERT INTO `tbl_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('krq2dbgi4g2ed2jsnm9pvhvvvr6fb7aj', '::1', 1627171691, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373137313639313b6d656e755f6163636573737c613a35393a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('v2s84e03kgiv4q93ihdmcb4gim3bttms', '::1', 1627173005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373137313639313b6d656e755f6163636573737c613a35393a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('cdr2nqpd65o6lf9e3isbpv0i4f0b6931', '::1', 1627482678, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373438323637383b657863657074696f6e5f317c733a32343a22496e636f727265637420456d61696c2f50617373776f7264223b5f5f63695f766172737c613a313a7b733a31313a22657863657074696f6e5f31223b733a333a226f6c64223b7d),
('cu46u4ntk76so9aiddbogfgtvhcq35lh', '::1', 1627482680, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373438323637383b6d656e755f6163636573737c613a35393a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b),
('ra7rrrjlb7i4tnesna26oj5lgkd7isms', '::1', 1627494152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373439343135323b6d656e755f6163636573737c613a35393a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('8q45um818ttmuftbq8m2gpehs9kjeq2o', '::1', 1627494667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373439343636373b6d656e755f6163636573737c613a35393a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('g5cm61dc2rl13onhdkb1m5jlurb9ejim', '::1', 1627495238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373439353233383b6d656e755f6163636573737c613a35393a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('ts3k8vni7f4sbr513bsl0k0kigetcvt6', '::1', 1627495615, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373439353631353b6d656e755f6163636573737c613a35393a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('j9abpcmalqe933vl1uasv1sh1arciq0h', '::1', 1627495929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373439353932393b6d656e755f6163636573737c613a35393a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('t9umfo7r2vr3moeqt60he7us1f389s28', '::1', 1627498936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373439383933363b6d656e755f6163636573737c613a35393a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('hvau6fqjkbnaeavl71p0jm7rajt1sgmr', '::1', 1627499377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373439393337373b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2231223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('rm7chtrpcqd6ic9m309booa1rcn1l6q6', '::1', 1627499735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373439393733353b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2231223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b);
INSERT INTO `tbl_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('43oekht7pb2bsucgepjpl0hsboj6i5eb', '::1', 1627500062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373530303036323b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2231223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('j3kcsh46g61ifdvgtr1da54a09efcfnq', '::1', 1627500515, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373530303531353b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2231223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('fsbuq892n64lepclhtug884427ld29at', '::1', 1627501067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373530313036373b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2231223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('2ddukl5u9vqelklkuski4ekfkbai7mbf', '::1', 1627504683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373530343638333b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2231223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('c5li3lgestf7tqf69gfen9icrhkikjr5', '::1', 1627504683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373530343638333b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2231223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('gfm287pv2cro1lr0d38ao82fqmb309kp', '::1', 1627659645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373635393634353b),
('c1o8g1amud308r4tog7lp55398e4l9p7', '::1', 1627659988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373635393938383b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b),
('20n3kbubpj2s8j3uf521qc249etq92lr', '::1', 1627660945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636303934353b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b),
('jt8gjjv3c54voof27r643q65v9m7aujr', '::1', 1627661247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636313234373b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b),
('pvn4q4fkuuq5nnogq2eblabqrq5eos0t', '::1', 1627661549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636313534393b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b),
('desafvglrib9e28lscuf47cabrst7bdu', '::1', 1627662081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636323038313b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b),
('logdue2cdqq4jggmjbogsv07ftntav35', '::1', 1627662509, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636323530393b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b);
INSERT INTO `tbl_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('2stdmj84rsmvt1r4lom24u3r13rt0sb1', '::1', 1627662812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636323831323b6d656e755f6163636573737c613a333a7b693a303b733a333a22504f53223b693a313b733a343a2253616c65223b693a323b733a363a22576169746572223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2235223b66756c6c5f6e616d657c733a31313a224d657365726f2044454d4f223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31383a226d657365726f40726573657473762e636f6d223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('rnod9nhkiquecu9efaavh82s7s2mithv', '::1', 1627663114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636333131343b6d656e755f6163636573737c613a333a7b693a303b733a333a22504f53223b693a313b733a343a2253616c65223b693a323b733a363a22576169746572223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2235223b66756c6c5f6e616d657c733a31313a224d657365726f2044454d4f223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31383a226d657365726f40726573657473762e636f6d223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('i7g1vdq92rva2n3om4gpge09t0nh1vc1', '::1', 1627663439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636333433393b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b757365725f69647c733a313a2231223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a383a223732303535343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a33333a223338342c204b414c494241525920524f41442c205049524f4a5055522d38353030223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b),
('ftihfiflg4he4uaac1ngodgef1apcl5o', '::1', 1627667034, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636373033343b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2231223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('tgf5ii04fr4r9bds1rpp1leharuhgs7h', '::1', 1627667392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636373339323b6d656e755f6163636573737c613a333a7b693a303b733a333a22504f53223b693a313b733a343a2253616c65223b693a323b733a363a22576169746572223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2235223b66756c6c5f6e616d657c733a31313a224d657365726f2044454d4f223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31383a226d657365726f40726573657473762e636f6d223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('tv35a24qobtj7snvm8cdv0063ojpggr2', '::1', 1627667712, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636373731323b6d656e755f6163636573737c613a333a7b693a303b733a333a22504f53223b693a313b733a343a2253616c65223b693a323b733a363a22576169746572223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2235223b66756c6c5f6e616d657c733a31313a224d657365726f2044454d4f223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31383a226d657365726f40726573657473762e636f6d223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('k5im1nb0655lcdi5fjs53v0of577qrj4', '::1', 1627668174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636383137343b6d656e755f6163636573737c613a333a7b693a303b733a333a22504f53223b693a313b733a343a2253616c65223b693a323b733a363a22576169746572223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2235223b66756c6c5f6e616d657c733a31313a224d657365726f2044454d4f223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31383a226d657365726f40726573657473762e636f6d223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('b8jdmco18pfoq2f9rmea4c94v8g66fve', '::1', 1627668478, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636383437383b6d656e755f6163636573737c613a333a7b693a303b733a333a22504f53223b693a313b733a343a2253616c65223b693a323b733a363a22576169746572223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2235223b66756c6c5f6e616d657c733a31313a224d657365726f2044454d4f223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31383a226d657365726f40726573657473762e636f6d223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a353a2273616c6573223b),
('ragl3lh5jkci3al89tjdl5gn2j6r83ep', '::1', 1627668905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636383930353b6d656e755f6163636573737c613a333a7b693a303b733a333a22504f53223b693a313b733a343a2253616c65223b693a323b733a363a22576169746572223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2235223b66756c6c5f6e616d657c733a31313a224d657365726f2044454d4f223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31383a226d657365726f40726573657473762e636f6d223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a353a2273616c6573223b),
('csl8s5oive1vvgtpu1v4e4hbp3maf6da', '::1', 1627669490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636393439303b6d656e755f6163636573737c613a333a7b693a303b733a333a22504f53223b693a313b733a343a2253616c65223b693a323b733a363a22576169746572223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2235223b66756c6c5f6e616d657c733a31313a224d657365726f2044454d4f223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31383a226d657365726f40726573657473762e636f6d223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('kpg4egejlip2p0e54mqhdkjo4t75dsem', '::1', 1627669875, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373636393837353b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b757365725f69647c733a313a2231223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a383a223732303535343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a33333a223338342c204b414c494241525920524f41442c205049524f4a5055522d38353030223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b),
('el1ctbhhfbjqltk7ag9m6if6f00j0hqd', '::1', 1627670342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373637303334323b6d656e755f6163636573737c613a333a7b693a303b733a333a22504f53223b693a313b733a343a2253616c65223b693a323b733a363a22576169746572223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2235223b66756c6c5f6e616d657c733a31313a224d657365726f2044454d4f223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31383a226d657365726f40726573657473762e636f6d223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b),
('deh0p03tbl44gifd9itnee2tvn90vmqh', '::1', 1627670521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373637303334323b6d656e755f6163636573737c613a333a7b693a303b733a333a22504f53223b693a313b733a343a2253616c65223b693a323b733a363a22576169746572223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2235223b66756c6c5f6e616d657c733a31313a224d657365726f2044454d4f223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31383a226d657365726f40726573657473762e636f6d223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b),
('i8i8pt832q9cspg0hl4ajefomgn2a8n1', '::1', 1628219407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383231393430373b),
('m1gm15oo4ca3dudtbi27f5t1l6em8bkc', '::1', 1629751909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393735313930393b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2231223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a353a2273616c6573223b),
('1j7uhnh5ot4aog0pskj6jqap51tqno09', '::1', 1629754656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393735343635363b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2231223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a353a2273616c6573223b),
('93f5103nq5c1dmdsf1pj1b4retgtobsc', '::1', 1629755084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393735353038343b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a353a2273616c6573223b),
('vas3km7pprpc2galpa9gdapj4p3h4ch2', '::1', 1629755073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393735353031363b),
('i04ou6mejc0o9fklebfjghogs8spheun', '::1', 1629758086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393735383038363b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a353a2273616c6573223b);
INSERT INTO `tbl_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('i0u32ue4l78qlidbq90ofunvl79rv226', '::1', 1629759518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393735393531383b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a353a2273616c6573223b),
('n12bt4t1hsofisstq9g2pofq32aqq29t', '::1', 1629759871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393735393837313b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a353a2273616c6573223b757365725f69647c733a313a2231223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a383a223732303535343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a33333a223338342c204b414c494241525920524f41442c205049524f4a5055522d38353030223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b),
('mm0j8o36pig4187jad0u9eq86cpf4g6q', '::1', 1629760246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393736303234363b6d656e755f6163636573737c613a333a7b693a303b733a333a22504f53223b693a313b733a343a2253616c65223b693a323b733a363a22576169746572223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2235223b66756c6c5f6e616d657c733a31313a224d657365726f2044454d4f223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31383a226d657365726f40726573657473762e636f6d223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a353a2273616c6573223b),
('aojtfmjt6k2ljf0kf5v399qdhptnpg30', '::1', 1629760814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393736303831343b6d656e755f6163636573737c613a333a7b693a303b733a333a22504f53223b693a313b733a343a2253616c65223b693a323b733a363a22576169746572223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2235223b66756c6c5f6e616d657c733a31313a224d657365726f2044454d4f223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31383a226d657365726f40726573657473762e636f6d223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a353a2273616c6573223b),
('lfj9qq59tj1lea32ckuvhfof5hvig4t7', '::1', 1629761125, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393736313132353b6d656e755f6163636573737c613a333a7b693a303b733a333a22504f53223b693a313b733a343a2253616c65223b693a323b733a363a22576169746572223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b757365725f69647c733a313a2235223b66756c6c5f6e616d657c733a31313a224d657365726f2044454d4f223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31383a226d657365726f40726573657473762e636f6d223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b),
('mke35a9dvshs4ojd7a0i6r8rka99or8l', '::1', 1629761666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393736313636363b6d656e755f6163636573737c613a333a7b693a303b733a333a22504f53223b693a313b733a343a2253616c65223b693a323b733a363a22576169746572223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b757365725f69647c733a313a2235223b66756c6c5f6e616d657c733a31313a224d657365726f2044454d4f223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31383a226d657365726f40726573657473762e636f6d223b726f6c657c733a343a2255736572223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b64656661756c745f7761697465727c733a313a2230223b),
('p7f2ut8cj9o17r1pvm759bggshu21muk', '::1', 1629761969, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393736313936393b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a22656e676c697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b636c69636b65645f636f6e74726f6c6c65727c733a383a225472616e73666572223b636c69636b65645f6d6574686f647c733a393a227472616e7366657273223b757365725f69647c733a313a2231223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a383a223732303535343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a33333a223338342c204b414c494241525920524f41442c205049524f4a5055522d38353030223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b),
('9nen27559i1am6kmiqojqb41tsnfg0gk', '::1', 1629762271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393736323237313b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b636c69636b65645f636f6e74726f6c6c65727c733a32313a2253686f72745f6d6573736167655f73657276696365223b636c69636b65645f6d6574686f647c733a31303a22736d7353657276696365223b),
('bq8maijijohjsuh4ladplds876a4dt34', '::1', 1629762655, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393736323635353b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b636c69636b65645f636f6e74726f6c6c65727c733a32313a2253686f72745f6d6573736167655f73657276696365223b636c69636b65645f6d6574686f647c733a31303a22736d7353657276696365223b757365725f69647c733a313a2231223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a383a223732303535343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a33333a223338342c204b414c494241525920524f41442c205049524f4a5055522d38353030223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b),
('p7htki6ncnsjb1abf9akrnf22kb2j4a3', '::1', 1629762760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393736323635353b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d6c616e67756167657c733a373a227370616e697368223b73657373696f6e5f6f75746c6574737c4e3b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b636c69636b65645f636f6e74726f6c6c65727c733a32313a2253686f72745f6d6573736167655f73657276696365223b636c69636b65645f6d6574686f647c733a31303a22736d7353657276696365223b757365725f69647c733a313a2231223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a383a223732303535343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a33333a223338342c204b414c494241525920524f41442c205049524f4a5055522d38353030223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b),
('sncvbmvl7cuu7th8utjmp872rfpgd7bn', '::1', 1629910897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393931303839373b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('vacnoqbvcph45cnk41asglcne4h0pv9l', '::1', 1629911373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393931303839373b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('57updmtv6p00lo3tdoqgskbg47a5e65d', '::1', 1630033848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303033333834383b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b);
INSERT INTO `tbl_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('lf18vj7e15hhk4v1qvg39jl615okofrf', '::1', 1630034427, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303033343432373b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('qvsh5iqnf4kd9t69eft7rgj5esrpsp91', '::1', 1630038260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303033383236303b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('ibm5415t5s0c1kr5ig7b27crntjk2bov', '::1', 1630038966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303033383236303b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('ef3pnjqog1so4l7erkmaopvp2990l9ep', '::1', 1630093082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303039333038323b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('i1qissqplpl9gs9eqbdvm91e7q2t3et7', '::1', 1630093447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303039333434373b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('2925392e8d59lbvahr9js4g6dutuf1j1', '::1', 1630093755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303039333735353b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('g5crso4e7ifkqlqoo04ue21mbgiq7v3a', '::1', 1630094065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303039343036353b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('ti3uak91qbkesr5em41qssrd9p4fqgl4', '::1', 1630094395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303039343339353b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('lo8b167ictbq5bu3ka4gevjtmo72pkuj', '::1', 1630094719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303039343731393b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('cj5mtjtni9ti8pfpg2sahp400l1195ae', '::1', 1630095028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303039353032383b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('ss480l6773ltv7vjj7h18ssgscp1lqno', '::1', 1630096570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303039363537303b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b);
INSERT INTO `tbl_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('slslfmotsfc367ssianrg559k0j61a2v', '::1', 1630097609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303039363537303b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('284frh5qmqtlt17abq9oe5enig0kusep', '::1', 1630157347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303135373334373b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('n26tip38r70ueg5o7e6nts38k7l91hpn', '::1', 1630157683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303135373638333b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('m68pi397ubcp0abjsqiq2qtu91t776tr', '::1', 1630157999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303135373939393b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('tsr1agabta94162lta0vn3da455ne4ac', '::1', 1630158394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303135383339343b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b),
('d5qr8epjdtseoneig0jskphqlv0u41ma', '::1', 1630158708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303135383730383b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b70726f70696e617c733a323a223530223b),
('286lfevlp90phfr1pih56sqa8ght1756', '::1', 1630159049, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303135393034393b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b70726f70696e617c733a323a223530223b),
('qp2sf97moqpc8tsiinge096lhhc5ir52', '::1', 1630159554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303135393535343b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b70726f70696e617c733a323a223530223b),
('hr904p3sm3qsog1kde230s4umam3vlcr', '::1', 1630159860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303135393836303b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b70726f70696e617c733a323a223130223b),
('bl0vuau6okqdn45437jdhjocd7754jva', '::1', 1630160692, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303136303639323b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b70726f70696e617c733a323a223130223b),
('9ni06e6rcbc85ru0pk8hrqrens1l3qsf', '::1', 1630161040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303136313034303b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b70726f70696e617c733a323a223130223b);
INSERT INTO `tbl_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('i9trshl51fssdahdf3eflho4t6mdd0sq', '::1', 1630161345, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303136313334353b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b70726f70696e617c733a323a223130223b),
('k9bfmkb2j5lrm72cthunhppch6tg32qc', '::1', 1630161713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303136313731333b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b70726f70696e617c733a323a223130223b),
('7f46fotkgpciejpl397pa467f87ov5up', '::1', 1630162119, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303136323131393b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b70726f70696e617c733a323a223130223b),
('fehhttabfflpv9g244jhg566u7s6o92o', '::1', 1630162333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303136323131393b6d656e755f6163636573737c613a36303a7b693a303b733a333a22504f53223b693a313b733a383a225075726368617365223b693a323b733a393a22496e76656e746f7279223b693a333b733a353a225761737465223b693a343b733a373a22457870656e7365223b693a353b733a363a225265706f7274223b693a363b733a393a2244617368626f617264223b693a373b733a363a224d6173746572223b693a383b733a343a2255736572223b693a393b733a31353a22537570706c6965725061796d656e74223b693a31303b733a32303a22496e76656e746f72795f61646a7573746d656e74223b693a31313b733a32303a22437573746f6d65725f6475655f72656365697665223b693a31323b733a31303a22417474656e64616e6365223b693a31333b733a333a22426172223b693a31343b733a373a224b69746368656e223b693a31353b733a363a22576169746572223b693a31363b733a363a224f75746c6574223b693a31373b733a343a2255736572223b693a31383b733a303a22223b693a31393b733a303a22223b693a32303b733a31343a2241757468656e7469636174696f6e223b693a32313b733a373a2253657474696e67223b693a32323b733a343a2253616c65223b693a32333b733a363a225265706f7274223b693a32343b733a363a225265706f7274223b693a32353b733a363a225265706f7274223b693a32363b733a363a225265706f7274223b693a32373b733a363a225265706f7274223b693a32383b733a363a225265706f7274223b693a32393b733a363a225265706f7274223b693a33303b733a363a225265706f7274223b693a33313b733a363a225265706f7274223b693a33323b733a363a225265706f7274223b693a33333b733a363a225265706f7274223b693a33343b733a363a225265706f7274223b693a33353b733a363a225265706f7274223b693a33363b733a363a225265706f7274223b693a33373b733a363a225265706f7274223b693a33383b733a363a225265706f7274223b693a33393b733a363a225265706f7274223b693a34303b733a363a225265706f7274223b693a34313b733a363a225265706f7274223b693a34323b733a31383a22496e6772656469656e7443617465676f7279223b693a34333b733a343a22556e6974223b693a34343b733a31303a22496e6772656469656e74223b693a34353b733a383a224d6f646966696572223b693a34363b733a31363a22466f6f644d656e7543617465676f7279223b693a34373b733a383a22466f6f644d656e75223b693a34383b733a383a22537570706c696572223b693a34393b733a383a22437573746f6d6572223b693a35303b733a31323a22457870656e73654974656d73223b693a35313b733a31333a225061796d656e744d6574686f64223b693a35323b733a353a225461626c65223b693a35333b733a343a2255736572223b693a35343b733a31343a2241757468656e7469636174696f6e223b693a35353b733a31343a2241757468656e7469636174696f6e223b693a35363b733a31343a2241757468656e7469636174696f6e223b693a35373b733a383a225472616e73666572223b693a35383b733a32313a2253686f72745f6d6573736167655f73657276696365223b693a35393b733a343a22526f6f6d223b7d757365725f69647c733a313a2231223b6c616e67756167657c733a373a227370616e697368223b66756c6c5f6e616d657c733a353a2241646d696e223b70686f6e657c733a31353a22283530332920373230352d35343038223b656d61696c5f616464726573737c733a31373a2261646d696e40726573657473762e636f6d223b726f6c657c733a353a2241646d696e223b636f6d70616e795f69647c733a313a2231223b73657373696f6e5f6f75746c6574737c4e3b63757272656e63797c733a313a2224223b7a6f6e655f6e616d657c733a31393a22416d65726963612f456c5f53616c7661646f72223b646174655f666f726d61747c733a353a22642f6d2f59223b627573696e6573735f6e616d657c733a373a2253616970426172223b616464726573737c733a32393a22536d616c6c2053797374656d732c2042696720536f6c7574696f6e7321223b776562736974657c733a31313a22526573657473762e636f6d223b63757272656e63795f706f736974696f6e7c733a31333a224265666f726520416d6f756e74223b707265636973696f6e7c733a313a2232223b64656661756c745f637573746f6d65727c733a313a2231223b64656661756c745f7061796d656e747c733a313a2231223b7072696e745f666f726d61747c733a343a2238306d6d223b696e766f6963655f666f6f7465727c733a32343a224772616369617320706f722070726566657269726e6f7321223b696e766f6963655f6c6f676f7c733a33363a2235316335336630336665373333343364306637663736393135343665646439662e706e67223b6c616e67756167655f6d616e69666573746f7c733a393a22726576686762726576223b7072655f6f725f706f73745f7061796d656e747c733a31323a22506f7374205061796d656e74223b636f6c6c6563745f7461787c733a333a22596573223b7461785f7469746c657c733a393a2242495354524f424152223b7461785f726567697374726174696f6e5f6e6f7c733a383a223030303030302d30223b7461785f69735f6773747c733a333a22596573223b73746174655f636f64657c733a373a2230393331323332223b6f75746c65745f69647c733a313a2231223b6f75746c65745f6e616d657c733a373a2253616970426172223b656d61696c7c733a31373a2261646d696e40726573657473762e636f6d223b64656661756c745f7761697465727c733a313a2230223b636c69636b65645f636f6e74726f6c6c65727c733a343a2253616c65223b636c69636b65645f6d6574686f647c733a333a22504f53223b70726f70696e617c733a323a223130223b);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int NOT NULL,
  `site_name` varchar(300) DEFAULT NULL,
  `footer` varchar(300) DEFAULT NULL,
  `system_logo` text,
  `company_id` int DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suppliers`
--

CREATE TABLE `tbl_suppliers` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contact_person` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_suppliers`
--

INSERT INTO `tbl_suppliers` (`id`, `name`, `contact_person`, `phone`, `email`, `address`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'Proveedor DEMO', 'DEMO', '12345678', '', '', '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier_payments`
--

CREATE TABLE `tbl_supplier_payments` (
  `id` int NOT NULL,
  `date` date DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tables`
--

CREATE TABLE `tbl_tables` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sit_capacity` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  `rooms_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_tables`
--

INSERT INTO `tbl_tables` (`id`, `name`, `sit_capacity`, `position`, `description`, `user_id`, `outlet_id`, `company_id`, `del_status`, `rooms_id`) VALUES
(1, 'Mesa 01', '4', 'VIP', 'Mesa para 4', 1, 1, 1, 'Live', 7),
(2, 'Mesa 02', '4', 'Lobby', 'aaa', 1, 1, 1, 'Live', 6),
(3, 'Mesa 4', '7', '7', 'Prueba de guardados', 1, 1, 1, 'Live', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_kot`
--

CREATE TABLE `tbl_temp_kot` (
  `id` int NOT NULL,
  `temp_kot_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_time_zone`
--

CREATE TABLE `tbl_time_zone` (
  `id` int NOT NULL,
  `country_code` varchar(2) DEFAULT NULL,
  `zone_name` varchar(35) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_time_zone`
--

INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES
(1, 'AD', 'Europe/Andorra', 'Live'),
(2, 'AE', 'Asia/Dubai', 'Live'),
(3, 'AF', 'Asia/Kabul', 'Live'),
(4, 'AG', 'America/Antigua', 'Live'),
(5, 'AI', 'America/Anguilla', 'Live'),
(6, 'AL', 'Europe/Tirane', 'Live'),
(7, 'AM', 'Asia/Yerevan', 'Live'),
(8, 'AO', 'Africa/Luanda', 'Live'),
(9, 'AQ', 'Antarctica/McMurdo', 'Live'),
(10, 'AQ', 'Antarctica/Casey', 'Live'),
(11, 'AQ', 'Antarctica/Davis', 'Live'),
(12, 'AQ', 'Antarctica/DumontDUrville', 'Live'),
(13, 'AQ', 'Antarctica/Mawson', 'Live'),
(14, 'AQ', 'Antarctica/Palmer', 'Live'),
(15, 'AQ', 'Antarctica/Rothera', 'Live'),
(16, 'AQ', 'Antarctica/Syowa', 'Live'),
(17, 'AQ', 'Antarctica/Troll', 'Live'),
(18, 'AQ', 'Antarctica/Vostok', 'Live'),
(19, 'AR', 'America/Argentina/Buenos_Aires', 'Live'),
(20, 'AR', 'America/Argentina/Cordoba', 'Live'),
(21, 'AR', 'America/Argentina/Salta', 'Live'),
(22, 'AR', 'America/Argentina/Jujuy', 'Live'),
(23, 'AR', 'America/Argentina/Tucuman', 'Live'),
(24, 'AR', 'America/Argentina/Catamarca', 'Live'),
(25, 'AR', 'America/Argentina/La_Rioja', 'Live'),
(26, 'AR', 'America/Argentina/San_Juan', 'Live'),
(27, 'AR', 'America/Argentina/Mendoza', 'Live'),
(28, 'AR', 'America/Argentina/San_Luis', 'Live'),
(29, 'AR', 'America/Argentina/Rio_Gallegos', 'Live'),
(30, 'AR', 'America/Argentina/Ushuaia', 'Live'),
(31, 'AS', 'Pacific/Pago_Pago', 'Live'),
(32, 'AT', 'Europe/Vienna', 'Live'),
(33, 'AU', 'Australia/Lord_Howe', 'Live'),
(34, 'AU', 'Antarctica/Macquarie', 'Live'),
(35, 'AU', 'Australia/Hobart', 'Live'),
(36, 'AU', 'Australia/Currie', 'Live'),
(37, 'AU', 'Australia/Melbourne', 'Live'),
(38, 'AU', 'Australia/Sydney', 'Live'),
(39, 'AU', 'Australia/Broken_Hill', 'Live'),
(40, 'AU', 'Australia/Brisbane', 'Live'),
(41, 'AU', 'Australia/Lindeman', 'Live'),
(42, 'AU', 'Australia/Adelaide', 'Live'),
(43, 'AU', 'Australia/Darwin', 'Live'),
(44, 'AU', 'Australia/Perth', 'Live'),
(45, 'AU', 'Australia/Eucla', 'Live'),
(46, 'AW', 'America/Aruba', 'Live'),
(47, 'AX', 'Europe/Mariehamn', 'Live'),
(48, 'AZ', 'Asia/Baku', 'Live'),
(49, 'BA', 'Europe/Sarajevo', 'Live'),
(50, 'BB', 'America/Barbados', 'Live'),
(51, 'BD', 'Asia/Dhaka', 'Live'),
(52, 'BE', 'Europe/Brussels', 'Live'),
(53, 'BF', 'Africa/Ouagadougou', 'Live'),
(54, 'BG', 'Europe/Sofia', 'Live'),
(55, 'BH', 'Asia/Bahrain', 'Live'),
(56, 'BI', 'Africa/Bujumbura', 'Live'),
(57, 'BJ', 'Africa/Porto-Novo', 'Live'),
(58, 'BL', 'America/St_Barthelemy', 'Live'),
(59, 'BM', 'Atlantic/Bermuda', 'Live'),
(60, 'BN', 'Asia/Brunei', 'Live'),
(61, 'BO', 'America/La_Paz', 'Live'),
(62, 'BQ', 'America/Kralendijk', 'Live'),
(63, 'BR', 'America/Noronha', 'Live'),
(64, 'BR', 'America/Belem', 'Live'),
(65, 'BR', 'America/Fortaleza', 'Live'),
(66, 'BR', 'America/Recife', 'Live'),
(67, 'BR', 'America/Araguaina', 'Live'),
(68, 'BR', 'America/Maceio', 'Live'),
(69, 'BR', 'America/Bahia', 'Live'),
(70, 'BR', 'America/Sao_Paulo', 'Live'),
(71, 'BR', 'America/Campo_Grande', 'Live'),
(72, 'BR', 'America/Cuiaba', 'Live'),
(73, 'BR', 'America/Santarem', 'Live'),
(74, 'BR', 'America/Porto_Velho', 'Live'),
(75, 'BR', 'America/Boa_Vista', 'Live'),
(76, 'BR', 'America/Manaus', 'Live'),
(77, 'BR', 'America/Eirunepe', 'Live'),
(78, 'BR', 'America/Rio_Branco', 'Live'),
(79, 'BS', 'America/Nassau', 'Live'),
(80, 'BT', 'Asia/Thimphu', 'Live'),
(81, 'BW', 'Africa/Gaborone', 'Live'),
(82, 'BY', 'Europe/Minsk', 'Live'),
(83, 'BZ', 'America/Belize', 'Live'),
(84, 'CA', 'America/St_Johns', 'Live'),
(85, 'CA', 'America/Halifax', 'Live'),
(86, 'CA', 'America/Glace_Bay', 'Live'),
(87, 'CA', 'America/Moncton', 'Live'),
(88, 'CA', 'America/Goose_Bay', 'Live'),
(89, 'CA', 'America/Blanc-Sablon', 'Live'),
(90, 'CA', 'America/Toronto', 'Live'),
(91, 'CA', 'America/Nipigon', 'Live'),
(92, 'CA', 'America/Thunder_Bay', 'Live'),
(93, 'CA', 'America/Iqaluit', 'Live'),
(94, 'CA', 'America/Pangnirtung', 'Live'),
(95, 'CA', 'America/Atikokan', 'Live'),
(96, 'CA', 'America/Winnipeg', 'Live'),
(97, 'CA', 'America/Rainy_River', 'Live'),
(98, 'CA', 'America/Resolute', 'Live'),
(99, 'CA', 'America/Rankin_Inlet', 'Live'),
(100, 'CA', 'America/Regina', 'Live'),
(101, 'CA', 'America/Swift_Current', 'Live'),
(102, 'CA', 'America/Edmonton', 'Live'),
(103, 'CA', 'America/Cambridge_Bay', 'Live'),
(104, 'CA', 'America/Yellowknife', 'Live'),
(105, 'CA', 'America/Inuvik', 'Live'),
(106, 'CA', 'America/Creston', 'Live'),
(107, 'CA', 'America/Dawson_Creek', 'Live'),
(108, 'CA', 'America/Fort_Nelson', 'Live'),
(109, 'CA', 'America/Vancouver', 'Live'),
(110, 'CA', 'America/Whitehorse', 'Live'),
(111, 'CA', 'America/Dawson', 'Live'),
(112, 'CC', 'Indian/Cocos', 'Live'),
(113, 'CD', 'Africa/Kinshasa', 'Live'),
(114, 'CD', 'Africa/Lubumbashi', 'Live'),
(115, 'CF', 'Africa/Bangui', 'Live'),
(116, 'CG', 'Africa/Brazzaville', 'Live'),
(117, 'CH', 'Europe/Zurich', 'Live'),
(118, 'CI', 'Africa/Abidjan', 'Live'),
(119, 'CK', 'Pacific/Rarotonga', 'Live'),
(120, 'CL', 'America/Santiago', 'Live'),
(121, 'CL', 'America/Punta_Arenas', 'Live'),
(122, 'CL', 'Pacific/Easter', 'Live'),
(123, 'CM', 'Africa/Douala', 'Live'),
(124, 'CN', 'Asia/Shanghai', 'Live'),
(125, 'CN', 'Asia/Urumqi', 'Live'),
(126, 'CO', 'America/Bogota', 'Live'),
(127, 'CR', 'America/Costa_Rica', 'Live'),
(128, 'CU', 'America/Havana', 'Live'),
(129, 'CV', 'Atlantic/Cape_Verde', 'Live'),
(130, 'CW', 'America/Curacao', 'Live'),
(131, 'CX', 'Indian/Christmas', 'Live'),
(132, 'CY', 'Asia/Nicosia', 'Live'),
(133, 'CY', 'Asia/Famagusta', 'Live'),
(134, 'CZ', 'Europe/Prague', 'Live'),
(135, 'DE', 'Europe/Berlin', 'Live'),
(136, 'DE', 'Europe/Busingen', 'Live'),
(137, 'DJ', 'Africa/Djibouti', 'Live'),
(138, 'DK', 'Europe/Copenhagen', 'Live'),
(139, 'DM', 'America/Dominica', 'Live'),
(140, 'DO', 'America/Santo_Domingo', 'Live'),
(141, 'DZ', 'Africa/Algiers', 'Live'),
(142, 'EC', 'America/Guayaquil', 'Live'),
(143, 'EC', 'Pacific/Galapagos', 'Live'),
(144, 'EE', 'Europe/Tallinn', 'Live'),
(145, 'EG', 'Africa/Cairo', 'Live'),
(146, 'EH', 'Africa/El_Aaiun', 'Live'),
(147, 'ER', 'Africa/Asmara', 'Live'),
(148, 'ES', 'Europe/Madrid', 'Live'),
(149, 'ES', 'Africa/Ceuta', 'Live'),
(150, 'ES', 'Atlantic/Canary', 'Live'),
(151, 'ET', 'Africa/Addis_Ababa', 'Live'),
(152, 'FI', 'Europe/Helsinki', 'Live'),
(153, 'FJ', 'Pacific/Fiji', 'Live'),
(154, 'FK', 'Atlantic/Stanley', 'Live'),
(155, 'FM', 'Pacific/Chuuk', 'Live'),
(156, 'FM', 'Pacific/Pohnpei', 'Live'),
(157, 'FM', 'Pacific/Kosrae', 'Live'),
(158, 'FO', 'Atlantic/Faroe', 'Live'),
(159, 'FR', 'Europe/Paris', 'Live'),
(160, 'GA', 'Africa/Libreville', 'Live'),
(161, 'GB', 'Europe/London', 'Live'),
(162, 'GD', 'America/Grenada', 'Live'),
(163, 'GE', 'Asia/Tbilisi', 'Live'),
(164, 'GF', 'America/Cayenne', 'Live'),
(165, 'GG', 'Europe/Guernsey', 'Live'),
(166, 'GH', 'Africa/Accra', 'Live'),
(167, 'GI', 'Europe/Gibraltar', 'Live'),
(168, 'GL', 'America/Godthab', 'Live'),
(169, 'GL', 'America/Danmarkshavn', 'Live'),
(170, 'GL', 'America/Scoresbysund', 'Live'),
(171, 'GL', 'America/Thule', 'Live'),
(172, 'GM', 'Africa/Banjul', 'Live'),
(173, 'GN', 'Africa/Conakry', 'Live'),
(174, 'GP', 'America/Guadeloupe', 'Live'),
(175, 'GQ', 'Africa/Malabo', 'Live'),
(176, 'GR', 'Europe/Athens', 'Live'),
(177, 'GS', 'Atlantic/South_Georgia', 'Live'),
(178, 'GT', 'America/Guatemala', 'Live'),
(179, 'GU', 'Pacific/Guam', 'Live'),
(180, 'GW', 'Africa/Bissau', 'Live'),
(181, 'GY', 'America/Guyana', 'Live'),
(182, 'HK', 'Asia/Hong_Kong', 'Live'),
(183, 'HN', 'America/Tegucigalpa', 'Live'),
(184, 'HR', 'Europe/Zagreb', 'Live'),
(185, 'HT', 'America/Port-au-Prince', 'Live'),
(186, 'HU', 'Europe/Budapest', 'Live'),
(187, 'ID', 'Asia/Jakarta', 'Live'),
(188, 'ID', 'Asia/Pontianak', 'Live'),
(189, 'ID', 'Asia/Makassar', 'Live'),
(190, 'ID', 'Asia/Jayapura', 'Live'),
(191, 'IE', 'Europe/Dublin', 'Live'),
(192, 'IL', 'Asia/Jerusalem', 'Live'),
(193, 'IM', 'Europe/Isle_of_Man', 'Live'),
(194, 'IN', 'Asia/Kolkata', 'Live'),
(195, 'IO', 'Indian/Chagos', 'Live'),
(196, 'IQ', 'Asia/Baghdad', 'Live'),
(197, 'IR', 'Asia/Tehran', 'Live'),
(198, 'IS', 'Atlantic/Reykjavik', 'Live'),
(199, 'IT', 'Europe/Rome', 'Live'),
(200, 'JE', 'Europe/Jersey', 'Live'),
(201, 'JM', 'America/Jamaica', 'Live'),
(202, 'JO', 'Asia/Amman', 'Live'),
(203, 'JP', 'Asia/Tokyo', 'Live'),
(204, 'KE', 'Africa/Nairobi', 'Live'),
(205, 'KG', 'Asia/Bishkek', 'Live'),
(206, 'KH', 'Asia/Phnom_Penh', 'Live'),
(207, 'KI', 'Pacific/Tarawa', 'Live'),
(208, 'KI', 'Pacific/Enderbury', 'Live'),
(209, 'KI', 'Pacific/Kiritimati', 'Live'),
(210, 'KM', 'Indian/Comoro', 'Live'),
(211, 'KN', 'America/St_Kitts', 'Live'),
(212, 'KP', 'Asia/Pyongyang', 'Live'),
(213, 'KR', 'Asia/Seoul', 'Live'),
(214, 'KW', 'Asia/Kuwait', 'Live'),
(215, 'KY', 'America/Cayman', 'Live'),
(216, 'KZ', 'Asia/Almaty', 'Live'),
(217, 'KZ', 'Asia/Qyzylorda', 'Live'),
(218, 'KZ', 'Asia/Aqtobe', 'Live'),
(219, 'KZ', 'Asia/Aqtau', 'Live'),
(220, 'KZ', 'Asia/Atyrau', 'Live'),
(221, 'KZ', 'Asia/Oral', 'Live'),
(222, 'LA', 'Asia/Vientiane', 'Live'),
(223, 'LB', 'Asia/Beirut', 'Live'),
(224, 'LC', 'America/St_Lucia', 'Live'),
(225, 'LI', 'Europe/Vaduz', 'Live'),
(226, 'LK', 'Asia/Colombo', 'Live'),
(227, 'LR', 'Africa/Monrovia', 'Live'),
(228, 'LS', 'Africa/Maseru', 'Live'),
(229, 'LT', 'Europe/Vilnius', 'Live'),
(230, 'LU', 'Europe/Luxembourg', 'Live'),
(231, 'LV', 'Europe/Riga', 'Live'),
(232, 'LY', 'Africa/Tripoli', 'Live'),
(233, 'MA', 'Africa/Casablanca', 'Live'),
(234, 'MC', 'Europe/Monaco', 'Live'),
(235, 'MD', 'Europe/Chisinau', 'Live'),
(236, 'ME', 'Europe/Podgorica', 'Live'),
(237, 'MF', 'America/Marigot', 'Live'),
(238, 'MG', 'Indian/Antananarivo', 'Live'),
(239, 'MH', 'Pacific/Majuro', 'Live'),
(240, 'MH', 'Pacific/Kwajalein', 'Live'),
(241, 'MK', 'Europe/Skopje', 'Live'),
(242, 'ML', 'Africa/Bamako', 'Live'),
(243, 'MM', 'Asia/Yangon', 'Live'),
(244, 'MN', 'Asia/Ulaanbaatar', 'Live'),
(245, 'MN', 'Asia/Hovd', 'Live'),
(246, 'MN', 'Asia/Choibalsan', 'Live'),
(247, 'MO', 'Asia/Macau', 'Live'),
(248, 'MP', 'Pacific/Saipan', 'Live'),
(249, 'MQ', 'America/Martinique', 'Live'),
(250, 'MR', 'Africa/Nouakchott', 'Live'),
(251, 'MS', 'America/Montserrat', 'Live'),
(252, 'MT', 'Europe/Malta', 'Live'),
(253, 'MU', 'Indian/Mauritius', 'Live'),
(254, 'MV', 'Indian/Maldives', 'Live'),
(255, 'MW', 'Africa/Blantyre', 'Live'),
(256, 'MX', 'America/Mexico_City', 'Live'),
(257, 'MX', 'America/Cancun', 'Live'),
(258, 'MX', 'America/Merida', 'Live'),
(259, 'MX', 'America/Monterrey', 'Live'),
(260, 'MX', 'America/Matamoros', 'Live'),
(261, 'MX', 'America/Mazatlan', 'Live'),
(262, 'MX', 'America/Chihuahua', 'Live'),
(263, 'MX', 'America/Ojinaga', 'Live'),
(264, 'MX', 'America/Hermosillo', 'Live'),
(265, 'MX', 'America/Tijuana', 'Live'),
(266, 'MX', 'America/Bahia_Banderas', 'Live'),
(267, 'MY', 'Asia/Kuala_Lumpur', 'Live'),
(268, 'MY', 'Asia/Kuching', 'Live'),
(269, 'MZ', 'Africa/Maputo', 'Live'),
(270, 'NA', 'Africa/Windhoek', 'Live'),
(271, 'NC', 'Pacific/Noumea', 'Live'),
(272, 'NE', 'Africa/Niamey', 'Live'),
(273, 'NF', 'Pacific/Norfolk', 'Live'),
(274, 'NG', 'Africa/Lagos', 'Live'),
(275, 'NI', 'America/Managua', 'Live'),
(276, 'NL', 'Europe/Amsterdam', 'Live'),
(277, 'NO', 'Europe/Oslo', 'Live'),
(278, 'NP', 'Asia/Kathmandu', 'Live'),
(279, 'NR', 'Pacific/Nauru', 'Live'),
(280, 'NU', 'Pacific/Niue', 'Live'),
(281, 'NZ', 'Pacific/Auckland', 'Live'),
(282, 'NZ', 'Pacific/Chatham', 'Live'),
(283, 'OM', 'Asia/Muscat', 'Live'),
(284, 'PA', 'America/Panama', 'Live'),
(285, 'PE', 'America/Lima', 'Live'),
(286, 'PF', 'Pacific/Tahiti', 'Live'),
(287, 'PF', 'Pacific/Marquesas', 'Live'),
(288, 'PF', 'Pacific/Gambier', 'Live'),
(289, 'PG', 'Pacific/Port_Moresby', 'Live'),
(290, 'PG', 'Pacific/Bougainville', 'Live'),
(291, 'PH', 'Asia/Manila', 'Live'),
(292, 'PK', 'Asia/Karachi', 'Live'),
(293, 'PL', 'Europe/Warsaw', 'Live'),
(294, 'PM', 'America/Miquelon', 'Live'),
(295, 'PN', 'Pacific/Pitcairn', 'Live'),
(296, 'PR', 'America/Puerto_Rico', 'Live'),
(297, 'PS', 'Asia/Gaza', 'Live'),
(298, 'PS', 'Asia/Hebron', 'Live'),
(299, 'PT', 'Europe/Lisbon', 'Live'),
(300, 'PT', 'Atlantic/Madeira', 'Live'),
(301, 'PT', 'Atlantic/Azores', 'Live'),
(302, 'PW', 'Pacific/Palau', 'Live'),
(303, 'PY', 'America/Asuncion', 'Live'),
(304, 'QA', 'Asia/Qatar', 'Live'),
(305, 'RE', 'Indian/Reunion', 'Live'),
(306, 'RO', 'Europe/Bucharest', 'Live'),
(307, 'RS', 'Europe/Belgrade', 'Live'),
(308, 'RU', 'Europe/Kaliningrad', 'Live'),
(309, 'RU', 'Europe/Moscow', 'Live'),
(310, 'RU', 'Europe/Simferopol', 'Live'),
(311, 'RU', 'Europe/Volgograd', 'Live'),
(312, 'RU', 'Europe/Kirov', 'Live'),
(313, 'RU', 'Europe/Astrakhan', 'Live'),
(314, 'RU', 'Europe/Saratov', 'Live'),
(315, 'RU', 'Europe/Ulyanovsk', 'Live'),
(316, 'RU', 'Europe/Samara', 'Live'),
(317, 'RU', 'Asia/Yekaterinburg', 'Live'),
(318, 'RU', 'Asia/Omsk', 'Live'),
(319, 'RU', 'Asia/Novosibirsk', 'Live'),
(320, 'RU', 'Asia/Barnaul', 'Live'),
(321, 'RU', 'Asia/Tomsk', 'Live'),
(322, 'RU', 'Asia/Novokuznetsk', 'Live'),
(323, 'RU', 'Asia/Krasnoyarsk', 'Live'),
(324, 'RU', 'Asia/Irkutsk', 'Live'),
(325, 'RU', 'Asia/Chita', 'Live'),
(326, 'RU', 'Asia/Yakutsk', 'Live'),
(327, 'RU', 'Asia/Khandyga', 'Live'),
(328, 'RU', 'Asia/Vladivostok', 'Live'),
(329, 'RU', 'Asia/Ust-Nera', 'Live'),
(330, 'RU', 'Asia/Magadan', 'Live'),
(331, 'RU', 'Asia/Sakhalin', 'Live'),
(332, 'RU', 'Asia/Srednekolymsk', 'Live'),
(333, 'RU', 'Asia/Kamchatka', 'Live'),
(334, 'RU', 'Asia/Anadyr', 'Live'),
(335, 'RW', 'Africa/Kigali', 'Live'),
(336, 'SA', 'Asia/Riyadh', 'Live'),
(337, 'SB', 'Pacific/Guadalcanal', 'Live'),
(338, 'SC', 'Indian/Mahe', 'Live'),
(339, 'SD', 'Africa/Khartoum', 'Live'),
(340, 'SE', 'Europe/Stockholm', 'Live'),
(341, 'SG', 'Asia/Singapore', 'Live'),
(342, 'SH', 'Atlantic/St_Helena', 'Live'),
(343, 'SI', 'Europe/Ljubljana', 'Live'),
(344, 'SJ', 'Arctic/Longyearbyen', 'Live'),
(345, 'SK', 'Europe/Bratislava', 'Live'),
(346, 'SL', 'Africa/Freetown', 'Live'),
(347, 'SM', 'Europe/San_Marino', 'Live'),
(348, 'SN', 'Africa/Dakar', 'Live'),
(349, 'SO', 'Africa/Mogadishu', 'Live'),
(350, 'SR', 'America/Paramaribo', 'Live'),
(351, 'SS', 'Africa/Juba', 'Live'),
(352, 'ST', 'Africa/Sao_Tome', 'Live'),
(353, 'SV', 'America/El_Salvador', 'Live'),
(354, 'SX', 'America/Lower_Princes', 'Live'),
(355, 'SY', 'Asia/Damascus', 'Live'),
(356, 'SZ', 'Africa/Mbabane', 'Live'),
(357, 'TC', 'America/Grand_Turk', 'Live'),
(358, 'TD', 'Africa/Ndjamena', 'Live'),
(359, 'TF', 'Indian/Kerguelen', 'Live'),
(360, 'TG', 'Africa/Lome', 'Live'),
(361, 'TH', 'Asia/Bangkok', 'Live'),
(362, 'TJ', 'Asia/Dushanbe', 'Live'),
(363, 'TK', 'Pacific/Fakaofo', 'Live'),
(364, 'TL', 'Asia/Dili', 'Live'),
(365, 'TM', 'Asia/Ashgabat', 'Live'),
(366, 'TN', 'Africa/Tunis', 'Live'),
(367, 'TO', 'Pacific/Tongatapu', 'Live'),
(368, 'TR', 'Europe/Istanbul', 'Live'),
(369, 'TT', 'America/Port_of_Spain', 'Live'),
(370, 'TV', 'Pacific/Funafuti', 'Live'),
(371, 'TW', 'Asia/Taipei', 'Live'),
(372, 'TZ', 'Africa/Dar_es_Salaam', 'Live'),
(373, 'UA', 'Europe/Kiev', 'Live'),
(374, 'UA', 'Europe/Uzhgorod', 'Live'),
(375, 'UA', 'Europe/Zaporozhye', 'Live'),
(376, 'UG', 'Africa/Kampala', 'Live'),
(377, 'UM', 'Pacific/Midway', 'Live'),
(378, 'UM', 'Pacific/Wake', 'Live'),
(379, 'US', 'America/New_York', 'Live'),
(380, 'US', 'America/Detroit', 'Live'),
(381, 'US', 'America/Kentucky/Louisville', 'Live'),
(382, 'US', 'America/Kentucky/Monticello', 'Live'),
(383, 'US', 'America/Indiana/Indianapolis', 'Live'),
(384, 'US', 'America/Indiana/Vincennes', 'Live'),
(385, 'US', 'America/Indiana/Winamac', 'Live'),
(386, 'US', 'America/Indiana/Marengo', 'Live'),
(387, 'US', 'America/Indiana/Petersburg', 'Live'),
(388, 'US', 'America/Indiana/Vevay', 'Live'),
(389, 'US', 'America/Chicago', 'Live'),
(390, 'US', 'America/Indiana/Tell_City', 'Live'),
(391, 'US', 'America/Indiana/Knox', 'Live'),
(392, 'US', 'America/Menominee', 'Live'),
(393, 'US', 'America/North_Dakota/Center', 'Live'),
(394, 'US', 'America/North_Dakota/New_Salem', 'Live'),
(395, 'US', 'America/North_Dakota/Beulah', 'Live'),
(396, 'US', 'America/Denver', 'Live'),
(397, 'US', 'America/Boise', 'Live'),
(398, 'US', 'America/Phoenix', 'Live'),
(399, 'US', 'America/Los_Angeles', 'Live'),
(400, 'US', 'America/Anchorage', 'Live'),
(401, 'US', 'America/Juneau', 'Live'),
(402, 'US', 'America/Sitka', 'Live'),
(403, 'US', 'America/Metlakatla', 'Live'),
(404, 'US', 'America/Yakutat', 'Live'),
(405, 'US', 'America/Nome', 'Live'),
(406, 'US', 'America/Adak', 'Live'),
(407, 'US', 'Pacific/Honolulu', 'Live'),
(408, 'UY', 'America/Montevideo', 'Live'),
(409, 'UZ', 'Asia/Samarkand', 'Live'),
(410, 'UZ', 'Asia/Tashkent', 'Live'),
(411, 'VA', 'Europe/Vatican', 'Live'),
(412, 'VC', 'America/St_Vincent', 'Live'),
(413, 'VE', 'America/Caracas', 'Live'),
(414, 'VG', 'America/Tortola', 'Live'),
(415, 'VI', 'America/St_Thomas', 'Live'),
(416, 'VN', 'Asia/Ho_Chi_Minh', 'Live'),
(417, 'VU', 'Pacific/Efate', 'Live'),
(418, 'WF', 'Pacific/Wallis', 'Live'),
(419, 'WS', 'Pacific/Apia', 'Live'),
(420, 'YE', 'Asia/Aden', 'Live'),
(421, 'YT', 'Indian/Mayotte', 'Live'),
(422, 'ZA', 'Africa/Johannesburg', 'Live'),
(423, 'ZM', 'Africa/Lusaka', 'Live'),
(424, 'ZW', 'Africa/Harare', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer`
--

CREATE TABLE `tbl_transfer` (
  `id` int NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `date` varchar(15) NOT NULL,
  `received_date` date DEFAULT NULL,
  `note_for_sender` varchar(300) DEFAULT NULL,
  `note_for_receiver` varchar(300) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `from_outlet_id` int DEFAULT NULL,
  `to_outlet_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer_ingredients`
--

CREATE TABLE `tbl_transfer_ingredients` (
  `id` int NOT NULL,
  `status` int DEFAULT NULL,
  `ingredient_id` int DEFAULT NULL,
  `quantity_amount` float(10,2) DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `transfer_id` int DEFAULT NULL,
  `from_outlet_id` int DEFAULT NULL,
  `to_outlet_id` int DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_units`
--

CREATE TABLE `tbl_units` (
  `id` int NOT NULL,
  `unit_name` varchar(10) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_units`
--

INSERT INTO `tbl_units` (`id`, `unit_name`, `description`, `company_id`, `del_status`) VALUES
(1, 'Ml', 'Mililitro', 1, 'Deleted'),
(2, 'unidad', NULL, 1, 'Deleted'),
(3, '40', NULL, 1, 'Deleted'),
(4, 'Unidad', '', 1, 'Live'),
(5, 'porcion', NULL, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int NOT NULL,
  `full_name` varchar(25) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `will_login` varchar(20) NOT NULL DEFAULT 'No',
  `role` varchar(25) NOT NULL,
  `outlet_id` int NOT NULL,
  `outlets` varchar(10) DEFAULT NULL,
  `company_id` int NOT NULL,
  `account_creation_date` datetime NOT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'english',
  `last_login` datetime NOT NULL,
  `active_status` varchar(25) NOT NULL DEFAULT 'Active',
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `full_name`, `phone`, `email_address`, `password`, `designation`, `will_login`, `role`, `outlet_id`, `outlets`, `company_id`, `account_creation_date`, `language`, `last_login`, `active_status`, `del_status`) VALUES
(1, 'Admin', '72055408', 'admin@resetsv.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'No', 'Admin', 1, NULL, 1, '2021-01-13 07:28:32', 'spanish', '2021-01-13 07:28:32', 'Active', 'Live'),
(5, 'Mesero DEMO', '12345678', 'mesero@resetsv.com', 'e10adc3949ba59abbe56e057f20f883e', 'waiter', 'Yes', 'User', 1, '1', 1, '0000-00-00 00:00:00', 'spanish', '0000-00-00 00:00:00', 'Active', 'Live'),
(6, 'Rafa', '123456789', 'info@resetsv.com', 'e10adc3949ba59abbe56e057f20f883e', 'waiter', 'Yes', 'User', 1, '1', 1, '0000-00-00 00:00:00', 'spanish', '0000-00-00 00:00:00', 'Active', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_menu_access`
--

CREATE TABLE `tbl_user_menu_access` (
  `id` int NOT NULL,
  `menu_id` int DEFAULT '0',
  `user_id` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_user_menu_access`
--

INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES
(1, 1, 5),
(2, 23, 5),
(3, 16, 5),
(4, 1, 6),
(5, 16, 6),
(6, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wastes`
--

CREATE TABLE `tbl_wastes` (
  `id` int NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `total_loss` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  `food_menu_id` int DEFAULT NULL,
  `food_menu_waste_qty` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_waste_ingredients`
--

CREATE TABLE `tbl_waste_ingredients` (
  `id` int NOT NULL,
  `ingredient_id` int DEFAULT NULL,
  `waste_amount` float(10,2) DEFAULT NULL,
  `last_purchase_price` float(10,2) DEFAULT NULL,
  `loss_amount` float(10,2) DEFAULT NULL,
  `waste_id` int DEFAULT NULL,
  `outlet_id` int DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin_user_menus`
--
ALTER TABLE `tbl_admin_user_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_companies`
--
ALTER TABLE `tbl_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_due_receives`
--
ALTER TABLE `tbl_customer_due_receives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expense_items`
--
ALTER TABLE `tbl_expense_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_menus`
--
ALTER TABLE `tbl_food_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_del` (`company_id`,`del_status`),
  ADD KEY `id_del` (`id`,`del_status`);

--
-- Indexes for table `tbl_food_menus_ingredients`
--
ALTER TABLE `tbl_food_menus_ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_menu_del` (`food_menu_id`,`del_status`);

--
-- Indexes for table `tbl_food_menus_modifiers`
--
ALTER TABLE `tbl_food_menus_modifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_menu_categories`
--
ALTER TABLE `tbl_food_menu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holds`
--
ALTER TABLE `tbl_holds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holds_details`
--
ALTER TABLE `tbl_holds_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holds_details_modifiers`
--
ALTER TABLE `tbl_holds_details_modifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holds_table`
--
ALTER TABLE `tbl_holds_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ingredients`
--
ALTER TABLE `tbl_ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `del` (`del_status`);

--
-- Indexes for table `tbl_ingredient_categories`
--
ALTER TABLE `tbl_ingredient_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_inventory_adjustment`
--
ALTER TABLE `tbl_inventory_adjustment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_inventory_adjustment_ingredients`
--
ALTER TABLE `tbl_inventory_adjustment_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu_list`
--
ALTER TABLE `tbl_menu_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modifiers`
--
ALTER TABLE `tbl_modifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modifier_ingredients`
--
ALTER TABLE `tbl_modifier_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notification_bar_kitchen_panel`
--
ALTER TABLE `tbl_notification_bar_kitchen_panel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders_table`
--
ALTER TABLE `tbl_orders_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_outlets`
--
ALTER TABLE `tbl_outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase_ingredients`
--
ALTER TABLE `tbl_purchase_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rooms`
--
ALTER TABLE `tbl_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `os_del_out` (`order_status`,`del_status`,`outlet_id`),
  ADD KEY `id_del_outlet` (`id`,`del_status`,`outlet_id`),
  ADD KEY `outlet_order_status` (`outlet_id`,`order_status`),
  ADD KEY `id_del` (`id`,`del_status`),
  ADD KEY `user_date_time_del_order` (`user_id`,`date_time`,`del_status`,`order_status`),
  ADD KEY `table_id_status` (`table_id`,`order_status`),
  ADD KEY `outlet_id_waiter_id_order_status` (`outlet_id`,`waiter_id`,`order_status`);

--
-- Indexes for table `tbl_sales_details`
--
ALTER TABLE `tbl_sales_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_id` (`sales_id`);

--
-- Indexes for table `tbl_sales_details_modifiers`
--
ALTER TABLE `tbl_sales_details_modifiers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_id_details_id` (`sales_id`,`sales_details_id`);

--
-- Indexes for table `tbl_sale_consumptions`
--
ALTER TABLE `tbl_sale_consumptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sale_consumptions_of_menus`
--
ALTER TABLE `tbl_sale_consumptions_of_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sale_consumptions_of_modifiers_of_menus`
--
ALTER TABLE `tbl_sale_consumptions_of_modifiers_of_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sessions`
--
ALTER TABLE `tbl_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_supplier_payments`
--
ALTER TABLE `tbl_supplier_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tables`
--
ALTER TABLE `tbl_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_temp_kot`
--
ALTER TABLE `tbl_temp_kot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_time_zone`
--
ALTER TABLE `tbl_time_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transfer`
--
ALTER TABLE `tbl_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transfer_ingredients`
--
ALTER TABLE `tbl_transfer_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_units`
--
ALTER TABLE `tbl_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_menu_access`
--
ALTER TABLE `tbl_user_menu_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wastes`
--
ALTER TABLE `tbl_wastes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_waste_ingredients`
--
ALTER TABLE `tbl_waste_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin_user_menus`
--
ALTER TABLE `tbl_admin_user_menus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_companies`
--
ALTER TABLE `tbl_companies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_customer_due_receives`
--
ALTER TABLE `tbl_customer_due_receives`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_expense_items`
--
ALTER TABLE `tbl_expense_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_food_menus`
--
ALTER TABLE `tbl_food_menus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `tbl_food_menus_ingredients`
--
ALTER TABLE `tbl_food_menus_ingredients`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_food_menus_modifiers`
--
ALTER TABLE `tbl_food_menus_modifiers`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_food_menu_categories`
--
ALTER TABLE `tbl_food_menu_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_holds`
--
ALTER TABLE `tbl_holds`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_holds_details`
--
ALTER TABLE `tbl_holds_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_holds_details_modifiers`
--
ALTER TABLE `tbl_holds_details_modifiers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_holds_table`
--
ALTER TABLE `tbl_holds_table`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ingredients`
--
ALTER TABLE `tbl_ingredients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `tbl_ingredient_categories`
--
ALTER TABLE `tbl_ingredient_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_inventory_adjustment`
--
ALTER TABLE `tbl_inventory_adjustment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_inventory_adjustment_ingredients`
--
ALTER TABLE `tbl_inventory_adjustment_ingredients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_menu_list`
--
ALTER TABLE `tbl_menu_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_modifiers`
--
ALTER TABLE `tbl_modifiers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_modifier_ingredients`
--
ALTER TABLE `tbl_modifier_ingredients`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_notification_bar_kitchen_panel`
--
ALTER TABLE `tbl_notification_bar_kitchen_panel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_orders_table`
--
ALTER TABLE `tbl_orders_table`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_outlets`
--
ALTER TABLE `tbl_outlets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_purchase_ingredients`
--
ALTER TABLE `tbl_purchase_ingredients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_register`
--
ALTER TABLE `tbl_register`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_rooms`
--
ALTER TABLE `tbl_rooms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_sales_details`
--
ALTER TABLE `tbl_sales_details`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tbl_sales_details_modifiers`
--
ALTER TABLE `tbl_sales_details_modifiers`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sale_consumptions`
--
ALTER TABLE `tbl_sale_consumptions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_sale_consumptions_of_menus`
--
ALTER TABLE `tbl_sale_consumptions_of_menus`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sale_consumptions_of_modifiers_of_menus`
--
ALTER TABLE `tbl_sale_consumptions_of_modifiers_of_menus`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_supplier_payments`
--
ALTER TABLE `tbl_supplier_payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tables`
--
ALTER TABLE `tbl_tables`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_temp_kot`
--
ALTER TABLE `tbl_temp_kot`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_time_zone`
--
ALTER TABLE `tbl_time_zone`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `tbl_transfer`
--
ALTER TABLE `tbl_transfer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_transfer_ingredients`
--
ALTER TABLE `tbl_transfer_ingredients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_units`
--
ALTER TABLE `tbl_units`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_user_menu_access`
--
ALTER TABLE `tbl_user_menu_access`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_wastes`
--
ALTER TABLE `tbl_wastes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_waste_ingredients`
--
ALTER TABLE `tbl_waste_ingredients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
