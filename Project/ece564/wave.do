onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_top/dut/clk
add wave -noupdate /tb_top/dut/reset_b
add wave -noupdate /tb_top/dut/xxx__dut__run
add wave -noupdate /tb_top/dut/dut__xxx__busy
add wave -noupdate /tb_top/dut/x
add wave -noupdate /tb_top/dut/w_ref
add wave -noupdate /tb_top/dut/w
add wave -noupdate /tb_top/dut/sram_read_flag
add wave -noupdate -radix decimal /tb_top/dut/read_address_counter
add wave -noupdate /tb_top/dut/dut__sram__read_address
add wave -noupdate /tb_top/dut/dut__gmem__read_address
add wave -noupdate /tb_top/dut/current_state
add wave -noupdate /tb_top/dut/next_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {347 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 320
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {774 ns} {908 ns}
