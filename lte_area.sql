with 
busyhour AS (
    SELECT 
        m1.lncel_id,
        mm.pm_date AS pm_date_hour
    FROM
        (select 
            lncel_id,
            to_char(to_date(pm_date,'yyyymmddhh24'), 'yyyymmdd') as pm_date,

            max(���ҵ����) AS ���ҵ����
        from    
                (SELECT 
            lcellt.lncel_id AS lncel_id,
            to_char(lcellt.period_start_time, 'yyyymmddhh24') pm_date,
            SUM(PDCP_SDU_VOL_UL + PDCP_SDU_VOL_DL)  AS ���ҵ����
            
        FROM 
            NOKLTE_PS_LCELLT_LNCEL_HOUR lcellt
        WHERE 
                lcellt.period_start_time >= to_date(&start_date, 'yyyy-mm-dd')
            AND lcellt.period_start_time < to_date(&end_date, 'yyyy-mm-dd')


        GROUP BY 
            lcellt.lncel_id,
            to_char(lcellt.period_start_time, 'yyyymmddhh24')
            )
        group by 
            lncel_id,
            to_char(to_date(pm_date,'yyyymmddhh24'), 'yyyymmdd')
        ) m1
        
    left JOIN 
            
        (SELECT 
            lcellt.lncel_id AS lncel_id,
            to_char(lcellt.period_start_time, 'yyyymmddhh24') pm_date,
            SUM(PDCP_SDU_VOL_UL + PDCP_SDU_VOL_DL)  AS ���ҵ����
            
        FROM 
            NOKLTE_PS_LCELLT_LNCEL_HOUR lcellt
        WHERE 
                lcellt.period_start_time >= to_date(&start_date, 'yyyy-mm-dd')
            AND lcellt.period_start_time < to_date(&end_date, 'yyyy-mm-dd')


        GROUP BY 
            lcellt.lncel_id,
            to_char(lcellt.period_start_time, 'yyyymmddhh24')
        )   mm ON m1.lncel_id = mm.lncel_id  AND m1.���ҵ���� = mm.���ҵ���� AND mm.���ҵ����<>0
    
    ORDER BY 
    m1.lncel_id
),

