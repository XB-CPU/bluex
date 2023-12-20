from argparse import ArgumentParser
import os
import sys

R_set = set()
I_set = set()
J_set = set()

GPR_ADR = 0
ADR_BIT = 0
IMM_BIT = 0
OPC_BIT = 0

version = "23.12.20.1.0"

def show_version():
    return version

cli_parser = ArgumentParser(description='Calculate volume of a cylinder')
cli_parser.add_argument("raw_file_name", help="the raw file name with its path")
cli_parser.add_argument("-o", "--output", metavar="'name of output file'", help="output file position")
cli_parser.add_argument('-v', '--version', action='version', version=show_version(),help='show version')
cli_parser.add_argument("-p", "--print_code", action="store_false", help="print machine code", default=True)
cli_parser.add_argument("-V", "--verbose", action="store_false", help="print compile process verbosely", default=True)
cli_args = cli_parser.parse_args()

macro_dict = dict()

def info_print(messsage:str):
	print(f"\033[0;93minfo:\033[0m {messsage}")

def note_print(messsage:str):
	print(f"\033[0;36mnote:\033[0m {messsage}")
	
def error_print(messsage:str):
	print(f"\033[0;91merror:\033[0m {messsage}")

def ce_print(mes:str, file=None, line_index:int=None):
	if line_index is None:
		print(f"\033[0;91mCompile error:\033[0m {mes}.")
	else:
		print(f"\033[0;91mCompile error\033[0m in line \033[0;91m{line_index + 1}:\033[0m {mes}.")
	if file is not None:
		file.seek(0)
		print(f"error content: \033[0;91m{file.readlines()[line_index]}\033[0m")
	with open(cli_args.output, "w") as f:
		f.close()
	sys.exit(1)

def imm_proc(user_imm:str, f, line_index):
	hex_flag = False
	bin_flag = False
	imm = None
	imm_type = None
	if user_imm[-1] == 'H':
		user_imm = user_imm.removesuffix("H")
		hex_flag = True
	elif user_imm[-1] == 'B':
		user_imm = user_imm.removesuffix("B")
		bin_flag = True
	try:
		if not hex_flag and not bin_flag:
			imm_type = ""
			imm = int(user_imm)
		elif hex_flag:
			imm_type = "hex "
			imm = int(user_imm, 16)
		elif bin_flag:
			imm_type = "bin "
			imm = int(user_imm, 2)
	except:
		ce_print(f"unable to convert the given imm {user_imm} to {imm_type}integer, please check it", f, line_index)
	if imm >= (1 << IMM_BIT):
		ce_print(f"converted imm is larger than {(1 << IMM_BIT) - 1}, consider reduce it", f, line_index)
	return (imm & 0xffff)

line_num = 1

def machine_code_print(code:str, cmd_type:str):
	global line_num
	res = list(code)
	op_code = 0
	if cmd_type == "R":
		res.insert(32-6, " ")
		res.insert(32-11, " ")
		res.insert(32-16, " ")
		res.insert(32-21, " ")
		res.insert(32-26, " ")
		op_code = int("".join(res[31:]), 2)
	elif cmd_type == "I":
		res.insert(32-16, " ")
		res.insert(32-21, " ")
		res.insert(32-26, " ")
		op_code = int("".join(res[0:6]), 2)
		im_code = int("".join(res[19:]), 2)
		res.append("\t" + str(im_code))
	elif cmd_type == "J":
		res.insert(32-26, " ")
		op_code = int("".join(res[0:6]), 2)
		ad_code = int("".join(res[17:]), 2)
		res.append("  \t" + str(ad_code))
	res.insert(0, str(line_num) + " " +str(op_code) + " ")
	print("".join(res))
	line_num += 1

