CREATE TABLE `my_stock` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '主键',
    `create_at` DATETIME NOT NULL  DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `create_by` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '创建者',
    `update_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
    `update_by` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '更新者',
    `version` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '版本号',
    `is_delete` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否删除：0正常1删除',

    `goods_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'goods_id',
    `stock` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '库存',
    UNIQUE (goods_id),
    INDEX (is_delete)
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='库存表';

INSERT INTO my_stock (
    goods_id,
    stock
) VALUES (
    1,
    100
);

INSERT INTO my_stock (
    goods_id,
    stock
) VALUES (
    2,
    200
);

INSERT INTO my_stock (
    goods_id,
    stock
) VALUES (
    3,
    300
);