vipcell as (
    select '����' as  ����, '77324011' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77324021' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77324031' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77324012' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77324022' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77324032' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77324111' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77324121' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77324131' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77324211' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77324221' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77324231' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77324212' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77324222' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77324232' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77338411' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77338421' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77338431' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77338412' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77338422' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77338432' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77367711' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77367721' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77367731' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77368111' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77368121' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77368131' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77368112' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77368122' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77368132' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77368811' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77368821' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77368831' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77369011' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77369021' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77369031' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77370011' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77370021' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77370031' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77370012' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77370022' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77370032' as CELLID, '��������վ' as ���� from dual union
    select '����' as  ����, '77252811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77252821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77252831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77252911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77252921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77252931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77257111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77257121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77257131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77260711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77260721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77260731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77271611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77271621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77271631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77271711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77271721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77271731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77283011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77283021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77283031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77283611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77283621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77283631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77283711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77283721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77283731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77284311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77284321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77284331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77285011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77285021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77285031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77285611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77285621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77285631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77286111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77287911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77287921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77287931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77288211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77288221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77288231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77290811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77290821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77290831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77292111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77292121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77292131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77294411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77294421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77294431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77295911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77295921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77295931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77300011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77300021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77300031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77302011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77302021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77305011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77305021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77305031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77305111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77305121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77305131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77305311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77305321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77305331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77305411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77305421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77305431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77306111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77306121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77306131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77306611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77306621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77306631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77306811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77306821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77306831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77307311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77307321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77307331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77307711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77307721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77307731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77308411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77308421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77308431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77308911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77308921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77308931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77309011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77309021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77309031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77309311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77309321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77309331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77310011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77310021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77310031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77311811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77311821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77311831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77312011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77312021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77312031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77314011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77314021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77314031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77315511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77315521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77315531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77315711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77315721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77315731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77315811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77315821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77315831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77320611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77320621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77320631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77321211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77321221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77321231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77321611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77321621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77321631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77322111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77322121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77322131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77333511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77333521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77333531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77333611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77333621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77333631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77335311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77335321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77335331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77336011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77336021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77336031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77340311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77340321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77340331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77340611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77340621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77340631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77343011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77343021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77343031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77344511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77344521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77344531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77345111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77345121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77345131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77347611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77347621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77347631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77347711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77347721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77347731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77347811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77347821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77347831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77347911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77347921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77347931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77348111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77348121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77348131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77348411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77348421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77348431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77348811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77348821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77348831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77349711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77349721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77349731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77356211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77356221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77356231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77359911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77359921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77359931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77365611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77365621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77365631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77372011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77372021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77372031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77372041' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77378411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77378421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77378431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77387311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77387321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77387331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77391311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77391321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77391331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77391411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77391421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77391431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77394011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77394021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77394031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77407611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77407621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77407631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77409211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77409221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77409231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77411211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77411221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77411231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77413211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77413221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77413231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77255411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77255421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77255431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77266011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77266021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77266031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77267611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77267621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77267631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77270311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77270321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77270331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77288711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77288721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77288731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77288811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77288821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77288831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77289411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77289421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77289431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77292611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77292621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77292631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77292911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77292921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77292931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77293111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77293121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77293131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77323411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77323421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77323431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77326511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77326521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77326531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77335611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77335621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77335631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77335911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77335921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77335931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77355411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77355421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77355431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77364811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77364821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77364831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77367711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77367721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77367731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77367811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77367921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369912' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369922' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369932' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77380811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77380821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77380831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77380911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77380921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77380931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77381011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77381021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77381031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77381111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77381121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77381131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77382911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77382921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77382931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77386011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77386012' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77386021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77386022' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77386031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77386032' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77387511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77387521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77387531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77393411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77393421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77398311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77398321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77398331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77401411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77401421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77401431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77401611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77401621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77401631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77413111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77413121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77413131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77251411' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77251421' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77251431' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77327311' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77327321' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77327331' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77327411' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77327421' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77327431' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77327911' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77327921' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77328011' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77328021' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77373311' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77373411' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77373421' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77373431' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77373511' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77373521' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77373531' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77373611' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77373621' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77373631' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77373811' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77373821' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77373831' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77373911' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77373921' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77373931' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374011' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374021' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374031' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374111' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374121' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374131' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374211' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374221' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374231' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374311' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374321' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374331' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374411' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374421' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374431' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374511' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374521' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374531' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374611' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374621' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374631' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374711' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374721' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374731' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374811' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374821' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374831' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374911' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374921' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77374931' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77375011' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77375021' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77375031' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77375111' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77375121' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77375131' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77375211' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77375221' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77375231' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77375311' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77375321' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77375331' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77375341' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77383511' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77383521' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77383531' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77383512' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77383522' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77383532' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384411' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384421' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384431' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384441' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384451' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384511' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384521' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384531' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384512' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384522' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384532' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384611' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384621' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384631' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384711' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384721' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384731' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384811' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384821' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77384831' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77385011' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77385021' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77385031' as CELLID, '��������' as ���� from dual union
    select '����' as  ����, '77255411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77255421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77255431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77267511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77267611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77267621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77267631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77324811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77324821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77324831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77324841' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77324851' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77324911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77324921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77324931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77324941' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77324951' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77324961' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325041' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325051' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325061' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325141' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325151' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325161' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325241' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325251' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325261' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325341' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325441' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325451' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325461' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77325831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77365111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77365121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77365131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77367811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77367831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77367841' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77367911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77367921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369912' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369922' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77369932' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77375511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77375521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77375531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77386611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77386621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77386631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77388511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77388521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77388531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77389011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77389021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77389311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77389321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77389331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77390411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77390421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77390431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77393411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77393421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77413111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77413121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77413131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77414111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77414121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77414131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77870711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77870721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77870731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77923311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77923321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77923331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77922811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77922821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77922831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77922711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77922721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77922731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77923111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77923121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77923131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77922911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77922921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77922931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77923211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77923221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77923231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77923011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77923021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77923031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77922611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77922621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77922631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77922511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77922521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77922531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77873511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77873521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77873531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77859911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77859921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77859931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77857011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77857021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77857031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77826211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77826221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77826231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77826212' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77826222' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77826232' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77974611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77974621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77974631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77859811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77859821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77859831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77860111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77860121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77860131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77832911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77832921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77832931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77904711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77904721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77904731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77904511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77904521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77904531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77834311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77834321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77834331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77834341' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77834351' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77834361' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77847111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77847121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77847131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77859511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77859521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77859531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77936311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77936321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77936331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77849611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77849621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77849631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77836311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77836321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77836331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77836411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77836421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77836431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77983711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77983721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77983731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77825511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77825521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77825531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77825541' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77825551' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77825561' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77859611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77859621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77859631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77825111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77825121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77825131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77840311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77840321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77840331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77860011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77860021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77860031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77972411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77972421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77972431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77850511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77850521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77850531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77825911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77825921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77825931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77860211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77860221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77860231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77859011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77859021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77859031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77970411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77970421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77970431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77926011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77926021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77926031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77926311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77926321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77926331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77924911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77924921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77924931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77929811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77929821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77929831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77926211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77926221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77926231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77970111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77970121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77970131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77972311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77972321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77972331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77926411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77926421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77926431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77926111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77926121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77926131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77928811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77928821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77928831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77966211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77966221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77966231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77925631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77862611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77862631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77904211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77904221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77904231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77959411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77959431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77864011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77864021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77864031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77863011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77863021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77863031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77904621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77904631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77959121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77959131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77959311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77959321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77950211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77950231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77864621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77864631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77864521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77864531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77958911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77958921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77958931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77864311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77864331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77904111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77904121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77863221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77863231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77888611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77888621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77888631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77897011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77897021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77897031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77957311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77957321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77957331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77959211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77959221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77957421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77957431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77971411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77971421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77971431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77862721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77862731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77863111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77863121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77863131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77950711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77950721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77950731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77959021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77959031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77864721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77864731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77957711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77957721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77957731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77995611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77995621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77995631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78339311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78339321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78339331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78352611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78352621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78339411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78339421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77640611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77640621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77640631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78336211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78336221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78336231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78239111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78239121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78239131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78339611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78339621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78339631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78339711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78339721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78339731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78339811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78339821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78339831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78339911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78339921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78339931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78278211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78278221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78278231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78314711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78314721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78340931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77630711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77630721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77630731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78308111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78308121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78308131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78341931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78268911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78268921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78268931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78342931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77612911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77612921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77612931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77612941' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613141' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613241' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613251' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613261' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613341' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613351' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613361' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613441' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613541' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613551' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613561' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613641' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613651' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613661' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613741' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613751' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613761' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613841' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613851' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613861' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77613941' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614041' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614051' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614061' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614141' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614151' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614161' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614241' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614251' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614261' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614341' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614441' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614541' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614641' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614651' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77614661' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77615711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77615721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77615731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78258411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78258421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78258811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78258821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78258831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78263611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78263621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78263631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78265411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78265421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78265431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78265911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78265921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78265931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78268511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78268521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78268531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78268611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78268621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78268631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78271011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78271021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78271031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78277811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78277821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78277831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78284711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78284721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78284731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78287211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78287221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78287231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78296611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78296621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78296631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78300411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78300421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78300431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78304911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78304921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78304931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78305611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78305621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78305631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78312611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78312621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78312631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78313111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78313121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78313131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78315111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78315121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78315311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78315321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78315331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78315611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78315621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78315631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78315811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78315821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78315831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78315911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78315921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78315931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78319611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78319621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78319631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78321411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78321421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78321431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78324931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78325011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78325021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78325031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78325111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78325121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78325131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78327611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78327621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78327631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78328511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78328521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78328531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78338511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78338521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78338531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78338711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78338721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78338731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78338811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78338821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78338831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78343931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78344131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78351111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78351121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78351131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78351911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78351921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78351931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78356411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78356421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '78356431' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77619711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77619721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77619731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77632011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77632021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77632031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77632041' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77632111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77632121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77632131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77632141' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77633611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77633621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77633631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77633911' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77633921' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77633931' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77638311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77638321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77638331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77639011' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77639021' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77639031' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77641511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77641521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77641531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77647211' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77647221' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77647231' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77647511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77647521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77647531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77647711' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77647721' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77647731' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77653611' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77653621' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77653631' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77657511' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77657521' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77657531' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77660811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77660821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77660831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77661111' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77661121' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77661131' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77667311' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77667321' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77667331' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77627811' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77627821' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77627831' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77662411' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77662421' as CELLID, '����' as ���� from dual union
    select '����' as  ����, '77662431' as CELLID, '����' as ���� from dual

)


    
    


