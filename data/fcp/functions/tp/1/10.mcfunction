# These codes are licensed under CC0.
# http://creativecommons.org/publicdomain/zero/1.0/deed.ja

scoreboard players operation $ FCP.MoveSC += $ FCP.MoveSC
execute if score $ FCP.MoveSC matches 0.. run function fcp:tp/1/9
execute if score $ FCP.MoveSC matches ..-1 positioned ^ ^ ^10240 run function fcp:tp/1/9
