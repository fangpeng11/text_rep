------------------------------------------------------------------------------------
-- Author: WeiJin Shen
-- Description: Sum table for member's monthly retention rate.
-------------------------------------------------------------------------------
-- modification history
-- --------------------
-- date         by person        description
-- ----------   --------------  -----------------------------------------------
-- 2020-11-17   sa.zhang        Initial version: 
--                              
--                              
-------------------------------------------------------------------------------

DROP TABLE IF EXISTS ${dh.layer.ads}.i_crm_nps_brand_score ;
CREATE TABLE IF NOT EXISTS ${dh.layer.ads}.i_crm_nps_brand_score (
    COUNTRY         STRING      comment '国家',
    ORGANIZATION        STRING          comment '组织编码',
    BRAND_CODE       STRING      comment '品牌名称',
    DIMENSION       STRING      comment 'YTD OR MTD',
    NPS_BRAND_SCORE STRING      comment 'nps分数',
    BA_BRAND_SCORE  STRING      comment 'ba分数',
    CREATE_TIME     string   comment '计算日期'
)
COMMENT 'nps brand统计表'
STORED AS parquet
;

