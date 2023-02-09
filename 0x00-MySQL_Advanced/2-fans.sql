-- sql script that ranks country origins of bands
-- this script imports table from the dump: metal_bands.sql (zipped)
select  origin, sum(fans) as `nb_fans` from `metal_bands`
group by `origin`
order by `nb_fans` desc limit 10;