select
    c.city,
    --c.lnbtsid,
    --c.lncel_lcr_id,
    vipcell.����,
    lcellt.PERIOD_START_TIME,
    round(sum(lcellt.�տ�ҵ���ֽ���)/1024/1024/1024,4) as �տ�ҵ���ֽ���_GB,
    round(sum(lcellt.�տ�����ҵ���ֽ���)/1024/1024/1024,4)  as �տ�����ҵ���ֽ���_GB,
    round(sum(lcellt.�տ�����ҵ���ֽ���)/1024/1024/1024,4)  as �տ�����ҵ���ֽ���_GB,

    sum(lcelld.���RRC�����û���) as ���RRC�����û���,
    
    --���߽�ͨ��
    round(decode(sum(luest.RRC���ӽ����������),0,null,sum(luest.RRC���ӽ����ɹ�����)/sum(luest.RRC���ӽ����������))* decode(sum(luest.ERAB�����������),0,null,sum(luest.ERAB�����ɹ�����)/sum(luest.ERAB�����������))*100,2) as ���߽�ͨ��,
    
    sum(luest.RRC���ӽ����������) as RRC���ӽ����������,
    sum(luest.RRC���ӽ����ɹ�����) as RRC���ӽ����ɹ�����,

    sum(luest.ERAB�����������) as ERAB�����������,
    sum(luest.ERAB�����ɹ�����) as ERAB�����ɹ�����,
    
    --������
    round(decode(sum(luest.LTEҵ���ͷŴ���),0,null,sum(luest.LTEҵ����ߴ���)/sum(luest.LTEҵ���ͷŴ���))*100,2) as ������,
    sum(luest.LTEҵ���ͷŴ���) as LTEҵ���ͷŴ���,
    sum(luest.LTEҵ����ߴ���) as LTEҵ����ߴ���,

    --����PRBƽ��������
    --sum(lcellr.����PRB������) as ����PRB������,
    --sum(lcellr.����PRBռ��ƽ����) as ����PRBռ��ƽ����,
    
    round(AVG(lcellr.����PRBƽ��������)*100,2) AS ����PRBƽ��������,
    
    --RRCӵ����
    round(decode(sum(luest.RRC���ӽ����������),0,null,sum(luest.RRC����ӵ������)/sum(luest.RRC���ӽ����������))*100,2) as RRCӵ����,
    sum(luest.RRC���ӽ����������) as RRC���ӽ����������,
    sum(luest.RRC����ӵ������) as RRC����ӵ������,
    
    
    --ͬƵ�л��ɹ���
    round(decode(sum(lienbho.ͬƵ�л��������),0,null,sum(lienbho.ͬƵ�л��ɹ�����)/sum(lienbho.ͬƵ�л��������))*100,2) as ͬƵ�л��ɹ���,
    sum(lienbho.ͬƵ�л��������) as ͬƵ�л��������,
    sum(lienbho.ͬƵ�л��ɹ�����) as ͬƵ�л��ɹ�����,

	
    --��Ƶ�л����ɹ���
    round(decode(sum(lienbho.��Ƶ�л��������),0,null,sum(lienbho.��Ƶ�л����ɹ�����)/sum(lienbho.��Ƶ�л��������))*100,2) as ��Ƶ�л��ɹ���,
    sum(lienbho.��Ƶ�л��������) as ��Ƶ�л��������,
    sum(lienbho.��Ƶ�л����ɹ�����) as ��Ƶ�л����ɹ�����



 