class isc_code:
	OP_DISP = 26
	RS_DISP = 21
	RT_DISP = 16
	RD_DISP = 11
	SH_DISP = 6
	FC_DISP = 0
	IM_DISP = 0
	AD_DISP = 0
	def __init__(self) -> None:
		self.isc = 0

	def add_op(self, op_value:int, f, line_index):
		if not isinstance(op_value, int):
			ce_print(f"Compile error: op value must be a integer, but {type(op_value)} are given", f, line_index)
		if op_value > ((1 << OPC_BIT) - 1) or op_value < 0:
			ce_print(f"Compile error: op value must be less than {1 << OPC_BIT} and greater than 0, but {op_value} are given", f, line_index)
		self.isc += op_value << isc_code.OP_DISP

	def add_rs(self, rs_value:int, f, line_index):
		if not isinstance(rs_value, int):
			ce_print(f"Compile error: rs value must be a integer, but {type(rs_value)} are given", f, line_index)
		if rs_value > ((1 << GPR_ADR) - 1) or rs_value < 0:
			ce_print(f"Compile error: rs value must be less than {1 << GPR_ADR} and greater than 0, but {rs_value} are given", f, line_index)
		self.isc += rs_value << isc_code.RS_DISP

	def add_rt(self, rt_value:int, f, line_index):
		if not isinstance(rt_value, int):
			ce_print(f"Compile error: rt value must be a integer, but {type(rt_value)} are given", f, line_index)
		if rt_value > ((1 << GPR_ADR) - 1) or rt_value < 0:
			ce_print(f"Compile error: rt value must be less than {1 << GPR_ADR} and greater than 0, but {rt_value} are given", f, line_index)
		self.isc += rt_value << isc_code.RT_DISP

	def add_rd(self, rd_value:int, f, line_index):
		if not isinstance(rd_value, int):
			ce_print(f"Compile error: rd value must be a integer, but {type(rd_value)} are given", f, line_index)
		if rd_value > ((1 << GPR_ADR) - 1) or rd_value < 0:
			ce_print(f"Compile error: rd value must be less than {1 << GPR_ADR} and greater than 0, but {rd_value} are given", f, line_index)
		self.isc += rd_value << isc_code.RD_DISP

	def add_fc(self, fc_value:int, f, line_index):
		if not isinstance(fc_value, int):
			ce_print(f"Compile error: fc value must be a integer, but {type(fc_value)} are given", f, line_index)
		if fc_value > ((1 << OPC_BIT) - 1) or fc_value < 0:
			ce_print(f"Compile error: fc value must be less than {1 << OPC_BIT} and greater than 0, but {fc_value} are given", f, line_index)
		self.isc += fc_value << isc_code.FC_DISP

	def add_im(self, im_value:int, f, line_index):
		if not isinstance(im_value, int):
			ce_print(f"Compile error: im value must be a integer, but {type(im_value)} are given", f, line_index)
		if im_value > ((1 << IMM_BIT) - 1) or im_value < 0:
			ce_print(f"Compile error: im value must be less than {1 << IMM_BIT} and greater than 0, but {im_value} are given", f, line_index)
		self.isc += im_value << isc_code.IM_DISP

	def add_ad(self, ad_value:int, f, line_index):
		if not isinstance(ad_value, int):
			ce_print(f"Compile error: ad value must be a integer, but {type(ad_value)} are given", f, line_index)
		if ad_value > ((1 << ADR_BIT) - 1) or ad_value < 0:
			ce_print(f"Compile error: ad value must be less than {1 << ADR_BIT} and greater than 0, but {ad_value} are given", f, line_index)
		self.isc += ad_value << isc_code.IM_DISP

	def code(self, bin_str:bool=True):
		if bin_str:
			return bin(self.isc)[2:].zfill(32)
		else:
			return self.isc

