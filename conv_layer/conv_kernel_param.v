// 	version 1.0 --	2015.12.01	
//				-- 	setup

//	--	General Parameters of the Layer

parameter	KERNEL_SIZE			=	3;	//3x3
parameter	IMAGE_SIZE			=	8;
parameter	ARRAY_SIZE			=	6;

parameter	ARRAY_WIDTH			=	3;	


//	--	Input Interface	States

parameter	STATE_IDLE			=	3'd0;
parameter	STATE_PRELOAD		=	3'd1;	
parameter	STATE_SHIFT			=	3'd2;
parameter	STATE_BIAS			=	3'd5;
parameter	STATE_LOAD			=	3'd6;


//	--	Input Buffer

parameter	BUFFER_ROW			=	KERNEL_SIZE;	//	3
parameter	BUFFER_ROW_WIDTH	=	2;

parameter	BUFFER_COL			=	IMAGE_SIZE;		//	8
parameter	BUFFER_COL_WIDTH	=	3;	//	log2(8) + 1

//	--	Input Weight Buffer

parameter	WEIGHT_ROM_DEPTH	=	64;
parameter	WEIGHT_ROM_ADDR_WIDTH	=	6; 
parameter	TOTAL_WEIGHT		=	4;
parameter	WEIGHT_WIDTH		=	2;

//	--	Intereaction Signals

parameter	ACK_IDLE			=	2'd0;
parameter	ACK_PRELOAD_FIN		=	2'd1;
parameter	ACK_SHIFT_FIN		=	2'd2;
parameter	ACK_LOAD_FIN		=	2'd3;

parameter	CMD_IDLE			=	2'd0;
parameter	CMD_PRELOAD			=	2'd1;
parameter	CMD_SHIFT			=	2'd2;
parameter	CMD_LOAD			=	2'd3;