from
    (SELECT
        lcellt.lncel_id,
        to_char(lcellt.PERIOD_START_TIME,'yyyy-mm-dd') as PERIOD_START_TIME,
        SUM(lcellt.PDCP_SDU_VOL_UL + lcellt.PDCP_SDU_VOL_DL) AS �տ�ҵ���ֽ���,
        SUM(lcellt.PDCP_SDU_VOL_UL )  AS �տ�����ҵ���ֽ���,
        SUM(lcellt.PDCP_SDU_VOL_DL )  AS �տ�����ҵ���ֽ���
    FROM
            NOKLTE_PS_LCELLT_LNCEL_HOUR lcellt
        --inner join busyhour on lcellt.lncel_id = busyhour.lncel_id
        --and to_char(lcellt.period_start_time, 'yyyymmddhh24') = busyhour.pm_date_hour
        
    WHERE
            lcellt.period_start_time >= To_Date(&start_date, 'yyyy-mm-dd')
        AND lcellt.period_start_time <  To_Date(&end_date, 'yyyy-mm-dd')

    GROUP BY
        lcellt.lncel_id,
        to_char(lcellt.PERIOD_START_TIME,'yyyy-mm-dd')
    ) lcellt


   
    
inner join   
    (SELECT
        lcelld.lncel_id,
        to_char(lcelld.PERIOD_START_TIME,'yyyy-mm-dd') as PERIOD_START_TIME,
        round(sum(lcelld.RRC_CONN_UE_MAX),2) as ���RRC�����û���

    FROM
        NOKLTE_PS_LCELLD_LNCEL_HOUR lcelld
        inner join busyhour on lcelld.lncel_id = busyhour.lncel_id
              and to_char(lcelld.period_start_time, 'yyyymmddhh24') = busyhour.pm_date_hour
        
    WHERE
            lcelld.period_start_time >= To_Date(&start_date, 'yyyy-mm-dd')
        AND lcelld.period_start_time <  To_Date(&end_date, 'yyyy-mm-dd')

    GROUP BY
        lcelld.lncel_id,
        to_char(lcelld.PERIOD_START_TIME,'yyyy-mm-dd')
        
    ) lcelld on lcelld.lncel_id = lcellt.lncel_id and lcelld.PERIOD_START_TIME = lcellt.PERIOD_START_TIME 
    
  
    
    