def load_macro():
	global GPR_ADR, ADR_BIT, IMM_BIT, OPC_BIT
	i = 0
	if not os.path.exists("./global_macro.v"):
		error_print("global_macro.v not found! Abort.")
	with open("./global_macro.v") as f:
		for line in f.readlines():
			if line.startswith("`define ALO_"):
				line = line.split()[1:4]
				cmd = line[0].removeprefix("ALO_")
				code = int(line[1].removeprefix("6'd"))
				macro_dict[cmd] = code
				cmd_type = line[2].removeprefix("//")
				if cmd_type == "R":
					R_set.add(cmd)
				elif cmd_type == "I":
					I_set.add(cmd)
				else:
					J_set.add(cmd)
				# print(f"cmd: {cmd}\ttype:{cmd_type}\tcode:{code}")
				i += 1
			elif line.startswith("`define GPR_ADR"):
				GPR_ADR = int(line.split()[2])
			elif line.startswith("`define ADR_BIT"):
				ADR_BIT = int(line.split()[2])
			elif line.startswith("`define IMM_BIT"):
				IMM_BIT = int(line.split()[2])
			elif line.startswith("`define OPC_BIT"):
				OPC_BIT = int(line.split()[2])
	if cli_args.verbose:
		info_print(f"GPR ADR:{GPR_ADR}")
		info_print(f"ADR BIT:{ADR_BIT}")
		info_print(f"IMM BIT:{IMM_BIT}")
		info_print(f"OPC BIT:{OPC_BIT}")
		info_print(f"all isc found:{i} items") # should be 24 in this version
	# print(macro_dict)
	

def check_cli_arg_correctness():
	if not os.path.exists(cli_args.raw_file_name):
		print(f"raw file path provided({cli_args.raw_file_name}) is not a valid path, please check its completeness.")
		sys.exit(1)
	(main_path, extension) = os.path.splitext(cli_args.raw_file_name)
	if not extension == ".txt":
		print(f"raw file provided({cli_args.raw_file_name}) is not a file that supported by this complier, consider change its extension.")
		sys.exit(1)
	if cli_args.output == None:
		cli_args.output = f"{main_path}_machine_code.txt"
		with open(cli_args.output, "w") as file:
			file.close() # this will clear the contents of the original file
	if cli_args.verbose:
		info_print(f"output file:{cli_args.output}")

