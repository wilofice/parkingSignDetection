       гK"	  @╪°8╓Abrain.Event:2╫Eўчl_     ▐e	mSq╪°8╓A"▀╛

is_training/Initializer/ConstConst*
_class
loc:@is_training*
value	B
 Z *
_output_shapes
: *
dtype0

П
is_training
VariableV2*
	container *
shared_name *
dtype0
*
shape: *
_output_shapes
: *
_class
loc:@is_training
▓
is_training/AssignAssignis_trainingis_training/Initializer/Const*
_output_shapes
: *
validate_shape(*
_class
loc:@is_training*
T0
*
use_locking(
j
is_training/readIdentityis_training*
_class
loc:@is_training*
_output_shapes
: *
T0

N
Assign/valueConst*
value	B
 Z*
_output_shapes
: *
dtype0

Х
AssignAssignis_trainingAssign/value*
_class
loc:@is_training*
_output_shapes
: *
T0
*
validate_shape(*
use_locking(
P
Assign_1/valueConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
Щ
Assign_1Assignis_trainingAssign_1/value*
_output_shapes
: *
validate_shape(*
_class
loc:@is_training*
T0
*
use_locking(
c
input/XPlaceholder*1
_output_shapes
:         До*
dtype0*
shape: 
Я
)Conv2D/W/Initializer/random_uniform/shapeConst*
_class
loc:@Conv2D/W*%
valueB"             *
_output_shapes
:*
dtype0
Й
'Conv2D/W/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D/W*
valueB
 *м\▒╛
Й
'Conv2D/W/Initializer/random_uniform/maxConst*
_class
loc:@Conv2D/W*
valueB
 *м\▒>*
_output_shapes
: *
dtype0
с
1Conv2D/W/Initializer/random_uniform/RandomUniformRandomUniform)Conv2D/W/Initializer/random_uniform/shape*&
_output_shapes
: *
_class
loc:@Conv2D/W*
dtype0*

seed *
T0*
seed2 
╛
'Conv2D/W/Initializer/random_uniform/subSub'Conv2D/W/Initializer/random_uniform/max'Conv2D/W/Initializer/random_uniform/min*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0
╪
'Conv2D/W/Initializer/random_uniform/mulMul1Conv2D/W/Initializer/random_uniform/RandomUniform'Conv2D/W/Initializer/random_uniform/sub*
T0*
_class
loc:@Conv2D/W*&
_output_shapes
: 
╩
#Conv2D/W/Initializer/random_uniformAdd'Conv2D/W/Initializer/random_uniform/mul'Conv2D/W/Initializer/random_uniform/min*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0
й
Conv2D/W
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D/W*
shared_name *&
_output_shapes
: *
shape: 
┐
Conv2D/W/AssignAssignConv2D/W#Conv2D/W/Initializer/random_uniform*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(
q
Conv2D/W/readIdentityConv2D/W*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
Д
Conv2D/b/Initializer/ConstConst*
_class
loc:@Conv2D/b*
valueB *    *
_output_shapes
: *
dtype0
С
Conv2D/b
VariableV2*
shared_name *
shape: *
_output_shapes
: *
_class
loc:@Conv2D/b*
dtype0*
	container 
к
Conv2D/b/AssignAssignConv2D/bConv2D/b/Initializer/Const*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
e
Conv2D/b/readIdentityConv2D/b*
T0*
_output_shapes
: *
_class
loc:@Conv2D/b
┬
Conv2D/Conv2DConv2Dinput/XConv2D/W/read*
use_cudnn_on_gpu(*1
_output_shapes
:         До *
strides
*
data_formatNHWC*
T0*
paddingSAME
К
Conv2D/BiasAddBiasAddConv2D/Conv2DConv2D/b/read*
data_formatNHWC*
T0*1
_output_shapes
:         До 
_
Conv2D/ReluReluConv2D/BiasAdd*
T0*1
_output_shapes
:         До 
╖
MaxPool2D/MaxPoolMaxPoolConv2D/Relu*
ksize
*1
_output_shapes
:         ┤╝ *
T0*
strides
*
data_formatNHWC*
paddingSAME
г
+Conv2D_1/W/Initializer/random_uniform/shapeConst*
_class
loc:@Conv2D_1/W*%
valueB"          @   *
_output_shapes
:*
dtype0
Н
)Conv2D_1/W/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D_1/W*
valueB
 *ч╙z╜
Н
)Conv2D_1/W/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
_class
loc:@Conv2D_1/W*
valueB
 *ч╙z=
ч
3Conv2D_1/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_1/W/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
╞
)Conv2D_1/W/Initializer/random_uniform/subSub)Conv2D_1/W/Initializer/random_uniform/max)Conv2D_1/W/Initializer/random_uniform/min*
T0*
_class
loc:@Conv2D_1/W*
_output_shapes
: 
р
)Conv2D_1/W/Initializer/random_uniform/mulMul3Conv2D_1/W/Initializer/random_uniform/RandomUniform)Conv2D_1/W/Initializer/random_uniform/sub*
T0*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @
╥
%Conv2D_1/W/Initializer/random_uniformAdd)Conv2D_1/W/Initializer/random_uniform/mul)Conv2D_1/W/Initializer/random_uniform/min*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W*
T0
н

Conv2D_1/W
VariableV2*
shared_name *
shape: @*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W*
dtype0*
	container 
╟
Conv2D_1/W/AssignAssign
Conv2D_1/W%Conv2D_1/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@Conv2D_1/W*
validate_shape(*&
_output_shapes
: @
w
Conv2D_1/W/readIdentity
Conv2D_1/W*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W*
T0
И
Conv2D_1/b/Initializer/ConstConst*
dtype0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b*
valueB@*    
Х

Conv2D_1/b
VariableV2*
shared_name *
_class
loc:@Conv2D_1/b*
	container *
shape:@*
dtype0*
_output_shapes
:@
▓
Conv2D_1/b/AssignAssign
Conv2D_1/bConv2D_1/b/Initializer/Const*
use_locking(*
T0*
_class
loc:@Conv2D_1/b*
validate_shape(*
_output_shapes
:@
k
Conv2D_1/b/readIdentity
Conv2D_1/b*
_output_shapes
:@*
_class
loc:@Conv2D_1/b*
T0
╨
Conv2D_1/Conv2DConv2DMaxPool2D/MaxPoolConv2D_1/W/read*
paddingSAME*
T0*
strides
*
data_formatNHWC*1
_output_shapes
:         ┤╝@*
use_cudnn_on_gpu(
Р
Conv2D_1/BiasAddBiasAddConv2D_1/Conv2DConv2D_1/b/read*1
_output_shapes
:         ┤╝@*
data_formatNHWC*
T0
c
Conv2D_1/ReluReluConv2D_1/BiasAdd*
T0*1
_output_shapes
:         ┤╝@
║
MaxPool2D_1/MaxPoolMaxPoolConv2D_1/Relu*0
_output_shapes
:         д?@*
paddingSAME*
ksize
*
strides
*
data_formatNHWC*
T0
г
+Conv2D_2/W/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
_class
loc:@Conv2D_2/W*%
valueB"      @   А   
Н
)Conv2D_2/W/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
_class
loc:@Conv2D_2/W*
valueB
 *м\1╜
Н
)Conv2D_2/W/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D_2/W*
valueB
 *м\1=
ш
3Conv2D_2/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_2/W/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*'
_output_shapes
:@А*
_class
loc:@Conv2D_2/W
╞
)Conv2D_2/W/Initializer/random_uniform/subSub)Conv2D_2/W/Initializer/random_uniform/max)Conv2D_2/W/Initializer/random_uniform/min*
T0*
_class
loc:@Conv2D_2/W*
_output_shapes
: 
с
)Conv2D_2/W/Initializer/random_uniform/mulMul3Conv2D_2/W/Initializer/random_uniform/RandomUniform)Conv2D_2/W/Initializer/random_uniform/sub*'
_output_shapes
:@А*
_class
loc:@Conv2D_2/W*
T0
╙
%Conv2D_2/W/Initializer/random_uniformAdd)Conv2D_2/W/Initializer/random_uniform/mul)Conv2D_2/W/Initializer/random_uniform/min*
T0*'
_output_shapes
:@А*
_class
loc:@Conv2D_2/W
п

Conv2D_2/W
VariableV2*
	container *
shared_name *
dtype0*
shape:@А*'
_output_shapes
:@А*
_class
loc:@Conv2D_2/W
╚
Conv2D_2/W/AssignAssign
Conv2D_2/W%Conv2D_2/W/Initializer/random_uniform*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А*
T0*
validate_shape(*
use_locking(
x
Conv2D_2/W/readIdentity
Conv2D_2/W*
T0*'
_output_shapes
:@А*
_class
loc:@Conv2D_2/W
К
Conv2D_2/b/Initializer/ConstConst*
_class
loc:@Conv2D_2/b*
valueBА*    *
_output_shapes	
:А*
dtype0
Ч

Conv2D_2/b
VariableV2*
shared_name *
_class
loc:@Conv2D_2/b*
	container *
shape:А*
dtype0*
_output_shapes	
:А
│
Conv2D_2/b/AssignAssign
Conv2D_2/bConv2D_2/b/Initializer/Const*
use_locking(*
T0*
_class
loc:@Conv2D_2/b*
validate_shape(*
_output_shapes	
:А
l
Conv2D_2/b/readIdentity
Conv2D_2/b*
_output_shapes	
:А*
_class
loc:@Conv2D_2/b*
T0
╥
Conv2D_2/Conv2DConv2DMaxPool2D_1/MaxPoolConv2D_2/W/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         д?А
Р
Conv2D_2/BiasAddBiasAddConv2D_2/Conv2DConv2D_2/b/read*1
_output_shapes
:         д?А*
T0*
data_formatNHWC
c
Conv2D_2/ReluReluConv2D_2/BiasAdd*1
_output_shapes
:         д?А*
T0
╗
MaxPool2D_2/MaxPoolMaxPoolConv2D_2/Relu*
ksize
*1
_output_shapes
:         ╘А*
strides
*
data_formatNHWC*
T0*
paddingSAME
г
+Conv2D_3/W/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
_class
loc:@Conv2D_3/W*%
valueB"      А   @   
Н
)Conv2D_3/W/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
_class
loc:@Conv2D_3/W*
valueB
 *ч╙·╝
Н
)Conv2D_3/W/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D_3/W*
valueB
 *ч╙·<
ш
3Conv2D_3/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_3/W/Initializer/random_uniform/shape*
seed2 *
dtype0*
_class
loc:@Conv2D_3/W*

seed *'
_output_shapes
:А@*
T0
╞
)Conv2D_3/W/Initializer/random_uniform/subSub)Conv2D_3/W/Initializer/random_uniform/max)Conv2D_3/W/Initializer/random_uniform/min*
T0*
_output_shapes
: *
_class
loc:@Conv2D_3/W
с
)Conv2D_3/W/Initializer/random_uniform/mulMul3Conv2D_3/W/Initializer/random_uniform/RandomUniform)Conv2D_3/W/Initializer/random_uniform/sub*'
_output_shapes
:А@*
_class
loc:@Conv2D_3/W*
T0
╙
%Conv2D_3/W/Initializer/random_uniformAdd)Conv2D_3/W/Initializer/random_uniform/mul)Conv2D_3/W/Initializer/random_uniform/min*
T0*'
_output_shapes
:А@*
_class
loc:@Conv2D_3/W
п

Conv2D_3/W
VariableV2*
shared_name *
shape:А@*'
_output_shapes
:А@*
_class
loc:@Conv2D_3/W*
dtype0*
	container 
╚
Conv2D_3/W/AssignAssign
Conv2D_3/W%Conv2D_3/W/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:А@*
_class
loc:@Conv2D_3/W
x
Conv2D_3/W/readIdentity
Conv2D_3/W*
T0*'
_output_shapes
:А@*
_class
loc:@Conv2D_3/W
И
Conv2D_3/b/Initializer/ConstConst*
dtype0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b*
valueB@*    
Х

Conv2D_3/b
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_3/b*
shared_name *
_output_shapes
:@*
shape:@
▓
Conv2D_3/b/AssignAssign
Conv2D_3/bConv2D_3/b/Initializer/Const*
use_locking(*
T0*
_class
loc:@Conv2D_3/b*
validate_shape(*
_output_shapes
:@
k
Conv2D_3/b/readIdentity
Conv2D_3/b*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
╤
Conv2D_3/Conv2DConv2DMaxPool2D_2/MaxPoolConv2D_3/W/read*0
_output_shapes
:         ╘@*
T0*
use_cudnn_on_gpu(*
strides
*
data_formatNHWC*
paddingSAME
П
Conv2D_3/BiasAddBiasAddConv2D_3/Conv2DConv2D_3/b/read*
data_formatNHWC*
T0*0
_output_shapes
:         ╘@
b
Conv2D_3/ReluReluConv2D_3/BiasAdd*
T0*0
_output_shapes
:         ╘@
║
MaxPool2D_3/MaxPoolMaxPoolConv2D_3/Relu*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*0
_output_shapes
:         ─@
г
+Conv2D_4/W/Initializer/random_uniform/shapeConst*
_class
loc:@Conv2D_4/W*%
valueB"      @       *
_output_shapes
:*
dtype0
Н
)Conv2D_4/W/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
_class
loc:@Conv2D_4/W*
valueB
 *м\1╜
Н
)Conv2D_4/W/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
_class
loc:@Conv2D_4/W*
valueB
 *м\1=
ч
3Conv2D_4/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_4/W/Initializer/random_uniform/shape*&
_output_shapes
:@ *
dtype0*
seed2 *
_class
loc:@Conv2D_4/W*
T0*

seed 
╞
)Conv2D_4/W/Initializer/random_uniform/subSub)Conv2D_4/W/Initializer/random_uniform/max)Conv2D_4/W/Initializer/random_uniform/min*
_class
loc:@Conv2D_4/W*
_output_shapes
: *
T0
р
)Conv2D_4/W/Initializer/random_uniform/mulMul3Conv2D_4/W/Initializer/random_uniform/RandomUniform)Conv2D_4/W/Initializer/random_uniform/sub*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0
╥
%Conv2D_4/W/Initializer/random_uniformAdd)Conv2D_4/W/Initializer/random_uniform/mul)Conv2D_4/W/Initializer/random_uniform/min*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W*
T0
н

Conv2D_4/W
VariableV2*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
shape:@ *
dtype0*
shared_name *
	container 
╟
Conv2D_4/W/AssignAssign
Conv2D_4/W%Conv2D_4/W/Initializer/random_uniform*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0*
validate_shape(*
use_locking(
w
Conv2D_4/W/readIdentity
Conv2D_4/W*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0
И
Conv2D_4/b/Initializer/ConstConst*
dtype0*
_output_shapes
: *
_class
loc:@Conv2D_4/b*
valueB *    
Х

Conv2D_4/b
VariableV2*
	container *
shared_name *
dtype0*
shape: *
_output_shapes
: *
_class
loc:@Conv2D_4/b
▓
Conv2D_4/b/AssignAssign
Conv2D_4/bConv2D_4/b/Initializer/Const*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
k
Conv2D_4/b/readIdentity
Conv2D_4/b*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
╤
Conv2D_4/Conv2DConv2DMaxPool2D_3/MaxPoolConv2D_4/W/read*
use_cudnn_on_gpu(*0
_output_shapes
:         ─ *
strides
*
data_formatNHWC*
T0*
paddingSAME
П
Conv2D_4/BiasAddBiasAddConv2D_4/Conv2DConv2D_4/b/read*
T0*
data_formatNHWC*0
_output_shapes
:         ─ 
b
Conv2D_4/ReluReluConv2D_4/BiasAdd*
T0*0
_output_shapes
:         ─ 
╣
MaxPool2D_4/MaxPoolMaxPoolConv2D_4/Relu*
ksize
*
T0*
paddingSAME*/
_output_shapes
:         A *
strides
*
data_formatNHWC
й
3FullyConnected/W/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*#
_class
loc:@FullyConnected/W*
valueB"      
Ь
2FullyConnected/W/Initializer/truncated_normal/meanConst*#
_class
loc:@FullyConnected/W*
valueB
 *    *
dtype0*
_output_shapes
: 
Ю
4FullyConnected/W/Initializer/truncated_normal/stddevConst*#
_class
loc:@FullyConnected/W*
valueB
 *
╫г<*
_output_shapes
: *
dtype0
√
=FullyConnected/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3FullyConnected/W/Initializer/truncated_normal/shape* 
_output_shapes
:
аА*
dtype0*
seed2 *#
_class
loc:@FullyConnected/W*
T0*

seed 
¤
1FullyConnected/W/Initializer/truncated_normal/mulMul=FullyConnected/W/Initializer/truncated_normal/TruncatedNormal4FullyConnected/W/Initializer/truncated_normal/stddev*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0
ы
-FullyConnected/W/Initializer/truncated_normalAdd1FullyConnected/W/Initializer/truncated_normal/mul2FullyConnected/W/Initializer/truncated_normal/mean*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0
н
FullyConnected/W
VariableV2*
	container *
shared_name *
dtype0*
shape:
аА* 
_output_shapes
:
аА*#
_class
loc:@FullyConnected/W
█
FullyConnected/W/AssignAssignFullyConnected/W-FullyConnected/W/Initializer/truncated_normal*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0*
validate_shape(*
use_locking(
Г
FullyConnected/W/readIdentityFullyConnected/W*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0
Ц
"FullyConnected/b/Initializer/ConstConst*
dtype0*
_output_shapes	
:А*#
_class
loc:@FullyConnected/b*
valueBА*    
г
FullyConnected/b
VariableV2*#
_class
loc:@FullyConnected/b*
_output_shapes	
:А*
shape:А*
dtype0*
shared_name *
	container 
╦
FullyConnected/b/AssignAssignFullyConnected/b"FullyConnected/b/Initializer/Const*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:А
~
FullyConnected/b/readIdentityFullyConnected/b*
T0*
_output_shapes	
:А*#
_class
loc:@FullyConnected/b
m
FullyConnected/Reshape/shapeConst*
valueB"       *
_output_shapes
:*
dtype0
Х
FullyConnected/ReshapeReshapeMaxPool2D_4/MaxPoolFullyConnected/Reshape/shape*
Tshape0*(
_output_shapes
:         а*
T0
з
FullyConnected/MatMulMatMulFullyConnected/ReshapeFullyConnected/W/read*
transpose_b( *(
_output_shapes
:         А*
transpose_a( *
T0
Щ
FullyConnected/BiasAddBiasAddFullyConnected/MatMulFullyConnected/b/read*(
_output_shapes
:         А*
T0*
data_formatNHWC
f
FullyConnected/ReluReluFullyConnected/BiasAdd*
T0*(
_output_shapes
:         А
_
Dropout/cond/SwitchSwitchis_trainingis_training/read*
_output_shapes
: : *
T0

Y
Dropout/cond/switch_tIdentityDropout/cond/Switch:1*
T0
*
_output_shapes
: 
W
Dropout/cond/switch_fIdentityDropout/cond/Switch*
T0
*
_output_shapes
: 
S
Dropout/cond/pred_idIdentityis_training/read*
_output_shapes
: *
T0

{
Dropout/cond/dropout/keep_probConst^Dropout/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *═╠L?
┼
!Dropout/cond/dropout/Shape/SwitchSwitchFullyConnected/ReluDropout/cond/pred_id*
T0*<
_output_shapes*
(:         А:         А*&
_class
loc:@FullyConnected/Relu
}
Dropout/cond/dropout/ShapeShape#Dropout/cond/dropout/Shape/Switch:1*
out_type0*
_output_shapes
:*
T0
Д
'Dropout/cond/dropout/random_uniform/minConst^Dropout/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0
Д
'Dropout/cond/dropout/random_uniform/maxConst^Dropout/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╖
1Dropout/cond/dropout/random_uniform/RandomUniformRandomUniformDropout/cond/dropout/Shape*(
_output_shapes
:         А*
seed2 *
T0*

seed *
dtype0
б
'Dropout/cond/dropout/random_uniform/subSub'Dropout/cond/dropout/random_uniform/max'Dropout/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
╜
'Dropout/cond/dropout/random_uniform/mulMul1Dropout/cond/dropout/random_uniform/RandomUniform'Dropout/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:         А
п
#Dropout/cond/dropout/random_uniformAdd'Dropout/cond/dropout/random_uniform/mul'Dropout/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:         А
Ч
Dropout/cond/dropout/addAddDropout/cond/dropout/keep_prob#Dropout/cond/dropout/random_uniform*
T0*(
_output_shapes
:         А
p
Dropout/cond/dropout/FloorFloorDropout/cond/dropout/add*(
_output_shapes
:         А*
T0
Ы
Dropout/cond/dropout/divRealDiv#Dropout/cond/dropout/Shape/Switch:1Dropout/cond/dropout/keep_prob*
T0*(
_output_shapes
:         А
И
Dropout/cond/dropout/mulMulDropout/cond/dropout/divDropout/cond/dropout/Floor*
T0*(
_output_shapes
:         А
╣
Dropout/cond/Switch_1SwitchFullyConnected/ReluDropout/cond/pred_id*
T0*<
_output_shapes*
(:         А:         А*&
_class
loc:@FullyConnected/Relu
К
Dropout/cond/MergeMergeDropout/cond/Switch_1Dropout/cond/dropout/mul*
N*
T0**
_output_shapes
:         А: 
н
5FullyConnected_1/W/Initializer/truncated_normal/shapeConst*%
_class
loc:@FullyConnected_1/W*
valueB"      *
_output_shapes
:*
dtype0
а
4FullyConnected_1/W/Initializer/truncated_normal/meanConst*%
_class
loc:@FullyConnected_1/W*
valueB
 *    *
dtype0*
_output_shapes
: 
в
6FullyConnected_1/W/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*%
_class
loc:@FullyConnected_1/W*
valueB
 *
╫г<
А
?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5FullyConnected_1/W/Initializer/truncated_normal/shape*
_output_shapes
:	А*%
_class
loc:@FullyConnected_1/W*
dtype0*

seed *
T0*
seed2 
Д
3FullyConnected_1/W/Initializer/truncated_normal/mulMul?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormal6FullyConnected_1/W/Initializer/truncated_normal/stddev*
_output_shapes
:	А*%
_class
loc:@FullyConnected_1/W*
T0
Є
/FullyConnected_1/W/Initializer/truncated_normalAdd3FullyConnected_1/W/Initializer/truncated_normal/mul4FullyConnected_1/W/Initializer/truncated_normal/mean*
_output_shapes
:	А*%
_class
loc:@FullyConnected_1/W*
T0
п
FullyConnected_1/W
VariableV2*
	container *
shared_name *
dtype0*
shape:	А*
_output_shapes
:	А*%
_class
loc:@FullyConnected_1/W
т
FullyConnected_1/W/AssignAssignFullyConnected_1/W/FullyConnected_1/W/Initializer/truncated_normal*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	А*%
_class
loc:@FullyConnected_1/W
И
FullyConnected_1/W/readIdentityFullyConnected_1/W*
_output_shapes
:	А*%
_class
loc:@FullyConnected_1/W*
T0
Ш
$FullyConnected_1/b/Initializer/ConstConst*
dtype0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b*
valueB*    
е
FullyConnected_1/b
VariableV2*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
shape:*
dtype0*
shared_name *
	container 
╥
FullyConnected_1/b/AssignAssignFullyConnected_1/b$FullyConnected_1/b/Initializer/Const*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
Г
FullyConnected_1/b/readIdentityFullyConnected_1/b*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0
ж
FullyConnected_1/MatMulMatMulDropout/cond/MergeFullyConnected_1/W/read*
transpose_b( *
T0*'
_output_shapes
:         *
transpose_a( 
Ю
FullyConnected_1/BiasAddBiasAddFullyConnected_1/MatMulFullyConnected_1/b/read*
T0*
data_formatNHWC*'
_output_shapes
:         
o
FullyConnected_1/SoftmaxSoftmaxFullyConnected_1/BiasAdd*'
_output_shapes
:         *
T0
[
	targets/YPlaceholder*
dtype0*
shape: *'
_output_shapes
:         
[
Accuracy/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
И
Accuracy/ArgMaxArgMaxFullyConnected_1/SoftmaxAccuracy/ArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:         
]
Accuracy/ArgMax_1/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
}
Accuracy/ArgMax_1ArgMax	targets/YAccuracy/ArgMax_1/dimension*#
_output_shapes
:         *
T0*

Tidx0
i
Accuracy/EqualEqualAccuracy/ArgMaxAccuracy/ArgMax_1*#
_output_shapes
:         *
T0	
b
Accuracy/CastCastAccuracy/Equal*

SrcT0
*#
_output_shapes
:         *

DstT0
X
Accuracy/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
r
Accuracy/MeanMeanAccuracy/CastAccuracy/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
d
"Crossentropy/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
д
Crossentropy/SumSumFullyConnected_1/Softmax"Crossentropy/Sum/reduction_indices*'
_output_shapes
:         *
T0*
	keep_dims(*

Tidx0
}
Crossentropy/truedivRealDivFullyConnected_1/SoftmaxCrossentropy/Sum*'
_output_shapes
:         *
T0
X
Crossentropy/Cast/xConst*
valueB
 * ц█.*
_output_shapes
: *
dtype0
Z
Crossentropy/Cast_1/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
М
"Crossentropy/clip_by_value/MinimumMinimumCrossentropy/truedivCrossentropy/Cast_1/x*'
_output_shapes
:         *
T0
Р
Crossentropy/clip_by_valueMaximum"Crossentropy/clip_by_value/MinimumCrossentropy/Cast/x*
T0*'
_output_shapes
:         
e
Crossentropy/LogLogCrossentropy/clip_by_value*'
_output_shapes
:         *
T0
f
Crossentropy/mulMul	targets/YCrossentropy/Log*'
_output_shapes
:         *
T0
f
$Crossentropy/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ь
Crossentropy/Sum_1SumCrossentropy/mul$Crossentropy/Sum_1/reduction_indices*#
_output_shapes
:         *
T0*
	keep_dims( *

Tidx0
Y
Crossentropy/NegNegCrossentropy/Sum_1*
T0*#
_output_shapes
:         
\
Crossentropy/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
}
Crossentropy/MeanMeanCrossentropy/NegCrossentropy/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
`
Training_step/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
q
Training_step
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 
╢
Training_step/AssignAssignTraining_stepTraining_step/initial_value* 
_class
loc:@Training_step*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
p
Training_step/readIdentityTraining_step*
_output_shapes
: * 
_class
loc:@Training_step*
T0
^
Global_Step/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
o
Global_Step
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 
о
Global_Step/AssignAssignGlobal_StepGlobal_Step/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Global_Step
j
Global_Step/readIdentityGlobal_Step*
T0*
_output_shapes
: *
_class
loc:@Global_Step
J
Add/yConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
D
AddAddGlobal_Step/readAdd/y*
T0*
_output_shapes
: 
О
Assign_2AssignGlobal_StepAdd*
_output_shapes
: *
validate_shape(*
_class
loc:@Global_Step*
T0*
use_locking(
[
val_loss/initial_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
l
val_loss
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 
в
val_loss/AssignAssignval_lossval_loss/initial_value*
_output_shapes
: *
validate_shape(*
_class
loc:@val_loss*
T0*
use_locking(
a
val_loss/readIdentityval_loss*
_output_shapes
: *
_class
loc:@val_loss*
T0
Z
val_acc/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
val_acc
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 
Ю
val_acc/AssignAssignval_accval_acc/initial_value*
_class
loc:@val_acc*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
^
val_acc/readIdentityval_acc*
T0*
_class
loc:@val_acc*
_output_shapes
: 
W
placeholder/val_lossPlaceholder*
shape: *
dtype0*
_output_shapes
:
V
placeholder/val_accPlaceholder*
shape: *
dtype0*
_output_shapes
:
а
assign/val_lossAssignval_lossplaceholder/val_loss*
_output_shapes
: *
validate_shape(*
_class
loc:@val_loss*
T0*
use_locking(
Ь
assign/val_accAssignval_accplaceholder/val_acc*
_class
loc:@val_acc*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
J
zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
|
Accuracy/Mean/moving_avg
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 
┴
Accuracy/Mean/moving_avg/AssignAssignAccuracy/Mean/moving_avgzeros*
use_locking(*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
С
Accuracy/Mean/moving_avg/readIdentityAccuracy/Mean/moving_avg*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: *
T0
U
moving_avg/decayConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
U
moving_avg/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
\
moving_avg/addAddmoving_avg/add/xTraining_step/read*
_output_shapes
: *
T0
W
moving_avg/add_1/xConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
`
moving_avg/add_1Addmoving_avg/add_1/xTraining_step/read*
_output_shapes
: *
T0
`
moving_avg/truedivRealDivmoving_avg/addmoving_avg/add_1*
T0*
_output_shapes
: 
d
moving_avg/MinimumMinimummoving_avg/decaymoving_avg/truediv*
T0*
_output_shapes
: 
Т
 moving_avg/AssignMovingAvg/sub/xConst*
valueB
 *  А?*+
_class!
loc:@Accuracy/Mean/moving_avg*
dtype0*
_output_shapes
: 
й
moving_avg/AssignMovingAvg/subSub moving_avg/AssignMovingAvg/sub/xmoving_avg/Minimum*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
г
 moving_avg/AssignMovingAvg/sub_1SubAccuracy/Mean/moving_avg/readAccuracy/Mean*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
╡
moving_avg/AssignMovingAvg/mulMul moving_avg/AssignMovingAvg/sub_1moving_avg/AssignMovingAvg/sub*
T0*
_output_shapes
: *+
_class!
loc:@Accuracy/Mean/moving_avg
┬
moving_avg/AssignMovingAvg	AssignSubAccuracy/Mean/moving_avgmoving_avg/AssignMovingAvg/mul*
use_locking( *
T0*
_output_shapes
: *+
_class!
loc:@Accuracy/Mean/moving_avg
/

moving_avgNoOp^moving_avg/AssignMovingAvg
O
Adam/Total_LossIdentityCrossentropy/Mean*
T0*
_output_shapes
: 
O

Adam/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
А
Crossentropy/Mean/moving_avg
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 
╥
#Crossentropy/Mean/moving_avg/AssignAssignCrossentropy/Mean/moving_avg
Adam/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg
Э
!Crossentropy/Mean/moving_avg/readIdentityCrossentropy/Mean/moving_avg*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg*
T0
Z
Adam/moving_avg/decayConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Z
Adam/moving_avg/add/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
Adam/moving_avg/addAddAdam/moving_avg/add/xTraining_step/read*
_output_shapes
: *
T0
\
Adam/moving_avg/add_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *   A
j
Adam/moving_avg/add_1AddAdam/moving_avg/add_1/xTraining_step/read*
_output_shapes
: *
T0
o
Adam/moving_avg/truedivRealDivAdam/moving_avg/addAdam/moving_avg/add_1*
T0*
_output_shapes
: 
s
Adam/moving_avg/MinimumMinimumAdam/moving_avg/decayAdam/moving_avg/truediv*
T0*
_output_shapes
: 
Ы
%Adam/moving_avg/AssignMovingAvg/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?*/
_class%
#!loc:@Crossentropy/Mean/moving_avg
╝
#Adam/moving_avg/AssignMovingAvg/subSub%Adam/moving_avg/AssignMovingAvg/sub/xAdam/moving_avg/Minimum*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
┤
%Adam/moving_avg/AssignMovingAvg/sub_1Sub!Crossentropy/Mean/moving_avg/readCrossentropy/Mean*
T0*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg
╚
#Adam/moving_avg/AssignMovingAvg/mulMul%Adam/moving_avg/AssignMovingAvg/sub_1#Adam/moving_avg/AssignMovingAvg/sub*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: *
T0
╘
Adam/moving_avg/AssignMovingAvg	AssignSubCrossentropy/Mean/moving_avg#Adam/moving_avg/AssignMovingAvg/mul*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg*
T0*
use_locking( 
9
Adam/moving_avgNoOp ^Adam/moving_avg/AssignMovingAvg
N
	Loss/tagsConst*
_output_shapes
: *
dtype0*
valueB
 BLoss
d
LossScalarSummary	Loss/tags!Crossentropy/Mean/moving_avg/read*
_output_shapes
: *
T0
`
Adam/Loss/raw/tagsConst*
valueB BAdam/Loss/raw*
dtype0*
_output_shapes
: 
f
Adam/Loss/rawScalarSummaryAdam/Loss/raw/tagsCrossentropy/Mean*
_output_shapes
: *
T0
v
Adam/gradients/ShapeConst^Adam/moving_avg^moving_avg*
valueB *
_output_shapes
: *
dtype0
x
Adam/gradients/ConstConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB
 *  А?
h
Adam/gradients/FillFillAdam/gradients/ShapeAdam/gradients/Const*
_output_shapes
: *
T0
Ь
3Adam/gradients/Crossentropy/Mean_grad/Reshape/shapeConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*
valueB:
╡
-Adam/gradients/Crossentropy/Mean_grad/ReshapeReshapeAdam/gradients/Fill3Adam/gradients/Crossentropy/Mean_grad/Reshape/shape*
_output_shapes
:*
Tshape0*
T0
Ъ
+Adam/gradients/Crossentropy/Mean_grad/ShapeShapeCrossentropy/Neg^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
╬
*Adam/gradients/Crossentropy/Mean_grad/TileTile-Adam/gradients/Crossentropy/Mean_grad/Reshape+Adam/gradients/Crossentropy/Mean_grad/Shape*#
_output_shapes
:         *
T0*

Tmultiples0
Ь
-Adam/gradients/Crossentropy/Mean_grad/Shape_1ShapeCrossentropy/Neg^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
П
-Adam/gradients/Crossentropy/Mean_grad/Shape_2Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
Ф
+Adam/gradients/Crossentropy/Mean_grad/ConstConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*
valueB: 
╠
*Adam/gradients/Crossentropy/Mean_grad/ProdProd-Adam/gradients/Crossentropy/Mean_grad/Shape_1+Adam/gradients/Crossentropy/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
Ц
-Adam/gradients/Crossentropy/Mean_grad/Const_1Const^Adam/moving_avg^moving_avg*
valueB: *
dtype0*
_output_shapes
:
╨
,Adam/gradients/Crossentropy/Mean_grad/Prod_1Prod-Adam/gradients/Crossentropy/Mean_grad/Shape_2-Adam/gradients/Crossentropy/Mean_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
Р
/Adam/gradients/Crossentropy/Mean_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
╕
-Adam/gradients/Crossentropy/Mean_grad/MaximumMaximum,Adam/gradients/Crossentropy/Mean_grad/Prod_1/Adam/gradients/Crossentropy/Mean_grad/Maximum/y*
_output_shapes
: *
T0
╢
.Adam/gradients/Crossentropy/Mean_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Mean_grad/Prod-Adam/gradients/Crossentropy/Mean_grad/Maximum*
_output_shapes
: *
T0
Т
*Adam/gradients/Crossentropy/Mean_grad/CastCast.Adam/gradients/Crossentropy/Mean_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0
╛
-Adam/gradients/Crossentropy/Mean_grad/truedivRealDiv*Adam/gradients/Crossentropy/Mean_grad/Tile*Adam/gradients/Crossentropy/Mean_grad/Cast*
T0*#
_output_shapes
:         
М
(Adam/gradients/Crossentropy/Neg_grad/NegNeg-Adam/gradients/Crossentropy/Mean_grad/truediv*#
_output_shapes
:         *
T0
Ы
,Adam/gradients/Crossentropy/Sum_1_grad/ShapeShapeCrossentropy/mul^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
М
+Adam/gradients/Crossentropy/Sum_1_grad/SizeConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*
_output_shapes
: 
е
*Adam/gradients/Crossentropy/Sum_1_grad/addAdd$Crossentropy/Sum_1/reduction_indices+Adam/gradients/Crossentropy/Sum_1_grad/Size*
T0*
_output_shapes
: 
░
*Adam/gradients/Crossentropy/Sum_1_grad/modFloorMod*Adam/gradients/Crossentropy/Sum_1_grad/add+Adam/gradients/Crossentropy/Sum_1_grad/Size*
T0*
_output_shapes
: 
Р
.Adam/gradients/Crossentropy/Sum_1_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
У
2Adam/gradients/Crossentropy/Sum_1_grad/range/startConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B : 
У
2Adam/gradients/Crossentropy/Sum_1_grad/range/deltaConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
Є
,Adam/gradients/Crossentropy/Sum_1_grad/rangeRange2Adam/gradients/Crossentropy/Sum_1_grad/range/start+Adam/gradients/Crossentropy/Sum_1_grad/Size2Adam/gradients/Crossentropy/Sum_1_grad/range/delta*

Tidx0*
_output_shapes
:
Т
1Adam/gradients/Crossentropy/Sum_1_grad/Fill/valueConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
value	B :
╖
+Adam/gradients/Crossentropy/Sum_1_grad/FillFill.Adam/gradients/Crossentropy/Sum_1_grad/Shape_11Adam/gradients/Crossentropy/Sum_1_grad/Fill/value*
_output_shapes
: *
T0
▒
4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitchDynamicStitch,Adam/gradients/Crossentropy/Sum_1_grad/range*Adam/gradients/Crossentropy/Sum_1_grad/mod,Adam/gradients/Crossentropy/Sum_1_grad/Shape+Adam/gradients/Crossentropy/Sum_1_grad/Fill*#
_output_shapes
:         *
T0*
N
С
0Adam/gradients/Crossentropy/Sum_1_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
╧
.Adam/gradients/Crossentropy/Sum_1_grad/MaximumMaximum4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitch0Adam/gradients/Crossentropy/Sum_1_grad/Maximum/y*
T0*#
_output_shapes
:         
╛
/Adam/gradients/Crossentropy/Sum_1_grad/floordivFloorDiv,Adam/gradients/Crossentropy/Sum_1_grad/Shape.Adam/gradients/Crossentropy/Sum_1_grad/Maximum*
_output_shapes
:*
T0
╩
.Adam/gradients/Crossentropy/Sum_1_grad/ReshapeReshape(Adam/gradients/Crossentropy/Neg_grad/Neg4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
╪
+Adam/gradients/Crossentropy/Sum_1_grad/TileTile.Adam/gradients/Crossentropy/Sum_1_grad/Reshape/Adam/gradients/Crossentropy/Sum_1_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:         
Т
*Adam/gradients/Crossentropy/mul_grad/ShapeShape	targets/Y^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
Ы
,Adam/gradients/Crossentropy/mul_grad/Shape_1ShapeCrossentropy/Log^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
ъ
:Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgsBroadcastGradientArgs*Adam/gradients/Crossentropy/mul_grad/Shape,Adam/gradients/Crossentropy/mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0
а
(Adam/gradients/Crossentropy/mul_grad/mulMul+Adam/gradients/Crossentropy/Sum_1_grad/TileCrossentropy/Log*
T0*'
_output_shapes
:         
╒
(Adam/gradients/Crossentropy/mul_grad/SumSum(Adam/gradients/Crossentropy/mul_grad/mul:Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
═
,Adam/gradients/Crossentropy/mul_grad/ReshapeReshape(Adam/gradients/Crossentropy/mul_grad/Sum*Adam/gradients/Crossentropy/mul_grad/Shape*
Tshape0*'
_output_shapes
:         *
T0
Ы
*Adam/gradients/Crossentropy/mul_grad/mul_1Mul	targets/Y+Adam/gradients/Crossentropy/Sum_1_grad/Tile*'
_output_shapes
:         *
T0
█
*Adam/gradients/Crossentropy/mul_grad/Sum_1Sum*Adam/gradients/Crossentropy/mul_grad/mul_1<Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
╙
.Adam/gradients/Crossentropy/mul_grad/Reshape_1Reshape*Adam/gradients/Crossentropy/mul_grad/Sum_1,Adam/gradients/Crossentropy/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:         
█
/Adam/gradients/Crossentropy/Log_grad/Reciprocal
ReciprocalCrossentropy/clip_by_value^Adam/moving_avg^moving_avg/^Adam/gradients/Crossentropy/mul_grad/Reshape_1*
T0*'
_output_shapes
:         
┬
(Adam/gradients/Crossentropy/Log_grad/mulMul.Adam/gradients/Crossentropy/mul_grad/Reshape_1/Adam/gradients/Crossentropy/Log_grad/Reciprocal*
T0*'
_output_shapes
:         
╡
4Adam/gradients/Crossentropy/clip_by_value_grad/ShapeShape"Crossentropy/clip_by_value/Minimum^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
Ш
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
Ю
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2Shape(Adam/gradients/Crossentropy/Log_grad/mul*
T0*
_output_shapes
:*
out_type0
Ю
:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB
 *    
т
4Adam/gradients/Crossentropy/clip_by_value_grad/zerosFill6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/Const*'
_output_shapes
:         *
T0
╒
;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqualGreaterEqual"Crossentropy/clip_by_value/MinimumCrossentropy/Cast/x^Adam/moving_avg^moving_avg*'
_output_shapes
:         *
T0
И
DAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs4Adam/gradients/Crossentropy/clip_by_value_grad/Shape6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*2
_output_shapes 
:         :         *
T0
О
5Adam/gradients/Crossentropy/clip_by_value_grad/SelectSelect;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual(Adam/gradients/Crossentropy/Log_grad/mul4Adam/gradients/Crossentropy/clip_by_value_grad/zeros*
T0*'
_output_shapes
:         
н
9Adam/gradients/Crossentropy/clip_by_value_grad/LogicalNot
LogicalNot;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual*'
_output_shapes
:         
О
7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1Select9Adam/gradients/Crossentropy/clip_by_value_grad/LogicalNot(Adam/gradients/Crossentropy/Log_grad/mul4Adam/gradients/Crossentropy/clip_by_value_grad/zeros*'
_output_shapes
:         *
T0
Ў
2Adam/gradients/Crossentropy/clip_by_value_grad/SumSum5Adam/gradients/Crossentropy/clip_by_value_grad/SelectDAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ы
6Adam/gradients/Crossentropy/clip_by_value_grad/ReshapeReshape2Adam/gradients/Crossentropy/clip_by_value_grad/Sum4Adam/gradients/Crossentropy/clip_by_value_grad/Shape*
Tshape0*'
_output_shapes
:         *
T0
№
4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_1Sum7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1FAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
р
8Adam/gradients/Crossentropy/clip_by_value_grad/Reshape_1Reshape4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_16Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
п
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ShapeShapeCrossentropy/truediv^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
а
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB 
┤
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_2Shape6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape*
out_type0*
_output_shapes
:*
T0
ж
BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB
 *    
·
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zerosFill>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_2BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:         
╦
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualCrossentropy/truedivCrossentropy/Cast_1/x^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:         
а
LAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:         :         
▒
=Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SelectSelect@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:         *
T0
║
AAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/LogicalNot
LogicalNot@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual*'
_output_shapes
:         
┤
?Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Select_1SelectAAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/LogicalNot6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:         
О
:Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SumSum=Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SelectLAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Г
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ReshapeReshape:Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape*
Tshape0*'
_output_shapes
:         *
T0
Ф
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum_1Sum?Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Select_1NAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
°
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum_1>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
е
.Adam/gradients/Crossentropy/truediv_grad/ShapeShapeFullyConnected_1/Softmax^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
Я
0Adam/gradients/Crossentropy/truediv_grad/Shape_1ShapeCrossentropy/Sum^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
Ў
>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs.Adam/gradients/Crossentropy/truediv_grad/Shape0Adam/gradients/Crossentropy/truediv_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┐
0Adam/gradients/Crossentropy/truediv_grad/RealDivRealDiv>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ReshapeCrossentropy/Sum*'
_output_shapes
:         *
T0
х
,Adam/gradients/Crossentropy/truediv_grad/SumSum0Adam/gradients/Crossentropy/truediv_grad/RealDiv>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
┘
0Adam/gradients/Crossentropy/truediv_grad/ReshapeReshape,Adam/gradients/Crossentropy/truediv_grad/Sum.Adam/gradients/Crossentropy/truediv_grad/Shape*
Tshape0*'
_output_shapes
:         *
T0
Ю
,Adam/gradients/Crossentropy/truediv_grad/NegNegFullyConnected_1/Softmax^Adam/moving_avg^moving_avg*'
_output_shapes
:         *
T0
п
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1RealDiv,Adam/gradients/Crossentropy/truediv_grad/NegCrossentropy/Sum*'
_output_shapes
:         *
T0
╡
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_2RealDiv2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1Crossentropy/Sum*'
_output_shapes
:         *
T0
┘
,Adam/gradients/Crossentropy/truediv_grad/mulMul>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Reshape2Adam/gradients/Crossentropy/truediv_grad/RealDiv_2*'
_output_shapes
:         *
T0
х
.Adam/gradients/Crossentropy/truediv_grad/Sum_1Sum,Adam/gradients/Crossentropy/truediv_grad/mul@Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
▀
2Adam/gradients/Crossentropy/truediv_grad/Reshape_1Reshape.Adam/gradients/Crossentropy/truediv_grad/Sum_10Adam/gradients/Crossentropy/truediv_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:         
б
*Adam/gradients/Crossentropy/Sum_grad/ShapeShapeFullyConnected_1/Softmax^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
К
)Adam/gradients/Crossentropy/Sum_grad/SizeConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
value	B :
Я
(Adam/gradients/Crossentropy/Sum_grad/addAdd"Crossentropy/Sum/reduction_indices)Adam/gradients/Crossentropy/Sum_grad/Size*
_output_shapes
: *
T0
к
(Adam/gradients/Crossentropy/Sum_grad/modFloorMod(Adam/gradients/Crossentropy/Sum_grad/add)Adam/gradients/Crossentropy/Sum_grad/Size*
_output_shapes
: *
T0
О
,Adam/gradients/Crossentropy/Sum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB 
С
0Adam/gradients/Crossentropy/Sum_grad/range/startConst^Adam/moving_avg^moving_avg*
value	B : *
dtype0*
_output_shapes
: 
С
0Adam/gradients/Crossentropy/Sum_grad/range/deltaConst^Adam/moving_avg^moving_avg*
value	B :*
_output_shapes
: *
dtype0
ъ
*Adam/gradients/Crossentropy/Sum_grad/rangeRange0Adam/gradients/Crossentropy/Sum_grad/range/start)Adam/gradients/Crossentropy/Sum_grad/Size0Adam/gradients/Crossentropy/Sum_grad/range/delta*

Tidx0*
_output_shapes
:
Р
/Adam/gradients/Crossentropy/Sum_grad/Fill/valueConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
▒
)Adam/gradients/Crossentropy/Sum_grad/FillFill,Adam/gradients/Crossentropy/Sum_grad/Shape_1/Adam/gradients/Crossentropy/Sum_grad/Fill/value*
T0*
_output_shapes
: 
з
2Adam/gradients/Crossentropy/Sum_grad/DynamicStitchDynamicStitch*Adam/gradients/Crossentropy/Sum_grad/range(Adam/gradients/Crossentropy/Sum_grad/mod*Adam/gradients/Crossentropy/Sum_grad/Shape)Adam/gradients/Crossentropy/Sum_grad/Fill*
N*
T0*#
_output_shapes
:         
П
.Adam/gradients/Crossentropy/Sum_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
╔
,Adam/gradients/Crossentropy/Sum_grad/MaximumMaximum2Adam/gradients/Crossentropy/Sum_grad/DynamicStitch.Adam/gradients/Crossentropy/Sum_grad/Maximum/y*#
_output_shapes
:         *
T0
╕
-Adam/gradients/Crossentropy/Sum_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Sum_grad/Shape,Adam/gradients/Crossentropy/Sum_grad/Maximum*
_output_shapes
:*
T0
╨
,Adam/gradients/Crossentropy/Sum_grad/ReshapeReshape2Adam/gradients/Crossentropy/truediv_grad/Reshape_12Adam/gradients/Crossentropy/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
╥
)Adam/gradients/Crossentropy/Sum_grad/TileTile,Adam/gradients/Crossentropy/Sum_grad/Reshape-Adam/gradients/Crossentropy/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:         
°
Adam/gradients/AddNAddN0Adam/gradients/Crossentropy/truediv_grad/Reshape)Adam/gradients/Crossentropy/Sum_grad/Tile*'
_output_shapes
:         *
N*C
_class9
75loc:@Adam/gradients/Crossentropy/truediv_grad/Reshape*
T0
Ш
0Adam/gradients/FullyConnected_1/Softmax_grad/mulMulAdam/gradients/AddNFullyConnected_1/Softmax*'
_output_shapes
:         *
T0
л
BAdam/gradients/FullyConnected_1/Softmax_grad/Sum/reduction_indicesConst^Adam/moving_avg^moving_avg*
valueB:*
dtype0*
_output_shapes
:
°
0Adam/gradients/FullyConnected_1/Softmax_grad/SumSum0Adam/gradients/FullyConnected_1/Softmax_grad/mulBAdam/gradients/FullyConnected_1/Softmax_grad/Sum/reduction_indices*#
_output_shapes
:         *
T0*
	keep_dims( *

Tidx0
к
:Adam/gradients/FullyConnected_1/Softmax_grad/Reshape/shapeConst^Adam/moving_avg^moving_avg*
_output_shapes
:*
dtype0*
valueB"       
э
4Adam/gradients/FullyConnected_1/Softmax_grad/ReshapeReshape0Adam/gradients/FullyConnected_1/Softmax_grad/Sum:Adam/gradients/FullyConnected_1/Softmax_grad/Reshape/shape*'
_output_shapes
:         *
Tshape0*
T0
┤
0Adam/gradients/FullyConnected_1/Softmax_grad/subSubAdam/gradients/AddN4Adam/gradients/FullyConnected_1/Softmax_grad/Reshape*'
_output_shapes
:         *
T0
╖
2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1Mul0Adam/gradients/FullyConnected_1/Softmax_grad/subFullyConnected_1/Softmax*'
_output_shapes
:         *
T0
╖
8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1*
_output_shapes
:*
T0*
data_formatNHWC
т
2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulMatMul2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1FullyConnected_1/W/read*
transpose_b(*
T0*(
_output_shapes
:         А*
transpose_a( 
╓
4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1MatMulDropout/cond/Merge2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1*
transpose_b( *
_output_shapes
:	А*
transpose_a(*
T0
Т
0Adam/gradients/Dropout/cond/Merge_grad/cond_gradSwitch2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulDropout/cond/pred_id*<
_output_shapes*
(:         А:         А*E
_class;
97loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul*
T0
░
Adam/gradients/SwitchSwitchFullyConnected/ReluDropout/cond/pred_id^Adam/moving_avg^moving_avg*
T0*<
_output_shapes*
(:         А:         А
m
Adam/gradients/Shape_1ShapeAdam/gradients/Switch:1*
T0*
out_type0*
_output_shapes
:
~
Adam/gradients/zeros/ConstConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB
 *    
Г
Adam/gradients/zerosFillAdam/gradients/Shape_1Adam/gradients/zeros/Const*(
_output_shapes
:         А*
T0
┬
3Adam/gradients/Dropout/cond/Switch_1_grad/cond_gradMerge0Adam/gradients/Dropout/cond/Merge_grad/cond_gradAdam/gradients/zeros**
_output_shapes
:         А: *
N*
T0
й
2Adam/gradients/Dropout/cond/dropout/mul_grad/ShapeShapeDropout/cond/dropout/div^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
н
4Adam/gradients/Dropout/cond/dropout/mul_grad/Shape_1ShapeDropout/cond/dropout/Floor^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
В
BAdam/gradients/Dropout/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2Adam/gradients/Dropout/cond/dropout/mul_grad/Shape4Adam/gradients/Dropout/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
║
0Adam/gradients/Dropout/cond/dropout/mul_grad/mulMul2Adam/gradients/Dropout/cond/Merge_grad/cond_grad:1Dropout/cond/dropout/Floor*
T0*(
_output_shapes
:         А
э
0Adam/gradients/Dropout/cond/dropout/mul_grad/SumSum0Adam/gradients/Dropout/cond/dropout/mul_grad/mulBAdam/gradients/Dropout/cond/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ц
4Adam/gradients/Dropout/cond/dropout/mul_grad/ReshapeReshape0Adam/gradients/Dropout/cond/dropout/mul_grad/Sum2Adam/gradients/Dropout/cond/dropout/mul_grad/Shape*(
_output_shapes
:         А*
Tshape0*
T0
║
2Adam/gradients/Dropout/cond/dropout/mul_grad/mul_1MulDropout/cond/dropout/div2Adam/gradients/Dropout/cond/Merge_grad/cond_grad:1*
T0*(
_output_shapes
:         А
є
2Adam/gradients/Dropout/cond/dropout/mul_grad/Sum_1Sum2Adam/gradients/Dropout/cond/dropout/mul_grad/mul_1DAdam/gradients/Dropout/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ь
6Adam/gradients/Dropout/cond/dropout/mul_grad/Reshape_1Reshape2Adam/gradients/Dropout/cond/dropout/mul_grad/Sum_14Adam/gradients/Dropout/cond/dropout/mul_grad/Shape_1*
Tshape0*(
_output_shapes
:         А*
T0
┤
2Adam/gradients/Dropout/cond/dropout/div_grad/ShapeShape#Dropout/cond/dropout/Shape/Switch:1^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
Ц
4Adam/gradients/Dropout/cond/dropout/div_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB 
В
BAdam/gradients/Dropout/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs2Adam/gradients/Dropout/cond/dropout/div_grad/Shape4Adam/gradients/Dropout/cond/dropout/div_grad/Shape_1*2
_output_shapes 
:         :         *
T0
╚
4Adam/gradients/Dropout/cond/dropout/div_grad/RealDivRealDiv4Adam/gradients/Dropout/cond/dropout/mul_grad/ReshapeDropout/cond/dropout/keep_prob*
T0*(
_output_shapes
:         А
ё
0Adam/gradients/Dropout/cond/dropout/div_grad/SumSum4Adam/gradients/Dropout/cond/dropout/div_grad/RealDivBAdam/gradients/Dropout/cond/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ц
4Adam/gradients/Dropout/cond/dropout/div_grad/ReshapeReshape0Adam/gradients/Dropout/cond/dropout/div_grad/Sum2Adam/gradients/Dropout/cond/dropout/div_grad/Shape*
T0*(
_output_shapes
:         А*
Tshape0
о
0Adam/gradients/Dropout/cond/dropout/div_grad/NegNeg#Dropout/cond/dropout/Shape/Switch:1^Adam/moving_avg^moving_avg*(
_output_shapes
:         А*
T0
╞
6Adam/gradients/Dropout/cond/dropout/div_grad/RealDiv_1RealDiv0Adam/gradients/Dropout/cond/dropout/div_grad/NegDropout/cond/dropout/keep_prob*
T0*(
_output_shapes
:         А
╠
6Adam/gradients/Dropout/cond/dropout/div_grad/RealDiv_2RealDiv6Adam/gradients/Dropout/cond/dropout/div_grad/RealDiv_1Dropout/cond/dropout/keep_prob*(
_output_shapes
:         А*
T0
╪
0Adam/gradients/Dropout/cond/dropout/div_grad/mulMul4Adam/gradients/Dropout/cond/dropout/mul_grad/Reshape6Adam/gradients/Dropout/cond/dropout/div_grad/RealDiv_2*(
_output_shapes
:         А*
T0
ё
2Adam/gradients/Dropout/cond/dropout/div_grad/Sum_1Sum0Adam/gradients/Dropout/cond/dropout/div_grad/mulDAdam/gradients/Dropout/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
┌
6Adam/gradients/Dropout/cond/dropout/div_grad/Reshape_1Reshape2Adam/gradients/Dropout/cond/dropout/div_grad/Sum_14Adam/gradients/Dropout/cond/dropout/div_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
▓
Adam/gradients/Switch_1SwitchFullyConnected/ReluDropout/cond/pred_id^Adam/moving_avg^moving_avg*<
_output_shapes*
(:         А:         А*
T0
m
Adam/gradients/Shape_2ShapeAdam/gradients/Switch_1*
out_type0*
_output_shapes
:*
T0
А
Adam/gradients/zeros_1/ConstConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB
 *    
З
Adam/gradients/zeros_1FillAdam/gradients/Shape_2Adam/gradients/zeros_1/Const*(
_output_shapes
:         А*
T0
╘
?Adam/gradients/Dropout/cond/dropout/Shape/Switch_grad/cond_gradMerge4Adam/gradients/Dropout/cond/dropout/div_grad/ReshapeAdam/gradients/zeros_1*
T0*
N**
_output_shapes
:         А: 
Ч
Adam/gradients/AddN_1AddN3Adam/gradients/Dropout/cond/Switch_1_grad/cond_grad?Adam/gradients/Dropout/cond/dropout/Shape/Switch_grad/cond_grad*(
_output_shapes
:         А*
N*F
_class<
:8loc:@Adam/gradients/Dropout/cond/Switch_1_grad/cond_grad*
T0
Ы
0Adam/gradients/FullyConnected/Relu_grad/ReluGradReluGradAdam/gradients/AddN_1FullyConnected/Relu*
T0*(
_output_shapes
:         А
┤
6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradBiasAddGrad0Adam/gradients/FullyConnected/Relu_grad/ReluGrad*
_output_shapes	
:А*
data_formatNHWC*
T0
▄
0Adam/gradients/FullyConnected/MatMul_grad/MatMulMatMul0Adam/gradients/FullyConnected/Relu_grad/ReluGradFullyConnected/W/read*
transpose_b(*(
_output_shapes
:         а*
transpose_a( *
T0
╫
2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1MatMulFullyConnected/Reshape0Adam/gradients/FullyConnected/Relu_grad/ReluGrad*
transpose_b( *
T0* 
_output_shapes
:
аА*
transpose_a(
в
0Adam/gradients/FullyConnected/Reshape_grad/ShapeShapeMaxPool2D_4/MaxPool^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
щ
2Adam/gradients/FullyConnected/Reshape_grad/ReshapeReshape0Adam/gradients/FullyConnected/MatMul_grad/MatMul0Adam/gradients/FullyConnected/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:         A 
з
3Adam/gradients/MaxPool2D_4/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_4/ReluMaxPool2D_4/MaxPool2Adam/gradients/FullyConnected/Reshape_grad/Reshape*
ksize
*0
_output_shapes
:         ─ *
data_formatNHWC*
strides
*
T0*
paddingSAME
╡
*Adam/gradients/Conv2D_4/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_4/MaxPool_grad/MaxPoolGradConv2D_4/Relu*
T0*0
_output_shapes
:         ─ 
з
0Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_4/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
: 
Ы
)Adam/gradients/Conv2D_4/Conv2D_grad/ShapeShapeMaxPool2D_3/MaxPool^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
╚
7Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_4/Conv2D_grad/ShapeConv2D_4/W/read*Adam/gradients/Conv2D_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         ─@
г
+Adam/gradients/Conv2D_4/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*%
valueB"      @       
╞
8Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D_3/MaxPool+Adam/gradients/Conv2D_4/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:@ 
м
3Adam/gradients/MaxPool2D_3/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_3/ReluMaxPool2D_3/MaxPool7Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropInput*
ksize
*
T0*
paddingSAME*0
_output_shapes
:         ╘@*
data_formatNHWC*
strides

╡
*Adam/gradients/Conv2D_3/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_3/MaxPool_grad/MaxPoolGradConv2D_3/Relu*0
_output_shapes
:         ╘@*
T0
з
0Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_3/Relu_grad/ReluGrad*
_output_shapes
:@*
T0*
data_formatNHWC
Ы
)Adam/gradients/Conv2D_3/Conv2D_grad/ShapeShapeMaxPool2D_2/MaxPool^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
╔
7Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_3/Conv2D_grad/ShapeConv2D_3/W/read*Adam/gradients/Conv2D_3/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
T0*
paddingSAME*1
_output_shapes
:         ╘А*
data_formatNHWC*
strides

г
+Adam/gradients/Conv2D_3/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*%
valueB"      А   @   *
_output_shapes
:*
dtype0
╟
8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D_2/MaxPool+Adam/gradients/Conv2D_3/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:А@
н
3Adam/gradients/MaxPool2D_2/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_2/ReluMaxPool2D_2/MaxPool7Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropInput*
paddingSAME*
data_formatNHWC*
strides
*
T0*1
_output_shapes
:         д?А*
ksize

╢
*Adam/gradients/Conv2D_2/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_2/MaxPool_grad/MaxPoolGradConv2D_2/Relu*
T0*1
_output_shapes
:         д?А
и
0Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_2/Relu_grad/ReluGrad*
_output_shapes	
:А*
T0*
data_formatNHWC
Ы
)Adam/gradients/Conv2D_2/Conv2D_grad/ShapeShapeMaxPool2D_1/MaxPool^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
╚
7Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_2/Conv2D_grad/ShapeConv2D_2/W/read*Adam/gradients/Conv2D_2/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
T0*
paddingSAME*0
_output_shapes
:         д?@*
data_formatNHWC*
strides

г
+Adam/gradients/Conv2D_2/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
:*
dtype0*%
valueB"      @   А   
╟
8Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D_1/MaxPool+Adam/gradients/Conv2D_2/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_2/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*'
_output_shapes
:@А*
data_formatNHWC*
strides
*
T0*
paddingSAME
н
3Adam/gradients/MaxPool2D_1/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_1/ReluMaxPool2D_1/MaxPool7Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropInput*1
_output_shapes
:         ┤╝@*
paddingSAME*
ksize
*
data_formatNHWC*
strides
*
T0
╢
*Adam/gradients/Conv2D_1/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_1/MaxPool_grad/MaxPoolGradConv2D_1/Relu*
T0*1
_output_shapes
:         ┤╝@
з
0Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_1/Relu_grad/ReluGrad*
_output_shapes
:@*
data_formatNHWC*
T0
Щ
)Adam/gradients/Conv2D_1/Conv2D_grad/ShapeShapeMaxPool2D/MaxPool^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
╔
7Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_1/Conv2D_grad/ShapeConv2D_1/W/read*Adam/gradients/Conv2D_1/Relu_grad/ReluGrad*1
_output_shapes
:         ┤╝ *
paddingSAME*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
T0
г
+Adam/gradients/Conv2D_1/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*%
valueB"          @   
─
8Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D/MaxPool+Adam/gradients/Conv2D_1/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_1/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
T0*
paddingSAME*&
_output_shapes
: @*
data_formatNHWC*
strides

з
1Adam/gradients/MaxPool2D/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D/ReluMaxPool2D/MaxPool7Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropInput*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*1
_output_shapes
:         До 
░
(Adam/gradients/Conv2D/Relu_grad/ReluGradReluGrad1Adam/gradients/MaxPool2D/MaxPool_grad/MaxPoolGradConv2D/Relu*1
_output_shapes
:         До *
T0
г
.Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGradBiasAddGrad(Adam/gradients/Conv2D/Relu_grad/ReluGrad*
_output_shapes
: *
T0*
data_formatNHWC
Н
'Adam/gradients/Conv2D/Conv2D_grad/ShapeShapeinput/X^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
┴
5Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput'Adam/gradients/Conv2D/Conv2D_grad/ShapeConv2D/W/read(Adam/gradients/Conv2D/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         До
б
)Adam/gradients/Conv2D/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
:*
dtype0*%
valueB"             
┤
6Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinput/X)Adam/gradients/Conv2D/Conv2D_grad/Shape_1(Adam/gradients/Conv2D/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*&
_output_shapes
: *
data_formatNHWC*
strides
*
T0*
paddingSAME
┼
Adam/global_norm/L2LossL2Loss6Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: *I
_class?
=;loc:@Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter*
T0
╖
Adam/global_norm/L2Loss_1L2Loss.Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *A
_class7
53loc:@Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*
T0
╦
Adam/global_norm/L2Loss_2L2Loss8Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter*
T0*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter
╗
Adam/global_norm/L2Loss_3L2Loss0Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad*
T0
╦
Adam/global_norm/L2Loss_4L2Loss8Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*
T0*K
_classA
?=loc:@Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: 
╗
Adam/global_norm/L2Loss_5L2Loss0Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad
╦
Adam/global_norm/L2Loss_6L2Loss8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter*
T0*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter
╗
Adam/global_norm/L2Loss_7L2Loss0Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad
╦
Adam/global_norm/L2Loss_8L2Loss8Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter*K
_classA
?=loc:@Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: *
T0
╗
Adam/global_norm/L2Loss_9L2Loss0Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad*
T0*C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
└
Adam/global_norm/L2Loss_10L2Loss2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes
: *E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
T0
╚
Adam/global_norm/L2Loss_11L2Loss6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
T0
─
Adam/global_norm/L2Loss_12L2Loss4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes
: 
╠
Adam/global_norm/L2Loss_13L2Loss8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
╘
Adam/global_norm/stackPackAdam/global_norm/L2LossAdam/global_norm/L2Loss_1Adam/global_norm/L2Loss_2Adam/global_norm/L2Loss_3Adam/global_norm/L2Loss_4Adam/global_norm/L2Loss_5Adam/global_norm/L2Loss_6Adam/global_norm/L2Loss_7Adam/global_norm/L2Loss_8Adam/global_norm/L2Loss_9Adam/global_norm/L2Loss_10Adam/global_norm/L2Loss_11Adam/global_norm/L2Loss_12Adam/global_norm/L2Loss_13*
N*
T0*
_output_shapes
:*

axis 

Adam/global_norm/ConstConst^Adam/moving_avg^moving_avg*
_output_shapes
:*
dtype0*
valueB: 
Й
Adam/global_norm/SumSumAdam/global_norm/stackAdam/global_norm/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
|
Adam/global_norm/Const_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB
 *   @
l
Adam/global_norm/mulMulAdam/global_norm/SumAdam/global_norm/Const_1*
_output_shapes
: *
T0
[
Adam/global_norm/global_normSqrtAdam/global_norm/mul*
_output_shapes
: *
T0
Ж
"Adam/clip_by_global_norm/truediv/xConst^Adam/moving_avg^moving_avg*
valueB
 *  А?*
_output_shapes
: *
dtype0
О
 Adam/clip_by_global_norm/truedivRealDiv"Adam/clip_by_global_norm/truediv/xAdam/global_norm/global_norm*
T0*
_output_shapes
: 
В
Adam/clip_by_global_norm/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *  А?*
dtype0*
_output_shapes
: 
И
$Adam/clip_by_global_norm/truediv_1/yConst^Adam/moving_avg^moving_avg*
valueB
 *  а@*
dtype0*
_output_shapes
: 
Ф
"Adam/clip_by_global_norm/truediv_1RealDivAdam/clip_by_global_norm/Const$Adam/clip_by_global_norm/truediv_1/y*
_output_shapes
: *
T0
Т
 Adam/clip_by_global_norm/MinimumMinimum Adam/clip_by_global_norm/truediv"Adam/clip_by_global_norm/truediv_1*
_output_shapes
: *
T0
В
Adam/clip_by_global_norm/mul/xConst^Adam/moving_avg^moving_avg*
valueB
 *  а@*
_output_shapes
: *
dtype0
Ж
Adam/clip_by_global_norm/mulMulAdam/clip_by_global_norm/mul/x Adam/clip_by_global_norm/Minimum*
T0*
_output_shapes
: 
ў
Adam/clip_by_global_norm/mul_1Mul6Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*I
_class?
=;loc:@Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: *
T0
▄
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0IdentityAdam/clip_by_global_norm/mul_1*
T0*I
_class?
=;loc:@Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
█
Adam/clip_by_global_norm/mul_2Mul.Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
_output_shapes
: *A
_class7
53loc:@Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*
T0
╚
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1IdentityAdam/clip_by_global_norm/mul_2*
T0*A
_class7
53loc:@Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
√
Adam/clip_by_global_norm/mul_3Mul8Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*
T0*&
_output_shapes
: @*K
_classA
?=loc:@Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter
▐
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2IdentityAdam/clip_by_global_norm/mul_3*
T0*&
_output_shapes
: @*K
_classA
?=loc:@Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter
▀
Adam/clip_by_global_norm/mul_4Mul0Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*
_output_shapes
:@*C
_class9
75loc:@Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad
╩
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3IdentityAdam/clip_by_global_norm/mul_4*C
_class9
75loc:@Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
№
Adam/clip_by_global_norm/mul_5Mul8Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*K
_classA
?=loc:@Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@А*
T0
▀
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_4IdentityAdam/clip_by_global_norm/mul_5*
T0*K
_classA
?=loc:@Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@А
р
Adam/clip_by_global_norm/mul_6Mul0Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
_output_shapes	
:А*C
_class9
75loc:@Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
T0
╦
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5IdentityAdam/clip_by_global_norm/mul_6*
T0*C
_class9
75loc:@Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
№
Adam/clip_by_global_norm/mul_7Mul8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*
T0*K
_classA
?=loc:@Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:А@
▀
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_6IdentityAdam/clip_by_global_norm/mul_7*
T0*K
_classA
?=loc:@Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:А@
▀
Adam/clip_by_global_norm/mul_8Mul0Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*C
_class9
75loc:@Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
╩
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_7IdentityAdam/clip_by_global_norm/mul_8*
_output_shapes
:@*C
_class9
75loc:@Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad*
T0
√
Adam/clip_by_global_norm/mul_9Mul8Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*K
_classA
?=loc:@Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:@ *
T0
▐
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_8IdentityAdam/clip_by_global_norm/mul_9*K
_classA
?=loc:@Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:@ *
T0
р
Adam/clip_by_global_norm/mul_10Mul0Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad
╦
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_9IdentityAdam/clip_by_global_norm/mul_10*
T0*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad
ъ
Adam/clip_by_global_norm/mul_11Mul2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0* 
_output_shapes
:
аА*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1
╘
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_10IdentityAdam/clip_by_global_norm/mul_11*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1* 
_output_shapes
:
аА
э
Adam/clip_by_global_norm/mul_12Mul6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
╙
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_11IdentityAdam/clip_by_global_norm/mul_12*
T0*
_output_shapes	
:А*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad
э
Adam/clip_by_global_norm/mul_13Mul4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
_output_shapes
:	А*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
T0
╒
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_12IdentityAdam/clip_by_global_norm/mul_13*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes
:	А
Ё
Adam/clip_by_global_norm/mul_14Mul8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
_output_shapes
:*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
T0
╘
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_13IdentityAdam/clip_by_global_norm/mul_14*
T0*
_output_shapes
:*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad
А
Adam/beta1_power/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *fff?*
_class
loc:@Conv2D/W
С
Adam/beta1_power
VariableV2*
	container *
shared_name *
dtype0*
shape: *
_output_shapes
: *
_class
loc:@Conv2D/W
║
Adam/beta1_power/AssignAssignAdam/beta1_powerAdam/beta1_power/initial_value*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(
q
Adam/beta1_power/readIdentityAdam/beta1_power*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0
А
Adam/beta2_power/initial_valueConst*
valueB
 *w╛?*
_class
loc:@Conv2D/W*
_output_shapes
: *
dtype0
С
Adam/beta2_power
VariableV2*
shared_name *
_class
loc:@Conv2D/W*
	container *
shape: *
dtype0*
_output_shapes
: 
║
Adam/beta2_power/AssignAssignAdam/beta2_powerAdam/beta2_power/initial_value*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*
_output_shapes
: 
q
Adam/beta2_power/readIdentityAdam/beta2_power*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0
q
Adam/zeros_1Const*&
_output_shapes
: *
dtype0*%
valueB *    
о
Conv2D/W/Adam
VariableV2*
shared_name *
_class
loc:@Conv2D/W*
	container *
shape: *
dtype0*&
_output_shapes
: 
▓
Conv2D/W/Adam/AssignAssignConv2D/W/AdamAdam/zeros_1*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
{
Conv2D/W/Adam/readIdentityConv2D/W/Adam*
T0*
_class
loc:@Conv2D/W*&
_output_shapes
: 
q
Adam/zeros_2Const*
dtype0*&
_output_shapes
: *%
valueB *    
░
Conv2D/W/Adam_1
VariableV2*
shape: *&
_output_shapes
: *
shared_name *
_class
loc:@Conv2D/W*
dtype0*
	container 
╢
Conv2D/W/Adam_1/AssignAssignConv2D/W/Adam_1Adam/zeros_2*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W

Conv2D/W/Adam_1/readIdentityConv2D/W/Adam_1*
T0*
_class
loc:@Conv2D/W*&
_output_shapes
: 
Y
Adam/zeros_3Const*
_output_shapes
: *
dtype0*
valueB *    
Ц
Conv2D/b/Adam
VariableV2*
	container *
shared_name *
dtype0*
shape: *
_output_shapes
: *
_class
loc:@Conv2D/b
ж
Conv2D/b/Adam/AssignAssignConv2D/b/AdamAdam/zeros_3*
use_locking(*
T0*
_class
loc:@Conv2D/b*
validate_shape(*
_output_shapes
: 
o
Conv2D/b/Adam/readIdentityConv2D/b/Adam*
T0*
_class
loc:@Conv2D/b*
_output_shapes
: 
Y
Adam/zeros_4Const*
valueB *    *
_output_shapes
: *
dtype0
Ш
Conv2D/b/Adam_1
VariableV2*
_class
loc:@Conv2D/b*
_output_shapes
: *
shape: *
dtype0*
shared_name *
	container 
к
Conv2D/b/Adam_1/AssignAssignConv2D/b/Adam_1Adam/zeros_4*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/b
s
Conv2D/b/Adam_1/readIdentityConv2D/b/Adam_1*
_output_shapes
: *
_class
loc:@Conv2D/b*
T0
q
Adam/zeros_5Const*
dtype0*&
_output_shapes
: @*%
valueB @*    
▓
Conv2D_1/W/Adam
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_1/W*
shared_name *&
_output_shapes
: @*
shape: @
╕
Conv2D_1/W/Adam/AssignAssignConv2D_1/W/AdamAdam/zeros_5*&
_output_shapes
: @*
validate_shape(*
_class
loc:@Conv2D_1/W*
T0*
use_locking(
Б
Conv2D_1/W/Adam/readIdentityConv2D_1/W/Adam*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W*
T0
q
Adam/zeros_6Const*&
_output_shapes
: @*
dtype0*%
valueB @*    
┤
Conv2D_1/W/Adam_1
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
shape: @*
shared_name 
╝
Conv2D_1/W/Adam_1/AssignAssignConv2D_1/W/Adam_1Adam/zeros_6*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
Е
Conv2D_1/W/Adam_1/readIdentityConv2D_1/W/Adam_1*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W*
T0
Y
Adam/zeros_7Const*
dtype0*
_output_shapes
:@*
valueB@*    
Ъ
Conv2D_1/b/Adam
VariableV2*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
shape:@*
dtype0*
shared_name *
	container 
м
Conv2D_1/b/Adam/AssignAssignConv2D_1/b/AdamAdam/zeros_7*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
u
Conv2D_1/b/Adam/readIdentityConv2D_1/b/Adam*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
Y
Adam/zeros_8Const*
dtype0*
_output_shapes
:@*
valueB@*    
Ь
Conv2D_1/b/Adam_1
VariableV2*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
shape:@*
dtype0*
shared_name *
	container 
░
Conv2D_1/b/Adam_1/AssignAssignConv2D_1/b/Adam_1Adam/zeros_8*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
y
Conv2D_1/b/Adam_1/readIdentityConv2D_1/b/Adam_1*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
s
Adam/zeros_9Const*
dtype0*'
_output_shapes
:@А*&
valueB@А*    
┤
Conv2D_2/W/Adam
VariableV2*
shared_name *
shape:@А*'
_output_shapes
:@А*
_class
loc:@Conv2D_2/W*
dtype0*
	container 
╣
Conv2D_2/W/Adam/AssignAssignConv2D_2/W/AdamAdam/zeros_9*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:@А*
_class
loc:@Conv2D_2/W
В
Conv2D_2/W/Adam/readIdentityConv2D_2/W/Adam*
T0*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А
t
Adam/zeros_10Const*
dtype0*'
_output_shapes
:@А*&
valueB@А*    
╢
Conv2D_2/W/Adam_1
VariableV2*
shape:@А*'
_output_shapes
:@А*
shared_name *
_class
loc:@Conv2D_2/W*
dtype0*
	container 
╛
Conv2D_2/W/Adam_1/AssignAssignConv2D_2/W/Adam_1Adam/zeros_10*'
_output_shapes
:@А*
validate_shape(*
_class
loc:@Conv2D_2/W*
T0*
use_locking(
Ж
Conv2D_2/W/Adam_1/readIdentityConv2D_2/W/Adam_1*
T0*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А
\
Adam/zeros_11Const*
_output_shapes	
:А*
dtype0*
valueBА*    
Ь
Conv2D_2/b/Adam
VariableV2*
_class
loc:@Conv2D_2/b*
_output_shapes	
:А*
shape:А*
dtype0*
shared_name *
	container 
о
Conv2D_2/b/Adam/AssignAssignConv2D_2/b/AdamAdam/zeros_11*
_output_shapes	
:А*
validate_shape(*
_class
loc:@Conv2D_2/b*
T0*
use_locking(
v
Conv2D_2/b/Adam/readIdentityConv2D_2/b/Adam*
T0*
_class
loc:@Conv2D_2/b*
_output_shapes	
:А
\
Adam/zeros_12Const*
_output_shapes	
:А*
dtype0*
valueBА*    
Ю
Conv2D_2/b/Adam_1
VariableV2*
shared_name *
_class
loc:@Conv2D_2/b*
	container *
shape:А*
dtype0*
_output_shapes	
:А
▓
Conv2D_2/b/Adam_1/AssignAssignConv2D_2/b/Adam_1Adam/zeros_12*
_class
loc:@Conv2D_2/b*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(
z
Conv2D_2/b/Adam_1/readIdentityConv2D_2/b/Adam_1*
_class
loc:@Conv2D_2/b*
_output_shapes	
:А*
T0
t
Adam/zeros_13Const*&
valueBА@*    *
dtype0*'
_output_shapes
:А@
┤
Conv2D_3/W/Adam
VariableV2*
	container *
shared_name *
dtype0*
shape:А@*'
_output_shapes
:А@*
_class
loc:@Conv2D_3/W
║
Conv2D_3/W/Adam/AssignAssignConv2D_3/W/AdamAdam/zeros_13*
use_locking(*
T0*
_class
loc:@Conv2D_3/W*
validate_shape(*'
_output_shapes
:А@
В
Conv2D_3/W/Adam/readIdentityConv2D_3/W/Adam*
_class
loc:@Conv2D_3/W*'
_output_shapes
:А@*
T0
t
Adam/zeros_14Const*
dtype0*'
_output_shapes
:А@*&
valueBА@*    
╢
Conv2D_3/W/Adam_1
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_3/W*'
_output_shapes
:А@*
shape:А@*
shared_name 
╛
Conv2D_3/W/Adam_1/AssignAssignConv2D_3/W/Adam_1Adam/zeros_14*
use_locking(*
T0*
_class
loc:@Conv2D_3/W*
validate_shape(*'
_output_shapes
:А@
Ж
Conv2D_3/W/Adam_1/readIdentityConv2D_3/W/Adam_1*'
_output_shapes
:А@*
_class
loc:@Conv2D_3/W*
T0
Z
Adam/zeros_15Const*
valueB@*    *
dtype0*
_output_shapes
:@
Ъ
Conv2D_3/b/Adam
VariableV2*
_output_shapes
:@*
dtype0*
shape:@*
	container *
_class
loc:@Conv2D_3/b*
shared_name 
н
Conv2D_3/b/Adam/AssignAssignConv2D_3/b/AdamAdam/zeros_15*
use_locking(*
T0*
_class
loc:@Conv2D_3/b*
validate_shape(*
_output_shapes
:@
u
Conv2D_3/b/Adam/readIdentityConv2D_3/b/Adam*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
Z
Adam/zeros_16Const*
_output_shapes
:@*
dtype0*
valueB@*    
Ь
Conv2D_3/b/Adam_1
VariableV2*
shared_name *
_class
loc:@Conv2D_3/b*
	container *
shape:@*
dtype0*
_output_shapes
:@
▒
Conv2D_3/b/Adam_1/AssignAssignConv2D_3/b/Adam_1Adam/zeros_16*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_3/b*
T0*
use_locking(
y
Conv2D_3/b/Adam_1/readIdentityConv2D_3/b/Adam_1*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
r
Adam/zeros_17Const*
dtype0*&
_output_shapes
:@ *%
valueB@ *    
▓
Conv2D_4/W/Adam
VariableV2*&
_output_shapes
:@ *
dtype0*
shape:@ *
	container *
_class
loc:@Conv2D_4/W*
shared_name 
╣
Conv2D_4/W/Adam/AssignAssignConv2D_4/W/AdamAdam/zeros_17*
use_locking(*
T0*
_class
loc:@Conv2D_4/W*
validate_shape(*&
_output_shapes
:@ 
Б
Conv2D_4/W/Adam/readIdentityConv2D_4/W/Adam*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
r
Adam/zeros_18Const*&
_output_shapes
:@ *
dtype0*%
valueB@ *    
┤
Conv2D_4/W/Adam_1
VariableV2*
shape:@ *&
_output_shapes
:@ *
shared_name *
_class
loc:@Conv2D_4/W*
dtype0*
	container 
╜
Conv2D_4/W/Adam_1/AssignAssignConv2D_4/W/Adam_1Adam/zeros_18*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
Е
Conv2D_4/W/Adam_1/readIdentityConv2D_4/W/Adam_1*
T0*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ 
Z
Adam/zeros_19Const*
dtype0*
_output_shapes
: *
valueB *    
Ъ
Conv2D_4/b/Adam
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_4/b*
shared_name *
_output_shapes
: *
shape: 
н
Conv2D_4/b/Adam/AssignAssignConv2D_4/b/AdamAdam/zeros_19*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D_4/b*
T0*
use_locking(
u
Conv2D_4/b/Adam/readIdentityConv2D_4/b/Adam*
T0*
_class
loc:@Conv2D_4/b*
_output_shapes
: 
Z
Adam/zeros_20Const*
valueB *    *
_output_shapes
: *
dtype0
Ь
Conv2D_4/b/Adam_1
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_4/b*
shared_name *
_output_shapes
: *
shape: 
▒
Conv2D_4/b/Adam_1/AssignAssignConv2D_4/b/Adam_1Adam/zeros_20*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D_4/b*
T0*
use_locking(
y
Conv2D_4/b/Adam_1/readIdentityConv2D_4/b/Adam_1*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
T0
f
Adam/zeros_21Const*
dtype0* 
_output_shapes
:
аА*
valueB
аА*    
▓
FullyConnected/W/Adam
VariableV2*
	container *
dtype0*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
shape:
аА*
shared_name 
┼
FullyConnected/W/Adam/AssignAssignFullyConnected/W/AdamAdam/zeros_21*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0*
validate_shape(*
use_locking(
Н
FullyConnected/W/Adam/readIdentityFullyConnected/W/Adam*
T0* 
_output_shapes
:
аА*#
_class
loc:@FullyConnected/W
f
Adam/zeros_22Const* 
_output_shapes
:
аА*
dtype0*
valueB
аА*    
┤
FullyConnected/W/Adam_1
VariableV2*
	container *
dtype0*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
shape:
аА*
shared_name 
╔
FullyConnected/W/Adam_1/AssignAssignFullyConnected/W/Adam_1Adam/zeros_22*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(* 
_output_shapes
:
аА
С
FullyConnected/W/Adam_1/readIdentityFullyConnected/W/Adam_1*
T0*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА
\
Adam/zeros_23Const*
_output_shapes	
:А*
dtype0*
valueBА*    
и
FullyConnected/b/Adam
VariableV2*
	container *
dtype0*#
_class
loc:@FullyConnected/b*
_output_shapes	
:А*
shape:А*
shared_name 
└
FullyConnected/b/Adam/AssignAssignFullyConnected/b/AdamAdam/zeros_23*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:А
И
FullyConnected/b/Adam/readIdentityFullyConnected/b/Adam*#
_class
loc:@FullyConnected/b*
_output_shapes	
:А*
T0
\
Adam/zeros_24Const*
_output_shapes	
:А*
dtype0*
valueBА*    
к
FullyConnected/b/Adam_1
VariableV2*
	container *
shared_name *
dtype0*
shape:А*
_output_shapes	
:А*#
_class
loc:@FullyConnected/b
─
FullyConnected/b/Adam_1/AssignAssignFullyConnected/b/Adam_1Adam/zeros_24*#
_class
loc:@FullyConnected/b*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(
М
FullyConnected/b/Adam_1/readIdentityFullyConnected/b/Adam_1*
_output_shapes	
:А*#
_class
loc:@FullyConnected/b*
T0
d
Adam/zeros_25Const*
valueB	А*    *
dtype0*
_output_shapes
:	А
┤
FullyConnected_1/W/Adam
VariableV2*
	container *
dtype0*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	А*
shape:	А*
shared_name 
╩
FullyConnected_1/W/Adam/AssignAssignFullyConnected_1/W/AdamAdam/zeros_25*
_output_shapes
:	А*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
Т
FullyConnected_1/W/Adam/readIdentityFullyConnected_1/W/Adam*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	А
d
Adam/zeros_26Const*
_output_shapes
:	А*
dtype0*
valueB	А*    
╢
FullyConnected_1/W/Adam_1
VariableV2*
_output_shapes
:	А*
dtype0*
shape:	А*
	container *%
_class
loc:@FullyConnected_1/W*
shared_name 
╬
 FullyConnected_1/W/Adam_1/AssignAssignFullyConnected_1/W/Adam_1Adam/zeros_26*
_output_shapes
:	А*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
Ц
FullyConnected_1/W/Adam_1/readIdentityFullyConnected_1/W/Adam_1*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	А
Z
Adam/zeros_27Const*
dtype0*
_output_shapes
:*
valueB*    
к
FullyConnected_1/b/Adam
VariableV2*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
shape:*
dtype0*
shared_name *
	container 
┼
FullyConnected_1/b/Adam/AssignAssignFullyConnected_1/b/AdamAdam/zeros_27*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
Н
FullyConnected_1/b/Adam/readIdentityFullyConnected_1/b/Adam*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b*
T0
Z
Adam/zeros_28Const*
_output_shapes
:*
dtype0*
valueB*    
м
FullyConnected_1/b/Adam_1
VariableV2*
shape:*
_output_shapes
:*
shared_name *%
_class
loc:@FullyConnected_1/b*
dtype0*
	container 
╔
 FullyConnected_1/b/Adam_1/AssignAssignFullyConnected_1/b/Adam_1Adam/zeros_28*
_output_shapes
:*
validate_shape(*%
_class
loc:@FullyConnected_1/b*
T0*
use_locking(
С
FullyConnected_1/b/Adam_1/readIdentityFullyConnected_1/b/Adam_1*
T0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
g
"Adam/apply_grad_op_0/learning_rateConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
_
Adam/apply_grad_op_0/beta1Const*
valueB
 *fff?*
_output_shapes
: *
dtype0
_
Adam/apply_grad_op_0/beta2Const*
_output_shapes
: *
dtype0*
valueB
 *w╛?
a
Adam/apply_grad_op_0/epsilonConst*
_output_shapes
: *
dtype0*
valueB
 *w╠+2
д
.Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam	ApplyAdamConv2D/WConv2D/W/AdamConv2D/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0*
use_locking( 
Ш
.Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam	ApplyAdamConv2D/bConv2D/b/AdamConv2D/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1*
use_locking( *
T0*
_class
loc:@Conv2D/b*
_output_shapes
: 
о
0Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam	ApplyAdam
Conv2D_1/WConv2D_1/W/AdamConv2D_1/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
use_locking( 
в
0Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam	ApplyAdam
Conv2D_1/bConv2D_1/b/AdamConv2D_1/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0*
use_locking( 
п
0Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam	ApplyAdam
Conv2D_2/WConv2D_2/W/AdamConv2D_2/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_4*
use_locking( *
T0*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А
г
0Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam	ApplyAdam
Conv2D_2/bConv2D_2/b/AdamConv2D_2/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5*
use_locking( *
T0*
_output_shapes	
:А*
_class
loc:@Conv2D_2/b
п
0Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam	ApplyAdam
Conv2D_3/WConv2D_3/W/AdamConv2D_3/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_6*
use_locking( *
T0*'
_output_shapes
:А@*
_class
loc:@Conv2D_3/W
в
0Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam	ApplyAdam
Conv2D_3/bConv2D_3/b/AdamConv2D_3/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_7*
use_locking( *
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
о
0Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam	ApplyAdam
Conv2D_4/WConv2D_4/W/AdamConv2D_4/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_8*
use_locking( *
T0*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ 
в
0Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam	ApplyAdam
Conv2D_4/bConv2D_4/b/AdamConv2D_4/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_9*
_output_shapes
: *
_class
loc:@Conv2D_4/b*
T0*
use_locking( 
╟
6Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam	ApplyAdamFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_10*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0*
use_locking( 
┬
6Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam	ApplyAdamFullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_11*
_output_shapes	
:А*#
_class
loc:@FullyConnected/b*
T0*
use_locking( 
╨
8Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam	ApplyAdamFullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_12*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	А*
T0*
use_locking( 
╦
8Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam	ApplyAdamFullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_13*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b*
T0*
use_locking( 
Є
Adam/apply_grad_op_0/mulMulAdam/beta1_power/readAdam/apply_grad_op_0/beta1/^Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam/^Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam*
_output_shapes
: *
_class
loc:@Conv2D/W*
T0
╕
Adam/apply_grad_op_0/AssignAssignAdam/beta1_powerAdam/apply_grad_op_0/mul*
use_locking( *
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
Ї
Adam/apply_grad_op_0/mul_1MulAdam/beta2_power/readAdam/apply_grad_op_0/beta2/^Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam/^Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam*
_output_shapes
: *
_class
loc:@Conv2D/W*
T0
╝
Adam/apply_grad_op_0/Assign_1AssignAdam/beta2_powerAdam/apply_grad_op_0/mul_1*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking( 
├
Adam/apply_grad_op_0/updateNoOp/^Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam/^Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam^Adam/apply_grad_op_0/Assign^Adam/apply_grad_op_0/Assign_1
Я
Adam/apply_grad_op_0/valueConst^Adam/apply_grad_op_0/update*
valueB
 *  А?* 
_class
loc:@Training_step*
_output_shapes
: *
dtype0
в
Adam/apply_grad_op_0	AssignAddTraining_stepAdam/apply_grad_op_0/value*
_output_shapes
: * 
_class
loc:@Training_step*
T0*
use_locking( 
]
Adam/Merge/MergeSummaryMergeSummaryLossAdam/Loss/raw*
N*
_output_shapes
: 
.
Adam/train_op_0NoOp^Adam/apply_grad_op_0
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
т
save/SaveV2/tensor_namesConst*Х
valueЛBИ3BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBConv2D/WBConv2D/W/AdamBConv2D/W/Adam_1BConv2D/bBConv2D/b/AdamBConv2D/b/Adam_1B
Conv2D_1/WBConv2D_1/W/AdamBConv2D_1/W/Adam_1B
Conv2D_1/bBConv2D_1/b/AdamBConv2D_1/b/Adam_1B
Conv2D_2/WBConv2D_2/W/AdamBConv2D_2/W/Adam_1B
Conv2D_2/bBConv2D_2/b/AdamBConv2D_2/b/Adam_1B
Conv2D_3/WBConv2D_3/W/AdamBConv2D_3/W/Adam_1B
Conv2D_3/bBConv2D_3/b/AdamBConv2D_3/b/Adam_1B
Conv2D_4/WBConv2D_4/W/AdamBConv2D_4/W/Adam_1B
Conv2D_4/bBConv2D_4/b/AdamBConv2D_4/b/Adam_1BCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
_output_shapes
:3*
dtype0
╔
save/SaveV2/shape_and_slicesConst*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:3*
dtype0
Ь
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerConv2D/WConv2D/W/AdamConv2D/W/Adam_1Conv2D/bConv2D/b/AdamConv2D/b/Adam_1
Conv2D_1/WConv2D_1/W/AdamConv2D_1/W/Adam_1
Conv2D_1/bConv2D_1/b/AdamConv2D_1/b/Adam_1
Conv2D_2/WConv2D_2/W/AdamConv2D_2/W/Adam_1
Conv2D_2/bConv2D_2/b/AdamConv2D_2/b/Adam_1
Conv2D_3/WConv2D_3/W/AdamConv2D_3/W/Adam_1
Conv2D_3/bConv2D_3/b/AdamConv2D_3/b/Adam_1
Conv2D_4/WConv2D_4/W/AdamConv2D_4/W/Adam_1
Conv2D_4/bConv2D_4/b/AdamConv2D_4/b/Adam_1Crossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*A
dtypes7
523

}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_output_shapes
: *
_class
loc:@save/Const
|
save/RestoreV2/tensor_namesConst*-
value$B"BAccuracy/Mean/moving_avg*
dtype0*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Р
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
╢
save/AssignAssignAccuracy/Mean/moving_avgsave/RestoreV2*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *+
_class!
loc:@Accuracy/Mean/moving_avg
v
save/RestoreV2_1/tensor_namesConst*
dtype0*
_output_shapes
:*%
valueBBAdam/beta1_power
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ц
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
в
save/Assign_1AssignAdam/beta1_powersave/RestoreV2_1*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
v
save/RestoreV2_2/tensor_namesConst*%
valueBBAdam/beta2_power*
_output_shapes
:*
dtype0
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ц
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
в
save/Assign_2AssignAdam/beta2_powersave/RestoreV2_2*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
n
save/RestoreV2_3/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBConv2D/W
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
к
save/Assign_3AssignConv2D/Wsave/RestoreV2_3*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
s
save/RestoreV2_4/tensor_namesConst*"
valueBBConv2D/W/Adam*
_output_shapes
:*
dtype0
j
!save/RestoreV2_4/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ц
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
п
save/Assign_4AssignConv2D/W/Adamsave/RestoreV2_4*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
u
save/RestoreV2_5/tensor_namesConst*$
valueBBConv2D/W/Adam_1*
_output_shapes
:*
dtype0
j
!save/RestoreV2_5/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ц
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
▒
save/Assign_5AssignConv2D/W/Adam_1save/RestoreV2_5*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
n
save/RestoreV2_6/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBConv2D/b
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ц
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
Ю
save/Assign_6AssignConv2D/bsave/RestoreV2_6*
use_locking(*
T0*
_class
loc:@Conv2D/b*
validate_shape(*
_output_shapes
: 
s
save/RestoreV2_7/tensor_namesConst*
_output_shapes
:*
dtype0*"
valueBBConv2D/b/Adam
j
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
г
save/Assign_7AssignConv2D/b/Adamsave/RestoreV2_7*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/b*
T0*
use_locking(
u
save/RestoreV2_8/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D/b/Adam_1
j
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
е
save/Assign_8AssignConv2D/b/Adam_1save/RestoreV2_8*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
p
save/RestoreV2_9/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_1/W
j
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
о
save/Assign_9Assign
Conv2D_1/Wsave/RestoreV2_9*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
v
save/RestoreV2_10/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_1/W/Adam
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
╡
save/Assign_10AssignConv2D_1/W/Adamsave/RestoreV2_10*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(
x
save/RestoreV2_11/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_1/W/Adam_1
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
_output_shapes
:*
dtypes
2
╖
save/Assign_11AssignConv2D_1/W/Adam_1save/RestoreV2_11*&
_output_shapes
: @*
validate_shape(*
_class
loc:@Conv2D_1/W*
T0*
use_locking(
q
save/RestoreV2_12/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_1/b
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
д
save/Assign_12Assign
Conv2D_1/bsave/RestoreV2_12*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
v
save/RestoreV2_13/tensor_namesConst*$
valueBBConv2D_1/b/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
й
save/Assign_13AssignConv2D_1/b/Adamsave/RestoreV2_13*
use_locking(*
T0*
_class
loc:@Conv2D_1/b*
validate_shape(*
_output_shapes
:@
x
save/RestoreV2_14/tensor_namesConst*&
valueBBConv2D_1/b/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_14/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
л
save/Assign_14AssignConv2D_1/b/Adam_1save/RestoreV2_14*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
q
save/RestoreV2_15/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_2/W
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
_output_shapes
:*
dtypes
2
▒
save/Assign_15Assign
Conv2D_2/Wsave/RestoreV2_15*
use_locking(*
T0*
_class
loc:@Conv2D_2/W*
validate_shape(*'
_output_shapes
:@А
v
save/RestoreV2_16/tensor_namesConst*$
valueBBConv2D_2/W/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
╢
save/Assign_16AssignConv2D_2/W/Adamsave/RestoreV2_16*'
_output_shapes
:@А*
validate_shape(*
_class
loc:@Conv2D_2/W*
T0*
use_locking(
x
save/RestoreV2_17/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_2/W/Adam_1
k
"save/RestoreV2_17/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
╕
save/Assign_17AssignConv2D_2/W/Adam_1save/RestoreV2_17*'
_output_shapes
:@А*
validate_shape(*
_class
loc:@Conv2D_2/W*
T0*
use_locking(
q
save/RestoreV2_18/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_2/b
k
"save/RestoreV2_18/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save/Assign_18Assign
Conv2D_2/bsave/RestoreV2_18*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*
_class
loc:@Conv2D_2/b
v
save/RestoreV2_19/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_2/b/Adam
k
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
_output_shapes
:*
dtypes
2
к
save/Assign_19AssignConv2D_2/b/Adamsave/RestoreV2_19*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*
_class
loc:@Conv2D_2/b
x
save/RestoreV2_20/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_2/b/Adam_1
k
"save/RestoreV2_20/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
м
save/Assign_20AssignConv2D_2/b/Adam_1save/RestoreV2_20*
_output_shapes	
:А*
validate_shape(*
_class
loc:@Conv2D_2/b*
T0*
use_locking(
q
save/RestoreV2_21/tensor_namesConst*
valueBB
Conv2D_3/W*
_output_shapes
:*
dtype0
k
"save/RestoreV2_21/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
_output_shapes
:*
dtypes
2
▒
save/Assign_21Assign
Conv2D_3/Wsave/RestoreV2_21*
use_locking(*
T0*
_class
loc:@Conv2D_3/W*
validate_shape(*'
_output_shapes
:А@
v
save/RestoreV2_22/tensor_namesConst*$
valueBBConv2D_3/W/Adam*
_output_shapes
:*
dtype0
k
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
╢
save/Assign_22AssignConv2D_3/W/Adamsave/RestoreV2_22*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:А@*
_class
loc:@Conv2D_3/W
x
save/RestoreV2_23/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_3/W/Adam_1
k
"save/RestoreV2_23/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
╕
save/Assign_23AssignConv2D_3/W/Adam_1save/RestoreV2_23*'
_output_shapes
:А@*
validate_shape(*
_class
loc:@Conv2D_3/W*
T0*
use_locking(
q
save/RestoreV2_24/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_3/b
k
"save/RestoreV2_24/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
д
save/Assign_24Assign
Conv2D_3/bsave/RestoreV2_24*
use_locking(*
T0*
_class
loc:@Conv2D_3/b*
validate_shape(*
_output_shapes
:@
v
save/RestoreV2_25/tensor_namesConst*$
valueBBConv2D_3/b/Adam*
_output_shapes
:*
dtype0
k
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save/Assign_25AssignConv2D_3/b/Adamsave/RestoreV2_25*
use_locking(*
T0*
_class
loc:@Conv2D_3/b*
validate_shape(*
_output_shapes
:@
x
save/RestoreV2_26/tensor_namesConst*&
valueBBConv2D_3/b/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_26/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
л
save/Assign_26AssignConv2D_3/b/Adam_1save/RestoreV2_26*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
q
save/RestoreV2_27/tensor_namesConst*
valueBB
Conv2D_4/W*
_output_shapes
:*
dtype0
k
"save/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
_output_shapes
:*
dtypes
2
░
save/Assign_27Assign
Conv2D_4/Wsave/RestoreV2_27*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0*
validate_shape(*
use_locking(
v
save/RestoreV2_28/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_4/W/Adam
k
"save/RestoreV2_28/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
_output_shapes
:*
dtypes
2
╡
save/Assign_28AssignConv2D_4/W/Adamsave/RestoreV2_28*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0*
validate_shape(*
use_locking(
x
save/RestoreV2_29/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_4/W/Adam_1
k
"save/RestoreV2_29/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_29	RestoreV2
save/Constsave/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes
:
╖
save/Assign_29AssignConv2D_4/W/Adam_1save/RestoreV2_29*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
q
save/RestoreV2_30/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_4/b
k
"save/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_30	RestoreV2
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
д
save/Assign_30Assign
Conv2D_4/bsave/RestoreV2_30*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
v
save/RestoreV2_31/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_4/b/Adam
k
"save/RestoreV2_31/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_31	RestoreV2
save/Constsave/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
_output_shapes
:*
dtypes
2
й
save/Assign_31AssignConv2D_4/b/Adamsave/RestoreV2_31*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
x
save/RestoreV2_32/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_4/b/Adam_1
k
"save/RestoreV2_32/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_32	RestoreV2
save/Constsave/RestoreV2_32/tensor_names"save/RestoreV2_32/shape_and_slices*
_output_shapes
:*
dtypes
2
л
save/Assign_32AssignConv2D_4/b/Adam_1save/RestoreV2_32*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
Г
save/RestoreV2_33/tensor_namesConst*1
value(B&BCrossentropy/Mean/moving_avg*
_output_shapes
:*
dtype0
k
"save/RestoreV2_33/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_33	RestoreV2
save/Constsave/RestoreV2_33/tensor_names"save/RestoreV2_33/shape_and_slices*
_output_shapes
:*
dtypes
2
─
save/Assign_33AssignCrossentropy/Mean/moving_avgsave/RestoreV2_33*
_output_shapes
: *
validate_shape(*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
T0*
use_locking(
w
save/RestoreV2_34/tensor_namesConst*%
valueBBFullyConnected/W*
dtype0*
_output_shapes
:
k
"save/RestoreV2_34/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_34	RestoreV2
save/Constsave/RestoreV2_34/tensor_names"save/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes
:
╢
save/Assign_34AssignFullyConnected/Wsave/RestoreV2_34*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
аА*#
_class
loc:@FullyConnected/W
|
save/RestoreV2_35/tensor_namesConst**
value!BBFullyConnected/W/Adam*
_output_shapes
:*
dtype0
k
"save/RestoreV2_35/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_35	RestoreV2
save/Constsave/RestoreV2_35/tensor_names"save/RestoreV2_35/shape_and_slices*
_output_shapes
:*
dtypes
2
╗
save/Assign_35AssignFullyConnected/W/Adamsave/RestoreV2_35*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0*
validate_shape(*
use_locking(
~
save/RestoreV2_36/tensor_namesConst*,
value#B!BFullyConnected/W/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_36/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_36	RestoreV2
save/Constsave/RestoreV2_36/tensor_names"save/RestoreV2_36/shape_and_slices*
dtypes
2*
_output_shapes
:
╜
save/Assign_36AssignFullyConnected/W/Adam_1save/RestoreV2_36*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
аА*#
_class
loc:@FullyConnected/W
w
save/RestoreV2_37/tensor_namesConst*%
valueBBFullyConnected/b*
dtype0*
_output_shapes
:
k
"save/RestoreV2_37/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_37	RestoreV2
save/Constsave/RestoreV2_37/tensor_names"save/RestoreV2_37/shape_and_slices*
_output_shapes
:*
dtypes
2
▒
save/Assign_37AssignFullyConnected/bsave/RestoreV2_37*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*#
_class
loc:@FullyConnected/b
|
save/RestoreV2_38/tensor_namesConst*
dtype0*
_output_shapes
:**
value!BBFullyConnected/b/Adam
k
"save/RestoreV2_38/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_38	RestoreV2
save/Constsave/RestoreV2_38/tensor_names"save/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
╢
save/Assign_38AssignFullyConnected/b/Adamsave/RestoreV2_38*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:А
~
save/RestoreV2_39/tensor_namesConst*,
value#B!BFullyConnected/b/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_39/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_39	RestoreV2
save/Constsave/RestoreV2_39/tensor_names"save/RestoreV2_39/shape_and_slices*
_output_shapes
:*
dtypes
2
╕
save/Assign_39AssignFullyConnected/b/Adam_1save/RestoreV2_39*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:А
y
save/RestoreV2_40/tensor_namesConst*'
valueBBFullyConnected_1/W*
dtype0*
_output_shapes
:
k
"save/RestoreV2_40/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_40	RestoreV2
save/Constsave/RestoreV2_40/tensor_names"save/RestoreV2_40/shape_and_slices*
_output_shapes
:*
dtypes
2
╣
save/Assign_40AssignFullyConnected_1/Wsave/RestoreV2_40*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	А*%
_class
loc:@FullyConnected_1/W
~
save/RestoreV2_41/tensor_namesConst*
_output_shapes
:*
dtype0*,
value#B!BFullyConnected_1/W/Adam
k
"save/RestoreV2_41/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_41	RestoreV2
save/Constsave/RestoreV2_41/tensor_names"save/RestoreV2_41/shape_and_slices*
_output_shapes
:*
dtypes
2
╛
save/Assign_41AssignFullyConnected_1/W/Adamsave/RestoreV2_41*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	А
А
save/RestoreV2_42/tensor_namesConst*.
value%B#BFullyConnected_1/W/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_42/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_42	RestoreV2
save/Constsave/RestoreV2_42/tensor_names"save/RestoreV2_42/shape_and_slices*
dtypes
2*
_output_shapes
:
└
save/Assign_42AssignFullyConnected_1/W/Adam_1save/RestoreV2_42*
_output_shapes
:	А*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
y
save/RestoreV2_43/tensor_namesConst*
_output_shapes
:*
dtype0*'
valueBBFullyConnected_1/b
k
"save/RestoreV2_43/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_43	RestoreV2
save/Constsave/RestoreV2_43/tensor_names"save/RestoreV2_43/shape_and_slices*
_output_shapes
:*
dtypes
2
┤
save/Assign_43AssignFullyConnected_1/bsave/RestoreV2_43*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
~
save/RestoreV2_44/tensor_namesConst*,
value#B!BFullyConnected_1/b/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_44/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_44	RestoreV2
save/Constsave/RestoreV2_44/tensor_names"save/RestoreV2_44/shape_and_slices*
dtypes
2*
_output_shapes
:
╣
save/Assign_44AssignFullyConnected_1/b/Adamsave/RestoreV2_44*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
А
save/RestoreV2_45/tensor_namesConst*.
value%B#BFullyConnected_1/b/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_45/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_45	RestoreV2
save/Constsave/RestoreV2_45/tensor_names"save/RestoreV2_45/shape_and_slices*
_output_shapes
:*
dtypes
2
╗
save/Assign_45AssignFullyConnected_1/b/Adam_1save/RestoreV2_45*
_output_shapes
:*
validate_shape(*%
_class
loc:@FullyConnected_1/b*
T0*
use_locking(
r
save/RestoreV2_46/tensor_namesConst*
_output_shapes
:*
dtype0* 
valueBBGlobal_Step
k
"save/RestoreV2_46/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_46	RestoreV2
save/Constsave/RestoreV2_46/tensor_names"save/RestoreV2_46/shape_and_slices*
_output_shapes
:*
dtypes
2
в
save/Assign_46AssignGlobal_Stepsave/RestoreV2_46*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Global_Step
t
save/RestoreV2_47/tensor_namesConst*"
valueBBTraining_step*
_output_shapes
:*
dtype0
k
"save/RestoreV2_47/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_47	RestoreV2
save/Constsave/RestoreV2_47/tensor_names"save/RestoreV2_47/shape_and_slices*
_output_shapes
:*
dtypes
2
ж
save/Assign_47AssignTraining_stepsave/RestoreV2_47*
use_locking(*
T0* 
_class
loc:@Training_step*
validate_shape(*
_output_shapes
: 
r
save/RestoreV2_48/tensor_namesConst*
dtype0*
_output_shapes
:* 
valueBBis_training
k
"save/RestoreV2_48/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_48	RestoreV2
save/Constsave/RestoreV2_48/tensor_names"save/RestoreV2_48/shape_and_slices*
_output_shapes
:*
dtypes
2

в
save/Assign_48Assignis_trainingsave/RestoreV2_48*
use_locking(*
T0
*
_class
loc:@is_training*
validate_shape(*
_output_shapes
: 
n
save/RestoreV2_49/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBval_acc
k
"save/RestoreV2_49/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_49	RestoreV2
save/Constsave/RestoreV2_49/tensor_names"save/RestoreV2_49/shape_and_slices*
_output_shapes
:*
dtypes
2
Ъ
save/Assign_49Assignval_accsave/RestoreV2_49*
use_locking(*
T0*
_class
loc:@val_acc*
validate_shape(*
_output_shapes
: 
o
save/RestoreV2_50/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBval_loss
k
"save/RestoreV2_50/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_50	RestoreV2
save/Constsave/RestoreV2_50/tensor_names"save/RestoreV2_50/shape_and_slices*
dtypes
2*
_output_shapes
:
Ь
save/Assign_50Assignval_losssave/RestoreV2_50*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@val_loss
я
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_50
R
save_1/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0
ф
save_1/SaveV2/tensor_namesConst*Х
valueЛBИ3BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBConv2D/WBConv2D/W/AdamBConv2D/W/Adam_1BConv2D/bBConv2D/b/AdamBConv2D/b/Adam_1B
Conv2D_1/WBConv2D_1/W/AdamBConv2D_1/W/Adam_1B
Conv2D_1/bBConv2D_1/b/AdamBConv2D_1/b/Adam_1B
Conv2D_2/WBConv2D_2/W/AdamBConv2D_2/W/Adam_1B
Conv2D_2/bBConv2D_2/b/AdamBConv2D_2/b/Adam_1B
Conv2D_3/WBConv2D_3/W/AdamBConv2D_3/W/Adam_1B
Conv2D_3/bBConv2D_3/b/AdamBConv2D_3/b/Adam_1B
Conv2D_4/WBConv2D_4/W/AdamBConv2D_4/W/Adam_1B
Conv2D_4/bBConv2D_4/b/AdamBConv2D_4/b/Adam_1BCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
dtype0*
_output_shapes
:3
╦
save_1/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:3*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
д
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerConv2D/WConv2D/W/AdamConv2D/W/Adam_1Conv2D/bConv2D/b/AdamConv2D/b/Adam_1
Conv2D_1/WConv2D_1/W/AdamConv2D_1/W/Adam_1
Conv2D_1/bConv2D_1/b/AdamConv2D_1/b/Adam_1
Conv2D_2/WConv2D_2/W/AdamConv2D_2/W/Adam_1
Conv2D_2/bConv2D_2/b/AdamConv2D_2/b/Adam_1
Conv2D_3/WConv2D_3/W/AdamConv2D_3/W/Adam_1
Conv2D_3/bConv2D_3/b/AdamConv2D_3/b/Adam_1
Conv2D_4/WConv2D_4/W/AdamConv2D_4/W/Adam_1
Conv2D_4/bConv2D_4/b/AdamConv2D_4/b/Adam_1Crossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*A
dtypes7
523

Е
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
_class
loc:@save_1/Const*
_output_shapes
: *
T0
~
save_1/RestoreV2/tensor_namesConst*
_output_shapes
:*
dtype0*-
value$B"BAccuracy/Mean/moving_avg
j
!save_1/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ш
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
║
save_1/AssignAssignAccuracy/Mean/moving_avgsave_1/RestoreV2*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *+
_class!
loc:@Accuracy/Mean/moving_avg
x
save_1/RestoreV2_1/tensor_namesConst*%
valueBBAdam/beta1_power*
_output_shapes
:*
dtype0
l
#save_1/RestoreV2_1/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ю
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
ж
save_1/Assign_1AssignAdam/beta1_powersave_1/RestoreV2_1*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(
x
save_1/RestoreV2_2/tensor_namesConst*%
valueBBAdam/beta2_power*
_output_shapes
:*
dtype0
l
#save_1/RestoreV2_2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
ж
save_1/Assign_2AssignAdam/beta2_powersave_1/RestoreV2_2*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
p
save_1/RestoreV2_3/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBConv2D/W
l
#save_1/RestoreV2_3/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ю
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
о
save_1/Assign_3AssignConv2D/Wsave_1/RestoreV2_3*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
u
save_1/RestoreV2_4/tensor_namesConst*
_output_shapes
:*
dtype0*"
valueBBConv2D/W/Adam
l
#save_1/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
│
save_1/Assign_4AssignConv2D/W/Adamsave_1/RestoreV2_4*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*&
_output_shapes
: 
w
save_1/RestoreV2_5/tensor_namesConst*$
valueBBConv2D/W/Adam_1*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_5/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
╡
save_1/Assign_5AssignConv2D/W/Adam_1save_1/RestoreV2_5*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(
p
save_1/RestoreV2_6/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBConv2D/b
l
#save_1/RestoreV2_6/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
в
save_1/Assign_6AssignConv2D/bsave_1/RestoreV2_6*
use_locking(*
T0*
_class
loc:@Conv2D/b*
validate_shape(*
_output_shapes
: 
u
save_1/RestoreV2_7/tensor_namesConst*
_output_shapes
:*
dtype0*"
valueBBConv2D/b/Adam
l
#save_1/RestoreV2_7/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
з
save_1/Assign_7AssignConv2D/b/Adamsave_1/RestoreV2_7*
use_locking(*
T0*
_class
loc:@Conv2D/b*
validate_shape(*
_output_shapes
: 
w
save_1/RestoreV2_8/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D/b/Adam_1
l
#save_1/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
й
save_1/Assign_8AssignConv2D/b/Adam_1save_1/RestoreV2_8*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/b
r
save_1/RestoreV2_9/tensor_namesConst*
valueBB
Conv2D_1/W*
_output_shapes
:*
dtype0
l
#save_1/RestoreV2_9/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ю
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
_output_shapes
:*
dtypes
2
▓
save_1/Assign_9Assign
Conv2D_1/Wsave_1/RestoreV2_9*
use_locking(*
T0*
_class
loc:@Conv2D_1/W*
validate_shape(*&
_output_shapes
: @
x
 save_1/RestoreV2_10/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_1/W/Adam
m
$save_1/RestoreV2_10/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
╣
save_1/Assign_10AssignConv2D_1/W/Adamsave_1/RestoreV2_10*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(
z
 save_1/RestoreV2_11/tensor_namesConst*&
valueBBConv2D_1/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_11/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
╗
save_1/Assign_11AssignConv2D_1/W/Adam_1save_1/RestoreV2_11*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(
s
 save_1/RestoreV2_12/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_1/b
m
$save_1/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
и
save_1/Assign_12Assign
Conv2D_1/bsave_1/RestoreV2_12*
use_locking(*
T0*
_class
loc:@Conv2D_1/b*
validate_shape(*
_output_shapes
:@
x
 save_1/RestoreV2_13/tensor_namesConst*$
valueBBConv2D_1/b/Adam*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
н
save_1/Assign_13AssignConv2D_1/b/Adamsave_1/RestoreV2_13*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
z
 save_1/RestoreV2_14/tensor_namesConst*&
valueBBConv2D_1/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
_output_shapes
:*
dtypes
2
п
save_1/Assign_14AssignConv2D_1/b/Adam_1save_1/RestoreV2_14*
use_locking(*
T0*
_class
loc:@Conv2D_1/b*
validate_shape(*
_output_shapes
:@
s
 save_1/RestoreV2_15/tensor_namesConst*
valueBB
Conv2D_2/W*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_15/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
_output_shapes
:*
dtypes
2
╡
save_1/Assign_15Assign
Conv2D_2/Wsave_1/RestoreV2_15*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А*
T0*
validate_shape(*
use_locking(
x
 save_1/RestoreV2_16/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_2/W/Adam
m
$save_1/RestoreV2_16/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save_1/Assign_16AssignConv2D_2/W/Adamsave_1/RestoreV2_16*
use_locking(*
T0*
_class
loc:@Conv2D_2/W*
validate_shape(*'
_output_shapes
:@А
z
 save_1/RestoreV2_17/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_2/W/Adam_1
m
$save_1/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
_output_shapes
:*
dtypes
2
╝
save_1/Assign_17AssignConv2D_2/W/Adam_1save_1/RestoreV2_17*
use_locking(*
T0*
_class
loc:@Conv2D_2/W*
validate_shape(*'
_output_shapes
:@А
s
 save_1/RestoreV2_18/tensor_namesConst*
valueBB
Conv2D_2/b*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save_1/Assign_18Assign
Conv2D_2/bsave_1/RestoreV2_18*
_output_shapes	
:А*
validate_shape(*
_class
loc:@Conv2D_2/b*
T0*
use_locking(
x
 save_1/RestoreV2_19/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_2/b/Adam
m
$save_1/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
о
save_1/Assign_19AssignConv2D_2/b/Adamsave_1/RestoreV2_19*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*
_class
loc:@Conv2D_2/b
z
 save_1/RestoreV2_20/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_2/b/Adam_1
m
$save_1/RestoreV2_20/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
_output_shapes
:*
dtypes
2
░
save_1/Assign_20AssignConv2D_2/b/Adam_1save_1/RestoreV2_20*
use_locking(*
T0*
_class
loc:@Conv2D_2/b*
validate_shape(*
_output_shapes	
:А
s
 save_1/RestoreV2_21/tensor_namesConst*
valueBB
Conv2D_3/W*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_21/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
╡
save_1/Assign_21Assign
Conv2D_3/Wsave_1/RestoreV2_21*
_class
loc:@Conv2D_3/W*'
_output_shapes
:А@*
T0*
validate_shape(*
use_locking(
x
 save_1/RestoreV2_22/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_3/W/Adam
m
$save_1/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save_1/Assign_22AssignConv2D_3/W/Adamsave_1/RestoreV2_22*'
_output_shapes
:А@*
validate_shape(*
_class
loc:@Conv2D_3/W*
T0*
use_locking(
z
 save_1/RestoreV2_23/tensor_namesConst*&
valueBBConv2D_3/W/Adam_1*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_23/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_1/RestoreV2_23	RestoreV2save_1/Const save_1/RestoreV2_23/tensor_names$save_1/RestoreV2_23/shape_and_slices*
_output_shapes
:*
dtypes
2
╝
save_1/Assign_23AssignConv2D_3/W/Adam_1save_1/RestoreV2_23*'
_output_shapes
:А@*
validate_shape(*
_class
loc:@Conv2D_3/W*
T0*
use_locking(
s
 save_1/RestoreV2_24/tensor_namesConst*
valueBB
Conv2D_3/b*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_24/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_24	RestoreV2save_1/Const save_1/RestoreV2_24/tensor_names$save_1/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
и
save_1/Assign_24Assign
Conv2D_3/bsave_1/RestoreV2_24*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
x
 save_1/RestoreV2_25/tensor_namesConst*$
valueBBConv2D_3/b/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_25/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_1/RestoreV2_25	RestoreV2save_1/Const save_1/RestoreV2_25/tensor_names$save_1/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
н
save_1/Assign_25AssignConv2D_3/b/Adamsave_1/RestoreV2_25*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_3/b*
T0*
use_locking(
z
 save_1/RestoreV2_26/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_3/b/Adam_1
m
$save_1/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_26	RestoreV2save_1/Const save_1/RestoreV2_26/tensor_names$save_1/RestoreV2_26/shape_and_slices*
_output_shapes
:*
dtypes
2
п
save_1/Assign_26AssignConv2D_3/b/Adam_1save_1/RestoreV2_26*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_3/b*
T0*
use_locking(
s
 save_1/RestoreV2_27/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_4/W
m
$save_1/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_27	RestoreV2save_1/Const save_1/RestoreV2_27/tensor_names$save_1/RestoreV2_27/shape_and_slices*
_output_shapes
:*
dtypes
2
┤
save_1/Assign_27Assign
Conv2D_4/Wsave_1/RestoreV2_27*
use_locking(*
T0*
_class
loc:@Conv2D_4/W*
validate_shape(*&
_output_shapes
:@ 
x
 save_1/RestoreV2_28/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_4/W/Adam
m
$save_1/RestoreV2_28/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_28	RestoreV2save_1/Const save_1/RestoreV2_28/tensor_names$save_1/RestoreV2_28/shape_and_slices*
_output_shapes
:*
dtypes
2
╣
save_1/Assign_28AssignConv2D_4/W/Adamsave_1/RestoreV2_28*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0*
validate_shape(*
use_locking(
z
 save_1/RestoreV2_29/tensor_namesConst*&
valueBBConv2D_4/W/Adam_1*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_29/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_1/RestoreV2_29	RestoreV2save_1/Const save_1/RestoreV2_29/tensor_names$save_1/RestoreV2_29/shape_and_slices*
_output_shapes
:*
dtypes
2
╗
save_1/Assign_29AssignConv2D_4/W/Adam_1save_1/RestoreV2_29*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
s
 save_1/RestoreV2_30/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_4/b
m
$save_1/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_30	RestoreV2save_1/Const save_1/RestoreV2_30/tensor_names$save_1/RestoreV2_30/shape_and_slices*
_output_shapes
:*
dtypes
2
и
save_1/Assign_30Assign
Conv2D_4/bsave_1/RestoreV2_30*
use_locking(*
T0*
_class
loc:@Conv2D_4/b*
validate_shape(*
_output_shapes
: 
x
 save_1/RestoreV2_31/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_4/b/Adam
m
$save_1/RestoreV2_31/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_31	RestoreV2save_1/Const save_1/RestoreV2_31/tensor_names$save_1/RestoreV2_31/shape_and_slices*
_output_shapes
:*
dtypes
2
н
save_1/Assign_31AssignConv2D_4/b/Adamsave_1/RestoreV2_31*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
z
 save_1/RestoreV2_32/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_4/b/Adam_1
m
$save_1/RestoreV2_32/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_32	RestoreV2save_1/Const save_1/RestoreV2_32/tensor_names$save_1/RestoreV2_32/shape_and_slices*
dtypes
2*
_output_shapes
:
п
save_1/Assign_32AssignConv2D_4/b/Adam_1save_1/RestoreV2_32*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
Е
 save_1/RestoreV2_33/tensor_namesConst*1
value(B&BCrossentropy/Mean/moving_avg*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_33/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_33	RestoreV2save_1/Const save_1/RestoreV2_33/tensor_names$save_1/RestoreV2_33/shape_and_slices*
_output_shapes
:*
dtypes
2
╚
save_1/Assign_33AssignCrossentropy/Mean/moving_avgsave_1/RestoreV2_33*
use_locking(*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
y
 save_1/RestoreV2_34/tensor_namesConst*%
valueBBFullyConnected/W*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_34/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_34	RestoreV2save_1/Const save_1/RestoreV2_34/tensor_names$save_1/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save_1/Assign_34AssignFullyConnected/Wsave_1/RestoreV2_34*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(* 
_output_shapes
:
аА
~
 save_1/RestoreV2_35/tensor_namesConst*
_output_shapes
:*
dtype0**
value!BBFullyConnected/W/Adam
m
$save_1/RestoreV2_35/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_35	RestoreV2save_1/Const save_1/RestoreV2_35/tensor_names$save_1/RestoreV2_35/shape_and_slices*
dtypes
2*
_output_shapes
:
┐
save_1/Assign_35AssignFullyConnected/W/Adamsave_1/RestoreV2_35*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(* 
_output_shapes
:
аА
А
 save_1/RestoreV2_36/tensor_namesConst*
_output_shapes
:*
dtype0*,
value#B!BFullyConnected/W/Adam_1
m
$save_1/RestoreV2_36/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_36	RestoreV2save_1/Const save_1/RestoreV2_36/tensor_names$save_1/RestoreV2_36/shape_and_slices*
dtypes
2*
_output_shapes
:
┴
save_1/Assign_36AssignFullyConnected/W/Adam_1save_1/RestoreV2_36* 
_output_shapes
:
аА*
validate_shape(*#
_class
loc:@FullyConnected/W*
T0*
use_locking(
y
 save_1/RestoreV2_37/tensor_namesConst*
_output_shapes
:*
dtype0*%
valueBBFullyConnected/b
m
$save_1/RestoreV2_37/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_37	RestoreV2save_1/Const save_1/RestoreV2_37/tensor_names$save_1/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
╡
save_1/Assign_37AssignFullyConnected/bsave_1/RestoreV2_37*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:А
~
 save_1/RestoreV2_38/tensor_namesConst*
dtype0*
_output_shapes
:**
value!BBFullyConnected/b/Adam
m
$save_1/RestoreV2_38/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_1/RestoreV2_38	RestoreV2save_1/Const save_1/RestoreV2_38/tensor_names$save_1/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save_1/Assign_38AssignFullyConnected/b/Adamsave_1/RestoreV2_38*
_output_shapes	
:А*
validate_shape(*#
_class
loc:@FullyConnected/b*
T0*
use_locking(
А
 save_1/RestoreV2_39/tensor_namesConst*,
value#B!BFullyConnected/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_39/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_39	RestoreV2save_1/Const save_1/RestoreV2_39/tensor_names$save_1/RestoreV2_39/shape_and_slices*
dtypes
2*
_output_shapes
:
╝
save_1/Assign_39AssignFullyConnected/b/Adam_1save_1/RestoreV2_39*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:А
{
 save_1/RestoreV2_40/tensor_namesConst*'
valueBBFullyConnected_1/W*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_40/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_40	RestoreV2save_1/Const save_1/RestoreV2_40/tensor_names$save_1/RestoreV2_40/shape_and_slices*
_output_shapes
:*
dtypes
2
╜
save_1/Assign_40AssignFullyConnected_1/Wsave_1/RestoreV2_40*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	А
А
 save_1/RestoreV2_41/tensor_namesConst*
_output_shapes
:*
dtype0*,
value#B!BFullyConnected_1/W/Adam
m
$save_1/RestoreV2_41/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_41	RestoreV2save_1/Const save_1/RestoreV2_41/tensor_names$save_1/RestoreV2_41/shape_and_slices*
_output_shapes
:*
dtypes
2
┬
save_1/Assign_41AssignFullyConnected_1/W/Adamsave_1/RestoreV2_41*
_output_shapes
:	А*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
В
 save_1/RestoreV2_42/tensor_namesConst*
dtype0*
_output_shapes
:*.
value%B#BFullyConnected_1/W/Adam_1
m
$save_1/RestoreV2_42/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_1/RestoreV2_42	RestoreV2save_1/Const save_1/RestoreV2_42/tensor_names$save_1/RestoreV2_42/shape_and_slices*
dtypes
2*
_output_shapes
:
─
save_1/Assign_42AssignFullyConnected_1/W/Adam_1save_1/RestoreV2_42*
_output_shapes
:	А*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
{
 save_1/RestoreV2_43/tensor_namesConst*'
valueBBFullyConnected_1/b*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_43/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_1/RestoreV2_43	RestoreV2save_1/Const save_1/RestoreV2_43/tensor_names$save_1/RestoreV2_43/shape_and_slices*
_output_shapes
:*
dtypes
2
╕
save_1/Assign_43AssignFullyConnected_1/bsave_1/RestoreV2_43*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
А
 save_1/RestoreV2_44/tensor_namesConst*,
value#B!BFullyConnected_1/b/Adam*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_44/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_44	RestoreV2save_1/Const save_1/RestoreV2_44/tensor_names$save_1/RestoreV2_44/shape_and_slices*
dtypes
2*
_output_shapes
:
╜
save_1/Assign_44AssignFullyConnected_1/b/Adamsave_1/RestoreV2_44*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
В
 save_1/RestoreV2_45/tensor_namesConst*.
value%B#BFullyConnected_1/b/Adam_1*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_45/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_45	RestoreV2save_1/Const save_1/RestoreV2_45/tensor_names$save_1/RestoreV2_45/shape_and_slices*
dtypes
2*
_output_shapes
:
┐
save_1/Assign_45AssignFullyConnected_1/b/Adam_1save_1/RestoreV2_45*
_output_shapes
:*
validate_shape(*%
_class
loc:@FullyConnected_1/b*
T0*
use_locking(
t
 save_1/RestoreV2_46/tensor_namesConst*
_output_shapes
:*
dtype0* 
valueBBGlobal_Step
m
$save_1/RestoreV2_46/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_46	RestoreV2save_1/Const save_1/RestoreV2_46/tensor_names$save_1/RestoreV2_46/shape_and_slices*
dtypes
2*
_output_shapes
:
ж
save_1/Assign_46AssignGlobal_Stepsave_1/RestoreV2_46*
_output_shapes
: *
validate_shape(*
_class
loc:@Global_Step*
T0*
use_locking(
v
 save_1/RestoreV2_47/tensor_namesConst*
_output_shapes
:*
dtype0*"
valueBBTraining_step
m
$save_1/RestoreV2_47/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_47	RestoreV2save_1/Const save_1/RestoreV2_47/tensor_names$save_1/RestoreV2_47/shape_and_slices*
dtypes
2*
_output_shapes
:
к
save_1/Assign_47AssignTraining_stepsave_1/RestoreV2_47*
use_locking(*
validate_shape(*
T0*
_output_shapes
: * 
_class
loc:@Training_step
t
 save_1/RestoreV2_48/tensor_namesConst* 
valueBBis_training*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_48/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_48	RestoreV2save_1/Const save_1/RestoreV2_48/tensor_names$save_1/RestoreV2_48/shape_and_slices*
dtypes
2
*
_output_shapes
:
ж
save_1/Assign_48Assignis_trainingsave_1/RestoreV2_48*
_class
loc:@is_training*
_output_shapes
: *
T0
*
validate_shape(*
use_locking(
p
 save_1/RestoreV2_49/tensor_namesConst*
valueBBval_acc*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_49/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_1/RestoreV2_49	RestoreV2save_1/Const save_1/RestoreV2_49/tensor_names$save_1/RestoreV2_49/shape_and_slices*
_output_shapes
:*
dtypes
2
Ю
save_1/Assign_49Assignval_accsave_1/RestoreV2_49*
_output_shapes
: *
validate_shape(*
_class
loc:@val_acc*
T0*
use_locking(
q
 save_1/RestoreV2_50/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBval_loss
m
$save_1/RestoreV2_50/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_50	RestoreV2save_1/Const save_1/RestoreV2_50/tensor_names$save_1/RestoreV2_50/shape_and_slices*
_output_shapes
:*
dtypes
2
а
save_1/Assign_50Assignval_losssave_1/RestoreV2_50*
_class
loc:@val_loss*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
╫
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_50
R
save_2/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
д
save_2/SaveV2/tensor_namesConst*
_output_shapes
:*
dtype0*╒
value╦B╚BConv2D/WBConv2D/bB
Conv2D_1/WB
Conv2D_1/bB
Conv2D_2/WB
Conv2D_2/bB
Conv2D_3/WB
Conv2D_3/bB
Conv2D_4/WB
Conv2D_4/bBFullyConnected/WBFullyConnected/bBFullyConnected_1/WBFullyConnected_1/b
Б
save_2/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0
┐
save_2/SaveV2SaveV2save_2/Constsave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesConv2D/WConv2D/b
Conv2D_1/W
Conv2D_1/b
Conv2D_2/W
Conv2D_2/b
Conv2D_3/W
Conv2D_3/b
Conv2D_4/W
Conv2D_4/bFullyConnected/WFullyConnected/bFullyConnected_1/WFullyConnected_1/b*
dtypes
2
Е
save_2/control_dependencyIdentitysave_2/Const^save_2/SaveV2*
_class
loc:@save_2/Const*
_output_shapes
: *
T0
n
save_2/RestoreV2/tensor_namesConst*
valueBBConv2D/W*
_output_shapes
:*
dtype0
j
!save_2/RestoreV2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ш
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
к
save_2/AssignAssignConv2D/Wsave_2/RestoreV2*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(
p
save_2/RestoreV2_1/tensor_namesConst*
valueBBConv2D/b*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ю
save_2/RestoreV2_1	RestoreV2save_2/Constsave_2/RestoreV2_1/tensor_names#save_2/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
в
save_2/Assign_1AssignConv2D/bsave_2/RestoreV2_1*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
r
save_2/RestoreV2_2/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_1/W
l
#save_2/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_2/RestoreV2_2	RestoreV2save_2/Constsave_2/RestoreV2_2/tensor_names#save_2/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
▓
save_2/Assign_2Assign
Conv2D_1/Wsave_2/RestoreV2_2*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(
r
save_2/RestoreV2_3/tensor_namesConst*
valueBB
Conv2D_1/b*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_2/RestoreV2_3	RestoreV2save_2/Constsave_2/RestoreV2_3/tensor_names#save_2/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
ж
save_2/Assign_3Assign
Conv2D_1/bsave_2/RestoreV2_3*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_1/b*
T0*
use_locking(
r
save_2/RestoreV2_4/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_2/W
l
#save_2/RestoreV2_4/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_2/RestoreV2_4	RestoreV2save_2/Constsave_2/RestoreV2_4/tensor_names#save_2/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
│
save_2/Assign_4Assign
Conv2D_2/Wsave_2/RestoreV2_4*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А*
T0*
validate_shape(*
use_locking(
r
save_2/RestoreV2_5/tensor_namesConst*
valueBB
Conv2D_2/b*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_2/RestoreV2_5	RestoreV2save_2/Constsave_2/RestoreV2_5/tensor_names#save_2/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
з
save_2/Assign_5Assign
Conv2D_2/bsave_2/RestoreV2_5*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*
_class
loc:@Conv2D_2/b
r
save_2/RestoreV2_6/tensor_namesConst*
valueBB
Conv2D_3/W*
_output_shapes
:*
dtype0
l
#save_2/RestoreV2_6/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ю
save_2/RestoreV2_6	RestoreV2save_2/Constsave_2/RestoreV2_6/tensor_names#save_2/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
│
save_2/Assign_6Assign
Conv2D_3/Wsave_2/RestoreV2_6*'
_output_shapes
:А@*
validate_shape(*
_class
loc:@Conv2D_3/W*
T0*
use_locking(
r
save_2/RestoreV2_7/tensor_namesConst*
valueBB
Conv2D_3/b*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_7/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ю
save_2/RestoreV2_7	RestoreV2save_2/Constsave_2/RestoreV2_7/tensor_names#save_2/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
ж
save_2/Assign_7Assign
Conv2D_3/bsave_2/RestoreV2_7*
use_locking(*
T0*
_class
loc:@Conv2D_3/b*
validate_shape(*
_output_shapes
:@
r
save_2/RestoreV2_8/tensor_namesConst*
valueBB
Conv2D_4/W*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_8/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ю
save_2/RestoreV2_8	RestoreV2save_2/Constsave_2/RestoreV2_8/tensor_names#save_2/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
▓
save_2/Assign_8Assign
Conv2D_4/Wsave_2/RestoreV2_8*
use_locking(*
T0*
_class
loc:@Conv2D_4/W*
validate_shape(*&
_output_shapes
:@ 
r
save_2/RestoreV2_9/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_4/b
l
#save_2/RestoreV2_9/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ю
save_2/RestoreV2_9	RestoreV2save_2/Constsave_2/RestoreV2_9/tensor_names#save_2/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
ж
save_2/Assign_9Assign
Conv2D_4/bsave_2/RestoreV2_9*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
y
 save_2/RestoreV2_10/tensor_namesConst*%
valueBBFullyConnected/W*
_output_shapes
:*
dtype0
m
$save_2/RestoreV2_10/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_2/RestoreV2_10	RestoreV2save_2/Const save_2/RestoreV2_10/tensor_names$save_2/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save_2/Assign_10AssignFullyConnected/Wsave_2/RestoreV2_10*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(* 
_output_shapes
:
аА
y
 save_2/RestoreV2_11/tensor_namesConst*
dtype0*
_output_shapes
:*%
valueBBFullyConnected/b
m
$save_2/RestoreV2_11/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_2/RestoreV2_11	RestoreV2save_2/Const save_2/RestoreV2_11/tensor_names$save_2/RestoreV2_11/shape_and_slices*
_output_shapes
:*
dtypes
2
╡
save_2/Assign_11AssignFullyConnected/bsave_2/RestoreV2_11*
_output_shapes	
:А*
validate_shape(*#
_class
loc:@FullyConnected/b*
T0*
use_locking(
{
 save_2/RestoreV2_12/tensor_namesConst*'
valueBBFullyConnected_1/W*
_output_shapes
:*
dtype0
m
$save_2/RestoreV2_12/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_2/RestoreV2_12	RestoreV2save_2/Const save_2/RestoreV2_12/tensor_names$save_2/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
╜
save_2/Assign_12AssignFullyConnected_1/Wsave_2/RestoreV2_12*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	А*
T0*
validate_shape(*
use_locking(
{
 save_2/RestoreV2_13/tensor_namesConst*'
valueBBFullyConnected_1/b*
dtype0*
_output_shapes
:
m
$save_2/RestoreV2_13/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_2/RestoreV2_13	RestoreV2save_2/Const save_2/RestoreV2_13/tensor_names$save_2/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
╕
save_2/Assign_13AssignFullyConnected_1/bsave_2/RestoreV2_13*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
Ш
save_2/restore_allNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13
д

initNoOp^is_training/Assign^Conv2D/W/Assign^Conv2D/b/Assign^Conv2D_1/W/Assign^Conv2D_1/b/Assign^Conv2D_2/W/Assign^Conv2D_2/b/Assign^Conv2D_3/W/Assign^Conv2D_3/b/Assign^Conv2D_4/W/Assign^Conv2D_4/b/Assign^FullyConnected/W/Assign^FullyConnected/b/Assign^FullyConnected_1/W/Assign^FullyConnected_1/b/Assign^Training_step/Assign^Global_Step/Assign^val_loss/Assign^val_acc/Assign ^Accuracy/Mean/moving_avg/Assign$^Crossentropy/Mean/moving_avg/Assign^Adam/beta1_power/Assign^Adam/beta2_power/Assign^Conv2D/W/Adam/Assign^Conv2D/W/Adam_1/Assign^Conv2D/b/Adam/Assign^Conv2D/b/Adam_1/Assign^Conv2D_1/W/Adam/Assign^Conv2D_1/W/Adam_1/Assign^Conv2D_1/b/Adam/Assign^Conv2D_1/b/Adam_1/Assign^Conv2D_2/W/Adam/Assign^Conv2D_2/W/Adam_1/Assign^Conv2D_2/b/Adam/Assign^Conv2D_2/b/Adam_1/Assign^Conv2D_3/W/Adam/Assign^Conv2D_3/W/Adam_1/Assign^Conv2D_3/b/Adam/Assign^Conv2D_3/b/Adam_1/Assign^Conv2D_4/W/Adam/Assign^Conv2D_4/W/Adam_1/Assign^Conv2D_4/b/Adam/Assign^Conv2D_4/b/Adam_1/Assign^FullyConnected/W/Adam/Assign^FullyConnected/W/Adam_1/Assign^FullyConnected/b/Adam/Assign^FullyConnected/b/Adam_1/Assign^FullyConnected_1/W/Adam/Assign!^FullyConnected_1/W/Adam_1/Assign^FullyConnected_1/b/Adam/Assign!^FullyConnected_1/b/Adam_1/Assign

init_1NoOp
"

group_depsNoOp^init^init_1
#
init_2NoOp^is_training/Assign
R
save_3/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0
ф
save_3/SaveV2/tensor_namesConst*
_output_shapes
:3*
dtype0*Х
valueЛBИ3BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBConv2D/WBConv2D/W/AdamBConv2D/W/Adam_1BConv2D/bBConv2D/b/AdamBConv2D/b/Adam_1B
Conv2D_1/WBConv2D_1/W/AdamBConv2D_1/W/Adam_1B
Conv2D_1/bBConv2D_1/b/AdamBConv2D_1/b/Adam_1B
Conv2D_2/WBConv2D_2/W/AdamBConv2D_2/W/Adam_1B
Conv2D_2/bBConv2D_2/b/AdamBConv2D_2/b/Adam_1B
Conv2D_3/WBConv2D_3/W/AdamBConv2D_3/W/Adam_1B
Conv2D_3/bBConv2D_3/b/AdamBConv2D_3/b/Adam_1B
Conv2D_4/WBConv2D_4/W/AdamBConv2D_4/W/Adam_1B
Conv2D_4/bBConv2D_4/b/AdamBConv2D_4/b/Adam_1BCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss
╦
save_3/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:3*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
д
save_3/SaveV2SaveV2save_3/Constsave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerConv2D/WConv2D/W/AdamConv2D/W/Adam_1Conv2D/bConv2D/b/AdamConv2D/b/Adam_1
Conv2D_1/WConv2D_1/W/AdamConv2D_1/W/Adam_1
Conv2D_1/bConv2D_1/b/AdamConv2D_1/b/Adam_1
Conv2D_2/WConv2D_2/W/AdamConv2D_2/W/Adam_1
Conv2D_2/bConv2D_2/b/AdamConv2D_2/b/Adam_1
Conv2D_3/WConv2D_3/W/AdamConv2D_3/W/Adam_1
Conv2D_3/bConv2D_3/b/AdamConv2D_3/b/Adam_1
Conv2D_4/WConv2D_4/W/AdamConv2D_4/W/Adam_1
Conv2D_4/bConv2D_4/b/AdamConv2D_4/b/Adam_1Crossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*A
dtypes7
523

Е
save_3/control_dependencyIdentitysave_3/Const^save_3/SaveV2*
T0*
_class
loc:@save_3/Const*
_output_shapes
: 
~
save_3/RestoreV2/tensor_namesConst*-
value$B"BAccuracy/Mean/moving_avg*
_output_shapes
:*
dtype0
j
!save_3/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ш
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save_3/AssignAssignAccuracy/Mean/moving_avgsave_3/RestoreV2*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *+
_class!
loc:@Accuracy/Mean/moving_avg
x
save_3/RestoreV2_1/tensor_namesConst*
dtype0*
_output_shapes
:*%
valueBBAdam/beta1_power
l
#save_3/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ю
save_3/RestoreV2_1	RestoreV2save_3/Constsave_3/RestoreV2_1/tensor_names#save_3/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
ж
save_3/Assign_1AssignAdam/beta1_powersave_3/RestoreV2_1*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*
_output_shapes
: 
x
save_3/RestoreV2_2/tensor_namesConst*%
valueBBAdam/beta2_power*
_output_shapes
:*
dtype0
l
#save_3/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ю
save_3/RestoreV2_2	RestoreV2save_3/Constsave_3/RestoreV2_2/tensor_names#save_3/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
ж
save_3/Assign_2AssignAdam/beta2_powersave_3/RestoreV2_2*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
p
save_3/RestoreV2_3/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBConv2D/W
l
#save_3/RestoreV2_3/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ю
save_3/RestoreV2_3	RestoreV2save_3/Constsave_3/RestoreV2_3/tensor_names#save_3/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
о
save_3/Assign_3AssignConv2D/Wsave_3/RestoreV2_3*&
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(
u
save_3/RestoreV2_4/tensor_namesConst*
dtype0*
_output_shapes
:*"
valueBBConv2D/W/Adam
l
#save_3/RestoreV2_4/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_3/RestoreV2_4	RestoreV2save_3/Constsave_3/RestoreV2_4/tensor_names#save_3/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
│
save_3/Assign_4AssignConv2D/W/Adamsave_3/RestoreV2_4*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
w
save_3/RestoreV2_5/tensor_namesConst*$
valueBBConv2D/W/Adam_1*
_output_shapes
:*
dtype0
l
#save_3/RestoreV2_5/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ю
save_3/RestoreV2_5	RestoreV2save_3/Constsave_3/RestoreV2_5/tensor_names#save_3/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
╡
save_3/Assign_5AssignConv2D/W/Adam_1save_3/RestoreV2_5*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
p
save_3/RestoreV2_6/tensor_namesConst*
valueBBConv2D/b*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_3/RestoreV2_6	RestoreV2save_3/Constsave_3/RestoreV2_6/tensor_names#save_3/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
в
save_3/Assign_6AssignConv2D/bsave_3/RestoreV2_6*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/b
u
save_3/RestoreV2_7/tensor_namesConst*"
valueBBConv2D/b/Adam*
_output_shapes
:*
dtype0
l
#save_3/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_3/RestoreV2_7	RestoreV2save_3/Constsave_3/RestoreV2_7/tensor_names#save_3/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
з
save_3/Assign_7AssignConv2D/b/Adamsave_3/RestoreV2_7*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/b*
T0*
use_locking(
w
save_3/RestoreV2_8/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D/b/Adam_1
l
#save_3/RestoreV2_8/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ю
save_3/RestoreV2_8	RestoreV2save_3/Constsave_3/RestoreV2_8/tensor_names#save_3/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
й
save_3/Assign_8AssignConv2D/b/Adam_1save_3/RestoreV2_8*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
r
save_3/RestoreV2_9/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_1/W
l
#save_3/RestoreV2_9/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ю
save_3/RestoreV2_9	RestoreV2save_3/Constsave_3/RestoreV2_9/tensor_names#save_3/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
▓
save_3/Assign_9Assign
Conv2D_1/Wsave_3/RestoreV2_9*&
_output_shapes
: @*
validate_shape(*
_class
loc:@Conv2D_1/W*
T0*
use_locking(
x
 save_3/RestoreV2_10/tensor_namesConst*$
valueBBConv2D_1/W/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_10/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_10	RestoreV2save_3/Const save_3/RestoreV2_10/tensor_names$save_3/RestoreV2_10/shape_and_slices*
_output_shapes
:*
dtypes
2
╣
save_3/Assign_10AssignConv2D_1/W/Adamsave_3/RestoreV2_10*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(
z
 save_3/RestoreV2_11/tensor_namesConst*&
valueBBConv2D_1/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_11/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_11	RestoreV2save_3/Const save_3/RestoreV2_11/tensor_names$save_3/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
╗
save_3/Assign_11AssignConv2D_1/W/Adam_1save_3/RestoreV2_11*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
s
 save_3/RestoreV2_12/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_1/b
m
$save_3/RestoreV2_12/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_12	RestoreV2save_3/Const save_3/RestoreV2_12/tensor_names$save_3/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
и
save_3/Assign_12Assign
Conv2D_1/bsave_3/RestoreV2_12*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_1/b*
T0*
use_locking(
x
 save_3/RestoreV2_13/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_1/b/Adam
m
$save_3/RestoreV2_13/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_13	RestoreV2save_3/Const save_3/RestoreV2_13/tensor_names$save_3/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
н
save_3/Assign_13AssignConv2D_1/b/Adamsave_3/RestoreV2_13*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
z
 save_3/RestoreV2_14/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_1/b/Adam_1
m
$save_3/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_3/RestoreV2_14	RestoreV2save_3/Const save_3/RestoreV2_14/tensor_names$save_3/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
п
save_3/Assign_14AssignConv2D_1/b/Adam_1save_3/RestoreV2_14*
use_locking(*
T0*
_class
loc:@Conv2D_1/b*
validate_shape(*
_output_shapes
:@
s
 save_3/RestoreV2_15/tensor_namesConst*
valueBB
Conv2D_2/W*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_15/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_15	RestoreV2save_3/Const save_3/RestoreV2_15/tensor_names$save_3/RestoreV2_15/shape_and_slices*
_output_shapes
:*
dtypes
2
╡
save_3/Assign_15Assign
Conv2D_2/Wsave_3/RestoreV2_15*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А*
T0*
validate_shape(*
use_locking(
x
 save_3/RestoreV2_16/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_2/W/Adam
m
$save_3/RestoreV2_16/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_16	RestoreV2save_3/Const save_3/RestoreV2_16/tensor_names$save_3/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save_3/Assign_16AssignConv2D_2/W/Adamsave_3/RestoreV2_16*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А*
T0*
validate_shape(*
use_locking(
z
 save_3/RestoreV2_17/tensor_namesConst*&
valueBBConv2D_2/W/Adam_1*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_17/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_17	RestoreV2save_3/Const save_3/RestoreV2_17/tensor_names$save_3/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
╝
save_3/Assign_17AssignConv2D_2/W/Adam_1save_3/RestoreV2_17*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А*
T0*
validate_shape(*
use_locking(
s
 save_3/RestoreV2_18/tensor_namesConst*
valueBB
Conv2D_2/b*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_18/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_18	RestoreV2save_3/Const save_3/RestoreV2_18/tensor_names$save_3/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save_3/Assign_18Assign
Conv2D_2/bsave_3/RestoreV2_18*
_class
loc:@Conv2D_2/b*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(
x
 save_3/RestoreV2_19/tensor_namesConst*$
valueBBConv2D_2/b/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_19/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_19	RestoreV2save_3/Const save_3/RestoreV2_19/tensor_names$save_3/RestoreV2_19/shape_and_slices*
_output_shapes
:*
dtypes
2
о
save_3/Assign_19AssignConv2D_2/b/Adamsave_3/RestoreV2_19*
_output_shapes	
:А*
validate_shape(*
_class
loc:@Conv2D_2/b*
T0*
use_locking(
z
 save_3/RestoreV2_20/tensor_namesConst*&
valueBBConv2D_2/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_20/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_20	RestoreV2save_3/Const save_3/RestoreV2_20/tensor_names$save_3/RestoreV2_20/shape_and_slices*
_output_shapes
:*
dtypes
2
░
save_3/Assign_20AssignConv2D_2/b/Adam_1save_3/RestoreV2_20*
_output_shapes	
:А*
validate_shape(*
_class
loc:@Conv2D_2/b*
T0*
use_locking(
s
 save_3/RestoreV2_21/tensor_namesConst*
valueBB
Conv2D_3/W*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_3/RestoreV2_21	RestoreV2save_3/Const save_3/RestoreV2_21/tensor_names$save_3/RestoreV2_21/shape_and_slices*
_output_shapes
:*
dtypes
2
╡
save_3/Assign_21Assign
Conv2D_3/Wsave_3/RestoreV2_21*
_class
loc:@Conv2D_3/W*'
_output_shapes
:А@*
T0*
validate_shape(*
use_locking(
x
 save_3/RestoreV2_22/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_3/W/Adam
m
$save_3/RestoreV2_22/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_22	RestoreV2save_3/Const save_3/RestoreV2_22/tensor_names$save_3/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save_3/Assign_22AssignConv2D_3/W/Adamsave_3/RestoreV2_22*'
_output_shapes
:А@*
validate_shape(*
_class
loc:@Conv2D_3/W*
T0*
use_locking(
z
 save_3/RestoreV2_23/tensor_namesConst*&
valueBBConv2D_3/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_23/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_23	RestoreV2save_3/Const save_3/RestoreV2_23/tensor_names$save_3/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
╝
save_3/Assign_23AssignConv2D_3/W/Adam_1save_3/RestoreV2_23*
_class
loc:@Conv2D_3/W*'
_output_shapes
:А@*
T0*
validate_shape(*
use_locking(
s
 save_3/RestoreV2_24/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_3/b
m
$save_3/RestoreV2_24/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_24	RestoreV2save_3/Const save_3/RestoreV2_24/tensor_names$save_3/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
и
save_3/Assign_24Assign
Conv2D_3/bsave_3/RestoreV2_24*
use_locking(*
T0*
_class
loc:@Conv2D_3/b*
validate_shape(*
_output_shapes
:@
x
 save_3/RestoreV2_25/tensor_namesConst*$
valueBBConv2D_3/b/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_25/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_25	RestoreV2save_3/Const save_3/RestoreV2_25/tensor_names$save_3/RestoreV2_25/shape_and_slices*
_output_shapes
:*
dtypes
2
н
save_3/Assign_25AssignConv2D_3/b/Adamsave_3/RestoreV2_25*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
z
 save_3/RestoreV2_26/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_3/b/Adam_1
m
$save_3/RestoreV2_26/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_26	RestoreV2save_3/Const save_3/RestoreV2_26/tensor_names$save_3/RestoreV2_26/shape_and_slices*
_output_shapes
:*
dtypes
2
п
save_3/Assign_26AssignConv2D_3/b/Adam_1save_3/RestoreV2_26*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
s
 save_3/RestoreV2_27/tensor_namesConst*
valueBB
Conv2D_4/W*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_27/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_27	RestoreV2save_3/Const save_3/RestoreV2_27/tensor_names$save_3/RestoreV2_27/shape_and_slices*
_output_shapes
:*
dtypes
2
┤
save_3/Assign_27Assign
Conv2D_4/Wsave_3/RestoreV2_27*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0*
validate_shape(*
use_locking(
x
 save_3/RestoreV2_28/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_4/W/Adam
m
$save_3/RestoreV2_28/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_3/RestoreV2_28	RestoreV2save_3/Const save_3/RestoreV2_28/tensor_names$save_3/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes
:
╣
save_3/Assign_28AssignConv2D_4/W/Adamsave_3/RestoreV2_28*&
_output_shapes
:@ *
validate_shape(*
_class
loc:@Conv2D_4/W*
T0*
use_locking(
z
 save_3/RestoreV2_29/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_4/W/Adam_1
m
$save_3/RestoreV2_29/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_29	RestoreV2save_3/Const save_3/RestoreV2_29/tensor_names$save_3/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes
:
╗
save_3/Assign_29AssignConv2D_4/W/Adam_1save_3/RestoreV2_29*
use_locking(*
T0*
_class
loc:@Conv2D_4/W*
validate_shape(*&
_output_shapes
:@ 
s
 save_3/RestoreV2_30/tensor_namesConst*
valueBB
Conv2D_4/b*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_30/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_30	RestoreV2save_3/Const save_3/RestoreV2_30/tensor_names$save_3/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
и
save_3/Assign_30Assign
Conv2D_4/bsave_3/RestoreV2_30*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
x
 save_3/RestoreV2_31/tensor_namesConst*$
valueBBConv2D_4/b/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_31/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_31	RestoreV2save_3/Const save_3/RestoreV2_31/tensor_names$save_3/RestoreV2_31/shape_and_slices*
_output_shapes
:*
dtypes
2
н
save_3/Assign_31AssignConv2D_4/b/Adamsave_3/RestoreV2_31*
use_locking(*
T0*
_class
loc:@Conv2D_4/b*
validate_shape(*
_output_shapes
: 
z
 save_3/RestoreV2_32/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_4/b/Adam_1
m
$save_3/RestoreV2_32/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_32	RestoreV2save_3/Const save_3/RestoreV2_32/tensor_names$save_3/RestoreV2_32/shape_and_slices*
dtypes
2*
_output_shapes
:
п
save_3/Assign_32AssignConv2D_4/b/Adam_1save_3/RestoreV2_32*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
Е
 save_3/RestoreV2_33/tensor_namesConst*
_output_shapes
:*
dtype0*1
value(B&BCrossentropy/Mean/moving_avg
m
$save_3/RestoreV2_33/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_3/RestoreV2_33	RestoreV2save_3/Const save_3/RestoreV2_33/tensor_names$save_3/RestoreV2_33/shape_and_slices*
dtypes
2*
_output_shapes
:
╚
save_3/Assign_33AssignCrossentropy/Mean/moving_avgsave_3/RestoreV2_33*
_output_shapes
: *
validate_shape(*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
T0*
use_locking(
y
 save_3/RestoreV2_34/tensor_namesConst*
dtype0*
_output_shapes
:*%
valueBBFullyConnected/W
m
$save_3/RestoreV2_34/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_34	RestoreV2save_3/Const save_3/RestoreV2_34/tensor_names$save_3/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save_3/Assign_34AssignFullyConnected/Wsave_3/RestoreV2_34*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0*
validate_shape(*
use_locking(
~
 save_3/RestoreV2_35/tensor_namesConst**
value!BBFullyConnected/W/Adam*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_35/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_35	RestoreV2save_3/Const save_3/RestoreV2_35/tensor_names$save_3/RestoreV2_35/shape_and_slices*
dtypes
2*
_output_shapes
:
┐
save_3/Assign_35AssignFullyConnected/W/Adamsave_3/RestoreV2_35* 
_output_shapes
:
аА*
validate_shape(*#
_class
loc:@FullyConnected/W*
T0*
use_locking(
А
 save_3/RestoreV2_36/tensor_namesConst*
_output_shapes
:*
dtype0*,
value#B!BFullyConnected/W/Adam_1
m
$save_3/RestoreV2_36/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_36	RestoreV2save_3/Const save_3/RestoreV2_36/tensor_names$save_3/RestoreV2_36/shape_and_slices*
_output_shapes
:*
dtypes
2
┴
save_3/Assign_36AssignFullyConnected/W/Adam_1save_3/RestoreV2_36*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0*
validate_shape(*
use_locking(
y
 save_3/RestoreV2_37/tensor_namesConst*
_output_shapes
:*
dtype0*%
valueBBFullyConnected/b
m
$save_3/RestoreV2_37/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_37	RestoreV2save_3/Const save_3/RestoreV2_37/tensor_names$save_3/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
╡
save_3/Assign_37AssignFullyConnected/bsave_3/RestoreV2_37*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*#
_class
loc:@FullyConnected/b
~
 save_3/RestoreV2_38/tensor_namesConst*
dtype0*
_output_shapes
:**
value!BBFullyConnected/b/Adam
m
$save_3/RestoreV2_38/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_3/RestoreV2_38	RestoreV2save_3/Const save_3/RestoreV2_38/tensor_names$save_3/RestoreV2_38/shape_and_slices*
_output_shapes
:*
dtypes
2
║
save_3/Assign_38AssignFullyConnected/b/Adamsave_3/RestoreV2_38*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:А
А
 save_3/RestoreV2_39/tensor_namesConst*,
value#B!BFullyConnected/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_39/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_39	RestoreV2save_3/Const save_3/RestoreV2_39/tensor_names$save_3/RestoreV2_39/shape_and_slices*
dtypes
2*
_output_shapes
:
╝
save_3/Assign_39AssignFullyConnected/b/Adam_1save_3/RestoreV2_39*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:А
{
 save_3/RestoreV2_40/tensor_namesConst*
_output_shapes
:*
dtype0*'
valueBBFullyConnected_1/W
m
$save_3/RestoreV2_40/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_3/RestoreV2_40	RestoreV2save_3/Const save_3/RestoreV2_40/tensor_names$save_3/RestoreV2_40/shape_and_slices*
dtypes
2*
_output_shapes
:
╜
save_3/Assign_40AssignFullyConnected_1/Wsave_3/RestoreV2_40*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	А
А
 save_3/RestoreV2_41/tensor_namesConst*
_output_shapes
:*
dtype0*,
value#B!BFullyConnected_1/W/Adam
m
$save_3/RestoreV2_41/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_41	RestoreV2save_3/Const save_3/RestoreV2_41/tensor_names$save_3/RestoreV2_41/shape_and_slices*
dtypes
2*
_output_shapes
:
┬
save_3/Assign_41AssignFullyConnected_1/W/Adamsave_3/RestoreV2_41*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	А*%
_class
loc:@FullyConnected_1/W
В
 save_3/RestoreV2_42/tensor_namesConst*
_output_shapes
:*
dtype0*.
value%B#BFullyConnected_1/W/Adam_1
m
$save_3/RestoreV2_42/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_3/RestoreV2_42	RestoreV2save_3/Const save_3/RestoreV2_42/tensor_names$save_3/RestoreV2_42/shape_and_slices*
dtypes
2*
_output_shapes
:
─
save_3/Assign_42AssignFullyConnected_1/W/Adam_1save_3/RestoreV2_42*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	А
{
 save_3/RestoreV2_43/tensor_namesConst*'
valueBBFullyConnected_1/b*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_43/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_3/RestoreV2_43	RestoreV2save_3/Const save_3/RestoreV2_43/tensor_names$save_3/RestoreV2_43/shape_and_slices*
_output_shapes
:*
dtypes
2
╕
save_3/Assign_43AssignFullyConnected_1/bsave_3/RestoreV2_43*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
А
 save_3/RestoreV2_44/tensor_namesConst*
dtype0*
_output_shapes
:*,
value#B!BFullyConnected_1/b/Adam
m
$save_3/RestoreV2_44/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_44	RestoreV2save_3/Const save_3/RestoreV2_44/tensor_names$save_3/RestoreV2_44/shape_and_slices*
_output_shapes
:*
dtypes
2
╜
save_3/Assign_44AssignFullyConnected_1/b/Adamsave_3/RestoreV2_44*
_output_shapes
:*
validate_shape(*%
_class
loc:@FullyConnected_1/b*
T0*
use_locking(
В
 save_3/RestoreV2_45/tensor_namesConst*.
value%B#BFullyConnected_1/b/Adam_1*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_45/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_45	RestoreV2save_3/Const save_3/RestoreV2_45/tensor_names$save_3/RestoreV2_45/shape_and_slices*
dtypes
2*
_output_shapes
:
┐
save_3/Assign_45AssignFullyConnected_1/b/Adam_1save_3/RestoreV2_45*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
t
 save_3/RestoreV2_46/tensor_namesConst* 
valueBBGlobal_Step*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_46/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_46	RestoreV2save_3/Const save_3/RestoreV2_46/tensor_names$save_3/RestoreV2_46/shape_and_slices*
dtypes
2*
_output_shapes
:
ж
save_3/Assign_46AssignGlobal_Stepsave_3/RestoreV2_46*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Global_Step
v
 save_3/RestoreV2_47/tensor_namesConst*"
valueBBTraining_step*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_47/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_47	RestoreV2save_3/Const save_3/RestoreV2_47/tensor_names$save_3/RestoreV2_47/shape_and_slices*
dtypes
2*
_output_shapes
:
к
save_3/Assign_47AssignTraining_stepsave_3/RestoreV2_47* 
_class
loc:@Training_step*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
t
 save_3/RestoreV2_48/tensor_namesConst* 
valueBBis_training*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_48/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_48	RestoreV2save_3/Const save_3/RestoreV2_48/tensor_names$save_3/RestoreV2_48/shape_and_slices*
_output_shapes
:*
dtypes
2

ж
save_3/Assign_48Assignis_trainingsave_3/RestoreV2_48*
_class
loc:@is_training*
_output_shapes
: *
T0
*
validate_shape(*
use_locking(
p
 save_3/RestoreV2_49/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBval_acc
m
$save_3/RestoreV2_49/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_49	RestoreV2save_3/Const save_3/RestoreV2_49/tensor_names$save_3/RestoreV2_49/shape_and_slices*
_output_shapes
:*
dtypes
2
Ю
save_3/Assign_49Assignval_accsave_3/RestoreV2_49*
use_locking(*
T0*
_class
loc:@val_acc*
validate_shape(*
_output_shapes
: 
q
 save_3/RestoreV2_50/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBval_loss
m
$save_3/RestoreV2_50/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_50	RestoreV2save_3/Const save_3/RestoreV2_50/tensor_names$save_3/RestoreV2_50/shape_and_slices*
dtypes
2*
_output_shapes
:
а
save_3/Assign_50Assignval_losssave_3/RestoreV2_50*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@val_loss
╫
save_3/restore_allNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_2^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26^save_3/Assign_27^save_3/Assign_28^save_3/Assign_29^save_3/Assign_30^save_3/Assign_31^save_3/Assign_32^save_3/Assign_33^save_3/Assign_34^save_3/Assign_35^save_3/Assign_36^save_3/Assign_37^save_3/Assign_38^save_3/Assign_39^save_3/Assign_40^save_3/Assign_41^save_3/Assign_42^save_3/Assign_43^save_3/Assign_44^save_3/Assign_45^save_3/Assign_46^save_3/Assign_47^save_3/Assign_48^save_3/Assign_49^save_3/Assign_50"╨пLУЗТ     ╓Кh2	╬Ч╪°8╓AJ·д
Ж-т,
9
Add
x"T
y"T
z"T"
Ttype:
2	
S
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	АР
╤
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА"
Ttype:
2	"
use_lockingbool( 
l
ArgMax

input"T
	dimension"Tidx

output	"
Ttype:
2	"
Tidxtype0:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
p
	AssignAdd
ref"TА

value"T

output_ref"TА"
Ttype:
2	"
use_lockingbool( 
p
	AssignSub
ref"TА

value"T

output_ref"TА"
Ttype:
2	"
use_lockingbool( 
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
{
BiasAddGrad
out_backprop"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
╔
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
я
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
ю
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
A
Equal
x"T
y"T
z
"
Ttype:
2	
Р
4
Fill
dims

value"T
output"T"	
Ttype
+
Floor
x"T
y"T"
Ttype:
2
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
<
L2Loss
t"T
output"T"
Ttype:
2	
<
	LessEqual
x"T
y"T
z
"
Ttype:
2		
+
Log
x"T
y"T"
Ttype:	
2


LogicalNot
x

y

o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
╛
MaxPool

input"T
output"T"
Ttype0:
2"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
ф
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	Р
К
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
MergeSummary
inputs*N
summary"
Nint(0
:
Minimum
x"T
y"T
z"T"
Ttype:	
2	Р
<
Mul
x"T
y"T
z"T"
Ttype:
2	Р
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
К
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
4

Reciprocal
x"T
y"T"
Ttype:
	2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
8
Softmax
logits"T
softmax"T"
Ttype:
2
,
Sqrt
x"T
y"T"
Ttype:	
2
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
Й
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И*1.0.12v1.0.0-65-g4763edf-dirty▀╛

is_training/Initializer/ConstConst*
_output_shapes
: *
dtype0
*
_class
loc:@is_training*
value	B
 Z 
П
is_training
VariableV2*
_class
loc:@is_training*
_output_shapes
: *
shape: *
dtype0
*
shared_name *
	container 
▓
is_training/AssignAssignis_trainingis_training/Initializer/Const*
_output_shapes
: *
validate_shape(*
_class
loc:@is_training*
T0
*
use_locking(
j
is_training/readIdentityis_training*
_class
loc:@is_training*
_output_shapes
: *
T0

N
Assign/valueConst*
value	B
 Z*
_output_shapes
: *
dtype0

Х
AssignAssignis_trainingAssign/value*
_output_shapes
: *
validate_shape(*
_class
loc:@is_training*
T0
*
use_locking(
P
Assign_1/valueConst*
_output_shapes
: *
dtype0
*
value	B
 Z 
Щ
Assign_1Assignis_trainingAssign_1/value*
_class
loc:@is_training*
_output_shapes
: *
T0
*
validate_shape(*
use_locking(
c
input/XPlaceholder*1
_output_shapes
:         До*
dtype0*
shape: 
Я
)Conv2D/W/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
_class
loc:@Conv2D/W*%
valueB"             
Й
'Conv2D/W/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D/W*
valueB
 *м\▒╛
Й
'Conv2D/W/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
_class
loc:@Conv2D/W*
valueB
 *м\▒>
с
1Conv2D/W/Initializer/random_uniform/RandomUniformRandomUniform)Conv2D/W/Initializer/random_uniform/shape*&
_output_shapes
: *
_class
loc:@Conv2D/W*
dtype0*

seed *
T0*
seed2 
╛
'Conv2D/W/Initializer/random_uniform/subSub'Conv2D/W/Initializer/random_uniform/max'Conv2D/W/Initializer/random_uniform/min*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
╪
'Conv2D/W/Initializer/random_uniform/mulMul1Conv2D/W/Initializer/random_uniform/RandomUniform'Conv2D/W/Initializer/random_uniform/sub*&
_output_shapes
: *
_class
loc:@Conv2D/W*
T0
╩
#Conv2D/W/Initializer/random_uniformAdd'Conv2D/W/Initializer/random_uniform/mul'Conv2D/W/Initializer/random_uniform/min*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0
й
Conv2D/W
VariableV2*
shape: *&
_output_shapes
: *
shared_name *
_class
loc:@Conv2D/W*
dtype0*
	container 
┐
Conv2D/W/AssignAssignConv2D/W#Conv2D/W/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
q
Conv2D/W/readIdentityConv2D/W*&
_output_shapes
: *
_class
loc:@Conv2D/W*
T0
Д
Conv2D/b/Initializer/ConstConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D/b*
valueB *    
С
Conv2D/b
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D/b*
_output_shapes
: *
shape: *
shared_name 
к
Conv2D/b/AssignAssignConv2D/bConv2D/b/Initializer/Const*
use_locking(*
T0*
_class
loc:@Conv2D/b*
validate_shape(*
_output_shapes
: 
e
Conv2D/b/readIdentityConv2D/b*
T0*
_class
loc:@Conv2D/b*
_output_shapes
: 
┬
Conv2D/Conv2DConv2Dinput/XConv2D/W/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         До 
К
Conv2D/BiasAddBiasAddConv2D/Conv2DConv2D/b/read*
T0*
data_formatNHWC*1
_output_shapes
:         До 
_
Conv2D/ReluReluConv2D/BiasAdd*1
_output_shapes
:         До *
T0
╖
MaxPool2D/MaxPoolMaxPoolConv2D/Relu*
paddingSAME*
strides
*
data_formatNHWC*
T0*1
_output_shapes
:         ┤╝ *
ksize

г
+Conv2D_1/W/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
_class
loc:@Conv2D_1/W*%
valueB"          @   
Н
)Conv2D_1/W/Initializer/random_uniform/minConst*
_class
loc:@Conv2D_1/W*
valueB
 *ч╙z╜*
_output_shapes
: *
dtype0
Н
)Conv2D_1/W/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
_class
loc:@Conv2D_1/W*
valueB
 *ч╙z=
ч
3Conv2D_1/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_1/W/Initializer/random_uniform/shape*
seed2 *
T0*

seed *
dtype0*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @
╞
)Conv2D_1/W/Initializer/random_uniform/subSub)Conv2D_1/W/Initializer/random_uniform/max)Conv2D_1/W/Initializer/random_uniform/min*
_output_shapes
: *
_class
loc:@Conv2D_1/W*
T0
р
)Conv2D_1/W/Initializer/random_uniform/mulMul3Conv2D_1/W/Initializer/random_uniform/RandomUniform)Conv2D_1/W/Initializer/random_uniform/sub*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W*
T0
╥
%Conv2D_1/W/Initializer/random_uniformAdd)Conv2D_1/W/Initializer/random_uniform/mul)Conv2D_1/W/Initializer/random_uniform/min*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W*
T0
н

Conv2D_1/W
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
shape: @*
shared_name 
╟
Conv2D_1/W/AssignAssign
Conv2D_1/W%Conv2D_1/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@Conv2D_1/W*
validate_shape(*&
_output_shapes
: @
w
Conv2D_1/W/readIdentity
Conv2D_1/W*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
И
Conv2D_1/b/Initializer/ConstConst*
_output_shapes
:@*
dtype0*
_class
loc:@Conv2D_1/b*
valueB@*    
Х

Conv2D_1/b
VariableV2*
shared_name *
_class
loc:@Conv2D_1/b*
	container *
shape:@*
dtype0*
_output_shapes
:@
▓
Conv2D_1/b/AssignAssign
Conv2D_1/bConv2D_1/b/Initializer/Const*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
k
Conv2D_1/b/readIdentity
Conv2D_1/b*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0
╨
Conv2D_1/Conv2DConv2DMaxPool2D/MaxPoolConv2D_1/W/read*
paddingSAME*
T0*
strides
*
data_formatNHWC*1
_output_shapes
:         ┤╝@*
use_cudnn_on_gpu(
Р
Conv2D_1/BiasAddBiasAddConv2D_1/Conv2DConv2D_1/b/read*
data_formatNHWC*
T0*1
_output_shapes
:         ┤╝@
c
Conv2D_1/ReluReluConv2D_1/BiasAdd*1
_output_shapes
:         ┤╝@*
T0
║
MaxPool2D_1/MaxPoolMaxPoolConv2D_1/Relu*
strides
*
data_formatNHWC*0
_output_shapes
:         д?@*
paddingSAME*
T0*
ksize

г
+Conv2D_2/W/Initializer/random_uniform/shapeConst*
_class
loc:@Conv2D_2/W*%
valueB"      @   А   *
dtype0*
_output_shapes
:
Н
)Conv2D_2/W/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D_2/W*
valueB
 *м\1╜
Н
)Conv2D_2/W/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D_2/W*
valueB
 *м\1=
ш
3Conv2D_2/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_2/W/Initializer/random_uniform/shape*
T0*'
_output_shapes
:@А*

seed *
_class
loc:@Conv2D_2/W*
dtype0*
seed2 
╞
)Conv2D_2/W/Initializer/random_uniform/subSub)Conv2D_2/W/Initializer/random_uniform/max)Conv2D_2/W/Initializer/random_uniform/min*
_output_shapes
: *
_class
loc:@Conv2D_2/W*
T0
с
)Conv2D_2/W/Initializer/random_uniform/mulMul3Conv2D_2/W/Initializer/random_uniform/RandomUniform)Conv2D_2/W/Initializer/random_uniform/sub*
T0*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А
╙
%Conv2D_2/W/Initializer/random_uniformAdd)Conv2D_2/W/Initializer/random_uniform/mul)Conv2D_2/W/Initializer/random_uniform/min*'
_output_shapes
:@А*
_class
loc:@Conv2D_2/W*
T0
п

Conv2D_2/W
VariableV2*
shape:@А*'
_output_shapes
:@А*
shared_name *
_class
loc:@Conv2D_2/W*
dtype0*
	container 
╚
Conv2D_2/W/AssignAssign
Conv2D_2/W%Conv2D_2/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@Conv2D_2/W*
validate_shape(*'
_output_shapes
:@А
x
Conv2D_2/W/readIdentity
Conv2D_2/W*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А*
T0
К
Conv2D_2/b/Initializer/ConstConst*
dtype0*
_output_shapes	
:А*
_class
loc:@Conv2D_2/b*
valueBА*    
Ч

Conv2D_2/b
VariableV2*
_output_shapes	
:А*
dtype0*
shape:А*
	container *
_class
loc:@Conv2D_2/b*
shared_name 
│
Conv2D_2/b/AssignAssign
Conv2D_2/bConv2D_2/b/Initializer/Const*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*
_class
loc:@Conv2D_2/b
l
Conv2D_2/b/readIdentity
Conv2D_2/b*
_output_shapes	
:А*
_class
loc:@Conv2D_2/b*
T0
╥
Conv2D_2/Conv2DConv2DMaxPool2D_1/MaxPoolConv2D_2/W/read*
use_cudnn_on_gpu(*1
_output_shapes
:         д?А*
strides
*
data_formatNHWC*
T0*
paddingSAME
Р
Conv2D_2/BiasAddBiasAddConv2D_2/Conv2DConv2D_2/b/read*1
_output_shapes
:         д?А*
T0*
data_formatNHWC
c
Conv2D_2/ReluReluConv2D_2/BiasAdd*
T0*1
_output_shapes
:         д?А
╗
MaxPool2D_2/MaxPoolMaxPoolConv2D_2/Relu*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*1
_output_shapes
:         ╘А
г
+Conv2D_3/W/Initializer/random_uniform/shapeConst*
_class
loc:@Conv2D_3/W*%
valueB"      А   @   *
dtype0*
_output_shapes
:
Н
)Conv2D_3/W/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D_3/W*
valueB
 *ч╙·╝
Н
)Conv2D_3/W/Initializer/random_uniform/maxConst*
_class
loc:@Conv2D_3/W*
valueB
 *ч╙·<*
dtype0*
_output_shapes
: 
ш
3Conv2D_3/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_3/W/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*'
_output_shapes
:А@*
_class
loc:@Conv2D_3/W
╞
)Conv2D_3/W/Initializer/random_uniform/subSub)Conv2D_3/W/Initializer/random_uniform/max)Conv2D_3/W/Initializer/random_uniform/min*
_output_shapes
: *
_class
loc:@Conv2D_3/W*
T0
с
)Conv2D_3/W/Initializer/random_uniform/mulMul3Conv2D_3/W/Initializer/random_uniform/RandomUniform)Conv2D_3/W/Initializer/random_uniform/sub*'
_output_shapes
:А@*
_class
loc:@Conv2D_3/W*
T0
╙
%Conv2D_3/W/Initializer/random_uniformAdd)Conv2D_3/W/Initializer/random_uniform/mul)Conv2D_3/W/Initializer/random_uniform/min*
T0*'
_output_shapes
:А@*
_class
loc:@Conv2D_3/W
п

Conv2D_3/W
VariableV2*'
_output_shapes
:А@*
dtype0*
shape:А@*
	container *
_class
loc:@Conv2D_3/W*
shared_name 
╚
Conv2D_3/W/AssignAssign
Conv2D_3/W%Conv2D_3/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@Conv2D_3/W*
validate_shape(*'
_output_shapes
:А@
x
Conv2D_3/W/readIdentity
Conv2D_3/W*
T0*
_class
loc:@Conv2D_3/W*'
_output_shapes
:А@
И
Conv2D_3/b/Initializer/ConstConst*
_class
loc:@Conv2D_3/b*
valueB@*    *
dtype0*
_output_shapes
:@
Х

Conv2D_3/b
VariableV2*
shared_name *
_class
loc:@Conv2D_3/b*
	container *
shape:@*
dtype0*
_output_shapes
:@
▓
Conv2D_3/b/AssignAssign
Conv2D_3/bConv2D_3/b/Initializer/Const*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
k
Conv2D_3/b/readIdentity
Conv2D_3/b*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
╤
Conv2D_3/Conv2DConv2DMaxPool2D_2/MaxPoolConv2D_3/W/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         ╘@
П
Conv2D_3/BiasAddBiasAddConv2D_3/Conv2DConv2D_3/b/read*
data_formatNHWC*
T0*0
_output_shapes
:         ╘@
b
Conv2D_3/ReluReluConv2D_3/BiasAdd*
T0*0
_output_shapes
:         ╘@
║
MaxPool2D_3/MaxPoolMaxPoolConv2D_3/Relu*
paddingSAME*
strides
*
data_formatNHWC*
T0*0
_output_shapes
:         ─@*
ksize

г
+Conv2D_4/W/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
_class
loc:@Conv2D_4/W*%
valueB"      @       
Н
)Conv2D_4/W/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D_4/W*
valueB
 *м\1╜
Н
)Conv2D_4/W/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D_4/W*
valueB
 *м\1=
ч
3Conv2D_4/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_4/W/Initializer/random_uniform/shape*
seed2 *
T0*

seed *
dtype0*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ 
╞
)Conv2D_4/W/Initializer/random_uniform/subSub)Conv2D_4/W/Initializer/random_uniform/max)Conv2D_4/W/Initializer/random_uniform/min*
_output_shapes
: *
_class
loc:@Conv2D_4/W*
T0
р
)Conv2D_4/W/Initializer/random_uniform/mulMul3Conv2D_4/W/Initializer/random_uniform/RandomUniform)Conv2D_4/W/Initializer/random_uniform/sub*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0
╥
%Conv2D_4/W/Initializer/random_uniformAdd)Conv2D_4/W/Initializer/random_uniform/mul)Conv2D_4/W/Initializer/random_uniform/min*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W*
T0
н

Conv2D_4/W
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
shape:@ *
shared_name 
╟
Conv2D_4/W/AssignAssign
Conv2D_4/W%Conv2D_4/W/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
w
Conv2D_4/W/readIdentity
Conv2D_4/W*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W*
T0
И
Conv2D_4/b/Initializer/ConstConst*
_class
loc:@Conv2D_4/b*
valueB *    *
dtype0*
_output_shapes
: 
Х

Conv2D_4/b
VariableV2*
shape: *
_output_shapes
: *
shared_name *
_class
loc:@Conv2D_4/b*
dtype0*
	container 
▓
Conv2D_4/b/AssignAssign
Conv2D_4/bConv2D_4/b/Initializer/Const*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
k
Conv2D_4/b/readIdentity
Conv2D_4/b*
_output_shapes
: *
_class
loc:@Conv2D_4/b*
T0
╤
Conv2D_4/Conv2DConv2DMaxPool2D_3/MaxPoolConv2D_4/W/read*0
_output_shapes
:         ─ *
T0*
use_cudnn_on_gpu(*
strides
*
data_formatNHWC*
paddingSAME
П
Conv2D_4/BiasAddBiasAddConv2D_4/Conv2DConv2D_4/b/read*
data_formatNHWC*
T0*0
_output_shapes
:         ─ 
b
Conv2D_4/ReluReluConv2D_4/BiasAdd*0
_output_shapes
:         ─ *
T0
╣
MaxPool2D_4/MaxPoolMaxPoolConv2D_4/Relu*
ksize
*/
_output_shapes
:         A *
strides
*
data_formatNHWC*
T0*
paddingSAME
й
3FullyConnected/W/Initializer/truncated_normal/shapeConst*#
_class
loc:@FullyConnected/W*
valueB"      *
dtype0*
_output_shapes
:
Ь
2FullyConnected/W/Initializer/truncated_normal/meanConst*
_output_shapes
: *
dtype0*#
_class
loc:@FullyConnected/W*
valueB
 *    
Ю
4FullyConnected/W/Initializer/truncated_normal/stddevConst*#
_class
loc:@FullyConnected/W*
valueB
 *
╫г<*
dtype0*
_output_shapes
: 
√
=FullyConnected/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3FullyConnected/W/Initializer/truncated_normal/shape*
seed2 *
dtype0*#
_class
loc:@FullyConnected/W*

seed * 
_output_shapes
:
аА*
T0
¤
1FullyConnected/W/Initializer/truncated_normal/mulMul=FullyConnected/W/Initializer/truncated_normal/TruncatedNormal4FullyConnected/W/Initializer/truncated_normal/stddev*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0
ы
-FullyConnected/W/Initializer/truncated_normalAdd1FullyConnected/W/Initializer/truncated_normal/mul2FullyConnected/W/Initializer/truncated_normal/mean*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0
н
FullyConnected/W
VariableV2* 
_output_shapes
:
аА*
dtype0*
shape:
аА*
	container *#
_class
loc:@FullyConnected/W*
shared_name 
█
FullyConnected/W/AssignAssignFullyConnected/W-FullyConnected/W/Initializer/truncated_normal*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0*
validate_shape(*
use_locking(
Г
FullyConnected/W/readIdentityFullyConnected/W*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0
Ц
"FullyConnected/b/Initializer/ConstConst*
_output_shapes	
:А*
dtype0*#
_class
loc:@FullyConnected/b*
valueBА*    
г
FullyConnected/b
VariableV2*
shared_name *#
_class
loc:@FullyConnected/b*
	container *
shape:А*
dtype0*
_output_shapes	
:А
╦
FullyConnected/b/AssignAssignFullyConnected/b"FullyConnected/b/Initializer/Const*#
_class
loc:@FullyConnected/b*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(
~
FullyConnected/b/readIdentityFullyConnected/b*#
_class
loc:@FullyConnected/b*
_output_shapes	
:А*
T0
m
FullyConnected/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
Х
FullyConnected/ReshapeReshapeMaxPool2D_4/MaxPoolFullyConnected/Reshape/shape*
Tshape0*(
_output_shapes
:         а*
T0
з
FullyConnected/MatMulMatMulFullyConnected/ReshapeFullyConnected/W/read*
transpose_b( *(
_output_shapes
:         А*
transpose_a( *
T0
Щ
FullyConnected/BiasAddBiasAddFullyConnected/MatMulFullyConnected/b/read*
data_formatNHWC*
T0*(
_output_shapes
:         А
f
FullyConnected/ReluReluFullyConnected/BiasAdd*
T0*(
_output_shapes
:         А
_
Dropout/cond/SwitchSwitchis_trainingis_training/read*
_output_shapes
: : *
T0

Y
Dropout/cond/switch_tIdentityDropout/cond/Switch:1*
T0
*
_output_shapes
: 
W
Dropout/cond/switch_fIdentityDropout/cond/Switch*
T0
*
_output_shapes
: 
S
Dropout/cond/pred_idIdentityis_training/read*
_output_shapes
: *
T0

{
Dropout/cond/dropout/keep_probConst^Dropout/cond/switch_t*
valueB
 *═╠L?*
_output_shapes
: *
dtype0
┼
!Dropout/cond/dropout/Shape/SwitchSwitchFullyConnected/ReluDropout/cond/pred_id*&
_class
loc:@FullyConnected/Relu*<
_output_shapes*
(:         А:         А*
T0
}
Dropout/cond/dropout/ShapeShape#Dropout/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Д
'Dropout/cond/dropout/random_uniform/minConst^Dropout/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
Д
'Dropout/cond/dropout/random_uniform/maxConst^Dropout/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╖
1Dropout/cond/dropout/random_uniform/RandomUniformRandomUniformDropout/cond/dropout/Shape*(
_output_shapes
:         А*
seed2 *
T0*

seed *
dtype0
б
'Dropout/cond/dropout/random_uniform/subSub'Dropout/cond/dropout/random_uniform/max'Dropout/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
╜
'Dropout/cond/dropout/random_uniform/mulMul1Dropout/cond/dropout/random_uniform/RandomUniform'Dropout/cond/dropout/random_uniform/sub*(
_output_shapes
:         А*
T0
п
#Dropout/cond/dropout/random_uniformAdd'Dropout/cond/dropout/random_uniform/mul'Dropout/cond/dropout/random_uniform/min*(
_output_shapes
:         А*
T0
Ч
Dropout/cond/dropout/addAddDropout/cond/dropout/keep_prob#Dropout/cond/dropout/random_uniform*
T0*(
_output_shapes
:         А
p
Dropout/cond/dropout/FloorFloorDropout/cond/dropout/add*
T0*(
_output_shapes
:         А
Ы
Dropout/cond/dropout/divRealDiv#Dropout/cond/dropout/Shape/Switch:1Dropout/cond/dropout/keep_prob*
T0*(
_output_shapes
:         А
И
Dropout/cond/dropout/mulMulDropout/cond/dropout/divDropout/cond/dropout/Floor*(
_output_shapes
:         А*
T0
╣
Dropout/cond/Switch_1SwitchFullyConnected/ReluDropout/cond/pred_id*
T0*&
_class
loc:@FullyConnected/Relu*<
_output_shapes*
(:         А:         А
К
Dropout/cond/MergeMergeDropout/cond/Switch_1Dropout/cond/dropout/mul**
_output_shapes
:         А: *
N*
T0
н
5FullyConnected_1/W/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*%
_class
loc:@FullyConnected_1/W*
valueB"      
а
4FullyConnected_1/W/Initializer/truncated_normal/meanConst*%
_class
loc:@FullyConnected_1/W*
valueB
 *    *
dtype0*
_output_shapes
: 
в
6FullyConnected_1/W/Initializer/truncated_normal/stddevConst*%
_class
loc:@FullyConnected_1/W*
valueB
 *
╫г<*
_output_shapes
: *
dtype0
А
?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5FullyConnected_1/W/Initializer/truncated_normal/shape*
seed2 *
T0*

seed *
dtype0*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	А
Д
3FullyConnected_1/W/Initializer/truncated_normal/mulMul?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormal6FullyConnected_1/W/Initializer/truncated_normal/stddev*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	А*
T0
Є
/FullyConnected_1/W/Initializer/truncated_normalAdd3FullyConnected_1/W/Initializer/truncated_normal/mul4FullyConnected_1/W/Initializer/truncated_normal/mean*
T0*
_output_shapes
:	А*%
_class
loc:@FullyConnected_1/W
п
FullyConnected_1/W
VariableV2*
	container *
shared_name *
dtype0*
shape:	А*
_output_shapes
:	А*%
_class
loc:@FullyConnected_1/W
т
FullyConnected_1/W/AssignAssignFullyConnected_1/W/FullyConnected_1/W/Initializer/truncated_normal*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	А*
T0*
validate_shape(*
use_locking(
И
FullyConnected_1/W/readIdentityFullyConnected_1/W*
_output_shapes
:	А*%
_class
loc:@FullyConnected_1/W*
T0
Ш
$FullyConnected_1/b/Initializer/ConstConst*
dtype0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b*
valueB*    
е
FullyConnected_1/b
VariableV2*
shared_name *%
_class
loc:@FullyConnected_1/b*
	container *
shape:*
dtype0*
_output_shapes
:
╥
FullyConnected_1/b/AssignAssignFullyConnected_1/b$FullyConnected_1/b/Initializer/Const*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
Г
FullyConnected_1/b/readIdentityFullyConnected_1/b*
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
ж
FullyConnected_1/MatMulMatMulDropout/cond/MergeFullyConnected_1/W/read*
transpose_b( *
T0*'
_output_shapes
:         *
transpose_a( 
Ю
FullyConnected_1/BiasAddBiasAddFullyConnected_1/MatMulFullyConnected_1/b/read*'
_output_shapes
:         *
data_formatNHWC*
T0
o
FullyConnected_1/SoftmaxSoftmaxFullyConnected_1/BiasAdd*'
_output_shapes
:         *
T0
[
	targets/YPlaceholder*
shape: *
dtype0*'
_output_shapes
:         
[
Accuracy/ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
И
Accuracy/ArgMaxArgMaxFullyConnected_1/SoftmaxAccuracy/ArgMax/dimension*#
_output_shapes
:         *
T0*

Tidx0
]
Accuracy/ArgMax_1/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
}
Accuracy/ArgMax_1ArgMax	targets/YAccuracy/ArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:         
i
Accuracy/EqualEqualAccuracy/ArgMaxAccuracy/ArgMax_1*
T0	*#
_output_shapes
:         
b
Accuracy/CastCastAccuracy/Equal*#
_output_shapes
:         *

DstT0*

SrcT0

X
Accuracy/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
r
Accuracy/MeanMeanAccuracy/CastAccuracy/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
d
"Crossentropy/Sum/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0
д
Crossentropy/SumSumFullyConnected_1/Softmax"Crossentropy/Sum/reduction_indices*'
_output_shapes
:         *
T0*
	keep_dims(*

Tidx0
}
Crossentropy/truedivRealDivFullyConnected_1/SoftmaxCrossentropy/Sum*'
_output_shapes
:         *
T0
X
Crossentropy/Cast/xConst*
valueB
 * ц█.*
dtype0*
_output_shapes
: 
Z
Crossentropy/Cast_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
М
"Crossentropy/clip_by_value/MinimumMinimumCrossentropy/truedivCrossentropy/Cast_1/x*
T0*'
_output_shapes
:         
Р
Crossentropy/clip_by_valueMaximum"Crossentropy/clip_by_value/MinimumCrossentropy/Cast/x*'
_output_shapes
:         *
T0
e
Crossentropy/LogLogCrossentropy/clip_by_value*
T0*'
_output_shapes
:         
f
Crossentropy/mulMul	targets/YCrossentropy/Log*'
_output_shapes
:         *
T0
f
$Crossentropy/Sum_1/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
Ь
Crossentropy/Sum_1SumCrossentropy/mul$Crossentropy/Sum_1/reduction_indices*#
_output_shapes
:         *
T0*
	keep_dims( *

Tidx0
Y
Crossentropy/NegNegCrossentropy/Sum_1*
T0*#
_output_shapes
:         
\
Crossentropy/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
}
Crossentropy/MeanMeanCrossentropy/NegCrossentropy/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
`
Training_step/initial_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
q
Training_step
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 
╢
Training_step/AssignAssignTraining_stepTraining_step/initial_value*
_output_shapes
: *
validate_shape(* 
_class
loc:@Training_step*
T0*
use_locking(
p
Training_step/readIdentityTraining_step* 
_class
loc:@Training_step*
_output_shapes
: *
T0
^
Global_Step/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
o
Global_Step
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 
о
Global_Step/AssignAssignGlobal_StepGlobal_Step/initial_value*
_class
loc:@Global_Step*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
j
Global_Step/readIdentityGlobal_Step*
_class
loc:@Global_Step*
_output_shapes
: *
T0
J
Add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
D
AddAddGlobal_Step/readAdd/y*
_output_shapes
: *
T0
О
Assign_2AssignGlobal_StepAdd*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Global_Step
[
val_loss/initial_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
l
val_loss
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
в
val_loss/AssignAssignval_lossval_loss/initial_value*
_class
loc:@val_loss*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
a
val_loss/readIdentityval_loss*
_class
loc:@val_loss*
_output_shapes
: *
T0
Z
val_acc/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
k
val_acc
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
Ю
val_acc/AssignAssignval_accval_acc/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@val_acc
^
val_acc/readIdentityval_acc*
_class
loc:@val_acc*
_output_shapes
: *
T0
W
placeholder/val_lossPlaceholder*
dtype0*
shape: *
_output_shapes
:
V
placeholder/val_accPlaceholder*
_output_shapes
:*
shape: *
dtype0
а
assign/val_lossAssignval_lossplaceholder/val_loss*
_output_shapes
: *
validate_shape(*
_class
loc:@val_loss*
T0*
use_locking(
Ь
assign/val_accAssignval_accplaceholder/val_acc*
use_locking(*
T0*
_class
loc:@val_acc*
validate_shape(*
_output_shapes
: 
J
zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
|
Accuracy/Mean/moving_avg
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 
┴
Accuracy/Mean/moving_avg/AssignAssignAccuracy/Mean/moving_avgzeros*
use_locking(*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
С
Accuracy/Mean/moving_avg/readIdentityAccuracy/Mean/moving_avg*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: *
T0
U
moving_avg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *fff?
U
moving_avg/add/xConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
\
moving_avg/addAddmoving_avg/add/xTraining_step/read*
T0*
_output_shapes
: 
W
moving_avg/add_1/xConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
`
moving_avg/add_1Addmoving_avg/add_1/xTraining_step/read*
_output_shapes
: *
T0
`
moving_avg/truedivRealDivmoving_avg/addmoving_avg/add_1*
T0*
_output_shapes
: 
d
moving_avg/MinimumMinimummoving_avg/decaymoving_avg/truediv*
_output_shapes
: *
T0
Т
 moving_avg/AssignMovingAvg/sub/xConst*
valueB
 *  А?*+
_class!
loc:@Accuracy/Mean/moving_avg*
dtype0*
_output_shapes
: 
й
moving_avg/AssignMovingAvg/subSub moving_avg/AssignMovingAvg/sub/xmoving_avg/Minimum*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: *
T0
г
 moving_avg/AssignMovingAvg/sub_1SubAccuracy/Mean/moving_avg/readAccuracy/Mean*
T0*
_output_shapes
: *+
_class!
loc:@Accuracy/Mean/moving_avg
╡
moving_avg/AssignMovingAvg/mulMul moving_avg/AssignMovingAvg/sub_1moving_avg/AssignMovingAvg/sub*
T0*
_output_shapes
: *+
_class!
loc:@Accuracy/Mean/moving_avg
┬
moving_avg/AssignMovingAvg	AssignSubAccuracy/Mean/moving_avgmoving_avg/AssignMovingAvg/mul*
use_locking( *
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
/

moving_avgNoOp^moving_avg/AssignMovingAvg
O
Adam/Total_LossIdentityCrossentropy/Mean*
T0*
_output_shapes
: 
O

Adam/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
А
Crossentropy/Mean/moving_avg
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 
╥
#Crossentropy/Mean/moving_avg/AssignAssignCrossentropy/Mean/moving_avg
Adam/zeros*
_output_shapes
: *
validate_shape(*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
T0*
use_locking(
Э
!Crossentropy/Mean/moving_avg/readIdentityCrossentropy/Mean/moving_avg*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
Z
Adam/moving_avg/decayConst*
dtype0*
_output_shapes
: *
valueB
 *fff?
Z
Adam/moving_avg/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
f
Adam/moving_avg/addAddAdam/moving_avg/add/xTraining_step/read*
T0*
_output_shapes
: 
\
Adam/moving_avg/add_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *   A
j
Adam/moving_avg/add_1AddAdam/moving_avg/add_1/xTraining_step/read*
T0*
_output_shapes
: 
o
Adam/moving_avg/truedivRealDivAdam/moving_avg/addAdam/moving_avg/add_1*
_output_shapes
: *
T0
s
Adam/moving_avg/MinimumMinimumAdam/moving_avg/decayAdam/moving_avg/truediv*
T0*
_output_shapes
: 
Ы
%Adam/moving_avg/AssignMovingAvg/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?*/
_class%
#!loc:@Crossentropy/Mean/moving_avg
╝
#Adam/moving_avg/AssignMovingAvg/subSub%Adam/moving_avg/AssignMovingAvg/sub/xAdam/moving_avg/Minimum*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
┤
%Adam/moving_avg/AssignMovingAvg/sub_1Sub!Crossentropy/Mean/moving_avg/readCrossentropy/Mean*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
╚
#Adam/moving_avg/AssignMovingAvg/mulMul%Adam/moving_avg/AssignMovingAvg/sub_1#Adam/moving_avg/AssignMovingAvg/sub*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: *
T0
╘
Adam/moving_avg/AssignMovingAvg	AssignSubCrossentropy/Mean/moving_avg#Adam/moving_avg/AssignMovingAvg/mul*
use_locking( *
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
9
Adam/moving_avgNoOp ^Adam/moving_avg/AssignMovingAvg
N
	Loss/tagsConst*
valueB
 BLoss*
dtype0*
_output_shapes
: 
d
LossScalarSummary	Loss/tags!Crossentropy/Mean/moving_avg/read*
_output_shapes
: *
T0
`
Adam/Loss/raw/tagsConst*
_output_shapes
: *
dtype0*
valueB BAdam/Loss/raw
f
Adam/Loss/rawScalarSummaryAdam/Loss/raw/tagsCrossentropy/Mean*
T0*
_output_shapes
: 
v
Adam/gradients/ShapeConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB 
x
Adam/gradients/ConstConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB
 *  А?
h
Adam/gradients/FillFillAdam/gradients/ShapeAdam/gradients/Const*
T0*
_output_shapes
: 
Ь
3Adam/gradients/Crossentropy/Mean_grad/Reshape/shapeConst^Adam/moving_avg^moving_avg*
valueB:*
dtype0*
_output_shapes
:
╡
-Adam/gradients/Crossentropy/Mean_grad/ReshapeReshapeAdam/gradients/Fill3Adam/gradients/Crossentropy/Mean_grad/Reshape/shape*
T0*
_output_shapes
:*
Tshape0
Ъ
+Adam/gradients/Crossentropy/Mean_grad/ShapeShapeCrossentropy/Neg^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
╬
*Adam/gradients/Crossentropy/Mean_grad/TileTile-Adam/gradients/Crossentropy/Mean_grad/Reshape+Adam/gradients/Crossentropy/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:         
Ь
-Adam/gradients/Crossentropy/Mean_grad/Shape_1ShapeCrossentropy/Neg^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
П
-Adam/gradients/Crossentropy/Mean_grad/Shape_2Const^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB 
Ф
+Adam/gradients/Crossentropy/Mean_grad/ConstConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*
valueB: 
╠
*Adam/gradients/Crossentropy/Mean_grad/ProdProd-Adam/gradients/Crossentropy/Mean_grad/Shape_1+Adam/gradients/Crossentropy/Mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
Ц
-Adam/gradients/Crossentropy/Mean_grad/Const_1Const^Adam/moving_avg^moving_avg*
valueB: *
dtype0*
_output_shapes
:
╨
,Adam/gradients/Crossentropy/Mean_grad/Prod_1Prod-Adam/gradients/Crossentropy/Mean_grad/Shape_2-Adam/gradients/Crossentropy/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
Р
/Adam/gradients/Crossentropy/Mean_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
╕
-Adam/gradients/Crossentropy/Mean_grad/MaximumMaximum,Adam/gradients/Crossentropy/Mean_grad/Prod_1/Adam/gradients/Crossentropy/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
╢
.Adam/gradients/Crossentropy/Mean_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Mean_grad/Prod-Adam/gradients/Crossentropy/Mean_grad/Maximum*
_output_shapes
: *
T0
Т
*Adam/gradients/Crossentropy/Mean_grad/CastCast.Adam/gradients/Crossentropy/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
╛
-Adam/gradients/Crossentropy/Mean_grad/truedivRealDiv*Adam/gradients/Crossentropy/Mean_grad/Tile*Adam/gradients/Crossentropy/Mean_grad/Cast*
T0*#
_output_shapes
:         
М
(Adam/gradients/Crossentropy/Neg_grad/NegNeg-Adam/gradients/Crossentropy/Mean_grad/truediv*#
_output_shapes
:         *
T0
Ы
,Adam/gradients/Crossentropy/Sum_1_grad/ShapeShapeCrossentropy/mul^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
М
+Adam/gradients/Crossentropy/Sum_1_grad/SizeConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*
_output_shapes
: 
е
*Adam/gradients/Crossentropy/Sum_1_grad/addAdd$Crossentropy/Sum_1/reduction_indices+Adam/gradients/Crossentropy/Sum_1_grad/Size*
_output_shapes
: *
T0
░
*Adam/gradients/Crossentropy/Sum_1_grad/modFloorMod*Adam/gradients/Crossentropy/Sum_1_grad/add+Adam/gradients/Crossentropy/Sum_1_grad/Size*
_output_shapes
: *
T0
Р
.Adam/gradients/Crossentropy/Sum_1_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
_output_shapes
: *
dtype0
У
2Adam/gradients/Crossentropy/Sum_1_grad/range/startConst^Adam/moving_avg^moving_avg*
value	B : *
_output_shapes
: *
dtype0
У
2Adam/gradients/Crossentropy/Sum_1_grad/range/deltaConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
Є
,Adam/gradients/Crossentropy/Sum_1_grad/rangeRange2Adam/gradients/Crossentropy/Sum_1_grad/range/start+Adam/gradients/Crossentropy/Sum_1_grad/Size2Adam/gradients/Crossentropy/Sum_1_grad/range/delta*

Tidx0*
_output_shapes
:
Т
1Adam/gradients/Crossentropy/Sum_1_grad/Fill/valueConst^Adam/moving_avg^moving_avg*
value	B :*
_output_shapes
: *
dtype0
╖
+Adam/gradients/Crossentropy/Sum_1_grad/FillFill.Adam/gradients/Crossentropy/Sum_1_grad/Shape_11Adam/gradients/Crossentropy/Sum_1_grad/Fill/value*
T0*
_output_shapes
: 
▒
4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitchDynamicStitch,Adam/gradients/Crossentropy/Sum_1_grad/range*Adam/gradients/Crossentropy/Sum_1_grad/mod,Adam/gradients/Crossentropy/Sum_1_grad/Shape+Adam/gradients/Crossentropy/Sum_1_grad/Fill*
T0*
N*#
_output_shapes
:         
С
0Adam/gradients/Crossentropy/Sum_1_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*
_output_shapes
: 
╧
.Adam/gradients/Crossentropy/Sum_1_grad/MaximumMaximum4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitch0Adam/gradients/Crossentropy/Sum_1_grad/Maximum/y*#
_output_shapes
:         *
T0
╛
/Adam/gradients/Crossentropy/Sum_1_grad/floordivFloorDiv,Adam/gradients/Crossentropy/Sum_1_grad/Shape.Adam/gradients/Crossentropy/Sum_1_grad/Maximum*
_output_shapes
:*
T0
╩
.Adam/gradients/Crossentropy/Sum_1_grad/ReshapeReshape(Adam/gradients/Crossentropy/Neg_grad/Neg4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
╪
+Adam/gradients/Crossentropy/Sum_1_grad/TileTile.Adam/gradients/Crossentropy/Sum_1_grad/Reshape/Adam/gradients/Crossentropy/Sum_1_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:         
Т
*Adam/gradients/Crossentropy/mul_grad/ShapeShape	targets/Y^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
Ы
,Adam/gradients/Crossentropy/mul_grad/Shape_1ShapeCrossentropy/Log^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
ъ
:Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgsBroadcastGradientArgs*Adam/gradients/Crossentropy/mul_grad/Shape,Adam/gradients/Crossentropy/mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0
а
(Adam/gradients/Crossentropy/mul_grad/mulMul+Adam/gradients/Crossentropy/Sum_1_grad/TileCrossentropy/Log*
T0*'
_output_shapes
:         
╒
(Adam/gradients/Crossentropy/mul_grad/SumSum(Adam/gradients/Crossentropy/mul_grad/mul:Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
═
,Adam/gradients/Crossentropy/mul_grad/ReshapeReshape(Adam/gradients/Crossentropy/mul_grad/Sum*Adam/gradients/Crossentropy/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
Ы
*Adam/gradients/Crossentropy/mul_grad/mul_1Mul	targets/Y+Adam/gradients/Crossentropy/Sum_1_grad/Tile*'
_output_shapes
:         *
T0
█
*Adam/gradients/Crossentropy/mul_grad/Sum_1Sum*Adam/gradients/Crossentropy/mul_grad/mul_1<Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
╙
.Adam/gradients/Crossentropy/mul_grad/Reshape_1Reshape*Adam/gradients/Crossentropy/mul_grad/Sum_1,Adam/gradients/Crossentropy/mul_grad/Shape_1*
Tshape0*'
_output_shapes
:         *
T0
█
/Adam/gradients/Crossentropy/Log_grad/Reciprocal
ReciprocalCrossentropy/clip_by_value^Adam/moving_avg^moving_avg/^Adam/gradients/Crossentropy/mul_grad/Reshape_1*
T0*'
_output_shapes
:         
┬
(Adam/gradients/Crossentropy/Log_grad/mulMul.Adam/gradients/Crossentropy/mul_grad/Reshape_1/Adam/gradients/Crossentropy/Log_grad/Reciprocal*'
_output_shapes
:         *
T0
╡
4Adam/gradients/Crossentropy/clip_by_value_grad/ShapeShape"Crossentropy/clip_by_value/Minimum^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
Ш
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB 
Ю
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2Shape(Adam/gradients/Crossentropy/Log_grad/mul*
out_type0*
_output_shapes
:*
T0
Ю
:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *    *
dtype0*
_output_shapes
: 
т
4Adam/gradients/Crossentropy/clip_by_value_grad/zerosFill6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/Const*
T0*'
_output_shapes
:         
╒
;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqualGreaterEqual"Crossentropy/clip_by_value/MinimumCrossentropy/Cast/x^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:         
И
DAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs4Adam/gradients/Crossentropy/clip_by_value_grad/Shape6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*2
_output_shapes 
:         :         *
T0
О
5Adam/gradients/Crossentropy/clip_by_value_grad/SelectSelect;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual(Adam/gradients/Crossentropy/Log_grad/mul4Adam/gradients/Crossentropy/clip_by_value_grad/zeros*
T0*'
_output_shapes
:         
н
9Adam/gradients/Crossentropy/clip_by_value_grad/LogicalNot
LogicalNot;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual*'
_output_shapes
:         
О
7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1Select9Adam/gradients/Crossentropy/clip_by_value_grad/LogicalNot(Adam/gradients/Crossentropy/Log_grad/mul4Adam/gradients/Crossentropy/clip_by_value_grad/zeros*'
_output_shapes
:         *
T0
Ў
2Adam/gradients/Crossentropy/clip_by_value_grad/SumSum5Adam/gradients/Crossentropy/clip_by_value_grad/SelectDAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ы
6Adam/gradients/Crossentropy/clip_by_value_grad/ReshapeReshape2Adam/gradients/Crossentropy/clip_by_value_grad/Sum4Adam/gradients/Crossentropy/clip_by_value_grad/Shape*
Tshape0*'
_output_shapes
:         *
T0
№
4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_1Sum7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1FAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
р
8Adam/gradients/Crossentropy/clip_by_value_grad/Reshape_1Reshape4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_16Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
п
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ShapeShapeCrossentropy/truediv^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
а
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
_output_shapes
: *
dtype0
┤
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_2Shape6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape*
out_type0*
_output_shapes
:*
T0
ж
BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB
 *    
·
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zerosFill>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_2BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:         
╦
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualCrossentropy/truedivCrossentropy/Cast_1/x^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:         
а
LAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:         :         *
T0
▒
=Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SelectSelect@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:         
║
AAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/LogicalNot
LogicalNot@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual*'
_output_shapes
:         
┤
?Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Select_1SelectAAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/LogicalNot6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:         *
T0
О
:Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SumSum=Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SelectLAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Г
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ReshapeReshape:Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
Ф
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum_1Sum?Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Select_1NAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
°
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum_1>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
е
.Adam/gradients/Crossentropy/truediv_grad/ShapeShapeFullyConnected_1/Softmax^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
Я
0Adam/gradients/Crossentropy/truediv_grad/Shape_1ShapeCrossentropy/Sum^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
Ў
>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs.Adam/gradients/Crossentropy/truediv_grad/Shape0Adam/gradients/Crossentropy/truediv_grad/Shape_1*2
_output_shapes 
:         :         *
T0
┐
0Adam/gradients/Crossentropy/truediv_grad/RealDivRealDiv>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ReshapeCrossentropy/Sum*'
_output_shapes
:         *
T0
х
,Adam/gradients/Crossentropy/truediv_grad/SumSum0Adam/gradients/Crossentropy/truediv_grad/RealDiv>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
┘
0Adam/gradients/Crossentropy/truediv_grad/ReshapeReshape,Adam/gradients/Crossentropy/truediv_grad/Sum.Adam/gradients/Crossentropy/truediv_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
Ю
,Adam/gradients/Crossentropy/truediv_grad/NegNegFullyConnected_1/Softmax^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:         
п
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1RealDiv,Adam/gradients/Crossentropy/truediv_grad/NegCrossentropy/Sum*'
_output_shapes
:         *
T0
╡
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_2RealDiv2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1Crossentropy/Sum*
T0*'
_output_shapes
:         
┘
,Adam/gradients/Crossentropy/truediv_grad/mulMul>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Reshape2Adam/gradients/Crossentropy/truediv_grad/RealDiv_2*'
_output_shapes
:         *
T0
х
.Adam/gradients/Crossentropy/truediv_grad/Sum_1Sum,Adam/gradients/Crossentropy/truediv_grad/mul@Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
▀
2Adam/gradients/Crossentropy/truediv_grad/Reshape_1Reshape.Adam/gradients/Crossentropy/truediv_grad/Sum_10Adam/gradients/Crossentropy/truediv_grad/Shape_1*
T0*'
_output_shapes
:         *
Tshape0
б
*Adam/gradients/Crossentropy/Sum_grad/ShapeShapeFullyConnected_1/Softmax^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
К
)Adam/gradients/Crossentropy/Sum_grad/SizeConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
Я
(Adam/gradients/Crossentropy/Sum_grad/addAdd"Crossentropy/Sum/reduction_indices)Adam/gradients/Crossentropy/Sum_grad/Size*
_output_shapes
: *
T0
к
(Adam/gradients/Crossentropy/Sum_grad/modFloorMod(Adam/gradients/Crossentropy/Sum_grad/add)Adam/gradients/Crossentropy/Sum_grad/Size*
T0*
_output_shapes
: 
О
,Adam/gradients/Crossentropy/Sum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
С
0Adam/gradients/Crossentropy/Sum_grad/range/startConst^Adam/moving_avg^moving_avg*
value	B : *
_output_shapes
: *
dtype0
С
0Adam/gradients/Crossentropy/Sum_grad/range/deltaConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*
_output_shapes
: 
ъ
*Adam/gradients/Crossentropy/Sum_grad/rangeRange0Adam/gradients/Crossentropy/Sum_grad/range/start)Adam/gradients/Crossentropy/Sum_grad/Size0Adam/gradients/Crossentropy/Sum_grad/range/delta*
_output_shapes
:*

Tidx0
Р
/Adam/gradients/Crossentropy/Sum_grad/Fill/valueConst^Adam/moving_avg^moving_avg*
value	B :*
_output_shapes
: *
dtype0
▒
)Adam/gradients/Crossentropy/Sum_grad/FillFill,Adam/gradients/Crossentropy/Sum_grad/Shape_1/Adam/gradients/Crossentropy/Sum_grad/Fill/value*
_output_shapes
: *
T0
з
2Adam/gradients/Crossentropy/Sum_grad/DynamicStitchDynamicStitch*Adam/gradients/Crossentropy/Sum_grad/range(Adam/gradients/Crossentropy/Sum_grad/mod*Adam/gradients/Crossentropy/Sum_grad/Shape)Adam/gradients/Crossentropy/Sum_grad/Fill*
T0*
N*#
_output_shapes
:         
П
.Adam/gradients/Crossentropy/Sum_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*
_output_shapes
: 
╔
,Adam/gradients/Crossentropy/Sum_grad/MaximumMaximum2Adam/gradients/Crossentropy/Sum_grad/DynamicStitch.Adam/gradients/Crossentropy/Sum_grad/Maximum/y*
T0*#
_output_shapes
:         
╕
-Adam/gradients/Crossentropy/Sum_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Sum_grad/Shape,Adam/gradients/Crossentropy/Sum_grad/Maximum*
_output_shapes
:*
T0
╨
,Adam/gradients/Crossentropy/Sum_grad/ReshapeReshape2Adam/gradients/Crossentropy/truediv_grad/Reshape_12Adam/gradients/Crossentropy/Sum_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
╥
)Adam/gradients/Crossentropy/Sum_grad/TileTile,Adam/gradients/Crossentropy/Sum_grad/Reshape-Adam/gradients/Crossentropy/Sum_grad/floordiv*'
_output_shapes
:         *
T0*

Tmultiples0
°
Adam/gradients/AddNAddN0Adam/gradients/Crossentropy/truediv_grad/Reshape)Adam/gradients/Crossentropy/Sum_grad/Tile*'
_output_shapes
:         *
N*C
_class9
75loc:@Adam/gradients/Crossentropy/truediv_grad/Reshape*
T0
Ш
0Adam/gradients/FullyConnected_1/Softmax_grad/mulMulAdam/gradients/AddNFullyConnected_1/Softmax*'
_output_shapes
:         *
T0
л
BAdam/gradients/FullyConnected_1/Softmax_grad/Sum/reduction_indicesConst^Adam/moving_avg^moving_avg*
valueB:*
dtype0*
_output_shapes
:
°
0Adam/gradients/FullyConnected_1/Softmax_grad/SumSum0Adam/gradients/FullyConnected_1/Softmax_grad/mulBAdam/gradients/FullyConnected_1/Softmax_grad/Sum/reduction_indices*#
_output_shapes
:         *
T0*
	keep_dims( *

Tidx0
к
:Adam/gradients/FullyConnected_1/Softmax_grad/Reshape/shapeConst^Adam/moving_avg^moving_avg*
valueB"       *
dtype0*
_output_shapes
:
э
4Adam/gradients/FullyConnected_1/Softmax_grad/ReshapeReshape0Adam/gradients/FullyConnected_1/Softmax_grad/Sum:Adam/gradients/FullyConnected_1/Softmax_grad/Reshape/shape*'
_output_shapes
:         *
Tshape0*
T0
┤
0Adam/gradients/FullyConnected_1/Softmax_grad/subSubAdam/gradients/AddN4Adam/gradients/FullyConnected_1/Softmax_grad/Reshape*'
_output_shapes
:         *
T0
╖
2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1Mul0Adam/gradients/FullyConnected_1/Softmax_grad/subFullyConnected_1/Softmax*'
_output_shapes
:         *
T0
╖
8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1*
_output_shapes
:*
T0*
data_formatNHWC
т
2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulMatMul2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1FullyConnected_1/W/read*
transpose_b(*
T0*(
_output_shapes
:         А*
transpose_a( 
╓
4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1MatMulDropout/cond/Merge2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1*
transpose_b( *
T0*
_output_shapes
:	А*
transpose_a(
Т
0Adam/gradients/Dropout/cond/Merge_grad/cond_gradSwitch2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulDropout/cond/pred_id*<
_output_shapes*
(:         А:         А*E
_class;
97loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul*
T0
░
Adam/gradients/SwitchSwitchFullyConnected/ReluDropout/cond/pred_id^Adam/moving_avg^moving_avg*<
_output_shapes*
(:         А:         А*
T0
m
Adam/gradients/Shape_1ShapeAdam/gradients/Switch:1*
T0*
out_type0*
_output_shapes
:
~
Adam/gradients/zeros/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *    *
_output_shapes
: *
dtype0
Г
Adam/gradients/zerosFillAdam/gradients/Shape_1Adam/gradients/zeros/Const*(
_output_shapes
:         А*
T0
┬
3Adam/gradients/Dropout/cond/Switch_1_grad/cond_gradMerge0Adam/gradients/Dropout/cond/Merge_grad/cond_gradAdam/gradients/zeros*
N*
T0**
_output_shapes
:         А: 
й
2Adam/gradients/Dropout/cond/dropout/mul_grad/ShapeShapeDropout/cond/dropout/div^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
н
4Adam/gradients/Dropout/cond/dropout/mul_grad/Shape_1ShapeDropout/cond/dropout/Floor^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
В
BAdam/gradients/Dropout/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2Adam/gradients/Dropout/cond/dropout/mul_grad/Shape4Adam/gradients/Dropout/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0
║
0Adam/gradients/Dropout/cond/dropout/mul_grad/mulMul2Adam/gradients/Dropout/cond/Merge_grad/cond_grad:1Dropout/cond/dropout/Floor*(
_output_shapes
:         А*
T0
э
0Adam/gradients/Dropout/cond/dropout/mul_grad/SumSum0Adam/gradients/Dropout/cond/dropout/mul_grad/mulBAdam/gradients/Dropout/cond/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ц
4Adam/gradients/Dropout/cond/dropout/mul_grad/ReshapeReshape0Adam/gradients/Dropout/cond/dropout/mul_grad/Sum2Adam/gradients/Dropout/cond/dropout/mul_grad/Shape*
Tshape0*(
_output_shapes
:         А*
T0
║
2Adam/gradients/Dropout/cond/dropout/mul_grad/mul_1MulDropout/cond/dropout/div2Adam/gradients/Dropout/cond/Merge_grad/cond_grad:1*
T0*(
_output_shapes
:         А
є
2Adam/gradients/Dropout/cond/dropout/mul_grad/Sum_1Sum2Adam/gradients/Dropout/cond/dropout/mul_grad/mul_1DAdam/gradients/Dropout/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ь
6Adam/gradients/Dropout/cond/dropout/mul_grad/Reshape_1Reshape2Adam/gradients/Dropout/cond/dropout/mul_grad/Sum_14Adam/gradients/Dropout/cond/dropout/mul_grad/Shape_1*(
_output_shapes
:         А*
Tshape0*
T0
┤
2Adam/gradients/Dropout/cond/dropout/div_grad/ShapeShape#Dropout/cond/dropout/Shape/Switch:1^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
Ц
4Adam/gradients/Dropout/cond/dropout/div_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
В
BAdam/gradients/Dropout/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs2Adam/gradients/Dropout/cond/dropout/div_grad/Shape4Adam/gradients/Dropout/cond/dropout/div_grad/Shape_1*2
_output_shapes 
:         :         *
T0
╚
4Adam/gradients/Dropout/cond/dropout/div_grad/RealDivRealDiv4Adam/gradients/Dropout/cond/dropout/mul_grad/ReshapeDropout/cond/dropout/keep_prob*
T0*(
_output_shapes
:         А
ё
0Adam/gradients/Dropout/cond/dropout/div_grad/SumSum4Adam/gradients/Dropout/cond/dropout/div_grad/RealDivBAdam/gradients/Dropout/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ц
4Adam/gradients/Dropout/cond/dropout/div_grad/ReshapeReshape0Adam/gradients/Dropout/cond/dropout/div_grad/Sum2Adam/gradients/Dropout/cond/dropout/div_grad/Shape*
Tshape0*(
_output_shapes
:         А*
T0
о
0Adam/gradients/Dropout/cond/dropout/div_grad/NegNeg#Dropout/cond/dropout/Shape/Switch:1^Adam/moving_avg^moving_avg*(
_output_shapes
:         А*
T0
╞
6Adam/gradients/Dropout/cond/dropout/div_grad/RealDiv_1RealDiv0Adam/gradients/Dropout/cond/dropout/div_grad/NegDropout/cond/dropout/keep_prob*
T0*(
_output_shapes
:         А
╠
6Adam/gradients/Dropout/cond/dropout/div_grad/RealDiv_2RealDiv6Adam/gradients/Dropout/cond/dropout/div_grad/RealDiv_1Dropout/cond/dropout/keep_prob*(
_output_shapes
:         А*
T0
╪
0Adam/gradients/Dropout/cond/dropout/div_grad/mulMul4Adam/gradients/Dropout/cond/dropout/mul_grad/Reshape6Adam/gradients/Dropout/cond/dropout/div_grad/RealDiv_2*(
_output_shapes
:         А*
T0
ё
2Adam/gradients/Dropout/cond/dropout/div_grad/Sum_1Sum0Adam/gradients/Dropout/cond/dropout/div_grad/mulDAdam/gradients/Dropout/cond/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
┌
6Adam/gradients/Dropout/cond/dropout/div_grad/Reshape_1Reshape2Adam/gradients/Dropout/cond/dropout/div_grad/Sum_14Adam/gradients/Dropout/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
▓
Adam/gradients/Switch_1SwitchFullyConnected/ReluDropout/cond/pred_id^Adam/moving_avg^moving_avg*<
_output_shapes*
(:         А:         А*
T0
m
Adam/gradients/Shape_2ShapeAdam/gradients/Switch_1*
T0*
out_type0*
_output_shapes
:
А
Adam/gradients/zeros_1/ConstConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB
 *    
З
Adam/gradients/zeros_1FillAdam/gradients/Shape_2Adam/gradients/zeros_1/Const*
T0*(
_output_shapes
:         А
╘
?Adam/gradients/Dropout/cond/dropout/Shape/Switch_grad/cond_gradMerge4Adam/gradients/Dropout/cond/dropout/div_grad/ReshapeAdam/gradients/zeros_1**
_output_shapes
:         А: *
T0*
N
Ч
Adam/gradients/AddN_1AddN3Adam/gradients/Dropout/cond/Switch_1_grad/cond_grad?Adam/gradients/Dropout/cond/dropout/Shape/Switch_grad/cond_grad*
N*
T0*(
_output_shapes
:         А*F
_class<
:8loc:@Adam/gradients/Dropout/cond/Switch_1_grad/cond_grad
Ы
0Adam/gradients/FullyConnected/Relu_grad/ReluGradReluGradAdam/gradients/AddN_1FullyConnected/Relu*(
_output_shapes
:         А*
T0
┤
6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradBiasAddGrad0Adam/gradients/FullyConnected/Relu_grad/ReluGrad*
_output_shapes	
:А*
data_formatNHWC*
T0
▄
0Adam/gradients/FullyConnected/MatMul_grad/MatMulMatMul0Adam/gradients/FullyConnected/Relu_grad/ReluGradFullyConnected/W/read*
transpose_b(*(
_output_shapes
:         а*
transpose_a( *
T0
╫
2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1MatMulFullyConnected/Reshape0Adam/gradients/FullyConnected/Relu_grad/ReluGrad*
transpose_b( * 
_output_shapes
:
аА*
transpose_a(*
T0
в
0Adam/gradients/FullyConnected/Reshape_grad/ShapeShapeMaxPool2D_4/MaxPool^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
щ
2Adam/gradients/FullyConnected/Reshape_grad/ReshapeReshape0Adam/gradients/FullyConnected/MatMul_grad/MatMul0Adam/gradients/FullyConnected/Reshape_grad/Shape*
Tshape0*/
_output_shapes
:         A *
T0
з
3Adam/gradients/MaxPool2D_4/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_4/ReluMaxPool2D_4/MaxPool2Adam/gradients/FullyConnected/Reshape_grad/Reshape*
ksize
*0
_output_shapes
:         ─ *
T0*
data_formatNHWC*
strides
*
paddingSAME
╡
*Adam/gradients/Conv2D_4/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_4/MaxPool_grad/MaxPoolGradConv2D_4/Relu*0
_output_shapes
:         ─ *
T0
з
0Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_4/Relu_grad/ReluGrad*
_output_shapes
: *
data_formatNHWC*
T0
Ы
)Adam/gradients/Conv2D_4/Conv2D_grad/ShapeShapeMaxPool2D_3/MaxPool^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
╚
7Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_4/Conv2D_grad/ShapeConv2D_4/W/read*Adam/gradients/Conv2D_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         ─@
г
+Adam/gradients/Conv2D_4/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*%
valueB"      @       
╞
8Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D_3/MaxPool+Adam/gradients/Conv2D_4/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_4/Relu_grad/ReluGrad*&
_output_shapes
:@ *
T0*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
paddingSAME
м
3Adam/gradients/MaxPool2D_3/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_3/ReluMaxPool2D_3/MaxPool7Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropInput*
paddingSAME*
data_formatNHWC*
strides
*
T0*0
_output_shapes
:         ╘@*
ksize

╡
*Adam/gradients/Conv2D_3/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_3/MaxPool_grad/MaxPoolGradConv2D_3/Relu*0
_output_shapes
:         ╘@*
T0
з
0Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_3/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
:@
Ы
)Adam/gradients/Conv2D_3/Conv2D_grad/ShapeShapeMaxPool2D_2/MaxPool^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
╔
7Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_3/Conv2D_grad/ShapeConv2D_3/W/read*Adam/gradients/Conv2D_3/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*1
_output_shapes
:         ╘А*
data_formatNHWC*
strides
*
T0*
paddingSAME
г
+Adam/gradients/Conv2D_3/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*%
valueB"      А   @   *
dtype0*
_output_shapes
:
╟
8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D_2/MaxPool+Adam/gradients/Conv2D_3/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_3/Relu_grad/ReluGrad*
paddingSAME*
T0*
data_formatNHWC*
strides
*'
_output_shapes
:А@*
use_cudnn_on_gpu(
н
3Adam/gradients/MaxPool2D_2/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_2/ReluMaxPool2D_2/MaxPool7Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropInput*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*1
_output_shapes
:         д?А
╢
*Adam/gradients/Conv2D_2/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_2/MaxPool_grad/MaxPoolGradConv2D_2/Relu*
T0*1
_output_shapes
:         д?А
и
0Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_2/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:А
Ы
)Adam/gradients/Conv2D_2/Conv2D_grad/ShapeShapeMaxPool2D_1/MaxPool^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
╚
7Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_2/Conv2D_grad/ShapeConv2D_2/W/read*Adam/gradients/Conv2D_2/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
T0*
paddingSAME*0
_output_shapes
:         д?@*
data_formatNHWC*
strides

г
+Adam/gradients/Conv2D_2/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*%
valueB"      @   А   *
dtype0*
_output_shapes
:
╟
8Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D_1/MaxPool+Adam/gradients/Conv2D_2/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_2/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*'
_output_shapes
:@А*
paddingSAME*
T0*
use_cudnn_on_gpu(
н
3Adam/gradients/MaxPool2D_1/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_1/ReluMaxPool2D_1/MaxPool7Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropInput*
paddingSAME*
data_formatNHWC*
strides
*
T0*1
_output_shapes
:         ┤╝@*
ksize

╢
*Adam/gradients/Conv2D_1/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_1/MaxPool_grad/MaxPoolGradConv2D_1/Relu*1
_output_shapes
:         ┤╝@*
T0
з
0Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_1/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
:@
Щ
)Adam/gradients/Conv2D_1/Conv2D_grad/ShapeShapeMaxPool2D/MaxPool^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
╔
7Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_1/Conv2D_grad/ShapeConv2D_1/W/read*Adam/gradients/Conv2D_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         ┤╝ 
г
+Adam/gradients/Conv2D_1/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
:*
dtype0*%
valueB"          @   
─
8Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D/MaxPool+Adam/gradients/Conv2D_1/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_1/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
T0*
paddingSAME*&
_output_shapes
: @*
data_formatNHWC*
strides

з
1Adam/gradients/MaxPool2D/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D/ReluMaxPool2D/MaxPool7Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropInput*
ksize
*
T0*
paddingSAME*1
_output_shapes
:         До *
data_formatNHWC*
strides

░
(Adam/gradients/Conv2D/Relu_grad/ReluGradReluGrad1Adam/gradients/MaxPool2D/MaxPool_grad/MaxPoolGradConv2D/Relu*
T0*1
_output_shapes
:         До 
г
.Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGradBiasAddGrad(Adam/gradients/Conv2D/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
: 
Н
'Adam/gradients/Conv2D/Conv2D_grad/ShapeShapeinput/X^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
┴
5Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput'Adam/gradients/Conv2D/Conv2D_grad/ShapeConv2D/W/read(Adam/gradients/Conv2D/Relu_grad/ReluGrad*
paddingSAME*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*1
_output_shapes
:         До
б
)Adam/gradients/Conv2D/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*%
valueB"             *
_output_shapes
:*
dtype0
┤
6Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinput/X)Adam/gradients/Conv2D/Conv2D_grad/Shape_1(Adam/gradients/Conv2D/Relu_grad/ReluGrad*&
_output_shapes
: *
T0*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
paddingSAME
┼
Adam/global_norm/L2LossL2Loss6Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter*
T0*
_output_shapes
: *I
_class?
=;loc:@Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter
╖
Adam/global_norm/L2Loss_1L2Loss.Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: *A
_class7
53loc:@Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad
╦
Adam/global_norm/L2Loss_2L2Loss8Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter*
T0
╗
Adam/global_norm/L2Loss_3L2Loss0Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad*
T0
╦
Adam/global_norm/L2Loss_4L2Loss8Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*
T0
╗
Adam/global_norm/L2Loss_5L2Loss0Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
T0*C
_class9
75loc:@Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
╦
Adam/global_norm/L2Loss_6L2Loss8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter*
T0*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter
╗
Adam/global_norm/L2Loss_7L2Loss0Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad*
T0*C
_class9
75loc:@Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
╦
Adam/global_norm/L2Loss_8L2Loss8Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter*
T0*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter
╗
Adam/global_norm/L2Loss_9L2Loss0Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad*C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
└
Adam/global_norm/L2Loss_10L2Loss2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes
: 
╚
Adam/global_norm/L2Loss_11L2Loss6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
T0
─
Adam/global_norm/L2Loss_12L2Loss4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes
: *
T0
╠
Adam/global_norm/L2Loss_13L2Loss8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad
╘
Adam/global_norm/stackPackAdam/global_norm/L2LossAdam/global_norm/L2Loss_1Adam/global_norm/L2Loss_2Adam/global_norm/L2Loss_3Adam/global_norm/L2Loss_4Adam/global_norm/L2Loss_5Adam/global_norm/L2Loss_6Adam/global_norm/L2Loss_7Adam/global_norm/L2Loss_8Adam/global_norm/L2Loss_9Adam/global_norm/L2Loss_10Adam/global_norm/L2Loss_11Adam/global_norm/L2Loss_12Adam/global_norm/L2Loss_13*

axis *
_output_shapes
:*
T0*
N

Adam/global_norm/ConstConst^Adam/moving_avg^moving_avg*
valueB: *
dtype0*
_output_shapes
:
Й
Adam/global_norm/SumSumAdam/global_norm/stackAdam/global_norm/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
|
Adam/global_norm/Const_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB
 *   @
l
Adam/global_norm/mulMulAdam/global_norm/SumAdam/global_norm/Const_1*
_output_shapes
: *
T0
[
Adam/global_norm/global_normSqrtAdam/global_norm/mul*
_output_shapes
: *
T0
Ж
"Adam/clip_by_global_norm/truediv/xConst^Adam/moving_avg^moving_avg*
valueB
 *  А?*
dtype0*
_output_shapes
: 
О
 Adam/clip_by_global_norm/truedivRealDiv"Adam/clip_by_global_norm/truediv/xAdam/global_norm/global_norm*
T0*
_output_shapes
: 
В
Adam/clip_by_global_norm/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *  А?*
_output_shapes
: *
dtype0
И
$Adam/clip_by_global_norm/truediv_1/yConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB
 *  а@
Ф
"Adam/clip_by_global_norm/truediv_1RealDivAdam/clip_by_global_norm/Const$Adam/clip_by_global_norm/truediv_1/y*
T0*
_output_shapes
: 
Т
 Adam/clip_by_global_norm/MinimumMinimum Adam/clip_by_global_norm/truediv"Adam/clip_by_global_norm/truediv_1*
T0*
_output_shapes
: 
В
Adam/clip_by_global_norm/mul/xConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB
 *  а@
Ж
Adam/clip_by_global_norm/mulMulAdam/clip_by_global_norm/mul/x Adam/clip_by_global_norm/Minimum*
_output_shapes
: *
T0
ў
Adam/clip_by_global_norm/mul_1Mul6Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*&
_output_shapes
: *I
_class?
=;loc:@Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter*
T0
▄
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0IdentityAdam/clip_by_global_norm/mul_1*
T0*&
_output_shapes
: *I
_class?
=;loc:@Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter
█
Adam/clip_by_global_norm/mul_2Mul.Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*A
_class7
53loc:@Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
╚
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1IdentityAdam/clip_by_global_norm/mul_2*
T0*
_output_shapes
: *A
_class7
53loc:@Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad
√
Adam/clip_by_global_norm/mul_3Mul8Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*
T0*&
_output_shapes
: @*K
_classA
?=loc:@Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter
▐
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2IdentityAdam/clip_by_global_norm/mul_3*
T0*&
_output_shapes
: @*K
_classA
?=loc:@Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter
▀
Adam/clip_by_global_norm/mul_4Mul0Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*C
_class9
75loc:@Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
╩
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3IdentityAdam/clip_by_global_norm/mul_4*
_output_shapes
:@*C
_class9
75loc:@Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad*
T0
№
Adam/clip_by_global_norm/mul_5Mul8Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*
T0*K
_classA
?=loc:@Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@А
▀
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_4IdentityAdam/clip_by_global_norm/mul_5*K
_classA
?=loc:@Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@А*
T0
р
Adam/clip_by_global_norm/mul_6Mul0Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*C
_class9
75loc:@Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
╦
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5IdentityAdam/clip_by_global_norm/mul_6*
_output_shapes	
:А*C
_class9
75loc:@Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
T0
№
Adam/clip_by_global_norm/mul_7Mul8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*
T0*K
_classA
?=loc:@Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:А@
▀
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_6IdentityAdam/clip_by_global_norm/mul_7*'
_output_shapes
:А@*K
_classA
?=loc:@Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter*
T0
▀
Adam/clip_by_global_norm/mul_8Mul0Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*
_output_shapes
:@*C
_class9
75loc:@Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad
╩
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_7IdentityAdam/clip_by_global_norm/mul_8*
T0*
_output_shapes
:@*C
_class9
75loc:@Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad
√
Adam/clip_by_global_norm/mul_9Mul8Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*K
_classA
?=loc:@Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:@ *
T0
▐
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_8IdentityAdam/clip_by_global_norm/mul_9*
T0*&
_output_shapes
:@ *K
_classA
?=loc:@Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter
р
Adam/clip_by_global_norm/mul_10Mul0Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad
╦
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_9IdentityAdam/clip_by_global_norm/mul_10*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad*
T0
ъ
Adam/clip_by_global_norm/mul_11Mul2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0* 
_output_shapes
:
аА*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1
╘
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_10IdentityAdam/clip_by_global_norm/mul_11*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1* 
_output_shapes
:
аА*
T0
э
Adam/clip_by_global_norm/mul_12Mul6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
╙
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_11IdentityAdam/clip_by_global_norm/mul_12*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А*
T0
э
Adam/clip_by_global_norm/mul_13Mul4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0*
_output_shapes
:	А*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1
╒
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_12IdentityAdam/clip_by_global_norm/mul_13*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes
:	А*
T0
Ё
Adam/clip_by_global_norm/mul_14Mul8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
╘
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_13IdentityAdam/clip_by_global_norm/mul_14*
_output_shapes
:*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
T0
А
Adam/beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@Conv2D/W*
_output_shapes
: *
dtype0
С
Adam/beta1_power
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D/W*
_output_shapes
: *
shape: *
shared_name 
║
Adam/beta1_power/AssignAssignAdam/beta1_powerAdam/beta1_power/initial_value*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*
_output_shapes
: 
q
Adam/beta1_power/readIdentityAdam/beta1_power*
T0*
_class
loc:@Conv2D/W*
_output_shapes
: 
А
Adam/beta2_power/initial_valueConst*
valueB
 *w╛?*
_class
loc:@Conv2D/W*
_output_shapes
: *
dtype0
С
Adam/beta2_power
VariableV2*
shared_name *
shape: *
_output_shapes
: *
_class
loc:@Conv2D/W*
dtype0*
	container 
║
Adam/beta2_power/AssignAssignAdam/beta2_powerAdam/beta2_power/initial_value*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*
_output_shapes
: 
q
Adam/beta2_power/readIdentityAdam/beta2_power*
_output_shapes
: *
_class
loc:@Conv2D/W*
T0
q
Adam/zeros_1Const*%
valueB *    *
dtype0*&
_output_shapes
: 
о
Conv2D/W/Adam
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D/W*&
_output_shapes
: *
shape: *
shared_name 
▓
Conv2D/W/Adam/AssignAssignConv2D/W/AdamAdam/zeros_1*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(
{
Conv2D/W/Adam/readIdentityConv2D/W/Adam*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0
q
Adam/zeros_2Const*
dtype0*&
_output_shapes
: *%
valueB *    
░
Conv2D/W/Adam_1
VariableV2*
_class
loc:@Conv2D/W*&
_output_shapes
: *
shape: *
dtype0*
shared_name *
	container 
╢
Conv2D/W/Adam_1/AssignAssignConv2D/W/Adam_1Adam/zeros_2*&
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(

Conv2D/W/Adam_1/readIdentityConv2D/W/Adam_1*
T0*
_class
loc:@Conv2D/W*&
_output_shapes
: 
Y
Adam/zeros_3Const*
valueB *    *
dtype0*
_output_shapes
: 
Ц
Conv2D/b/Adam
VariableV2*
_class
loc:@Conv2D/b*
_output_shapes
: *
shape: *
dtype0*
shared_name *
	container 
ж
Conv2D/b/Adam/AssignAssignConv2D/b/AdamAdam/zeros_3*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/b*
T0*
use_locking(
o
Conv2D/b/Adam/readIdentityConv2D/b/Adam*
T0*
_output_shapes
: *
_class
loc:@Conv2D/b
Y
Adam/zeros_4Const*
dtype0*
_output_shapes
: *
valueB *    
Ш
Conv2D/b/Adam_1
VariableV2*
shape: *
_output_shapes
: *
shared_name *
_class
loc:@Conv2D/b*
dtype0*
	container 
к
Conv2D/b/Adam_1/AssignAssignConv2D/b/Adam_1Adam/zeros_4*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
s
Conv2D/b/Adam_1/readIdentityConv2D/b/Adam_1*
T0*
_output_shapes
: *
_class
loc:@Conv2D/b
q
Adam/zeros_5Const*
dtype0*&
_output_shapes
: @*%
valueB @*    
▓
Conv2D_1/W/Adam
VariableV2*
shared_name *
_class
loc:@Conv2D_1/W*
	container *
shape: @*
dtype0*&
_output_shapes
: @
╕
Conv2D_1/W/Adam/AssignAssignConv2D_1/W/AdamAdam/zeros_5*
use_locking(*
T0*
_class
loc:@Conv2D_1/W*
validate_shape(*&
_output_shapes
: @
Б
Conv2D_1/W/Adam/readIdentityConv2D_1/W/Adam*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
q
Adam/zeros_6Const*&
_output_shapes
: @*
dtype0*%
valueB @*    
┤
Conv2D_1/W/Adam_1
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
shape: @*
shared_name 
╝
Conv2D_1/W/Adam_1/AssignAssignConv2D_1/W/Adam_1Adam/zeros_6*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(
Е
Conv2D_1/W/Adam_1/readIdentityConv2D_1/W/Adam_1*
T0*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @
Y
Adam/zeros_7Const*
_output_shapes
:@*
dtype0*
valueB@*    
Ъ
Conv2D_1/b/Adam
VariableV2*
shape:@*
_output_shapes
:@*
shared_name *
_class
loc:@Conv2D_1/b*
dtype0*
	container 
м
Conv2D_1/b/Adam/AssignAssignConv2D_1/b/AdamAdam/zeros_7*
use_locking(*
T0*
_class
loc:@Conv2D_1/b*
validate_shape(*
_output_shapes
:@
u
Conv2D_1/b/Adam/readIdentityConv2D_1/b/Adam*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
Y
Adam/zeros_8Const*
valueB@*    *
dtype0*
_output_shapes
:@
Ь
Conv2D_1/b/Adam_1
VariableV2*
shared_name *
shape:@*
_output_shapes
:@*
_class
loc:@Conv2D_1/b*
dtype0*
	container 
░
Conv2D_1/b/Adam_1/AssignAssignConv2D_1/b/Adam_1Adam/zeros_8*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
y
Conv2D_1/b/Adam_1/readIdentityConv2D_1/b/Adam_1*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0
s
Adam/zeros_9Const*
dtype0*'
_output_shapes
:@А*&
valueB@А*    
┤
Conv2D_2/W/Adam
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А*
shape:@А*
shared_name 
╣
Conv2D_2/W/Adam/AssignAssignConv2D_2/W/AdamAdam/zeros_9*'
_output_shapes
:@А*
validate_shape(*
_class
loc:@Conv2D_2/W*
T0*
use_locking(
В
Conv2D_2/W/Adam/readIdentityConv2D_2/W/Adam*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А*
T0
t
Adam/zeros_10Const*'
_output_shapes
:@А*
dtype0*&
valueB@А*    
╢
Conv2D_2/W/Adam_1
VariableV2*
shared_name *
_class
loc:@Conv2D_2/W*
	container *
shape:@А*
dtype0*'
_output_shapes
:@А
╛
Conv2D_2/W/Adam_1/AssignAssignConv2D_2/W/Adam_1Adam/zeros_10*
use_locking(*
T0*
_class
loc:@Conv2D_2/W*
validate_shape(*'
_output_shapes
:@А
Ж
Conv2D_2/W/Adam_1/readIdentityConv2D_2/W/Adam_1*
T0*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А
\
Adam/zeros_11Const*
valueBА*    *
_output_shapes	
:А*
dtype0
Ь
Conv2D_2/b/Adam
VariableV2*
shared_name *
shape:А*
_output_shapes	
:А*
_class
loc:@Conv2D_2/b*
dtype0*
	container 
о
Conv2D_2/b/Adam/AssignAssignConv2D_2/b/AdamAdam/zeros_11*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*
_class
loc:@Conv2D_2/b
v
Conv2D_2/b/Adam/readIdentityConv2D_2/b/Adam*
_output_shapes	
:А*
_class
loc:@Conv2D_2/b*
T0
\
Adam/zeros_12Const*
_output_shapes	
:А*
dtype0*
valueBА*    
Ю
Conv2D_2/b/Adam_1
VariableV2*
shared_name *
_class
loc:@Conv2D_2/b*
	container *
shape:А*
dtype0*
_output_shapes	
:А
▓
Conv2D_2/b/Adam_1/AssignAssignConv2D_2/b/Adam_1Adam/zeros_12*
_class
loc:@Conv2D_2/b*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(
z
Conv2D_2/b/Adam_1/readIdentityConv2D_2/b/Adam_1*
T0*
_output_shapes	
:А*
_class
loc:@Conv2D_2/b
t
Adam/zeros_13Const*
dtype0*'
_output_shapes
:А@*&
valueBА@*    
┤
Conv2D_3/W/Adam
VariableV2*
shared_name *
shape:А@*'
_output_shapes
:А@*
_class
loc:@Conv2D_3/W*
dtype0*
	container 
║
Conv2D_3/W/Adam/AssignAssignConv2D_3/W/AdamAdam/zeros_13*
use_locking(*
T0*
_class
loc:@Conv2D_3/W*
validate_shape(*'
_output_shapes
:А@
В
Conv2D_3/W/Adam/readIdentityConv2D_3/W/Adam*
T0*
_class
loc:@Conv2D_3/W*'
_output_shapes
:А@
t
Adam/zeros_14Const*&
valueBА@*    *
dtype0*'
_output_shapes
:А@
╢
Conv2D_3/W/Adam_1
VariableV2*'
_output_shapes
:А@*
dtype0*
shape:А@*
	container *
_class
loc:@Conv2D_3/W*
shared_name 
╛
Conv2D_3/W/Adam_1/AssignAssignConv2D_3/W/Adam_1Adam/zeros_14*
_class
loc:@Conv2D_3/W*'
_output_shapes
:А@*
T0*
validate_shape(*
use_locking(
Ж
Conv2D_3/W/Adam_1/readIdentityConv2D_3/W/Adam_1*'
_output_shapes
:А@*
_class
loc:@Conv2D_3/W*
T0
Z
Adam/zeros_15Const*
valueB@*    *
dtype0*
_output_shapes
:@
Ъ
Conv2D_3/b/Adam
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_3/b*
shared_name *
_output_shapes
:@*
shape:@
н
Conv2D_3/b/Adam/AssignAssignConv2D_3/b/AdamAdam/zeros_15*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
u
Conv2D_3/b/Adam/readIdentityConv2D_3/b/Adam*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
Z
Adam/zeros_16Const*
valueB@*    *
_output_shapes
:@*
dtype0
Ь
Conv2D_3/b/Adam_1
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
shape:@*
shared_name 
▒
Conv2D_3/b/Adam_1/AssignAssignConv2D_3/b/Adam_1Adam/zeros_16*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
y
Conv2D_3/b/Adam_1/readIdentityConv2D_3/b/Adam_1*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0
r
Adam/zeros_17Const*%
valueB@ *    *&
_output_shapes
:@ *
dtype0
▓
Conv2D_4/W/Adam
VariableV2*
shared_name *
_class
loc:@Conv2D_4/W*
	container *
shape:@ *
dtype0*&
_output_shapes
:@ 
╣
Conv2D_4/W/Adam/AssignAssignConv2D_4/W/AdamAdam/zeros_17*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
Б
Conv2D_4/W/Adam/readIdentityConv2D_4/W/Adam*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
r
Adam/zeros_18Const*&
_output_shapes
:@ *
dtype0*%
valueB@ *    
┤
Conv2D_4/W/Adam_1
VariableV2*&
_output_shapes
:@ *
dtype0*
shape:@ *
	container *
_class
loc:@Conv2D_4/W*
shared_name 
╜
Conv2D_4/W/Adam_1/AssignAssignConv2D_4/W/Adam_1Adam/zeros_18*&
_output_shapes
:@ *
validate_shape(*
_class
loc:@Conv2D_4/W*
T0*
use_locking(
Е
Conv2D_4/W/Adam_1/readIdentityConv2D_4/W/Adam_1*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
Z
Adam/zeros_19Const*
dtype0*
_output_shapes
: *
valueB *    
Ъ
Conv2D_4/b/Adam
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
shape: *
shared_name 
н
Conv2D_4/b/Adam/AssignAssignConv2D_4/b/AdamAdam/zeros_19*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D_4/b*
T0*
use_locking(
u
Conv2D_4/b/Adam/readIdentityConv2D_4/b/Adam*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
T0
Z
Adam/zeros_20Const*
valueB *    *
dtype0*
_output_shapes
: 
Ь
Conv2D_4/b/Adam_1
VariableV2*
shared_name *
shape: *
_output_shapes
: *
_class
loc:@Conv2D_4/b*
dtype0*
	container 
▒
Conv2D_4/b/Adam_1/AssignAssignConv2D_4/b/Adam_1Adam/zeros_20*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
y
Conv2D_4/b/Adam_1/readIdentityConv2D_4/b/Adam_1*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
f
Adam/zeros_21Const*
dtype0* 
_output_shapes
:
аА*
valueB
аА*    
▓
FullyConnected/W/Adam
VariableV2*
	container *
dtype0*#
_class
loc:@FullyConnected/W*
shared_name * 
_output_shapes
:
аА*
shape:
аА
┼
FullyConnected/W/Adam/AssignAssignFullyConnected/W/AdamAdam/zeros_21*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0*
validate_shape(*
use_locking(
Н
FullyConnected/W/Adam/readIdentityFullyConnected/W/Adam*
T0*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА
f
Adam/zeros_22Const*
valueB
аА*    *
dtype0* 
_output_shapes
:
аА
┤
FullyConnected/W/Adam_1
VariableV2*
shape:
аА* 
_output_shapes
:
аА*
shared_name *#
_class
loc:@FullyConnected/W*
dtype0*
	container 
╔
FullyConnected/W/Adam_1/AssignAssignFullyConnected/W/Adam_1Adam/zeros_22*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(* 
_output_shapes
:
аА
С
FullyConnected/W/Adam_1/readIdentityFullyConnected/W/Adam_1*
T0*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА
\
Adam/zeros_23Const*
_output_shapes	
:А*
dtype0*
valueBА*    
и
FullyConnected/b/Adam
VariableV2*#
_class
loc:@FullyConnected/b*
_output_shapes	
:А*
shape:А*
dtype0*
shared_name *
	container 
└
FullyConnected/b/Adam/AssignAssignFullyConnected/b/AdamAdam/zeros_23*#
_class
loc:@FullyConnected/b*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(
И
FullyConnected/b/Adam/readIdentityFullyConnected/b/Adam*
_output_shapes	
:А*#
_class
loc:@FullyConnected/b*
T0
\
Adam/zeros_24Const*
valueBА*    *
_output_shapes	
:А*
dtype0
к
FullyConnected/b/Adam_1
VariableV2*
shape:А*
_output_shapes	
:А*
shared_name *#
_class
loc:@FullyConnected/b*
dtype0*
	container 
─
FullyConnected/b/Adam_1/AssignAssignFullyConnected/b/Adam_1Adam/zeros_24*
_output_shapes	
:А*
validate_shape(*#
_class
loc:@FullyConnected/b*
T0*
use_locking(
М
FullyConnected/b/Adam_1/readIdentityFullyConnected/b/Adam_1*
T0*#
_class
loc:@FullyConnected/b*
_output_shapes	
:А
d
Adam/zeros_25Const*
valueB	А*    *
_output_shapes
:	А*
dtype0
┤
FullyConnected_1/W/Adam
VariableV2*
	container *
dtype0*%
_class
loc:@FullyConnected_1/W*
shared_name *
_output_shapes
:	А*
shape:	А
╩
FullyConnected_1/W/Adam/AssignAssignFullyConnected_1/W/AdamAdam/zeros_25*
_output_shapes
:	А*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
Т
FullyConnected_1/W/Adam/readIdentityFullyConnected_1/W/Adam*
_output_shapes
:	А*%
_class
loc:@FullyConnected_1/W*
T0
d
Adam/zeros_26Const*
dtype0*
_output_shapes
:	А*
valueB	А*    
╢
FullyConnected_1/W/Adam_1
VariableV2*
shape:	А*
_output_shapes
:	А*
shared_name *%
_class
loc:@FullyConnected_1/W*
dtype0*
	container 
╬
 FullyConnected_1/W/Adam_1/AssignAssignFullyConnected_1/W/Adam_1Adam/zeros_26*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	А
Ц
FullyConnected_1/W/Adam_1/readIdentityFullyConnected_1/W/Adam_1*
_output_shapes
:	А*%
_class
loc:@FullyConnected_1/W*
T0
Z
Adam/zeros_27Const*
valueB*    *
dtype0*
_output_shapes
:
к
FullyConnected_1/b/Adam
VariableV2*
shared_name *
shape:*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b*
dtype0*
	container 
┼
FullyConnected_1/b/Adam/AssignAssignFullyConnected_1/b/AdamAdam/zeros_27*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
Н
FullyConnected_1/b/Adam/readIdentityFullyConnected_1/b/Adam*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b*
T0
Z
Adam/zeros_28Const*
valueB*    *
dtype0*
_output_shapes
:
м
FullyConnected_1/b/Adam_1
VariableV2*
shared_name *%
_class
loc:@FullyConnected_1/b*
	container *
shape:*
dtype0*
_output_shapes
:
╔
 FullyConnected_1/b/Adam_1/AssignAssignFullyConnected_1/b/Adam_1Adam/zeros_28*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
С
FullyConnected_1/b/Adam_1/readIdentityFullyConnected_1/b/Adam_1*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0
g
"Adam/apply_grad_op_0/learning_rateConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
_
Adam/apply_grad_op_0/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
_
Adam/apply_grad_op_0/beta2Const*
valueB
 *w╛?*
_output_shapes
: *
dtype0
a
Adam/apply_grad_op_0/epsilonConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
д
.Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam	ApplyAdamConv2D/WConv2D/W/AdamConv2D/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0*
use_locking( *
T0*
_class
loc:@Conv2D/W*&
_output_shapes
: 
Ш
.Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam	ApplyAdamConv2D/bConv2D/b/AdamConv2D/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1*
_output_shapes
: *
_class
loc:@Conv2D/b*
T0*
use_locking( 
о
0Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam	ApplyAdam
Conv2D_1/WConv2D_1/W/AdamConv2D_1/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
use_locking( 
в
0Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam	ApplyAdam
Conv2D_1/bConv2D_1/b/AdamConv2D_1/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3*
use_locking( *
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
п
0Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam	ApplyAdam
Conv2D_2/WConv2D_2/W/AdamConv2D_2/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_4*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А*
T0*
use_locking( 
г
0Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam	ApplyAdam
Conv2D_2/bConv2D_2/b/AdamConv2D_2/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5*
use_locking( *
T0*
_class
loc:@Conv2D_2/b*
_output_shapes	
:А
п
0Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam	ApplyAdam
Conv2D_3/WConv2D_3/W/AdamConv2D_3/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_6*
use_locking( *
T0*
_class
loc:@Conv2D_3/W*'
_output_shapes
:А@
в
0Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam	ApplyAdam
Conv2D_3/bConv2D_3/b/AdamConv2D_3/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_7*
use_locking( *
T0*
_class
loc:@Conv2D_3/b*
_output_shapes
:@
о
0Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam	ApplyAdam
Conv2D_4/WConv2D_4/W/AdamConv2D_4/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_8*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W*
T0*
use_locking( 
в
0Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam	ApplyAdam
Conv2D_4/bConv2D_4/b/AdamConv2D_4/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_9*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
T0*
use_locking( 
╟
6Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam	ApplyAdamFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_10* 
_output_shapes
:
аА*#
_class
loc:@FullyConnected/W*
T0*
use_locking( 
┬
6Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam	ApplyAdamFullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_11*
_output_shapes	
:А*#
_class
loc:@FullyConnected/b*
T0*
use_locking( 
╨
8Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam	ApplyAdamFullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_12*
use_locking( *
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	А
╦
8Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam	ApplyAdamFullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_13*
use_locking( *
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
Є
Adam/apply_grad_op_0/mulMulAdam/beta1_power/readAdam/apply_grad_op_0/beta1/^Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam/^Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
╕
Adam/apply_grad_op_0/AssignAssignAdam/beta1_powerAdam/apply_grad_op_0/mul*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking( 
Ї
Adam/apply_grad_op_0/mul_1MulAdam/beta2_power/readAdam/apply_grad_op_0/beta2/^Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam/^Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
╝
Adam/apply_grad_op_0/Assign_1AssignAdam/beta2_powerAdam/apply_grad_op_0/mul_1*
use_locking( *
T0*
_class
loc:@Conv2D/W*
validate_shape(*
_output_shapes
: 
├
Adam/apply_grad_op_0/updateNoOp/^Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam/^Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam^Adam/apply_grad_op_0/Assign^Adam/apply_grad_op_0/Assign_1
Я
Adam/apply_grad_op_0/valueConst^Adam/apply_grad_op_0/update*
valueB
 *  А?* 
_class
loc:@Training_step*
dtype0*
_output_shapes
: 
в
Adam/apply_grad_op_0	AssignAddTraining_stepAdam/apply_grad_op_0/value*
use_locking( *
T0*
_output_shapes
: * 
_class
loc:@Training_step
]
Adam/Merge/MergeSummaryMergeSummaryLossAdam/Loss/raw*
_output_shapes
: *
N
.
Adam/train_op_0NoOp^Adam/apply_grad_op_0
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
т
save/SaveV2/tensor_namesConst*Х
valueЛBИ3BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBConv2D/WBConv2D/W/AdamBConv2D/W/Adam_1BConv2D/bBConv2D/b/AdamBConv2D/b/Adam_1B
Conv2D_1/WBConv2D_1/W/AdamBConv2D_1/W/Adam_1B
Conv2D_1/bBConv2D_1/b/AdamBConv2D_1/b/Adam_1B
Conv2D_2/WBConv2D_2/W/AdamBConv2D_2/W/Adam_1B
Conv2D_2/bBConv2D_2/b/AdamBConv2D_2/b/Adam_1B
Conv2D_3/WBConv2D_3/W/AdamBConv2D_3/W/Adam_1B
Conv2D_3/bBConv2D_3/b/AdamBConv2D_3/b/Adam_1B
Conv2D_4/WBConv2D_4/W/AdamBConv2D_4/W/Adam_1B
Conv2D_4/bBConv2D_4/b/AdamBConv2D_4/b/Adam_1BCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
_output_shapes
:3*
dtype0
╔
save/SaveV2/shape_and_slicesConst*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:3*
dtype0
Ь
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerConv2D/WConv2D/W/AdamConv2D/W/Adam_1Conv2D/bConv2D/b/AdamConv2D/b/Adam_1
Conv2D_1/WConv2D_1/W/AdamConv2D_1/W/Adam_1
Conv2D_1/bConv2D_1/b/AdamConv2D_1/b/Adam_1
Conv2D_2/WConv2D_2/W/AdamConv2D_2/W/Adam_1
Conv2D_2/bConv2D_2/b/AdamConv2D_2/b/Adam_1
Conv2D_3/WConv2D_3/W/AdamConv2D_3/W/Adam_1
Conv2D_3/bConv2D_3/b/AdamConv2D_3/b/Adam_1
Conv2D_4/WConv2D_4/W/AdamConv2D_4/W/Adam_1
Conv2D_4/bConv2D_4/b/AdamConv2D_4/b/Adam_1Crossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*A
dtypes7
523

}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
|
save/RestoreV2/tensor_namesConst*-
value$B"BAccuracy/Mean/moving_avg*
_output_shapes
:*
dtype0
h
save/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Р
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
╢
save/AssignAssignAccuracy/Mean/moving_avgsave/RestoreV2*
use_locking(*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
v
save/RestoreV2_1/tensor_namesConst*%
valueBBAdam/beta1_power*
_output_shapes
:*
dtype0
j
!save/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ц
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
в
save/Assign_1AssignAdam/beta1_powersave/RestoreV2_1*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
v
save/RestoreV2_2/tensor_namesConst*%
valueBBAdam/beta2_power*
_output_shapes
:*
dtype0
j
!save/RestoreV2_2/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ц
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
в
save/Assign_2AssignAdam/beta2_powersave/RestoreV2_2*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
n
save/RestoreV2_3/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBConv2D/W
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ц
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
к
save/Assign_3AssignConv2D/Wsave/RestoreV2_3*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
s
save/RestoreV2_4/tensor_namesConst*"
valueBBConv2D/W/Adam*
_output_shapes
:*
dtype0
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ц
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
п
save/Assign_4AssignConv2D/W/Adamsave/RestoreV2_4*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*&
_output_shapes
: 
u
save/RestoreV2_5/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D/W/Adam_1
j
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ц
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
▒
save/Assign_5AssignConv2D/W/Adam_1save/RestoreV2_5*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(
n
save/RestoreV2_6/tensor_namesConst*
valueBBConv2D/b*
_output_shapes
:*
dtype0
j
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ц
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
Ю
save/Assign_6AssignConv2D/bsave/RestoreV2_6*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/b*
T0*
use_locking(
s
save/RestoreV2_7/tensor_namesConst*"
valueBBConv2D/b/Adam*
_output_shapes
:*
dtype0
j
!save/RestoreV2_7/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ц
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
г
save/Assign_7AssignConv2D/b/Adamsave/RestoreV2_7*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
u
save/RestoreV2_8/tensor_namesConst*$
valueBBConv2D/b/Adam_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ц
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
е
save/Assign_8AssignConv2D/b/Adam_1save/RestoreV2_8*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
p
save/RestoreV2_9/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_1/W
j
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
о
save/Assign_9Assign
Conv2D_1/Wsave/RestoreV2_9*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
v
save/RestoreV2_10/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_1/W/Adam
k
"save/RestoreV2_10/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
_output_shapes
:*
dtypes
2
╡
save/Assign_10AssignConv2D_1/W/Adamsave/RestoreV2_10*&
_output_shapes
: @*
validate_shape(*
_class
loc:@Conv2D_1/W*
T0*
use_locking(
x
save/RestoreV2_11/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_1/W/Adam_1
k
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
_output_shapes
:*
dtypes
2
╖
save/Assign_11AssignConv2D_1/W/Adam_1save/RestoreV2_11*&
_output_shapes
: @*
validate_shape(*
_class
loc:@Conv2D_1/W*
T0*
use_locking(
q
save/RestoreV2_12/tensor_namesConst*
valueBB
Conv2D_1/b*
dtype0*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
д
save/Assign_12Assign
Conv2D_1/bsave/RestoreV2_12*
use_locking(*
T0*
_class
loc:@Conv2D_1/b*
validate_shape(*
_output_shapes
:@
v
save/RestoreV2_13/tensor_namesConst*$
valueBBConv2D_1/b/Adam*
_output_shapes
:*
dtype0
k
"save/RestoreV2_13/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
й
save/Assign_13AssignConv2D_1/b/Adamsave/RestoreV2_13*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_1/b*
T0*
use_locking(
x
save/RestoreV2_14/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_1/b/Adam_1
k
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
_output_shapes
:*
dtypes
2
л
save/Assign_14AssignConv2D_1/b/Adam_1save/RestoreV2_14*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_1/b*
T0*
use_locking(
q
save/RestoreV2_15/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_2/W
k
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
_output_shapes
:*
dtypes
2
▒
save/Assign_15Assign
Conv2D_2/Wsave/RestoreV2_15*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А*
T0*
validate_shape(*
use_locking(
v
save/RestoreV2_16/tensor_namesConst*$
valueBBConv2D_2/W/Adam*
_output_shapes
:*
dtype0
k
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
╢
save/Assign_16AssignConv2D_2/W/Adamsave/RestoreV2_16*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:@А*
_class
loc:@Conv2D_2/W
x
save/RestoreV2_17/tensor_namesConst*&
valueBBConv2D_2/W/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
╕
save/Assign_17AssignConv2D_2/W/Adam_1save/RestoreV2_17*
use_locking(*
T0*
_class
loc:@Conv2D_2/W*
validate_shape(*'
_output_shapes
:@А
q
save/RestoreV2_18/tensor_namesConst*
valueBB
Conv2D_2/b*
dtype0*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save/Assign_18Assign
Conv2D_2/bsave/RestoreV2_18*
use_locking(*
T0*
_class
loc:@Conv2D_2/b*
validate_shape(*
_output_shapes	
:А
v
save/RestoreV2_19/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_2/b/Adam
k
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
к
save/Assign_19AssignConv2D_2/b/Adamsave/RestoreV2_19*
_class
loc:@Conv2D_2/b*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(
x
save/RestoreV2_20/tensor_namesConst*&
valueBBConv2D_2/b/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
м
save/Assign_20AssignConv2D_2/b/Adam_1save/RestoreV2_20*
_output_shapes	
:А*
validate_shape(*
_class
loc:@Conv2D_2/b*
T0*
use_locking(
q
save/RestoreV2_21/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_3/W
k
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
_output_shapes
:*
dtypes
2
▒
save/Assign_21Assign
Conv2D_3/Wsave/RestoreV2_21*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:А@*
_class
loc:@Conv2D_3/W
v
save/RestoreV2_22/tensor_namesConst*$
valueBBConv2D_3/W/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_22/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
_output_shapes
:*
dtypes
2
╢
save/Assign_22AssignConv2D_3/W/Adamsave/RestoreV2_22*
_class
loc:@Conv2D_3/W*'
_output_shapes
:А@*
T0*
validate_shape(*
use_locking(
x
save/RestoreV2_23/tensor_namesConst*&
valueBBConv2D_3/W/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_23/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
_output_shapes
:*
dtypes
2
╕
save/Assign_23AssignConv2D_3/W/Adam_1save/RestoreV2_23*'
_output_shapes
:А@*
validate_shape(*
_class
loc:@Conv2D_3/W*
T0*
use_locking(
q
save/RestoreV2_24/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_3/b
k
"save/RestoreV2_24/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
д
save/Assign_24Assign
Conv2D_3/bsave/RestoreV2_24*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
v
save/RestoreV2_25/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_3/b/Adam
k
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
_output_shapes
:*
dtypes
2
й
save/Assign_25AssignConv2D_3/b/Adamsave/RestoreV2_25*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
x
save/RestoreV2_26/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_3/b/Adam_1
k
"save/RestoreV2_26/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
л
save/Assign_26AssignConv2D_3/b/Adam_1save/RestoreV2_26*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
q
save/RestoreV2_27/tensor_namesConst*
valueBB
Conv2D_4/W*
dtype0*
_output_shapes
:
k
"save/RestoreV2_27/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
_output_shapes
:*
dtypes
2
░
save/Assign_27Assign
Conv2D_4/Wsave/RestoreV2_27*
use_locking(*
T0*
_class
loc:@Conv2D_4/W*
validate_shape(*&
_output_shapes
:@ 
v
save/RestoreV2_28/tensor_namesConst*$
valueBBConv2D_4/W/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_28/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
_output_shapes
:*
dtypes
2
╡
save/Assign_28AssignConv2D_4/W/Adamsave/RestoreV2_28*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0*
validate_shape(*
use_locking(
x
save/RestoreV2_29/tensor_namesConst*&
valueBBConv2D_4/W/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_29/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_29	RestoreV2
save/Constsave/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes
:
╖
save/Assign_29AssignConv2D_4/W/Adam_1save/RestoreV2_29*
use_locking(*
T0*
_class
loc:@Conv2D_4/W*
validate_shape(*&
_output_shapes
:@ 
q
save/RestoreV2_30/tensor_namesConst*
valueBB
Conv2D_4/b*
dtype0*
_output_shapes
:
k
"save/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_30	RestoreV2
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
д
save/Assign_30Assign
Conv2D_4/bsave/RestoreV2_30*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
v
save/RestoreV2_31/tensor_namesConst*$
valueBBConv2D_4/b/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_31/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_31	RestoreV2
save/Constsave/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
_output_shapes
:*
dtypes
2
й
save/Assign_31AssignConv2D_4/b/Adamsave/RestoreV2_31*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D_4/b*
T0*
use_locking(
x
save/RestoreV2_32/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_4/b/Adam_1
k
"save/RestoreV2_32/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_32	RestoreV2
save/Constsave/RestoreV2_32/tensor_names"save/RestoreV2_32/shape_and_slices*
dtypes
2*
_output_shapes
:
л
save/Assign_32AssignConv2D_4/b/Adam_1save/RestoreV2_32*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D_4/b*
T0*
use_locking(
Г
save/RestoreV2_33/tensor_namesConst*
dtype0*
_output_shapes
:*1
value(B&BCrossentropy/Mean/moving_avg
k
"save/RestoreV2_33/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_33	RestoreV2
save/Constsave/RestoreV2_33/tensor_names"save/RestoreV2_33/shape_and_slices*
_output_shapes
:*
dtypes
2
─
save/Assign_33AssignCrossentropy/Mean/moving_avgsave/RestoreV2_33*
use_locking(*
validate_shape(*
T0*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg
w
save/RestoreV2_34/tensor_namesConst*%
valueBBFullyConnected/W*
_output_shapes
:*
dtype0
k
"save/RestoreV2_34/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_34	RestoreV2
save/Constsave/RestoreV2_34/tensor_names"save/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes
:
╢
save/Assign_34AssignFullyConnected/Wsave/RestoreV2_34*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0*
validate_shape(*
use_locking(
|
save/RestoreV2_35/tensor_namesConst**
value!BBFullyConnected/W/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_35/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_35	RestoreV2
save/Constsave/RestoreV2_35/tensor_names"save/RestoreV2_35/shape_and_slices*
dtypes
2*
_output_shapes
:
╗
save/Assign_35AssignFullyConnected/W/Adamsave/RestoreV2_35*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
аА*#
_class
loc:@FullyConnected/W
~
save/RestoreV2_36/tensor_namesConst*
_output_shapes
:*
dtype0*,
value#B!BFullyConnected/W/Adam_1
k
"save/RestoreV2_36/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_36	RestoreV2
save/Constsave/RestoreV2_36/tensor_names"save/RestoreV2_36/shape_and_slices*
_output_shapes
:*
dtypes
2
╜
save/Assign_36AssignFullyConnected/W/Adam_1save/RestoreV2_36*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(* 
_output_shapes
:
аА
w
save/RestoreV2_37/tensor_namesConst*%
valueBBFullyConnected/b*
dtype0*
_output_shapes
:
k
"save/RestoreV2_37/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_37	RestoreV2
save/Constsave/RestoreV2_37/tensor_names"save/RestoreV2_37/shape_and_slices*
_output_shapes
:*
dtypes
2
▒
save/Assign_37AssignFullyConnected/bsave/RestoreV2_37*
_output_shapes	
:А*
validate_shape(*#
_class
loc:@FullyConnected/b*
T0*
use_locking(
|
save/RestoreV2_38/tensor_namesConst*
_output_shapes
:*
dtype0**
value!BBFullyConnected/b/Adam
k
"save/RestoreV2_38/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_38	RestoreV2
save/Constsave/RestoreV2_38/tensor_names"save/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
╢
save/Assign_38AssignFullyConnected/b/Adamsave/RestoreV2_38*
_output_shapes	
:А*
validate_shape(*#
_class
loc:@FullyConnected/b*
T0*
use_locking(
~
save/RestoreV2_39/tensor_namesConst*,
value#B!BFullyConnected/b/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_39/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_39	RestoreV2
save/Constsave/RestoreV2_39/tensor_names"save/RestoreV2_39/shape_and_slices*
_output_shapes
:*
dtypes
2
╕
save/Assign_39AssignFullyConnected/b/Adam_1save/RestoreV2_39*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:А
y
save/RestoreV2_40/tensor_namesConst*
_output_shapes
:*
dtype0*'
valueBBFullyConnected_1/W
k
"save/RestoreV2_40/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_40	RestoreV2
save/Constsave/RestoreV2_40/tensor_names"save/RestoreV2_40/shape_and_slices*
dtypes
2*
_output_shapes
:
╣
save/Assign_40AssignFullyConnected_1/Wsave/RestoreV2_40*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	А*
T0*
validate_shape(*
use_locking(
~
save/RestoreV2_41/tensor_namesConst*,
value#B!BFullyConnected_1/W/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_41/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_41	RestoreV2
save/Constsave/RestoreV2_41/tensor_names"save/RestoreV2_41/shape_and_slices*
dtypes
2*
_output_shapes
:
╛
save/Assign_41AssignFullyConnected_1/W/Adamsave/RestoreV2_41*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	А
А
save/RestoreV2_42/tensor_namesConst*.
value%B#BFullyConnected_1/W/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_42/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Щ
save/RestoreV2_42	RestoreV2
save/Constsave/RestoreV2_42/tensor_names"save/RestoreV2_42/shape_and_slices*
_output_shapes
:*
dtypes
2
└
save/Assign_42AssignFullyConnected_1/W/Adam_1save/RestoreV2_42*
_output_shapes
:	А*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
y
save/RestoreV2_43/tensor_namesConst*'
valueBBFullyConnected_1/b*
_output_shapes
:*
dtype0
k
"save/RestoreV2_43/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_43	RestoreV2
save/Constsave/RestoreV2_43/tensor_names"save/RestoreV2_43/shape_and_slices*
dtypes
2*
_output_shapes
:
┤
save/Assign_43AssignFullyConnected_1/bsave/RestoreV2_43*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
~
save/RestoreV2_44/tensor_namesConst*
dtype0*
_output_shapes
:*,
value#B!BFullyConnected_1/b/Adam
k
"save/RestoreV2_44/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Щ
save/RestoreV2_44	RestoreV2
save/Constsave/RestoreV2_44/tensor_names"save/RestoreV2_44/shape_and_slices*
dtypes
2*
_output_shapes
:
╣
save/Assign_44AssignFullyConnected_1/b/Adamsave/RestoreV2_44*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
А
save/RestoreV2_45/tensor_namesConst*
dtype0*
_output_shapes
:*.
value%B#BFullyConnected_1/b/Adam_1
k
"save/RestoreV2_45/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_45	RestoreV2
save/Constsave/RestoreV2_45/tensor_names"save/RestoreV2_45/shape_and_slices*
_output_shapes
:*
dtypes
2
╗
save/Assign_45AssignFullyConnected_1/b/Adam_1save/RestoreV2_45*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
r
save/RestoreV2_46/tensor_namesConst* 
valueBBGlobal_Step*
_output_shapes
:*
dtype0
k
"save/RestoreV2_46/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_46	RestoreV2
save/Constsave/RestoreV2_46/tensor_names"save/RestoreV2_46/shape_and_slices*
dtypes
2*
_output_shapes
:
в
save/Assign_46AssignGlobal_Stepsave/RestoreV2_46*
_class
loc:@Global_Step*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
t
save/RestoreV2_47/tensor_namesConst*
dtype0*
_output_shapes
:*"
valueBBTraining_step
k
"save/RestoreV2_47/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_47	RestoreV2
save/Constsave/RestoreV2_47/tensor_names"save/RestoreV2_47/shape_and_slices*
dtypes
2*
_output_shapes
:
ж
save/Assign_47AssignTraining_stepsave/RestoreV2_47*
_output_shapes
: *
validate_shape(* 
_class
loc:@Training_step*
T0*
use_locking(
r
save/RestoreV2_48/tensor_namesConst* 
valueBBis_training*
_output_shapes
:*
dtype0
k
"save/RestoreV2_48/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_48	RestoreV2
save/Constsave/RestoreV2_48/tensor_names"save/RestoreV2_48/shape_and_slices*
_output_shapes
:*
dtypes
2

в
save/Assign_48Assignis_trainingsave/RestoreV2_48*
_class
loc:@is_training*
_output_shapes
: *
T0
*
validate_shape(*
use_locking(
n
save/RestoreV2_49/tensor_namesConst*
valueBBval_acc*
_output_shapes
:*
dtype0
k
"save/RestoreV2_49/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Щ
save/RestoreV2_49	RestoreV2
save/Constsave/RestoreV2_49/tensor_names"save/RestoreV2_49/shape_and_slices*
dtypes
2*
_output_shapes
:
Ъ
save/Assign_49Assignval_accsave/RestoreV2_49*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@val_acc
o
save/RestoreV2_50/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBval_loss
k
"save/RestoreV2_50/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Щ
save/RestoreV2_50	RestoreV2
save/Constsave/RestoreV2_50/tensor_names"save/RestoreV2_50/shape_and_slices*
_output_shapes
:*
dtypes
2
Ь
save/Assign_50Assignval_losssave/RestoreV2_50*
_class
loc:@val_loss*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
я
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_50
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
ф
save_1/SaveV2/tensor_namesConst*
_output_shapes
:3*
dtype0*Х
valueЛBИ3BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBConv2D/WBConv2D/W/AdamBConv2D/W/Adam_1BConv2D/bBConv2D/b/AdamBConv2D/b/Adam_1B
Conv2D_1/WBConv2D_1/W/AdamBConv2D_1/W/Adam_1B
Conv2D_1/bBConv2D_1/b/AdamBConv2D_1/b/Adam_1B
Conv2D_2/WBConv2D_2/W/AdamBConv2D_2/W/Adam_1B
Conv2D_2/bBConv2D_2/b/AdamBConv2D_2/b/Adam_1B
Conv2D_3/WBConv2D_3/W/AdamBConv2D_3/W/Adam_1B
Conv2D_3/bBConv2D_3/b/AdamBConv2D_3/b/Adam_1B
Conv2D_4/WBConv2D_4/W/AdamBConv2D_4/W/Adam_1B
Conv2D_4/bBConv2D_4/b/AdamBConv2D_4/b/Adam_1BCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss
╦
save_1/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:3*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
д
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerConv2D/WConv2D/W/AdamConv2D/W/Adam_1Conv2D/bConv2D/b/AdamConv2D/b/Adam_1
Conv2D_1/WConv2D_1/W/AdamConv2D_1/W/Adam_1
Conv2D_1/bConv2D_1/b/AdamConv2D_1/b/Adam_1
Conv2D_2/WConv2D_2/W/AdamConv2D_2/W/Adam_1
Conv2D_2/bConv2D_2/b/AdamConv2D_2/b/Adam_1
Conv2D_3/WConv2D_3/W/AdamConv2D_3/W/Adam_1
Conv2D_3/bConv2D_3/b/AdamConv2D_3/b/Adam_1
Conv2D_4/WConv2D_4/W/AdamConv2D_4/W/Adam_1
Conv2D_4/bConv2D_4/b/AdamConv2D_4/b/Adam_1Crossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*A
dtypes7
523

Е
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
T0*
_output_shapes
: *
_class
loc:@save_1/Const
~
save_1/RestoreV2/tensor_namesConst*-
value$B"BAccuracy/Mean/moving_avg*
_output_shapes
:*
dtype0
j
!save_1/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ш
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save_1/AssignAssignAccuracy/Mean/moving_avgsave_1/RestoreV2*
use_locking(*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
x
save_1/RestoreV2_1/tensor_namesConst*%
valueBBAdam/beta1_power*
_output_shapes
:*
dtype0
l
#save_1/RestoreV2_1/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ю
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
ж
save_1/Assign_1AssignAdam/beta1_powersave_1/RestoreV2_1*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
x
save_1/RestoreV2_2/tensor_namesConst*%
valueBBAdam/beta2_power*
_output_shapes
:*
dtype0
l
#save_1/RestoreV2_2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
ж
save_1/Assign_2AssignAdam/beta2_powersave_1/RestoreV2_2*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*
_output_shapes
: 
p
save_1/RestoreV2_3/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBConv2D/W
l
#save_1/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
о
save_1/Assign_3AssignConv2D/Wsave_1/RestoreV2_3*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
u
save_1/RestoreV2_4/tensor_namesConst*
_output_shapes
:*
dtype0*"
valueBBConv2D/W/Adam
l
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ю
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
│
save_1/Assign_4AssignConv2D/W/Adamsave_1/RestoreV2_4*&
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(
w
save_1/RestoreV2_5/tensor_namesConst*$
valueBBConv2D/W/Adam_1*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_5/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ю
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
╡
save_1/Assign_5AssignConv2D/W/Adam_1save_1/RestoreV2_5*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*&
_output_shapes
: 
p
save_1/RestoreV2_6/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBConv2D/b
l
#save_1/RestoreV2_6/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ю
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
в
save_1/Assign_6AssignConv2D/bsave_1/RestoreV2_6*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
u
save_1/RestoreV2_7/tensor_namesConst*
_output_shapes
:*
dtype0*"
valueBBConv2D/b/Adam
l
#save_1/RestoreV2_7/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
з
save_1/Assign_7AssignConv2D/b/Adamsave_1/RestoreV2_7*
use_locking(*
T0*
_class
loc:@Conv2D/b*
validate_shape(*
_output_shapes
: 
w
save_1/RestoreV2_8/tensor_namesConst*$
valueBBConv2D/b/Adam_1*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_8/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
й
save_1/Assign_8AssignConv2D/b/Adam_1save_1/RestoreV2_8*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
r
save_1/RestoreV2_9/tensor_namesConst*
valueBB
Conv2D_1/W*
_output_shapes
:*
dtype0
l
#save_1/RestoreV2_9/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
▓
save_1/Assign_9Assign
Conv2D_1/Wsave_1/RestoreV2_9*
use_locking(*
T0*
_class
loc:@Conv2D_1/W*
validate_shape(*&
_output_shapes
: @
x
 save_1/RestoreV2_10/tensor_namesConst*$
valueBBConv2D_1/W/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_10/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
╣
save_1/Assign_10AssignConv2D_1/W/Adamsave_1/RestoreV2_10*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
z
 save_1/RestoreV2_11/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_1/W/Adam_1
m
$save_1/RestoreV2_11/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
_output_shapes
:*
dtypes
2
╗
save_1/Assign_11AssignConv2D_1/W/Adam_1save_1/RestoreV2_11*&
_output_shapes
: @*
validate_shape(*
_class
loc:@Conv2D_1/W*
T0*
use_locking(
s
 save_1/RestoreV2_12/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_1/b
m
$save_1/RestoreV2_12/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
и
save_1/Assign_12Assign
Conv2D_1/bsave_1/RestoreV2_12*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
x
 save_1/RestoreV2_13/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_1/b/Adam
m
$save_1/RestoreV2_13/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
н
save_1/Assign_13AssignConv2D_1/b/Adamsave_1/RestoreV2_13*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
z
 save_1/RestoreV2_14/tensor_namesConst*&
valueBBConv2D_1/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_14/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
п
save_1/Assign_14AssignConv2D_1/b/Adam_1save_1/RestoreV2_14*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_1/b*
T0*
use_locking(
s
 save_1/RestoreV2_15/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_2/W
m
$save_1/RestoreV2_15/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
╡
save_1/Assign_15Assign
Conv2D_2/Wsave_1/RestoreV2_15*'
_output_shapes
:@А*
validate_shape(*
_class
loc:@Conv2D_2/W*
T0*
use_locking(
x
 save_1/RestoreV2_16/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_2/W/Adam
m
$save_1/RestoreV2_16/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save_1/Assign_16AssignConv2D_2/W/Adamsave_1/RestoreV2_16*'
_output_shapes
:@А*
validate_shape(*
_class
loc:@Conv2D_2/W*
T0*
use_locking(
z
 save_1/RestoreV2_17/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_2/W/Adam_1
m
$save_1/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
╝
save_1/Assign_17AssignConv2D_2/W/Adam_1save_1/RestoreV2_17*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А*
T0*
validate_shape(*
use_locking(
s
 save_1/RestoreV2_18/tensor_namesConst*
valueBB
Conv2D_2/b*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_18/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save_1/Assign_18Assign
Conv2D_2/bsave_1/RestoreV2_18*
_class
loc:@Conv2D_2/b*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(
x
 save_1/RestoreV2_19/tensor_namesConst*$
valueBBConv2D_2/b/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_19/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
о
save_1/Assign_19AssignConv2D_2/b/Adamsave_1/RestoreV2_19*
use_locking(*
T0*
_class
loc:@Conv2D_2/b*
validate_shape(*
_output_shapes	
:А
z
 save_1/RestoreV2_20/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_2/b/Adam_1
m
$save_1/RestoreV2_20/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
_output_shapes
:*
dtypes
2
░
save_1/Assign_20AssignConv2D_2/b/Adam_1save_1/RestoreV2_20*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*
_class
loc:@Conv2D_2/b
s
 save_1/RestoreV2_21/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_3/W
m
$save_1/RestoreV2_21/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
╡
save_1/Assign_21Assign
Conv2D_3/Wsave_1/RestoreV2_21*
use_locking(*
T0*
_class
loc:@Conv2D_3/W*
validate_shape(*'
_output_shapes
:А@
x
 save_1/RestoreV2_22/tensor_namesConst*$
valueBBConv2D_3/W/Adam*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_22/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
_output_shapes
:*
dtypes
2
║
save_1/Assign_22AssignConv2D_3/W/Adamsave_1/RestoreV2_22*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:А@*
_class
loc:@Conv2D_3/W
z
 save_1/RestoreV2_23/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_3/W/Adam_1
m
$save_1/RestoreV2_23/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_23	RestoreV2save_1/Const save_1/RestoreV2_23/tensor_names$save_1/RestoreV2_23/shape_and_slices*
_output_shapes
:*
dtypes
2
╝
save_1/Assign_23AssignConv2D_3/W/Adam_1save_1/RestoreV2_23*
_class
loc:@Conv2D_3/W*'
_output_shapes
:А@*
T0*
validate_shape(*
use_locking(
s
 save_1/RestoreV2_24/tensor_namesConst*
valueBB
Conv2D_3/b*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_24/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_24	RestoreV2save_1/Const save_1/RestoreV2_24/tensor_names$save_1/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
и
save_1/Assign_24Assign
Conv2D_3/bsave_1/RestoreV2_24*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
x
 save_1/RestoreV2_25/tensor_namesConst*$
valueBBConv2D_3/b/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_25/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_25	RestoreV2save_1/Const save_1/RestoreV2_25/tensor_names$save_1/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
н
save_1/Assign_25AssignConv2D_3/b/Adamsave_1/RestoreV2_25*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_3/b*
T0*
use_locking(
z
 save_1/RestoreV2_26/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_3/b/Adam_1
m
$save_1/RestoreV2_26/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_1/RestoreV2_26	RestoreV2save_1/Const save_1/RestoreV2_26/tensor_names$save_1/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
п
save_1/Assign_26AssignConv2D_3/b/Adam_1save_1/RestoreV2_26*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
s
 save_1/RestoreV2_27/tensor_namesConst*
valueBB
Conv2D_4/W*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_27	RestoreV2save_1/Const save_1/RestoreV2_27/tensor_names$save_1/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
┤
save_1/Assign_27Assign
Conv2D_4/Wsave_1/RestoreV2_27*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0*
validate_shape(*
use_locking(
x
 save_1/RestoreV2_28/tensor_namesConst*$
valueBBConv2D_4/W/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_28/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_28	RestoreV2save_1/Const save_1/RestoreV2_28/tensor_names$save_1/RestoreV2_28/shape_and_slices*
_output_shapes
:*
dtypes
2
╣
save_1/Assign_28AssignConv2D_4/W/Adamsave_1/RestoreV2_28*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
z
 save_1/RestoreV2_29/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_4/W/Adam_1
m
$save_1/RestoreV2_29/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_29	RestoreV2save_1/Const save_1/RestoreV2_29/tensor_names$save_1/RestoreV2_29/shape_and_slices*
_output_shapes
:*
dtypes
2
╗
save_1/Assign_29AssignConv2D_4/W/Adam_1save_1/RestoreV2_29*&
_output_shapes
:@ *
validate_shape(*
_class
loc:@Conv2D_4/W*
T0*
use_locking(
s
 save_1/RestoreV2_30/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_4/b
m
$save_1/RestoreV2_30/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_30	RestoreV2save_1/Const save_1/RestoreV2_30/tensor_names$save_1/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
и
save_1/Assign_30Assign
Conv2D_4/bsave_1/RestoreV2_30*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
x
 save_1/RestoreV2_31/tensor_namesConst*$
valueBBConv2D_4/b/Adam*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_31/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_31	RestoreV2save_1/Const save_1/RestoreV2_31/tensor_names$save_1/RestoreV2_31/shape_and_slices*
dtypes
2*
_output_shapes
:
н
save_1/Assign_31AssignConv2D_4/b/Adamsave_1/RestoreV2_31*
use_locking(*
T0*
_class
loc:@Conv2D_4/b*
validate_shape(*
_output_shapes
: 
z
 save_1/RestoreV2_32/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_4/b/Adam_1
m
$save_1/RestoreV2_32/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_1/RestoreV2_32	RestoreV2save_1/Const save_1/RestoreV2_32/tensor_names$save_1/RestoreV2_32/shape_and_slices*
dtypes
2*
_output_shapes
:
п
save_1/Assign_32AssignConv2D_4/b/Adam_1save_1/RestoreV2_32*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D_4/b*
T0*
use_locking(
Е
 save_1/RestoreV2_33/tensor_namesConst*
dtype0*
_output_shapes
:*1
value(B&BCrossentropy/Mean/moving_avg
m
$save_1/RestoreV2_33/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_33	RestoreV2save_1/Const save_1/RestoreV2_33/tensor_names$save_1/RestoreV2_33/shape_and_slices*
_output_shapes
:*
dtypes
2
╚
save_1/Assign_33AssignCrossentropy/Mean/moving_avgsave_1/RestoreV2_33*
_output_shapes
: *
validate_shape(*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
T0*
use_locking(
y
 save_1/RestoreV2_34/tensor_namesConst*%
valueBBFullyConnected/W*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_34/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_34	RestoreV2save_1/Const save_1/RestoreV2_34/tensor_names$save_1/RestoreV2_34/shape_and_slices*
_output_shapes
:*
dtypes
2
║
save_1/Assign_34AssignFullyConnected/Wsave_1/RestoreV2_34*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
аА*#
_class
loc:@FullyConnected/W
~
 save_1/RestoreV2_35/tensor_namesConst*
dtype0*
_output_shapes
:**
value!BBFullyConnected/W/Adam
m
$save_1/RestoreV2_35/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_35	RestoreV2save_1/Const save_1/RestoreV2_35/tensor_names$save_1/RestoreV2_35/shape_and_slices*
_output_shapes
:*
dtypes
2
┐
save_1/Assign_35AssignFullyConnected/W/Adamsave_1/RestoreV2_35*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(* 
_output_shapes
:
аА
А
 save_1/RestoreV2_36/tensor_namesConst*,
value#B!BFullyConnected/W/Adam_1*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_36/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_36	RestoreV2save_1/Const save_1/RestoreV2_36/tensor_names$save_1/RestoreV2_36/shape_and_slices*
dtypes
2*
_output_shapes
:
┴
save_1/Assign_36AssignFullyConnected/W/Adam_1save_1/RestoreV2_36*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0*
validate_shape(*
use_locking(
y
 save_1/RestoreV2_37/tensor_namesConst*%
valueBBFullyConnected/b*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_37/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_37	RestoreV2save_1/Const save_1/RestoreV2_37/tensor_names$save_1/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
╡
save_1/Assign_37AssignFullyConnected/bsave_1/RestoreV2_37*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:А
~
 save_1/RestoreV2_38/tensor_namesConst**
value!BBFullyConnected/b/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_38/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_38	RestoreV2save_1/Const save_1/RestoreV2_38/tensor_names$save_1/RestoreV2_38/shape_and_slices*
_output_shapes
:*
dtypes
2
║
save_1/Assign_38AssignFullyConnected/b/Adamsave_1/RestoreV2_38*
_output_shapes	
:А*
validate_shape(*#
_class
loc:@FullyConnected/b*
T0*
use_locking(
А
 save_1/RestoreV2_39/tensor_namesConst*,
value#B!BFullyConnected/b/Adam_1*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_39/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_39	RestoreV2save_1/Const save_1/RestoreV2_39/tensor_names$save_1/RestoreV2_39/shape_and_slices*
dtypes
2*
_output_shapes
:
╝
save_1/Assign_39AssignFullyConnected/b/Adam_1save_1/RestoreV2_39*
_output_shapes	
:А*
validate_shape(*#
_class
loc:@FullyConnected/b*
T0*
use_locking(
{
 save_1/RestoreV2_40/tensor_namesConst*'
valueBBFullyConnected_1/W*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_40/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_40	RestoreV2save_1/Const save_1/RestoreV2_40/tensor_names$save_1/RestoreV2_40/shape_and_slices*
_output_shapes
:*
dtypes
2
╜
save_1/Assign_40AssignFullyConnected_1/Wsave_1/RestoreV2_40*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	А*
T0*
validate_shape(*
use_locking(
А
 save_1/RestoreV2_41/tensor_namesConst*
_output_shapes
:*
dtype0*,
value#B!BFullyConnected_1/W/Adam
m
$save_1/RestoreV2_41/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_41	RestoreV2save_1/Const save_1/RestoreV2_41/tensor_names$save_1/RestoreV2_41/shape_and_slices*
_output_shapes
:*
dtypes
2
┬
save_1/Assign_41AssignFullyConnected_1/W/Adamsave_1/RestoreV2_41*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	А*%
_class
loc:@FullyConnected_1/W
В
 save_1/RestoreV2_42/tensor_namesConst*.
value%B#BFullyConnected_1/W/Adam_1*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_42/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_42	RestoreV2save_1/Const save_1/RestoreV2_42/tensor_names$save_1/RestoreV2_42/shape_and_slices*
_output_shapes
:*
dtypes
2
─
save_1/Assign_42AssignFullyConnected_1/W/Adam_1save_1/RestoreV2_42*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	А*%
_class
loc:@FullyConnected_1/W
{
 save_1/RestoreV2_43/tensor_namesConst*
dtype0*
_output_shapes
:*'
valueBBFullyConnected_1/b
m
$save_1/RestoreV2_43/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_43	RestoreV2save_1/Const save_1/RestoreV2_43/tensor_names$save_1/RestoreV2_43/shape_and_slices*
_output_shapes
:*
dtypes
2
╕
save_1/Assign_43AssignFullyConnected_1/bsave_1/RestoreV2_43*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
А
 save_1/RestoreV2_44/tensor_namesConst*
_output_shapes
:*
dtype0*,
value#B!BFullyConnected_1/b/Adam
m
$save_1/RestoreV2_44/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_44	RestoreV2save_1/Const save_1/RestoreV2_44/tensor_names$save_1/RestoreV2_44/shape_and_slices*
dtypes
2*
_output_shapes
:
╜
save_1/Assign_44AssignFullyConnected_1/b/Adamsave_1/RestoreV2_44*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
В
 save_1/RestoreV2_45/tensor_namesConst*.
value%B#BFullyConnected_1/b/Adam_1*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_45/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_45	RestoreV2save_1/Const save_1/RestoreV2_45/tensor_names$save_1/RestoreV2_45/shape_and_slices*
_output_shapes
:*
dtypes
2
┐
save_1/Assign_45AssignFullyConnected_1/b/Adam_1save_1/RestoreV2_45*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
t
 save_1/RestoreV2_46/tensor_namesConst* 
valueBBGlobal_Step*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_46/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_1/RestoreV2_46	RestoreV2save_1/Const save_1/RestoreV2_46/tensor_names$save_1/RestoreV2_46/shape_and_slices*
dtypes
2*
_output_shapes
:
ж
save_1/Assign_46AssignGlobal_Stepsave_1/RestoreV2_46*
_class
loc:@Global_Step*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
v
 save_1/RestoreV2_47/tensor_namesConst*"
valueBBTraining_step*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_47/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_1/RestoreV2_47	RestoreV2save_1/Const save_1/RestoreV2_47/tensor_names$save_1/RestoreV2_47/shape_and_slices*
_output_shapes
:*
dtypes
2
к
save_1/Assign_47AssignTraining_stepsave_1/RestoreV2_47* 
_class
loc:@Training_step*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
t
 save_1/RestoreV2_48/tensor_namesConst*
dtype0*
_output_shapes
:* 
valueBBis_training
m
$save_1/RestoreV2_48/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_1/RestoreV2_48	RestoreV2save_1/Const save_1/RestoreV2_48/tensor_names$save_1/RestoreV2_48/shape_and_slices*
_output_shapes
:*
dtypes
2

ж
save_1/Assign_48Assignis_trainingsave_1/RestoreV2_48*
use_locking(*
validate_shape(*
T0
*
_output_shapes
: *
_class
loc:@is_training
p
 save_1/RestoreV2_49/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBval_acc
m
$save_1/RestoreV2_49/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_1/RestoreV2_49	RestoreV2save_1/Const save_1/RestoreV2_49/tensor_names$save_1/RestoreV2_49/shape_and_slices*
_output_shapes
:*
dtypes
2
Ю
save_1/Assign_49Assignval_accsave_1/RestoreV2_49*
_output_shapes
: *
validate_shape(*
_class
loc:@val_acc*
T0*
use_locking(
q
 save_1/RestoreV2_50/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBval_loss
m
$save_1/RestoreV2_50/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_1/RestoreV2_50	RestoreV2save_1/Const save_1/RestoreV2_50/tensor_names$save_1/RestoreV2_50/shape_and_slices*
dtypes
2*
_output_shapes
:
а
save_1/Assign_50Assignval_losssave_1/RestoreV2_50*
_output_shapes
: *
validate_shape(*
_class
loc:@val_loss*
T0*
use_locking(
╫
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_50
R
save_2/ConstConst*
_output_shapes
: *
dtype0*
valueB Bmodel
д
save_2/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*╒
value╦B╚BConv2D/WBConv2D/bB
Conv2D_1/WB
Conv2D_1/bB
Conv2D_2/WB
Conv2D_2/bB
Conv2D_3/WB
Conv2D_3/bB
Conv2D_4/WB
Conv2D_4/bBFullyConnected/WBFullyConnected/bBFullyConnected_1/WBFullyConnected_1/b
Б
save_2/SaveV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*/
value&B$B B B B B B B B B B B B B B 
┐
save_2/SaveV2SaveV2save_2/Constsave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesConv2D/WConv2D/b
Conv2D_1/W
Conv2D_1/b
Conv2D_2/W
Conv2D_2/b
Conv2D_3/W
Conv2D_3/b
Conv2D_4/W
Conv2D_4/bFullyConnected/WFullyConnected/bFullyConnected_1/WFullyConnected_1/b*
dtypes
2
Е
save_2/control_dependencyIdentitysave_2/Const^save_2/SaveV2*
T0*
_class
loc:@save_2/Const*
_output_shapes
: 
n
save_2/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBConv2D/W
j
!save_2/RestoreV2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ш
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
к
save_2/AssignAssignConv2D/Wsave_2/RestoreV2*&
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(
p
save_2/RestoreV2_1/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBConv2D/b
l
#save_2/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ю
save_2/RestoreV2_1	RestoreV2save_2/Constsave_2/RestoreV2_1/tensor_names#save_2/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
в
save_2/Assign_1AssignConv2D/bsave_2/RestoreV2_1*
use_locking(*
T0*
_class
loc:@Conv2D/b*
validate_shape(*
_output_shapes
: 
r
save_2/RestoreV2_2/tensor_namesConst*
valueBB
Conv2D_1/W*
_output_shapes
:*
dtype0
l
#save_2/RestoreV2_2/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ю
save_2/RestoreV2_2	RestoreV2save_2/Constsave_2/RestoreV2_2/tensor_names#save_2/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
▓
save_2/Assign_2Assign
Conv2D_1/Wsave_2/RestoreV2_2*&
_output_shapes
: @*
validate_shape(*
_class
loc:@Conv2D_1/W*
T0*
use_locking(
r
save_2/RestoreV2_3/tensor_namesConst*
valueBB
Conv2D_1/b*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_2/RestoreV2_3	RestoreV2save_2/Constsave_2/RestoreV2_3/tensor_names#save_2/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
ж
save_2/Assign_3Assign
Conv2D_1/bsave_2/RestoreV2_3*
use_locking(*
T0*
_class
loc:@Conv2D_1/b*
validate_shape(*
_output_shapes
:@
r
save_2/RestoreV2_4/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_2/W
l
#save_2/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_2/RestoreV2_4	RestoreV2save_2/Constsave_2/RestoreV2_4/tensor_names#save_2/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
│
save_2/Assign_4Assign
Conv2D_2/Wsave_2/RestoreV2_4*'
_output_shapes
:@А*
validate_shape(*
_class
loc:@Conv2D_2/W*
T0*
use_locking(
r
save_2/RestoreV2_5/tensor_namesConst*
valueBB
Conv2D_2/b*
_output_shapes
:*
dtype0
l
#save_2/RestoreV2_5/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ю
save_2/RestoreV2_5	RestoreV2save_2/Constsave_2/RestoreV2_5/tensor_names#save_2/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
з
save_2/Assign_5Assign
Conv2D_2/bsave_2/RestoreV2_5*
_class
loc:@Conv2D_2/b*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(
r
save_2/RestoreV2_6/tensor_namesConst*
valueBB
Conv2D_3/W*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_6/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_2/RestoreV2_6	RestoreV2save_2/Constsave_2/RestoreV2_6/tensor_names#save_2/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
│
save_2/Assign_6Assign
Conv2D_3/Wsave_2/RestoreV2_6*
_class
loc:@Conv2D_3/W*'
_output_shapes
:А@*
T0*
validate_shape(*
use_locking(
r
save_2/RestoreV2_7/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_3/b
l
#save_2/RestoreV2_7/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_2/RestoreV2_7	RestoreV2save_2/Constsave_2/RestoreV2_7/tensor_names#save_2/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
ж
save_2/Assign_7Assign
Conv2D_3/bsave_2/RestoreV2_7*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
r
save_2/RestoreV2_8/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_4/W
l
#save_2/RestoreV2_8/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_2/RestoreV2_8	RestoreV2save_2/Constsave_2/RestoreV2_8/tensor_names#save_2/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
▓
save_2/Assign_8Assign
Conv2D_4/Wsave_2/RestoreV2_8*
use_locking(*
T0*
_class
loc:@Conv2D_4/W*
validate_shape(*&
_output_shapes
:@ 
r
save_2/RestoreV2_9/tensor_namesConst*
valueBB
Conv2D_4/b*
_output_shapes
:*
dtype0
l
#save_2/RestoreV2_9/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ю
save_2/RestoreV2_9	RestoreV2save_2/Constsave_2/RestoreV2_9/tensor_names#save_2/RestoreV2_9/shape_and_slices*
_output_shapes
:*
dtypes
2
ж
save_2/Assign_9Assign
Conv2D_4/bsave_2/RestoreV2_9*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
y
 save_2/RestoreV2_10/tensor_namesConst*%
valueBBFullyConnected/W*
dtype0*
_output_shapes
:
m
$save_2/RestoreV2_10/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_2/RestoreV2_10	RestoreV2save_2/Const save_2/RestoreV2_10/tensor_names$save_2/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save_2/Assign_10AssignFullyConnected/Wsave_2/RestoreV2_10* 
_output_shapes
:
аА*
validate_shape(*#
_class
loc:@FullyConnected/W*
T0*
use_locking(
y
 save_2/RestoreV2_11/tensor_namesConst*%
valueBBFullyConnected/b*
_output_shapes
:*
dtype0
m
$save_2/RestoreV2_11/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_2/RestoreV2_11	RestoreV2save_2/Const save_2/RestoreV2_11/tensor_names$save_2/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
╡
save_2/Assign_11AssignFullyConnected/bsave_2/RestoreV2_11*#
_class
loc:@FullyConnected/b*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(
{
 save_2/RestoreV2_12/tensor_namesConst*
dtype0*
_output_shapes
:*'
valueBBFullyConnected_1/W
m
$save_2/RestoreV2_12/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_2/RestoreV2_12	RestoreV2save_2/Const save_2/RestoreV2_12/tensor_names$save_2/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
╜
save_2/Assign_12AssignFullyConnected_1/Wsave_2/RestoreV2_12*
_output_shapes
:	А*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
{
 save_2/RestoreV2_13/tensor_namesConst*'
valueBBFullyConnected_1/b*
dtype0*
_output_shapes
:
m
$save_2/RestoreV2_13/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_2/RestoreV2_13	RestoreV2save_2/Const save_2/RestoreV2_13/tensor_names$save_2/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
╕
save_2/Assign_13AssignFullyConnected_1/bsave_2/RestoreV2_13*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
Ш
save_2/restore_allNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13
д

initNoOp^is_training/Assign^Conv2D/W/Assign^Conv2D/b/Assign^Conv2D_1/W/Assign^Conv2D_1/b/Assign^Conv2D_2/W/Assign^Conv2D_2/b/Assign^Conv2D_3/W/Assign^Conv2D_3/b/Assign^Conv2D_4/W/Assign^Conv2D_4/b/Assign^FullyConnected/W/Assign^FullyConnected/b/Assign^FullyConnected_1/W/Assign^FullyConnected_1/b/Assign^Training_step/Assign^Global_Step/Assign^val_loss/Assign^val_acc/Assign ^Accuracy/Mean/moving_avg/Assign$^Crossentropy/Mean/moving_avg/Assign^Adam/beta1_power/Assign^Adam/beta2_power/Assign^Conv2D/W/Adam/Assign^Conv2D/W/Adam_1/Assign^Conv2D/b/Adam/Assign^Conv2D/b/Adam_1/Assign^Conv2D_1/W/Adam/Assign^Conv2D_1/W/Adam_1/Assign^Conv2D_1/b/Adam/Assign^Conv2D_1/b/Adam_1/Assign^Conv2D_2/W/Adam/Assign^Conv2D_2/W/Adam_1/Assign^Conv2D_2/b/Adam/Assign^Conv2D_2/b/Adam_1/Assign^Conv2D_3/W/Adam/Assign^Conv2D_3/W/Adam_1/Assign^Conv2D_3/b/Adam/Assign^Conv2D_3/b/Adam_1/Assign^Conv2D_4/W/Adam/Assign^Conv2D_4/W/Adam_1/Assign^Conv2D_4/b/Adam/Assign^Conv2D_4/b/Adam_1/Assign^FullyConnected/W/Adam/Assign^FullyConnected/W/Adam_1/Assign^FullyConnected/b/Adam/Assign^FullyConnected/b/Adam_1/Assign^FullyConnected_1/W/Adam/Assign!^FullyConnected_1/W/Adam_1/Assign^FullyConnected_1/b/Adam/Assign!^FullyConnected_1/b/Adam_1/Assign

init_1NoOp
"

group_depsNoOp^init^init_1
#
init_2NoOp^is_training/Assign
R
save_3/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
ф
save_3/SaveV2/tensor_namesConst*Х
valueЛBИ3BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBConv2D/WBConv2D/W/AdamBConv2D/W/Adam_1BConv2D/bBConv2D/b/AdamBConv2D/b/Adam_1B
Conv2D_1/WBConv2D_1/W/AdamBConv2D_1/W/Adam_1B
Conv2D_1/bBConv2D_1/b/AdamBConv2D_1/b/Adam_1B
Conv2D_2/WBConv2D_2/W/AdamBConv2D_2/W/Adam_1B
Conv2D_2/bBConv2D_2/b/AdamBConv2D_2/b/Adam_1B
Conv2D_3/WBConv2D_3/W/AdamBConv2D_3/W/Adam_1B
Conv2D_3/bBConv2D_3/b/AdamBConv2D_3/b/Adam_1B
Conv2D_4/WBConv2D_4/W/AdamBConv2D_4/W/Adam_1B
Conv2D_4/bBConv2D_4/b/AdamBConv2D_4/b/Adam_1BCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
_output_shapes
:3*
dtype0
╦
save_3/SaveV2/shape_and_slicesConst*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:3
д
save_3/SaveV2SaveV2save_3/Constsave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesAccuracy/Mean/moving_avgAdam/beta1_powerAdam/beta2_powerConv2D/WConv2D/W/AdamConv2D/W/Adam_1Conv2D/bConv2D/b/AdamConv2D/b/Adam_1
Conv2D_1/WConv2D_1/W/AdamConv2D_1/W/Adam_1
Conv2D_1/bConv2D_1/b/AdamConv2D_1/b/Adam_1
Conv2D_2/WConv2D_2/W/AdamConv2D_2/W/Adam_1
Conv2D_2/bConv2D_2/b/AdamConv2D_2/b/Adam_1
Conv2D_3/WConv2D_3/W/AdamConv2D_3/W/Adam_1
Conv2D_3/bConv2D_3/b/AdamConv2D_3/b/Adam_1
Conv2D_4/WConv2D_4/W/AdamConv2D_4/W/Adam_1
Conv2D_4/bConv2D_4/b/AdamConv2D_4/b/Adam_1Crossentropy/Mean/moving_avgFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1FullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1FullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1FullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1Global_StepTraining_stepis_trainingval_accval_loss*A
dtypes7
523

Е
save_3/control_dependencyIdentitysave_3/Const^save_3/SaveV2*
_output_shapes
: *
_class
loc:@save_3/Const*
T0
~
save_3/RestoreV2/tensor_namesConst*-
value$B"BAccuracy/Mean/moving_avg*
_output_shapes
:*
dtype0
j
!save_3/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ш
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save_3/AssignAssignAccuracy/Mean/moving_avgsave_3/RestoreV2*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
x
save_3/RestoreV2_1/tensor_namesConst*%
valueBBAdam/beta1_power*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_1/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_3/RestoreV2_1	RestoreV2save_3/Constsave_3/RestoreV2_1/tensor_names#save_3/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
ж
save_3/Assign_1AssignAdam/beta1_powersave_3/RestoreV2_1*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(
x
save_3/RestoreV2_2/tensor_namesConst*%
valueBBAdam/beta2_power*
_output_shapes
:*
dtype0
l
#save_3/RestoreV2_2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_3/RestoreV2_2	RestoreV2save_3/Constsave_3/RestoreV2_2/tensor_names#save_3/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
ж
save_3/Assign_2AssignAdam/beta2_powersave_3/RestoreV2_2*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*
_output_shapes
: 
p
save_3/RestoreV2_3/tensor_namesConst*
valueBBConv2D/W*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_3/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_3/RestoreV2_3	RestoreV2save_3/Constsave_3/RestoreV2_3/tensor_names#save_3/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
о
save_3/Assign_3AssignConv2D/Wsave_3/RestoreV2_3*&
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(
u
save_3/RestoreV2_4/tensor_namesConst*"
valueBBConv2D/W/Adam*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_3/RestoreV2_4	RestoreV2save_3/Constsave_3/RestoreV2_4/tensor_names#save_3/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
│
save_3/Assign_4AssignConv2D/W/Adamsave_3/RestoreV2_4*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(
w
save_3/RestoreV2_5/tensor_namesConst*$
valueBBConv2D/W/Adam_1*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_5/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_3/RestoreV2_5	RestoreV2save_3/Constsave_3/RestoreV2_5/tensor_names#save_3/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
╡
save_3/Assign_5AssignConv2D/W/Adam_1save_3/RestoreV2_5*&
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(
p
save_3/RestoreV2_6/tensor_namesConst*
valueBBConv2D/b*
_output_shapes
:*
dtype0
l
#save_3/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_3/RestoreV2_6	RestoreV2save_3/Constsave_3/RestoreV2_6/tensor_names#save_3/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
в
save_3/Assign_6AssignConv2D/bsave_3/RestoreV2_6*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/b
u
save_3/RestoreV2_7/tensor_namesConst*"
valueBBConv2D/b/Adam*
_output_shapes
:*
dtype0
l
#save_3/RestoreV2_7/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ю
save_3/RestoreV2_7	RestoreV2save_3/Constsave_3/RestoreV2_7/tensor_names#save_3/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
з
save_3/Assign_7AssignConv2D/b/Adamsave_3/RestoreV2_7*
use_locking(*
T0*
_class
loc:@Conv2D/b*
validate_shape(*
_output_shapes
: 
w
save_3/RestoreV2_8/tensor_namesConst*$
valueBBConv2D/b/Adam_1*
_output_shapes
:*
dtype0
l
#save_3/RestoreV2_8/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ю
save_3/RestoreV2_8	RestoreV2save_3/Constsave_3/RestoreV2_8/tensor_names#save_3/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
й
save_3/Assign_8AssignConv2D/b/Adam_1save_3/RestoreV2_8*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/b
r
save_3/RestoreV2_9/tensor_namesConst*
valueBB
Conv2D_1/W*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_3/RestoreV2_9	RestoreV2save_3/Constsave_3/RestoreV2_9/tensor_names#save_3/RestoreV2_9/shape_and_slices*
_output_shapes
:*
dtypes
2
▓
save_3/Assign_9Assign
Conv2D_1/Wsave_3/RestoreV2_9*&
_output_shapes
: @*
validate_shape(*
_class
loc:@Conv2D_1/W*
T0*
use_locking(
x
 save_3/RestoreV2_10/tensor_namesConst*$
valueBBConv2D_1/W/Adam*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_10/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_10	RestoreV2save_3/Const save_3/RestoreV2_10/tensor_names$save_3/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
╣
save_3/Assign_10AssignConv2D_1/W/Adamsave_3/RestoreV2_10*
use_locking(*
T0*
_class
loc:@Conv2D_1/W*
validate_shape(*&
_output_shapes
: @
z
 save_3/RestoreV2_11/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_1/W/Adam_1
m
$save_3/RestoreV2_11/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_11	RestoreV2save_3/Const save_3/RestoreV2_11/tensor_names$save_3/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
╗
save_3/Assign_11AssignConv2D_1/W/Adam_1save_3/RestoreV2_11*
use_locking(*
T0*
_class
loc:@Conv2D_1/W*
validate_shape(*&
_output_shapes
: @
s
 save_3/RestoreV2_12/tensor_namesConst*
valueBB
Conv2D_1/b*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_3/RestoreV2_12	RestoreV2save_3/Const save_3/RestoreV2_12/tensor_names$save_3/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
и
save_3/Assign_12Assign
Conv2D_1/bsave_3/RestoreV2_12*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_1/b*
T0*
use_locking(
x
 save_3/RestoreV2_13/tensor_namesConst*$
valueBBConv2D_1/b/Adam*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_13/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_13	RestoreV2save_3/Const save_3/RestoreV2_13/tensor_names$save_3/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
н
save_3/Assign_13AssignConv2D_1/b/Adamsave_3/RestoreV2_13*
use_locking(*
T0*
_class
loc:@Conv2D_1/b*
validate_shape(*
_output_shapes
:@
z
 save_3/RestoreV2_14/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_1/b/Adam_1
m
$save_3/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_3/RestoreV2_14	RestoreV2save_3/Const save_3/RestoreV2_14/tensor_names$save_3/RestoreV2_14/shape_and_slices*
_output_shapes
:*
dtypes
2
п
save_3/Assign_14AssignConv2D_1/b/Adam_1save_3/RestoreV2_14*
use_locking(*
T0*
_class
loc:@Conv2D_1/b*
validate_shape(*
_output_shapes
:@
s
 save_3/RestoreV2_15/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_2/W
m
$save_3/RestoreV2_15/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_15	RestoreV2save_3/Const save_3/RestoreV2_15/tensor_names$save_3/RestoreV2_15/shape_and_slices*
_output_shapes
:*
dtypes
2
╡
save_3/Assign_15Assign
Conv2D_2/Wsave_3/RestoreV2_15*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А*
T0*
validate_shape(*
use_locking(
x
 save_3/RestoreV2_16/tensor_namesConst*$
valueBBConv2D_2/W/Adam*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_16/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_16	RestoreV2save_3/Const save_3/RestoreV2_16/tensor_names$save_3/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save_3/Assign_16AssignConv2D_2/W/Adamsave_3/RestoreV2_16*'
_output_shapes
:@А*
validate_shape(*
_class
loc:@Conv2D_2/W*
T0*
use_locking(
z
 save_3/RestoreV2_17/tensor_namesConst*&
valueBBConv2D_2/W/Adam_1*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_17/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_17	RestoreV2save_3/Const save_3/RestoreV2_17/tensor_names$save_3/RestoreV2_17/shape_and_slices*
_output_shapes
:*
dtypes
2
╝
save_3/Assign_17AssignConv2D_2/W/Adam_1save_3/RestoreV2_17*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@А*
T0*
validate_shape(*
use_locking(
s
 save_3/RestoreV2_18/tensor_namesConst*
valueBB
Conv2D_2/b*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_18/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_18	RestoreV2save_3/Const save_3/RestoreV2_18/tensor_names$save_3/RestoreV2_18/shape_and_slices*
_output_shapes
:*
dtypes
2
й
save_3/Assign_18Assign
Conv2D_2/bsave_3/RestoreV2_18*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*
_class
loc:@Conv2D_2/b
x
 save_3/RestoreV2_19/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_2/b/Adam
m
$save_3/RestoreV2_19/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_19	RestoreV2save_3/Const save_3/RestoreV2_19/tensor_names$save_3/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
о
save_3/Assign_19AssignConv2D_2/b/Adamsave_3/RestoreV2_19*
_output_shapes	
:А*
validate_shape(*
_class
loc:@Conv2D_2/b*
T0*
use_locking(
z
 save_3/RestoreV2_20/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_2/b/Adam_1
m
$save_3/RestoreV2_20/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_20	RestoreV2save_3/Const save_3/RestoreV2_20/tensor_names$save_3/RestoreV2_20/shape_and_slices*
_output_shapes
:*
dtypes
2
░
save_3/Assign_20AssignConv2D_2/b/Adam_1save_3/RestoreV2_20*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*
_class
loc:@Conv2D_2/b
s
 save_3/RestoreV2_21/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_3/W
m
$save_3/RestoreV2_21/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_21	RestoreV2save_3/Const save_3/RestoreV2_21/tensor_names$save_3/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
╡
save_3/Assign_21Assign
Conv2D_3/Wsave_3/RestoreV2_21*
_class
loc:@Conv2D_3/W*'
_output_shapes
:А@*
T0*
validate_shape(*
use_locking(
x
 save_3/RestoreV2_22/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_3/W/Adam
m
$save_3/RestoreV2_22/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_22	RestoreV2save_3/Const save_3/RestoreV2_22/tensor_names$save_3/RestoreV2_22/shape_and_slices*
_output_shapes
:*
dtypes
2
║
save_3/Assign_22AssignConv2D_3/W/Adamsave_3/RestoreV2_22*
_class
loc:@Conv2D_3/W*'
_output_shapes
:А@*
T0*
validate_shape(*
use_locking(
z
 save_3/RestoreV2_23/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_3/W/Adam_1
m
$save_3/RestoreV2_23/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_23	RestoreV2save_3/Const save_3/RestoreV2_23/tensor_names$save_3/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
╝
save_3/Assign_23AssignConv2D_3/W/Adam_1save_3/RestoreV2_23*
_class
loc:@Conv2D_3/W*'
_output_shapes
:А@*
T0*
validate_shape(*
use_locking(
s
 save_3/RestoreV2_24/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_3/b
m
$save_3/RestoreV2_24/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_24	RestoreV2save_3/Const save_3/RestoreV2_24/tensor_names$save_3/RestoreV2_24/shape_and_slices*
_output_shapes
:*
dtypes
2
и
save_3/Assign_24Assign
Conv2D_3/bsave_3/RestoreV2_24*
use_locking(*
T0*
_class
loc:@Conv2D_3/b*
validate_shape(*
_output_shapes
:@
x
 save_3/RestoreV2_25/tensor_namesConst*$
valueBBConv2D_3/b/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_25/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_25	RestoreV2save_3/Const save_3/RestoreV2_25/tensor_names$save_3/RestoreV2_25/shape_and_slices*
_output_shapes
:*
dtypes
2
н
save_3/Assign_25AssignConv2D_3/b/Adamsave_3/RestoreV2_25*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
z
 save_3/RestoreV2_26/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_3/b/Adam_1
m
$save_3/RestoreV2_26/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_26	RestoreV2save_3/Const save_3/RestoreV2_26/tensor_names$save_3/RestoreV2_26/shape_and_slices*
_output_shapes
:*
dtypes
2
п
save_3/Assign_26AssignConv2D_3/b/Adam_1save_3/RestoreV2_26*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
s
 save_3/RestoreV2_27/tensor_namesConst*
valueBB
Conv2D_4/W*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_27/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_27	RestoreV2save_3/Const save_3/RestoreV2_27/tensor_names$save_3/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
┤
save_3/Assign_27Assign
Conv2D_4/Wsave_3/RestoreV2_27*
use_locking(*
T0*
_class
loc:@Conv2D_4/W*
validate_shape(*&
_output_shapes
:@ 
x
 save_3/RestoreV2_28/tensor_namesConst*$
valueBBConv2D_4/W/Adam*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_28/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_28	RestoreV2save_3/Const save_3/RestoreV2_28/tensor_names$save_3/RestoreV2_28/shape_and_slices*
_output_shapes
:*
dtypes
2
╣
save_3/Assign_28AssignConv2D_4/W/Adamsave_3/RestoreV2_28*&
_output_shapes
:@ *
validate_shape(*
_class
loc:@Conv2D_4/W*
T0*
use_locking(
z
 save_3/RestoreV2_29/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_4/W/Adam_1
m
$save_3/RestoreV2_29/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_29	RestoreV2save_3/Const save_3/RestoreV2_29/tensor_names$save_3/RestoreV2_29/shape_and_slices*
_output_shapes
:*
dtypes
2
╗
save_3/Assign_29AssignConv2D_4/W/Adam_1save_3/RestoreV2_29*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
s
 save_3/RestoreV2_30/tensor_namesConst*
valueBB
Conv2D_4/b*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_3/RestoreV2_30	RestoreV2save_3/Const save_3/RestoreV2_30/tensor_names$save_3/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
и
save_3/Assign_30Assign
Conv2D_4/bsave_3/RestoreV2_30*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
x
 save_3/RestoreV2_31/tensor_namesConst*$
valueBBConv2D_4/b/Adam*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_31/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_31	RestoreV2save_3/Const save_3/RestoreV2_31/tensor_names$save_3/RestoreV2_31/shape_and_slices*
_output_shapes
:*
dtypes
2
н
save_3/Assign_31AssignConv2D_4/b/Adamsave_3/RestoreV2_31*
use_locking(*
T0*
_class
loc:@Conv2D_4/b*
validate_shape(*
_output_shapes
: 
z
 save_3/RestoreV2_32/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_4/b/Adam_1
m
$save_3/RestoreV2_32/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_32	RestoreV2save_3/Const save_3/RestoreV2_32/tensor_names$save_3/RestoreV2_32/shape_and_slices*
_output_shapes
:*
dtypes
2
п
save_3/Assign_32AssignConv2D_4/b/Adam_1save_3/RestoreV2_32*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D_4/b*
T0*
use_locking(
Е
 save_3/RestoreV2_33/tensor_namesConst*
dtype0*
_output_shapes
:*1
value(B&BCrossentropy/Mean/moving_avg
m
$save_3/RestoreV2_33/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_33	RestoreV2save_3/Const save_3/RestoreV2_33/tensor_names$save_3/RestoreV2_33/shape_and_slices*
dtypes
2*
_output_shapes
:
╚
save_3/Assign_33AssignCrossentropy/Mean/moving_avgsave_3/RestoreV2_33*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
y
 save_3/RestoreV2_34/tensor_namesConst*
dtype0*
_output_shapes
:*%
valueBBFullyConnected/W
m
$save_3/RestoreV2_34/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_34	RestoreV2save_3/Const save_3/RestoreV2_34/tensor_names$save_3/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save_3/Assign_34AssignFullyConnected/Wsave_3/RestoreV2_34*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0*
validate_shape(*
use_locking(
~
 save_3/RestoreV2_35/tensor_namesConst*
dtype0*
_output_shapes
:**
value!BBFullyConnected/W/Adam
m
$save_3/RestoreV2_35/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_35	RestoreV2save_3/Const save_3/RestoreV2_35/tensor_names$save_3/RestoreV2_35/shape_and_slices*
_output_shapes
:*
dtypes
2
┐
save_3/Assign_35AssignFullyConnected/W/Adamsave_3/RestoreV2_35* 
_output_shapes
:
аА*
validate_shape(*#
_class
loc:@FullyConnected/W*
T0*
use_locking(
А
 save_3/RestoreV2_36/tensor_namesConst*,
value#B!BFullyConnected/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_36/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_36	RestoreV2save_3/Const save_3/RestoreV2_36/tensor_names$save_3/RestoreV2_36/shape_and_slices*
_output_shapes
:*
dtypes
2
┴
save_3/Assign_36AssignFullyConnected/W/Adam_1save_3/RestoreV2_36*#
_class
loc:@FullyConnected/W* 
_output_shapes
:
аА*
T0*
validate_shape(*
use_locking(
y
 save_3/RestoreV2_37/tensor_namesConst*
_output_shapes
:*
dtype0*%
valueBBFullyConnected/b
m
$save_3/RestoreV2_37/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_37	RestoreV2save_3/Const save_3/RestoreV2_37/tensor_names$save_3/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
╡
save_3/Assign_37AssignFullyConnected/bsave_3/RestoreV2_37*#
_class
loc:@FullyConnected/b*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(
~
 save_3/RestoreV2_38/tensor_namesConst**
value!BBFullyConnected/b/Adam*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_38/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_38	RestoreV2save_3/Const save_3/RestoreV2_38/tensor_names$save_3/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save_3/Assign_38AssignFullyConnected/b/Adamsave_3/RestoreV2_38*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*#
_class
loc:@FullyConnected/b
А
 save_3/RestoreV2_39/tensor_namesConst*
_output_shapes
:*
dtype0*,
value#B!BFullyConnected/b/Adam_1
m
$save_3/RestoreV2_39/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_39	RestoreV2save_3/Const save_3/RestoreV2_39/tensor_names$save_3/RestoreV2_39/shape_and_slices*
dtypes
2*
_output_shapes
:
╝
save_3/Assign_39AssignFullyConnected/b/Adam_1save_3/RestoreV2_39*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*#
_class
loc:@FullyConnected/b
{
 save_3/RestoreV2_40/tensor_namesConst*'
valueBBFullyConnected_1/W*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_40/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_40	RestoreV2save_3/Const save_3/RestoreV2_40/tensor_names$save_3/RestoreV2_40/shape_and_slices*
dtypes
2*
_output_shapes
:
╜
save_3/Assign_40AssignFullyConnected_1/Wsave_3/RestoreV2_40*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	А*
T0*
validate_shape(*
use_locking(
А
 save_3/RestoreV2_41/tensor_namesConst*,
value#B!BFullyConnected_1/W/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_41/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_41	RestoreV2save_3/Const save_3/RestoreV2_41/tensor_names$save_3/RestoreV2_41/shape_and_slices*
dtypes
2*
_output_shapes
:
┬
save_3/Assign_41AssignFullyConnected_1/W/Adamsave_3/RestoreV2_41*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	А*%
_class
loc:@FullyConnected_1/W
В
 save_3/RestoreV2_42/tensor_namesConst*.
value%B#BFullyConnected_1/W/Adam_1*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_42/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_3/RestoreV2_42	RestoreV2save_3/Const save_3/RestoreV2_42/tensor_names$save_3/RestoreV2_42/shape_and_slices*
_output_shapes
:*
dtypes
2
─
save_3/Assign_42AssignFullyConnected_1/W/Adam_1save_3/RestoreV2_42*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	А
{
 save_3/RestoreV2_43/tensor_namesConst*'
valueBBFullyConnected_1/b*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_43/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_43	RestoreV2save_3/Const save_3/RestoreV2_43/tensor_names$save_3/RestoreV2_43/shape_and_slices*
dtypes
2*
_output_shapes
:
╕
save_3/Assign_43AssignFullyConnected_1/bsave_3/RestoreV2_43*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
А
 save_3/RestoreV2_44/tensor_namesConst*
_output_shapes
:*
dtype0*,
value#B!BFullyConnected_1/b/Adam
m
$save_3/RestoreV2_44/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_3/RestoreV2_44	RestoreV2save_3/Const save_3/RestoreV2_44/tensor_names$save_3/RestoreV2_44/shape_and_slices*
_output_shapes
:*
dtypes
2
╜
save_3/Assign_44AssignFullyConnected_1/b/Adamsave_3/RestoreV2_44*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
В
 save_3/RestoreV2_45/tensor_namesConst*
_output_shapes
:*
dtype0*.
value%B#BFullyConnected_1/b/Adam_1
m
$save_3/RestoreV2_45/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_45	RestoreV2save_3/Const save_3/RestoreV2_45/tensor_names$save_3/RestoreV2_45/shape_and_slices*
_output_shapes
:*
dtypes
2
┐
save_3/Assign_45AssignFullyConnected_1/b/Adam_1save_3/RestoreV2_45*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
t
 save_3/RestoreV2_46/tensor_namesConst* 
valueBBGlobal_Step*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_46/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_3/RestoreV2_46	RestoreV2save_3/Const save_3/RestoreV2_46/tensor_names$save_3/RestoreV2_46/shape_and_slices*
_output_shapes
:*
dtypes
2
ж
save_3/Assign_46AssignGlobal_Stepsave_3/RestoreV2_46*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Global_Step
v
 save_3/RestoreV2_47/tensor_namesConst*"
valueBBTraining_step*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_47/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
б
save_3/RestoreV2_47	RestoreV2save_3/Const save_3/RestoreV2_47/tensor_names$save_3/RestoreV2_47/shape_and_slices*
_output_shapes
:*
dtypes
2
к
save_3/Assign_47AssignTraining_stepsave_3/RestoreV2_47*
_output_shapes
: *
validate_shape(* 
_class
loc:@Training_step*
T0*
use_locking(
t
 save_3/RestoreV2_48/tensor_namesConst* 
valueBBis_training*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_48/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
б
save_3/RestoreV2_48	RestoreV2save_3/Const save_3/RestoreV2_48/tensor_names$save_3/RestoreV2_48/shape_and_slices*
_output_shapes
:*
dtypes
2

ж
save_3/Assign_48Assignis_trainingsave_3/RestoreV2_48*
use_locking(*
validate_shape(*
T0
*
_output_shapes
: *
_class
loc:@is_training
p
 save_3/RestoreV2_49/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBval_acc
m
$save_3/RestoreV2_49/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
б
save_3/RestoreV2_49	RestoreV2save_3/Const save_3/RestoreV2_49/tensor_names$save_3/RestoreV2_49/shape_and_slices*
_output_shapes
:*
dtypes
2
Ю
save_3/Assign_49Assignval_accsave_3/RestoreV2_49*
_class
loc:@val_acc*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
q
 save_3/RestoreV2_50/tensor_namesConst*
valueBBval_loss*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_50/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
б
save_3/RestoreV2_50	RestoreV2save_3/Const save_3/RestoreV2_50/tensor_names$save_3/RestoreV2_50/shape_and_slices*
dtypes
2*
_output_shapes
:
а
save_3/Assign_50Assignval_losssave_3/RestoreV2_50*
use_locking(*
T0*
_class
loc:@val_loss*
validate_shape(*
_output_shapes
: 
╫
save_3/restore_allNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_2^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26^save_3/Assign_27^save_3/Assign_28^save_3/Assign_29^save_3/Assign_30^save_3/Assign_31^save_3/Assign_32^save_3/Assign_33^save_3/Assign_34^save_3/Assign_35^save_3/Assign_36^save_3/Assign_37^save_3/Assign_38^save_3/Assign_39^save_3/Assign_40^save_3/Assign_41^save_3/Assign_42^save_3/Assign_43^save_3/Assign_44^save_3/Assign_45^save_3/Assign_46^save_3/Assign_47^save_3/Assign_48^save_3/Assign_49^save_3/Assign_50"",
layer_tensor/Conv2D_1

Conv2D_1/Relu:0"з
	variablesЩЦ
7
is_training:0is_training/Assignis_training/read:0
.

Conv2D/W:0Conv2D/W/AssignConv2D/W/read:0
.

Conv2D/b:0Conv2D/b/AssignConv2D/b/read:0
4
Conv2D_1/W:0Conv2D_1/W/AssignConv2D_1/W/read:0
4
Conv2D_1/b:0Conv2D_1/b/AssignConv2D_1/b/read:0
4
Conv2D_2/W:0Conv2D_2/W/AssignConv2D_2/W/read:0
4
Conv2D_2/b:0Conv2D_2/b/AssignConv2D_2/b/read:0
4
Conv2D_3/W:0Conv2D_3/W/AssignConv2D_3/W/read:0
4
Conv2D_3/b:0Conv2D_3/b/AssignConv2D_3/b/read:0
4
Conv2D_4/W:0Conv2D_4/W/AssignConv2D_4/W/read:0
4
Conv2D_4/b:0Conv2D_4/b/AssignConv2D_4/b/read:0
F
FullyConnected/W:0FullyConnected/W/AssignFullyConnected/W/read:0
F
FullyConnected/b:0FullyConnected/b/AssignFullyConnected/b/read:0
L
FullyConnected_1/W:0FullyConnected_1/W/AssignFullyConnected_1/W/read:0
L
FullyConnected_1/b:0FullyConnected_1/b/AssignFullyConnected_1/b/read:0
=
Training_step:0Training_step/AssignTraining_step/read:0
7
Global_Step:0Global_Step/AssignGlobal_Step/read:0
.

val_loss:0val_loss/Assignval_loss/read:0
+
	val_acc:0val_acc/Assignval_acc/read:0
^
Accuracy/Mean/moving_avg:0Accuracy/Mean/moving_avg/AssignAccuracy/Mean/moving_avg/read:0
j
Crossentropy/Mean/moving_avg:0#Crossentropy/Mean/moving_avg/Assign#Crossentropy/Mean/moving_avg/read:0
F
Adam/beta1_power:0Adam/beta1_power/AssignAdam/beta1_power/read:0
F
Adam/beta2_power:0Adam/beta2_power/AssignAdam/beta2_power/read:0
=
Conv2D/W/Adam:0Conv2D/W/Adam/AssignConv2D/W/Adam/read:0
C
Conv2D/W/Adam_1:0Conv2D/W/Adam_1/AssignConv2D/W/Adam_1/read:0
=
Conv2D/b/Adam:0Conv2D/b/Adam/AssignConv2D/b/Adam/read:0
C
Conv2D/b/Adam_1:0Conv2D/b/Adam_1/AssignConv2D/b/Adam_1/read:0
C
Conv2D_1/W/Adam:0Conv2D_1/W/Adam/AssignConv2D_1/W/Adam/read:0
I
Conv2D_1/W/Adam_1:0Conv2D_1/W/Adam_1/AssignConv2D_1/W/Adam_1/read:0
C
Conv2D_1/b/Adam:0Conv2D_1/b/Adam/AssignConv2D_1/b/Adam/read:0
I
Conv2D_1/b/Adam_1:0Conv2D_1/b/Adam_1/AssignConv2D_1/b/Adam_1/read:0
C
Conv2D_2/W/Adam:0Conv2D_2/W/Adam/AssignConv2D_2/W/Adam/read:0
I
Conv2D_2/W/Adam_1:0Conv2D_2/W/Adam_1/AssignConv2D_2/W/Adam_1/read:0
C
Conv2D_2/b/Adam:0Conv2D_2/b/Adam/AssignConv2D_2/b/Adam/read:0
I
Conv2D_2/b/Adam_1:0Conv2D_2/b/Adam_1/AssignConv2D_2/b/Adam_1/read:0
C
Conv2D_3/W/Adam:0Conv2D_3/W/Adam/AssignConv2D_3/W/Adam/read:0
I
Conv2D_3/W/Adam_1:0Conv2D_3/W/Adam_1/AssignConv2D_3/W/Adam_1/read:0
C
Conv2D_3/b/Adam:0Conv2D_3/b/Adam/AssignConv2D_3/b/Adam/read:0
I
Conv2D_3/b/Adam_1:0Conv2D_3/b/Adam_1/AssignConv2D_3/b/Adam_1/read:0
C
Conv2D_4/W/Adam:0Conv2D_4/W/Adam/AssignConv2D_4/W/Adam/read:0
I
Conv2D_4/W/Adam_1:0Conv2D_4/W/Adam_1/AssignConv2D_4/W/Adam_1/read:0
C
Conv2D_4/b/Adam:0Conv2D_4/b/Adam/AssignConv2D_4/b/Adam/read:0
I
Conv2D_4/b/Adam_1:0Conv2D_4/b/Adam_1/AssignConv2D_4/b/Adam_1/read:0
U
FullyConnected/W/Adam:0FullyConnected/W/Adam/AssignFullyConnected/W/Adam/read:0
[
FullyConnected/W/Adam_1:0FullyConnected/W/Adam_1/AssignFullyConnected/W/Adam_1/read:0
U
FullyConnected/b/Adam:0FullyConnected/b/Adam/AssignFullyConnected/b/Adam/read:0
[
FullyConnected/b/Adam_1:0FullyConnected/b/Adam_1/AssignFullyConnected/b/Adam_1/read:0
[
FullyConnected_1/W/Adam:0FullyConnected_1/W/Adam/AssignFullyConnected_1/W/Adam/read:0
a
FullyConnected_1/W/Adam_1:0 FullyConnected_1/W/Adam_1/Assign FullyConnected_1/W/Adam_1/read:0
[
FullyConnected_1/b/Adam:0FullyConnected_1/b/Adam/AssignFullyConnected_1/b/Adam/read:0
a
FullyConnected_1/b/Adam_1:0 FullyConnected_1/b/Adam_1/Assign FullyConnected_1/b/Adam_1/read:0"6
Adam_training_summaries

Loss:0
Adam/Loss/raw:0"4
layer_variables/Conv2D


Conv2D/W:0

Conv2D/b:0",
layer_tensor/Conv2D_2

Conv2D_2/Relu:0",
layer_tensor/Conv2D_3

Conv2D_3/Relu:0"Н
layer_tensor/MaxPool2Ds
q
MaxPool2D/MaxPool:0
MaxPool2D_1/MaxPool:0
MaxPool2D_2/MaxPool:0
MaxPool2D_3/MaxPool:0
MaxPool2D_4/MaxPool:0"0
layer_tensor/Dropout

Dropout/cond/Merge:0"R
 layer_variables/FullyConnected_1.
,
FullyConnected_1/W:0
FullyConnected_1/b:0",
layer_tensor/Conv2D_4

Conv2D_4/Relu:0"
inputs

	input/X:0"+
is_training_ops

Assign:0

Assign_1:0":
layer_variables/Conv2D_1

Conv2D_1/W:0
Conv2D_1/b:0"
trainops

Adam"╫
trainable_variables┐╝
.

Conv2D/W:0Conv2D/W/AssignConv2D/W/read:0
.

Conv2D/b:0Conv2D/b/AssignConv2D/b/read:0
4
Conv2D_1/W:0Conv2D_1/W/AssignConv2D_1/W/read:0
4
Conv2D_1/b:0Conv2D_1/b/AssignConv2D_1/b/read:0
4
Conv2D_2/W:0Conv2D_2/W/AssignConv2D_2/W/read:0
4
Conv2D_2/b:0Conv2D_2/b/AssignConv2D_2/b/read:0
4
Conv2D_3/W:0Conv2D_3/W/AssignConv2D_3/W/read:0
4
Conv2D_3/b:0Conv2D_3/b/AssignConv2D_3/b/read:0
4
Conv2D_4/W:0Conv2D_4/W/AssignConv2D_4/W/read:0
4
Conv2D_4/b:0Conv2D_4/b/AssignConv2D_4/b/read:0
F
FullyConnected/W:0FullyConnected/W/AssignFullyConnected/W/read:0
F
FullyConnected/b:0FullyConnected/b/AssignFullyConnected/b/read:0
L
FullyConnected_1/W:0FullyConnected_1/W/AssignFullyConnected_1/W/read:0
L
FullyConnected_1/b:0FullyConnected_1/b/AssignFullyConnected_1/b/read:0"(
layer_tensor/Conv2D

Conv2D/Relu:0"(
	summaries

Loss:0
Adam/Loss/raw:0" 
is_training

is_training:0"#
layer_tensor/input

	input/X:0":
layer_variables/Conv2D_2

Conv2D_2/W:0
Conv2D_2/b:0"╟
cond_context╢│
│
Dropout/cond/cond_textDropout/cond/pred_id:0Dropout/cond/switch_t:0 *х
Dropout/cond/dropout/Floor:0
#Dropout/cond/dropout/Shape/Switch:1
Dropout/cond/dropout/Shape:0
Dropout/cond/dropout/add:0
Dropout/cond/dropout/div:0
 Dropout/cond/dropout/keep_prob:0
Dropout/cond/dropout/mul:0
3Dropout/cond/dropout/random_uniform/RandomUniform:0
)Dropout/cond/dropout/random_uniform/max:0
)Dropout/cond/dropout/random_uniform/min:0
)Dropout/cond/dropout/random_uniform/mul:0
)Dropout/cond/dropout/random_uniform/sub:0
%Dropout/cond/dropout/random_uniform:0
Dropout/cond/pred_id:0
Dropout/cond/switch_t:0
FullyConnected/Relu:0<
FullyConnected/Relu:0#Dropout/cond/dropout/Shape/Switch:1
·
Dropout/cond/cond_text_1Dropout/cond/pred_id:0Dropout/cond/switch_f:0*м
Dropout/cond/Switch_1:0
Dropout/cond/Switch_1:1
Dropout/cond/pred_id:0
Dropout/cond/switch_f:0
FullyConnected/Relu:00
FullyConnected/Relu:0Dropout/cond/Switch_1:0"L
layer_variables/FullyConnected*
(
FullyConnected/W:0
FullyConnected/b:0":
layer_variables/Conv2D_3

Conv2D_3/W:0
Conv2D_3/b:0":
layer_variables/Conv2D_4

Conv2D_4/W:0
Conv2D_4/b:0"К
activations·
ў
Conv2D/Relu:0
MaxPool2D/MaxPool:0
Conv2D_1/Relu:0
MaxPool2D_1/MaxPool:0
Conv2D_2/Relu:0
MaxPool2D_2/MaxPool:0
Conv2D_3/Relu:0
MaxPool2D_3/MaxPool:0
Conv2D_4/Relu:0
MaxPool2D_4/MaxPool:0
FullyConnected/Relu:0
FullyConnected_1/Softmax:0"$
train_op

Adam/apply_grad_op_0"
targets

targets/Y:0"В
model_variablesю
ы
is_training:0

Conv2D/W:0

Conv2D/b:0
Conv2D_1/W:0
Conv2D_1/b:0
Conv2D_2/W:0
Conv2D_2/b:0
Conv2D_3/W:0
Conv2D_3/b:0
Conv2D_4/W:0
Conv2D_4/b:0
FullyConnected/W:0
FullyConnected/b:0
FullyConnected_1/W:0
FullyConnected_1/b:0"?
layer_tensor/FullyConnected_1

FullyConnected_1/Softmax:0"8
layer_tensor/FullyConnected

FullyConnected/Relu:0▀╞╕