inner join   
    (SELECT
        luest.lncel_id,
        to_char(luest.PERIOD_START_TIME,'yyyy-mm-dd') as PERIOD_START_TIME,

        decode((CASE WHEN c.version='FL16' THEN 'FL16'WHEN c.version='FLF16' THEN 'FL16'WHEN c.version='FL16A' THEN 'FL16' WHEN c.version='TL16' THEN 'FL16' ELSE c.version END),'FL16',sum(luest.SIGN_CONN_ESTAB_ATT_MO_S + luest.SIGN_CONN_ESTAB_ATT_MT + luest.SIGN_CONN_ESTAB_ATT_MO_D + luest.SIGN_CONN_ESTAB_ATT_EMG + decode(luest.SIGN_CONN_ESTAB_ATT_DEL_TOL,'',0,luest.SIGN_CONN_ESTAB_ATT_DEL_TOL)+ decode( luest.SIGN_CONN_ESTAB_ATT_HIPRIO,'',0,luest.SIGN_CONN_ESTAB_ATT_HIPRIO)),sum(luest.SIGN_CONN_ESTAB_ATT_MO_S + luest.SIGN_CONN_ESTAB_ATT_MT + luest.SIGN_CONN_ESTAB_ATT_MO_D + luest.SIGN_CONN_ESTAB_ATT_OTHERS + luest.SIGN_CONN_ESTAB_ATT_EMG + decode(luest.SIGN_CONN_ESTAB_ATT_DEL_TOL,'',0, luest.SIGN_CONN_ESTAB_ATT_DEL_TOL)+ decode(luest.SIGN_CONN_ESTAB_ATT_HIPRIO,'',0,luest.SIGN_CONN_ESTAB_ATT_HIPRIO))) AS RRC���ӽ����������,
        
        sum(luest.SIGN_CONN_ESTAB_COMP) AS RRC���ӽ����ɹ�����,

        decode((CASE WHEN c.version='FL16' THEN 'FL16'WHEN c.version='FLF16' THEN 'FL16'WHEN c.version='FL16A' THEN 'FL16' WHEN c.version='TL16' THEN 'FL16' ELSE c.version END),'FL16',sum(luest.SIGN_CONN_ESTAB_FAIL_PUCCH),sum(luest.SIGN_CONN_ESTAB_FAIL_RRMRAC)) AS RRC����ӵ������,

        decode((CASE WHEN c.version='FL16' THEN 'FL16'WHEN c.version='FLF16' THEN 'FL16'WHEN c.version='FL16A' THEN 'FL16' WHEN c.version='TL16' THEN 'FL16' ELSE c.version END),'FL16',sum( lepsb.ERAB_INI_SETUP_FAIL_RNL_RRNA + lepsb.ERAB_ADD_SETUP_FAIL_RNL_RRNA),sum(lepsb.EPS_BEARER_SETUP_FAIL_RESOUR)) AS ������Դӵ������,
        
        decode((CASE WHEN c.version='FL16' THEN 'FL16'WHEN c.version='FLF16' THEN 'FL16'WHEN c.version='FL16A' THEN 'FL16' WHEN c.version='TL16' THEN 'FL16' ELSE c.version END),'FL16',sum(lepsb.EPS_BEARER_SETUP_ATTEMPTS - lepsb.EPS_BEARER_SETUP_COMPLETIONS - lepsb.ERAB_INI_SETUP_FAIL_RNL_UEL - lepsb.ERAB_ADD_SETUP_FAIL_RNL_UEL - lepsb.ERAB_INI_SETUP_FAIL_TNL_TRU - lepsb.ERAB_ADD_SETUP_FAIL_TNL_TRU - lepsb.ERAB_INI_SETUP_FAIL_RNL_RRNA - lepsb.ERAB_ADD_SETUP_FAIL_RNL_RRNA - lepsb.ERAB_INI_SETUP_FAIL_RNL_RIP - lepsb.ERAB_ADD_SETUP_FAIL_RNL_RIP - lepsb.ERAB_ADD_SETUP_FAIL_UP - lepsb.ERAB_ADD_SETUP_FAIL_RNL_MOB),sum(lepsb.EPS_BEARER_SETUP_FAIL_TRPORT)) AS ������Դӵ������,
        
        decode((CASE WHEN c.version='FL16' THEN 'FL16'WHEN c.version='FLF16' THEN 'FL16'WHEN c.version='FL16A' THEN 'FL16' WHEN c.version='TL16' THEN 'FL16' ELSE c.version END),'FL16',SUM(lepsb.ERAB_INI_SETUP_FAIL_RNL_UEL + lepsb.ERAB_ADD_SETUP_FAIL_RNL_UEL ),Sum(lepsb.EPS_BEARER_SETUP_FAIL_RNL)) ERAB����ʧ��_UE����Ӧ,
        
        decode((CASE WHEN c.version='FL16' THEN 'FL16'WHEN c.version='FLF16' THEN 'FL16'WHEN c.version='FL16A' THEN 'FL16' WHEN c.version='TL16' THEN 'FL16' ELSE c.version END),'FL16',SUM(lepsb.ERAB_ADD_SETUP_FAIL_UP),Sum(lepsb.EPS_BEARER_SETUP_FAIL_OTH)) AS ERAB����ʧ��_����,
        
        sum(luest.SIGN_EST_F_RRCCOMPL_MISSING) AS Setup_comp_miss��Ӧ��,
        
        sum(luest.SIGN_EST_F_RRCCOMPL_ERROR) AS Setup_comp_errorС���ܾ�,
        
        decode((CASE WHEN c.version='FL16' THEN 'FL16'WHEN c.version='FLF16' THEN 'FL16'WHEN c.version='FL16A' THEN 'FL16' WHEN c.version='TL16' THEN 'FL16' ELSE c.version END),'FL16',sum(luest.SIGN_CONN_ESTAB_FAIL_PUCCH),sum(luest.SIGN_CONN_ESTAB_FAIL_RRMRAC)) AS Reject_RRM_RAC��Դ����ʧ,
        
        decode((CASE WHEN c.version='FL16' THEN 'FL16'WHEN c.version='FLF16' THEN 'FL16'WHEN c.version='FL16A' THEN 'FL16' WHEN c.version='TL16' THEN 'FL16' ELSE c.version END),'FL16',sum(luest.SIGN_CONN_ESTAB_FAIL_MAXRRC),'') AS SIGN_CONN_ESTAB_FAIL_MAXRRC, --LN7.0�޴�ָ��
        
        decode((CASE WHEN c.version='FL16' THEN 'FL16'WHEN c.version='FLF16' THEN 'FL16'WHEN c.version='FL16A' THEN 'FL16' WHEN c.version='TL16' THEN 'FL16' ELSE c.version END),'FL16',sum(lepsb.ERAB_ADD_SETUP_FAIL_UP),'') AS E_RAB����ʧ��_������, 
        --LN7.0�޴�ָ��
        decode((CASE WHEN c.version='FL16' THEN 'FL16'WHEN c.version='FLF16' THEN 'FL16'WHEN c.version='FL16A' THEN 'FL16' WHEN c.version='TL16' THEN 'FL16' ELSE c.version END),'FL16',sum(lepsb.ERAB_INI_SETUP_FAIL_RNL_RIP + lepsb.ERAB_ADD_SETUP_FAIL_RNL_RIP),'') AS E_RAB����ʧ��_���߲�, --LN7.0�޴�ָ��
        
        round(decode(sum(lepsb.EPS_BEARER_SETUP_ATTEMPTS),0,0, sum(lepsb.EPS_BEARER_SETUP_COMPLETIONS) / sum(lepsb.EPS_BEARER_SETUP_ATTEMPTS))*100,2) AS ERAB�����ɹ���,

        sum(lepsb.EPS_BEARER_SETUP_COMPLETIONS) AS ERAB�����ɹ�����,
        
        sum(lepsb.EPS_BEARER_SETUP_ATTEMPTS) AS ERAB�����������,
        
        decode((CASE WHEN c.version='FL16' THEN 'FL16'WHEN c.version='FLF16' THEN 'FL16'WHEN c.version='FL16A' THEN 'FL16' WHEN c.version='TL16' THEN 'FL16' ELSE c.version END),'FL16',sum(lepsb.ERAB_INI_SETUP_FAIL_RNL_RRNA + lepsb.ERAB_INI_SETUP_FAIL_TNL_TRU + lepsb.ERAB_ADD_SETUP_FAIL_RNL_RRNA + lepsb.ERAB_ADD_SETUP_FAIL_TNL_TRU),SUM( lepsb.EPS_BEARER_SETUP_FAIL_TRPORT + lepsb.EPS_BEARER_SETUP_FAIL_RESOUR )) AS ERAB����ӵ��������
        
        decode((CASE WHEN c.version='FL16' THEN 'FL16'WHEN c.version='FLF16' THEN 'FL16'WHEN c.version='FL16A' THEN 'FL16' WHEN c.version='TL16' THEN 'FL16' ELSE c.version END),'FL16',SUM( lepsb.EPC_EPS_BEARER_REL_REQ_RNL  + lepsb.ERAB_REL_ENB_RNL_UEL + lepsb.ERAB_REL_ENB_RNL_EUGR + lepsb.ERAB_REL_ENB_TNL_TRU + lepsb.ERAB_REL_HO_PART + lepsb.ERAB_REL_EPC_PATH_SWITCH ) ,SUM( lepsb.EPC_EPS_BEARER_REL_REQ_RNL + lepsb.EPC_EPS_BEAR_REL_REQ_R_QCI1 + lepsb.PRE_EMPT_GBR_BEARER + lepsb.PRE_EMPT_NON_GBR_BEARER + lepsb.ENB_EPS_BEARER_REL_REQ_RNL + lepsb.ENB_EPS_BEARER_REL_REQ_TNL + lepsb.ENB_EPS_BEARER_REL_REQ_OTH))  AS LTEҵ����ߴ���,

        
        decode((CASE WHEN c.version='FL16' THEN 'FL16'WHEN c.version='FLF16' THEN 'FL16'WHEN c.version='FL16A' THEN 'FL16' WHEN c.version='TL16' THEN 'FL16' ELSE c.version END),'FL16',sum( lepsb.EPC_EPS_BEARER_REL_REQ_RNL  + lepsb.ERAB_REL_ENB_RNL_UEL + lepsb.ERAB_REL_ENB_RNL_EUGR + lepsb.ERAB_REL_ENB_TNL_TRU + lepsb.ERAB_REL_HO_PART + lepsb.ERAB_REL_EPC_PATH_SWITCH + lepsb.ERAB_REL_ENB_RNL_INA + lepsb.ERAB_REL_ENB_RNL_RED + lepsb.ERAB_REL_ENB_RNL_RRNA + lepsb.EPC_EPS_BEARER_REL_REQ_NORM + lepsb.EPC_EPS_BEARER_REL_REQ_DETACH ) ,sum( lepsb.EPC_EPS_BEARER_REL_REQ_NORM + lepsb.EPC_EPS_BEARER_REL_REQ_DETACH + lepsb.EPC_EPS_BEARER_REL_REQ_RNL + lepsb.ERAB_REL_ENB_ACT_NON_GBR + lepsb.ENB_EPSBEAR_REL_REQ_RNL_REDIR + lepsb.ENB_EPS_BEARER_REL_REQ_NORM + lepsb.ENB_EPS_BEARER_REL_REQ_RNL + lepsb.ENB_EPS_BEARER_REL_REQ_TNL + lepsb.ENB_EPS_BEARER_REL_REQ_OTH + lepsb.EPC_EPS_BEAR_REL_REQ_R_QCI1 + lepsb.PRE_EMPT_GBR_BEARER + lepsb.PRE_EMPT_NON_GBR_BEARER)) AS LTEҵ���ͷŴ���

    FROM
        NOKLTE_PS_LUEST_LNCEL_HOUR luest
        
        inner join busyhour 
            on luest.lncel_id = busyhour.lncel_id
            and to_char(luest.period_start_time, 'yyyymmddhh24') = busyhour.pm_date_hour
                
        INNER JOIN NOKLTE_PS_LEPSB_LNCEL_HOUR lepsb 
            ON lepsb.lncel_id = luest.lncel_id
            AND lepsb.period_start_time = luest.period_start_time
            and luest.lncel_id = busyhour.lncel_id
            and to_char(lepsb.period_start_time, 'yyyymmddhh24') = busyhour.pm_date_hour


        RIGHT JOIN C_LTE_CUSTOM c 
            ON c.lncel_objid = luest.lncel_id
        
    WHERE
        luest.period_start_time >= To_Date(&start_date, 'yyyy-mm-dd')
        AND luest.period_start_time <  To_Date(&end_date, 'yyyy-mm-dd')

    GROUP BY
        luest.lncel_id,
        to_char(luest.PERIOD_START_TIME,'yyyy-mm-dd'),
        c.version
        
    ) luest on luest.lncel_id = lcellt.lncel_id and luest.PERIOD_START_TIME = lcellt.PERIOD_START_TIME 
       
    
    
    
    