def compile():
	cmd_type = None
	with open(cli_args.raw_file_name) as f:
		for (index, line) in enumerate(f.readlines()):
			line = line.strip()
			if line.startswith("#") or line.startswith("//"):
				continue
			else:
				ic = isc_code()
				line = line.upper().replace(",", "").split()
				if line[0] in R_set:
					cmd_type = "R"
					if line[0] in ("ADD", "SUB", "ORL", "AND", "XOR", "SLL", "SRL", "SRA", "SLS"):
						if len(line) != 4:
							if line[4].startswith("#") or line[4].startswith("//"):
								line = line[0:4]
							else:
								ce_print(f"cmd {line[0]} should be followed by 3 reg, but {len(line) - 1} items are given", f, index)
						for (reg_pos, reg) in enumerate(line[1:]):
							if not reg.startswith("R"):
								ce_print(f"expect reg, but \"{reg}\" found", f, index)
							reg_num = reg[1:]
							try:
								reg_num = int(reg_num)
							except:
								ce_print(f"reg should have a form like \"Rx\" where x is a integer, but unrecognizable form {reg} are found", f, index)
							if reg_pos == 0:
								ic.add_rd(reg_num, f, index)
							elif reg_pos == 1:
								ic.add_rs(reg_num, f, index)
							elif reg_pos == 2:
								ic.add_rt(reg_num, f, index)
					elif line[0] in ("NOT"):
						if len(line) != 3:
							if line[3].startswith("#") or line[3].startswith("//"):
								line = line[0:3]
							else:
								ce_print(f"cmd {line[0]} should be followed by 2 reg, but {len(line) - 1} items are given", f, index)
						for (reg_pos, reg) in enumerate(line[1:]):
							if not reg.startswith("R"):
								ce_print(f"expect reg, but \"{reg}\" found", f, index)
							reg_num = reg[1:]
							try:
								reg_num = int(reg_num)
							except:
								ce_print(f"reg should have a form like \"Rx\" where x is a integer, but unrecognizable form {reg} are found", f, index)
							if reg_pos == 0:
								ic.add_rt(reg_num, f, index)
							elif reg_pos == 1:
								ic.add_rs(reg_num, f, index)
					else:
						ce_print(f"unsupported cmd {line[0]} in {cmd_type} instruction set. Please contact compiler author for this problem", f, index)
					ic.add_fc(macro_dict[line[0]], f, index)
				elif line[0] in I_set:
					cmd_type = "I"
					if line[0] in ("ADDI", "SUBI", "ORLI", "ANDI", "XORI", "BEQ", "BNE", "SLSI", "LDW", "SVW"):
						if len(line) != 4:
							if line[4].startswith("#") or line[4].startswith("//"):
								line = line[0:4]
							else:
								ce_print(f"cmd {line[0]} should be followed by 2 reg and 1 imm, but {len(line) - 1} items are given", f, index)
						for (rim_pos, rim) in enumerate(line[1:]):
							if rim_pos == 0:
								if not rim.startswith("R"):
									ce_print(f"expect reg, but \"{rim}\" found", f, index)
								rim_num = rim[1:]
								try:
									rim_num = int(rim_num)
								except:
									ce_print(f"rim should have a form like \"Rx\" where x is a integer, but unrecognizable form {rim} are found", f, index)
								ic.add_rt(rim_num, f, index)
							elif rim_pos == 1:
								if not rim.startswith("R"):
									ce_print(f"expect reg, but \"{rim}\" found", f, index)
								rim_num = rim[1:]
								try:
									rim_num = int(rim_num)
								except:
									ce_print(f"rim should have a form like \"Rx\" where x is a integer, but unrecognizable form {rim} are found", f, index)
								ic.add_rs(rim_num, f, index)				
							elif rim_pos == 2:
								ic.add_im(imm_proc(rim, f, index), f, index)
					elif line[0] in ("NOTI", "MIRL", "MIRH"):
						if len(line) != 3:
							if line[3].startswith("#") or line[3].startswith("//"):
								line = line[0:3]
							else:
								ce_print(f"cmd {line[0]} should be followed by 1 reg and 1 imm, but {len(line) - 1} items are given", f, index)
						for (rim_pos, rim) in enumerate(line[1:]):
							if rim_pos == 0:
								if not rim.startswith("R"):
									ce_print(f"expect reg, but \"{rim}\" found", f, index)
								rim_num = rim[1:]
								try:
									rim_num = int(rim_num)
								except:
									ce_print(f"rim should have a form like \"Rx\" where x is a integer, but unrecognizable form {rim} are found", f, index)
								ic.add_rt(rim_num, f, index)
							elif rim_pos == 1:
								ic.add_im(imm_proc(rim, f, index), f, index)
					else:
						ce_print(f"unsupported cmd {line[0]} in {cmd_type} instruction set. Please contact compiler author for this problem", f, index)
					ic.add_op(macro_dict[line[0]], f, index)
				elif line[0] in J_set:
					cmd_type = "J"
					if line[0] in ("JMP"):
						if len(line) != 2:
							if line[2].startswith("#") or line[2].startswith("//"):
								line = line[0:2]
							else:
								ce_print(f"cmd {line[0]} should be followed by 1 imm, but {len(line) - 1} items are given", f, index)
						for (imm_pos, imm) in enumerate(line[1:]):
							if imm_pos == 0:
								ic.add_im(imm_proc(imm, f, index), f, index)
					else:
						ce_print(f"unsupported cmd {line[0]} in {cmd_type} instruction set. Please contact compiler author for this problem", f, index)
					ic.add_op(macro_dict[line[0]], f, index)
				else:
					ce_print(f"unrecognized cmd:{line[0]}, try correct it", f, index)
				with open(cli_args.output, "a") as output:
					output.write(f"{ic.code()}\n")
				if cli_args.print_code:
					machine_code_print(ic.code(), cmd_type)
	
if __name__ == "__main__":
	load_macro()
	check_cli_arg_correctness()
	compile()