data modify storage ats_602:unit List[-1].Result set value 1b

execute if data storage ats_602:unit List[-1] run schedule function ats_602:result/1 1s append
execute unless data storage ats_602:unit List[-1] run schedule function ats_602:result/finish 2s append