inner join 
    (SELECT 
        to_char(lcellr.PERIOD_START_TIME,'yyyy-mm-dd') AS period_start_time,
        lcellr.lncel_id,
        decode((sum(decode(lncel.LNCEL_CH_BW,'',0,lncel.LNCEL_CH_BW)+decode(lncel.LNCEL_UL_CH_BW,'',0,lncel.LNCEL_UL_CH_BW))/2),0,0, decode(sum(lcellr.PERIOD_DURATION*60*1000),0,0,sum(lcellr.PRB_USED_PUSCH)/sum(lcellr.PERIOD_DURATION*60*1000))/        (sum(decode(lncel.LNCEL_CH_BW,'',0,lncel.LNCEL_CH_BW)*decode(lncel.LNCEL_TDD_FRAME_CONF,1,0.4,0.2)+ decode(lncel.LNCEL_CH_BW,'',0,lncel.LNCEL_CH_BW)/35+decode(lncel.LNCEL_UL_CH_BW,'',0, lncel.LNCEL_UL_CH_BW))/2)) AS ����PRBƽ��������,

        sum(decode(lncel.LNCEL_CH_BW,'',0,lncel.LNCEL_CH_BW)*decode(lncel.LNCEL_TDD_FRAME_CONF,1,0.4,0.2)+decode(lncel.LNCEL_CH_BW,'',0,lncel.LNCEL_CH_BW)/35+ decode(lncel.LNCEL_UL_CH_BW,'',0,lncel.LNCEL_UL_CH_BW))/2  AS ����PRB������,  
        
        decode(sum(lcellr.PERIOD_DURATION*60*1000),0,0,sum(lcellr.PRB_USED_PUSCH)/sum(lcellr.PERIOD_DURATION*60*1000)) AS ����PRBռ��ƽ����,
        
        decode((sum(decode(lncel.LNCEL_CH_BW,'',0,lncel.LNCEL_CH_BW)+decode(lncel.LNCEL_DL_CH_BW,'',0,lncel.LNCEL_DL_CH_BW))/2),0,0,decode(sum(lcellr.PERIOD_DURATION*60*1000),0,0, sum(lcellr.PRB_USED_PDSCH) /sum(lcellr.PERIOD_DURATION*60*1000))/(sum(decode(lncel.LNCEL_CH_BW,'',0,lncel.LNCEL_CH_BW)* decode(lncel.LNCEL_TDD_FRAME_CONF,1,0.4,0.6)+decode(lncel.LNCEL_CH_BW,'',0,lncel.LNCEL_CH_BW)*decode(lncel.LNCEL_TSSC_296,5,0.0428,0.1428)+ decode(lncel.LNCEL_DL_CH_BW,'',0,lncel.LNCEL_DL_CH_BW))/2)) AS ����PRBƽ��������,
        
        sum(decode(lncel.LNCEL_CH_BW,'',0,lncel.LNCEL_CH_BW)*decode(lncel.LNCEL_TDD_FRAME_CONF,1,0.4,0.6)+decode(lncel.LNCEL_CH_BW,'',0,lncel.LNCEL_CH_BW)*decode(lncel.LNCEL_TSSC_296,5,0.0428,0.1428)+ decode(lncel.LNCEL_DL_CH_BW,'',0,lncel.LNCEL_DL_CH_BW))/2  AS ����PRB������,
        
        decode(sum(lcellr.PERIOD_DURATION*60*1000),0,0, sum(lcellr.PRB_USED_PDSCH) / sum(lcellr.PERIOD_DURATION*60*1000)) AS ����PRBռ��ƽ����

    FROM 
        NOKLTE_PS_LCELLR_LNCEL_HOUR lcellr
        
        inner join busyhour 
            on lcellr.lncel_id = busyhour.lncel_id
            and to_char(lcellr.period_start_time, 'yyyymmddhh24') = busyhour.pm_date_hour   
        
        inner JOIN c_lte_lncel lncel 
            ON lcellr.lncel_id = lncel.obj_gid
            and busyhour.lncel_id = lncel.obj_gid

    WHERE 
            lcellr.period_start_time >=to_date(&start_date, 'yyyy-mm-dd')
        AND lcellr.period_start_time < to_date(&end_date, 'yyyy-mm-dd')
        
    GROUP BY 
        to_char(lcellr.PERIOD_START_TIME,'yyyy-mm-dd'),
        lcellr.lncel_id

    ) lcellr on lcellr.lncel_id = lcellt.lncel_id and lcellr.PERIOD_START_TIME = lcellt.PERIOD_START_TIME 

inner join 
    (SELECT
        lianbho.lncel_id,
        to_char(lianbho.PERIOD_START_TIME,'yyyy-mm-dd') AS period_start_time,

        --round(DECODE(SUM(lianbho.ATT_INTRA_ENB_HO+lienbho.ATT_INTER_ENB_HO+lienbho.INTER_ENB_S1_HO_ATT-lho.HO_INTFREQ_ATT),0,0,SUM(lianbho.SUCC_INTRA_ENB_HO+lienbho.SUCC_INTER_ENB_HO+LIENBHO.INTER_ENB_S1_HO_SUCC-LHO.HO_INTFREQ_SUCC)/SUM(lianbho.ATT_INTRA_ENB_HO+lienbho.ATT_INTER_ENB_HO+lienbho.INTER_ENB_S1_HO_ATT-lho.HO_INTFREQ_ATT))*100,2) AS ͬƵ�л��ɹ��ʣ�
        
        SUM(lianbho.ATT_INTRA_ENB_HO+lienbho.ATT_INTER_ENB_HO+lienbho.INTER_ENB_S1_HO_ATT-lho.HO_INTFREQ_ATT) AS ͬƵ�л��������,
        
        SUM(lianbho.SUCC_INTRA_ENB_HO+lienbho.SUCC_INTER_ENB_HO+LIENBHO.INTER_ENB_S1_HO_SUCC-LHO.HO_INTFREQ_SUCC) AS ͬƵ�л��ɹ�����,
        
        --round(decode(SUM(lho.HO_INTFREQ_ATT),0,0,SUM(lho.HO_INTFREQ_SUCC)/SUM(lho.HO_INTFREQ_ATT))*100,2) AS ��Ƶ�л��ɹ��ʣ�
        
        SUM(lho.HO_INTFREQ_ATT) AS ��Ƶ�л��������,
        
        SUM(lho.HO_INTFREQ_SUCC) AS ��Ƶ�л����ɹ�����

    FROM
        NOKLTE_PS_LIENBHO_LNCEL_HOUR lienbho
        
        inner join busyhour 
            on lienbho.lncel_id = busyhour.lncel_id
            and to_char(lienbho.period_start_time, 'yyyymmddhh24') = busyhour.pm_date_hour   
            
        INNER JOIN NOKLTE_PS_LIANBHO_LNCEL_HOUR lianbho 
            ON lienbho.lncel_id = lianbho.lncel_id
            AND lienbho.period_start_time = lianbho.period_start_time
            and busyhour.lncel_id = lianbho.lncel_id
            and busyhour.pm_date_hour = to_char(lianbho.period_start_time, 'yyyymmddhh24') 

        INNER JOIN NOKLTE_PS_LHO_LNCEL_HOUR lho 
            ON lienbho.lncel_id = lho.lncel_id
            AND lienbho.period_start_time = lho.period_start_time 
            and busyhour.lncel_id = lho.lncel_id
            and busyhour.pm_date_hour = to_char(lho.period_start_time, 'yyyymmddhh24')
            
    WHERE
            lienbho.period_start_time >= To_Date(&start_date, 'yyyy-mm-dd')
        AND lienbho.period_start_time <  To_Date(&end_date, 'yyyy-mm-dd')


    GROUP BY
        lianbho.lncel_id,
        to_char(lianbho.PERIOD_START_TIME,'yyyy-mm-dd')

    ) lienbho on lienbho.lncel_id = lcellt.lncel_id and lienbho.PERIOD_START_TIME = lcellt.PERIOD_START_TIME  

inner join c_lte_custom c on c.lncel_objid = lcellt.lncel_id
inner join vipcell on vipcell.CELLID = c.ci
group by
    c.city,
    --c.lnbtsid,
    --c.lncel_lcr_id,
    vipcell.����,
   lcellt.PERIOD_START_TIME
       
    

    