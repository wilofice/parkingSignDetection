       �K"	  @uq9�Abrain.Event:2._�_     !N�$	��Tuq9�A"��

is_training/Initializer/ConstConst*
_class
loc:@is_training*
value	B
 Z *
_output_shapes
: *
dtype0

�
is_training
VariableV2*
shared_name *
shape: *
_output_shapes
: *
_class
loc:@is_training*
dtype0
*
	container 
�
is_training/AssignAssignis_trainingis_training/Initializer/Const*
use_locking(*
T0
*
_class
loc:@is_training*
validate_shape(*
_output_shapes
: 
j
is_training/readIdentityis_training*
_class
loc:@is_training*
_output_shapes
: *
T0

N
Assign/valueConst*
_output_shapes
: *
dtype0
*
value	B
 Z
�
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
 Z *
_output_shapes
: *
dtype0

�
Assign_1Assignis_trainingAssign_1/value*
_output_shapes
: *
validate_shape(*
_class
loc:@is_training*
T0
*
use_locking(
b
input/XPlaceholder*0
_output_shapes
:����������0*
dtype0*
shape: 
�
)Conv2D/W/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
_class
loc:@Conv2D/W*%
valueB"             
�
'Conv2D/W/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
_class
loc:@Conv2D/W*
valueB
 *�\��
�
'Conv2D/W/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
_class
loc:@Conv2D/W*
valueB
 *�\�>
�
1Conv2D/W/Initializer/random_uniform/RandomUniformRandomUniform)Conv2D/W/Initializer/random_uniform/shape*
T0*&
_output_shapes
: *

seed *
_class
loc:@Conv2D/W*
dtype0*
seed2 
�
'Conv2D/W/Initializer/random_uniform/subSub'Conv2D/W/Initializer/random_uniform/max'Conv2D/W/Initializer/random_uniform/min*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0
�
'Conv2D/W/Initializer/random_uniform/mulMul1Conv2D/W/Initializer/random_uniform/RandomUniform'Conv2D/W/Initializer/random_uniform/sub*&
_output_shapes
: *
_class
loc:@Conv2D/W*
T0
�
#Conv2D/W/Initializer/random_uniformAdd'Conv2D/W/Initializer/random_uniform/mul'Conv2D/W/Initializer/random_uniform/min*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
�
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
�
Conv2D/W/AssignAssignConv2D/W#Conv2D/W/Initializer/random_uniform*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(
q
Conv2D/W/readIdentityConv2D/W*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0
�
Conv2D/b/Initializer/ConstConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D/b*
valueB *    
�
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
�
Conv2D/b/AssignAssignConv2D/bConv2D/b/Initializer/Const*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/b*
T0*
use_locking(
e
Conv2D/b/readIdentityConv2D/b*
T0*
_output_shapes
: *
_class
loc:@Conv2D/b
�
Conv2D/Conv2DConv2Dinput/XConv2D/W/read*
strides
*
data_formatNHWC*0
_output_shapes
:����������0 *
paddingSAME*
T0*
use_cudnn_on_gpu(
�
Conv2D/BiasAddBiasAddConv2D/Conv2DConv2D/b/read*0
_output_shapes
:����������0 *
data_formatNHWC*
T0
^
Conv2D/ReluReluConv2D/BiasAdd*
T0*0
_output_shapes
:����������0 
�
MaxPool2D/MaxPoolMaxPoolConv2D/Relu*
ksize
*/
_output_shapes
:���������7
 *
strides
*
data_formatNHWC*
T0*
paddingSAME
�
+Conv2D_1/W/Initializer/random_uniform/shapeConst*
_class
loc:@Conv2D_1/W*%
valueB"          @   *
dtype0*
_output_shapes
:
�
)Conv2D_1/W/Initializer/random_uniform/minConst*
_class
loc:@Conv2D_1/W*
valueB
 *��z�*
_output_shapes
: *
dtype0
�
)Conv2D_1/W/Initializer/random_uniform/maxConst*
_class
loc:@Conv2D_1/W*
valueB
 *��z=*
_output_shapes
: *
dtype0
�
3Conv2D_1/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_1/W/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@Conv2D_1/W*
seed2 *
dtype0*&
_output_shapes
: @
�
)Conv2D_1/W/Initializer/random_uniform/subSub)Conv2D_1/W/Initializer/random_uniform/max)Conv2D_1/W/Initializer/random_uniform/min*
T0*
_class
loc:@Conv2D_1/W*
_output_shapes
: 
�
)Conv2D_1/W/Initializer/random_uniform/mulMul3Conv2D_1/W/Initializer/random_uniform/RandomUniform)Conv2D_1/W/Initializer/random_uniform/sub*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
�
%Conv2D_1/W/Initializer/random_uniformAdd)Conv2D_1/W/Initializer/random_uniform/mul)Conv2D_1/W/Initializer/random_uniform/min*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W*
T0
�

Conv2D_1/W
VariableV2*
shared_name *
_class
loc:@Conv2D_1/W*
	container *
shape: @*
dtype0*&
_output_shapes
: @
�
Conv2D_1/W/AssignAssign
Conv2D_1/W%Conv2D_1/W/Initializer/random_uniform*&
_output_shapes
: @*
validate_shape(*
_class
loc:@Conv2D_1/W*
T0*
use_locking(
w
Conv2D_1/W/readIdentity
Conv2D_1/W*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W*
T0
�
Conv2D_1/b/Initializer/ConstConst*
_output_shapes
:@*
dtype0*
_class
loc:@Conv2D_1/b*
valueB@*    
�

Conv2D_1/b
VariableV2*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
shape:@*
dtype0*
shared_name *
	container 
�
Conv2D_1/b/AssignAssign
Conv2D_1/bConv2D_1/b/Initializer/Const*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_1/b*
T0*
use_locking(
k
Conv2D_1/b/readIdentity
Conv2D_1/b*
T0*
_class
loc:@Conv2D_1/b*
_output_shapes
:@
�
Conv2D_1/Conv2DConv2DMaxPool2D/MaxPoolConv2D_1/W/read*
paddingSAME*
T0*
strides
*
data_formatNHWC*/
_output_shapes
:���������7
@*
use_cudnn_on_gpu(
�
Conv2D_1/BiasAddBiasAddConv2D_1/Conv2DConv2D_1/b/read*
T0*
data_formatNHWC*/
_output_shapes
:���������7
@
a
Conv2D_1/ReluReluConv2D_1/BiasAdd*
T0*/
_output_shapes
:���������7
@
�
MaxPool2D_1/MaxPoolMaxPoolConv2D_1/Relu*
paddingSAME*
T0*
strides
*
data_formatNHWC*/
_output_shapes
:���������@*
ksize

�
+Conv2D_2/W/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
_class
loc:@Conv2D_2/W*%
valueB"      @   �   
�
)Conv2D_2/W/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D_2/W*
valueB
 *�\1�
�
)Conv2D_2/W/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
_class
loc:@Conv2D_2/W*
valueB
 *�\1=
�
3Conv2D_2/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_2/W/Initializer/random_uniform/shape*
seed2 *
dtype0*
_class
loc:@Conv2D_2/W*

seed *'
_output_shapes
:@�*
T0
�
)Conv2D_2/W/Initializer/random_uniform/subSub)Conv2D_2/W/Initializer/random_uniform/max)Conv2D_2/W/Initializer/random_uniform/min*
T0*
_output_shapes
: *
_class
loc:@Conv2D_2/W
�
)Conv2D_2/W/Initializer/random_uniform/mulMul3Conv2D_2/W/Initializer/random_uniform/RandomUniform)Conv2D_2/W/Initializer/random_uniform/sub*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�*
T0
�
%Conv2D_2/W/Initializer/random_uniformAdd)Conv2D_2/W/Initializer/random_uniform/mul)Conv2D_2/W/Initializer/random_uniform/min*
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
�

Conv2D_2/W
VariableV2*
	container *
shared_name *
dtype0*
shape:@�*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
�
Conv2D_2/W/AssignAssign
Conv2D_2/W%Conv2D_2/W/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
x
Conv2D_2/W/readIdentity
Conv2D_2/W*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W*
T0
�
Conv2D_2/b/Initializer/ConstConst*
_class
loc:@Conv2D_2/b*
valueB�*    *
_output_shapes	
:�*
dtype0
�

Conv2D_2/b
VariableV2*
_class
loc:@Conv2D_2/b*
_output_shapes	
:�*
shape:�*
dtype0*
shared_name *
	container 
�
Conv2D_2/b/AssignAssign
Conv2D_2/bConv2D_2/b/Initializer/Const*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b
l
Conv2D_2/b/readIdentity
Conv2D_2/b*
T0*
_class
loc:@Conv2D_2/b*
_output_shapes	
:�
�
Conv2D_2/Conv2DConv2DMaxPool2D_1/MaxPoolConv2D_2/W/read*
paddingSAME*
T0*
strides
*
data_formatNHWC*0
_output_shapes
:����������*
use_cudnn_on_gpu(
�
Conv2D_2/BiasAddBiasAddConv2D_2/Conv2DConv2D_2/b/read*0
_output_shapes
:����������*
data_formatNHWC*
T0
b
Conv2D_2/ReluReluConv2D_2/BiasAdd*
T0*0
_output_shapes
:����������
�
MaxPool2D_2/MaxPoolMaxPoolConv2D_2/Relu*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*0
_output_shapes
:����������
�
+Conv2D_3/W/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
_class
loc:@Conv2D_3/W*%
valueB"      �   @   
�
)Conv2D_3/W/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
_class
loc:@Conv2D_3/W*
valueB
 *����
�
)Conv2D_3/W/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D_3/W*
valueB
 *���<
�
3Conv2D_3/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_3/W/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
�
)Conv2D_3/W/Initializer/random_uniform/subSub)Conv2D_3/W/Initializer/random_uniform/max)Conv2D_3/W/Initializer/random_uniform/min*
_class
loc:@Conv2D_3/W*
_output_shapes
: *
T0
�
)Conv2D_3/W/Initializer/random_uniform/mulMul3Conv2D_3/W/Initializer/random_uniform/RandomUniform)Conv2D_3/W/Initializer/random_uniform/sub*
T0*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@
�
%Conv2D_3/W/Initializer/random_uniformAdd)Conv2D_3/W/Initializer/random_uniform/mul)Conv2D_3/W/Initializer/random_uniform/min*
T0*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@
�

Conv2D_3/W
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_3/W*
shared_name *'
_output_shapes
:�@*
shape:�@
�
Conv2D_3/W/AssignAssign
Conv2D_3/W%Conv2D_3/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@Conv2D_3/W*
validate_shape(*'
_output_shapes
:�@
x
Conv2D_3/W/readIdentity
Conv2D_3/W*
T0*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@
�
Conv2D_3/b/Initializer/ConstConst*
dtype0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b*
valueB@*    
�

Conv2D_3/b
VariableV2*
	container *
shared_name *
dtype0*
shape:@*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
�
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
�
Conv2D_3/Conv2DConv2DMaxPool2D_2/MaxPoolConv2D_3/W/read*
use_cudnn_on_gpu(*/
_output_shapes
:���������@*
strides
*
data_formatNHWC*
T0*
paddingSAME
�
Conv2D_3/BiasAddBiasAddConv2D_3/Conv2DConv2D_3/b/read*
data_formatNHWC*
T0*/
_output_shapes
:���������@
a
Conv2D_3/ReluReluConv2D_3/BiasAdd*/
_output_shapes
:���������@*
T0
�
MaxPool2D_3/MaxPoolMaxPoolConv2D_3/Relu*
ksize
*/
_output_shapes
:���������@*
strides
*
data_formatNHWC*
T0*
paddingSAME
�
+Conv2D_4/W/Initializer/random_uniform/shapeConst*
_class
loc:@Conv2D_4/W*%
valueB"      @       *
dtype0*
_output_shapes
:
�
)Conv2D_4/W/Initializer/random_uniform/minConst*
_class
loc:@Conv2D_4/W*
valueB
 *�\1�*
dtype0*
_output_shapes
: 
�
)Conv2D_4/W/Initializer/random_uniform/maxConst*
_class
loc:@Conv2D_4/W*
valueB
 *�\1=*
dtype0*
_output_shapes
: 
�
3Conv2D_4/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_4/W/Initializer/random_uniform/shape*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0*
dtype0*
seed2 *

seed 
�
)Conv2D_4/W/Initializer/random_uniform/subSub)Conv2D_4/W/Initializer/random_uniform/max)Conv2D_4/W/Initializer/random_uniform/min*
_output_shapes
: *
_class
loc:@Conv2D_4/W*
T0
�
)Conv2D_4/W/Initializer/random_uniform/mulMul3Conv2D_4/W/Initializer/random_uniform/RandomUniform)Conv2D_4/W/Initializer/random_uniform/sub*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0
�
%Conv2D_4/W/Initializer/random_uniformAdd)Conv2D_4/W/Initializer/random_uniform/mul)Conv2D_4/W/Initializer/random_uniform/min*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0
�

Conv2D_4/W
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_4/W*
shared_name *&
_output_shapes
:@ *
shape:@ 
�
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
Conv2D_4/W*
T0*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ 
�
Conv2D_4/b/Initializer/ConstConst*
_class
loc:@Conv2D_4/b*
valueB *    *
_output_shapes
: *
dtype0
�

Conv2D_4/b
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_4/b*
shared_name *
_output_shapes
: *
shape: 
�
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
T0*
_class
loc:@Conv2D_4/b*
_output_shapes
: 
�
Conv2D_4/Conv2DConv2DMaxPool2D_3/MaxPoolConv2D_4/W/read*
use_cudnn_on_gpu(*
T0*
paddingSAME*/
_output_shapes
:��������� *
strides
*
data_formatNHWC
�
Conv2D_4/BiasAddBiasAddConv2D_4/Conv2DConv2D_4/b/read*/
_output_shapes
:��������� *
T0*
data_formatNHWC
a
Conv2D_4/ReluReluConv2D_4/BiasAdd*/
_output_shapes
:��������� *
T0
�
MaxPool2D_4/MaxPoolMaxPoolConv2D_4/Relu*/
_output_shapes
:��������� *
paddingSAME*
ksize
*
strides
*
data_formatNHWC*
T0
�
3FullyConnected/W/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*#
_class
loc:@FullyConnected/W*
valueB"       
�
2FullyConnected/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *#
_class
loc:@FullyConnected/W*
valueB
 *    
�
4FullyConnected/W/Initializer/truncated_normal/stddevConst*#
_class
loc:@FullyConnected/W*
valueB
 *
ף<*
dtype0*
_output_shapes
: 
�
=FullyConnected/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3FullyConnected/W/Initializer/truncated_normal/shape*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
T0*
dtype0*
seed2 *

seed 
�
1FullyConnected/W/Initializer/truncated_normal/mulMul=FullyConnected/W/Initializer/truncated_normal/TruncatedNormal4FullyConnected/W/Initializer/truncated_normal/stddev*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W*
T0
�
-FullyConnected/W/Initializer/truncated_normalAdd1FullyConnected/W/Initializer/truncated_normal/mul2FullyConnected/W/Initializer/truncated_normal/mean*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
T0
�
FullyConnected/W
VariableV2*
shared_name *#
_class
loc:@FullyConnected/W*
	container *
shape:	 �*
dtype0*
_output_shapes
:	 �
�
FullyConnected/W/AssignAssignFullyConnected/W-FullyConnected/W/Initializer/truncated_normal*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
T0*
validate_shape(*
use_locking(
�
FullyConnected/W/readIdentityFullyConnected/W*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
�
"FullyConnected/b/Initializer/ConstConst*
dtype0*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b*
valueB�*    
�
FullyConnected/b
VariableV2*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�*
shape:�*
dtype0*
shared_name *
	container 
�
FullyConnected/b/AssignAssignFullyConnected/b"FullyConnected/b/Initializer/Const*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b
~
FullyConnected/b/readIdentityFullyConnected/b*
T0*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b
m
FullyConnected/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����    
�
FullyConnected/ReshapeReshapeMaxPool2D_4/MaxPoolFullyConnected/Reshape/shape*
T0*'
_output_shapes
:��������� *
Tshape0
�
FullyConnected/MatMulMatMulFullyConnected/ReshapeFullyConnected/W/read*
transpose_b( *(
_output_shapes
:����������*
transpose_a( *
T0
�
FullyConnected/BiasAddBiasAddFullyConnected/MatMulFullyConnected/b/read*(
_output_shapes
:����������*
T0*
data_formatNHWC
f
FullyConnected/ReluReluFullyConnected/BiasAdd*(
_output_shapes
:����������*
T0
_
Dropout/cond/SwitchSwitchis_trainingis_training/read*
_output_shapes
: : *
T0

Y
Dropout/cond/switch_tIdentityDropout/cond/Switch:1*
_output_shapes
: *
T0

W
Dropout/cond/switch_fIdentityDropout/cond/Switch*
_output_shapes
: *
T0

S
Dropout/cond/pred_idIdentityis_training/read*
_output_shapes
: *
T0

{
Dropout/cond/dropout/keep_probConst^Dropout/cond/switch_t*
valueB
 *��L?*
_output_shapes
: *
dtype0
�
!Dropout/cond/dropout/Shape/SwitchSwitchFullyConnected/ReluDropout/cond/pred_id*
T0*&
_class
loc:@FullyConnected/Relu*<
_output_shapes*
(:����������:����������
}
Dropout/cond/dropout/ShapeShape#Dropout/cond/dropout/Shape/Switch:1*
out_type0*
_output_shapes
:*
T0
�
'Dropout/cond/dropout/random_uniform/minConst^Dropout/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
�
'Dropout/cond/dropout/random_uniform/maxConst^Dropout/cond/switch_t*
valueB
 *  �?*
_output_shapes
: *
dtype0
�
1Dropout/cond/dropout/random_uniform/RandomUniformRandomUniformDropout/cond/dropout/Shape*
dtype0*

seed *
T0*(
_output_shapes
:����������*
seed2 
�
'Dropout/cond/dropout/random_uniform/subSub'Dropout/cond/dropout/random_uniform/max'Dropout/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
�
'Dropout/cond/dropout/random_uniform/mulMul1Dropout/cond/dropout/random_uniform/RandomUniform'Dropout/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:����������
�
#Dropout/cond/dropout/random_uniformAdd'Dropout/cond/dropout/random_uniform/mul'Dropout/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:����������
�
Dropout/cond/dropout/addAddDropout/cond/dropout/keep_prob#Dropout/cond/dropout/random_uniform*
T0*(
_output_shapes
:����������
p
Dropout/cond/dropout/FloorFloorDropout/cond/dropout/add*
T0*(
_output_shapes
:����������
�
Dropout/cond/dropout/divRealDiv#Dropout/cond/dropout/Shape/Switch:1Dropout/cond/dropout/keep_prob*(
_output_shapes
:����������*
T0
�
Dropout/cond/dropout/mulMulDropout/cond/dropout/divDropout/cond/dropout/Floor*(
_output_shapes
:����������*
T0
�
Dropout/cond/Switch_1SwitchFullyConnected/ReluDropout/cond/pred_id*<
_output_shapes*
(:����������:����������*&
_class
loc:@FullyConnected/Relu*
T0
�
Dropout/cond/MergeMergeDropout/cond/Switch_1Dropout/cond/dropout/mul**
_output_shapes
:����������: *
N*
T0
�
5FullyConnected_1/W/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*%
_class
loc:@FullyConnected_1/W*
valueB"      
�
4FullyConnected_1/W/Initializer/truncated_normal/meanConst*
_output_shapes
: *
dtype0*%
_class
loc:@FullyConnected_1/W*
valueB
 *    
�
6FullyConnected_1/W/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*%
_class
loc:@FullyConnected_1/W*
valueB
 *
ף<
�
?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5FullyConnected_1/W/Initializer/truncated_normal/shape*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0*
dtype0*
seed2 *

seed 
�
3FullyConnected_1/W/Initializer/truncated_normal/mulMul?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormal6FullyConnected_1/W/Initializer/truncated_normal/stddev*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W*
T0
�
/FullyConnected_1/W/Initializer/truncated_normalAdd3FullyConnected_1/W/Initializer/truncated_normal/mul4FullyConnected_1/W/Initializer/truncated_normal/mean*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W*
T0
�
FullyConnected_1/W
VariableV2*
	container *
dtype0*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
shape:	�*
shared_name 
�
FullyConnected_1/W/AssignAssignFullyConnected_1/W/FullyConnected_1/W/Initializer/truncated_normal*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0*
validate_shape(*
use_locking(
�
FullyConnected_1/W/readIdentityFullyConnected_1/W*
T0*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W
�
$FullyConnected_1/b/Initializer/ConstConst*%
_class
loc:@FullyConnected_1/b*
valueB*    *
dtype0*
_output_shapes
:
�
FullyConnected_1/b
VariableV2*
shape:*
_output_shapes
:*
shared_name *%
_class
loc:@FullyConnected_1/b*
dtype0*
	container 
�
FullyConnected_1/b/AssignAssignFullyConnected_1/b$FullyConnected_1/b/Initializer/Const*
_output_shapes
:*
validate_shape(*%
_class
loc:@FullyConnected_1/b*
T0*
use_locking(
�
FullyConnected_1/b/readIdentityFullyConnected_1/b*
T0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/MatMulMatMulDropout/cond/MergeFullyConnected_1/W/read*
transpose_b( *'
_output_shapes
:���������*
transpose_a( *
T0
�
FullyConnected_1/BiasAddBiasAddFullyConnected_1/MatMulFullyConnected_1/b/read*'
_output_shapes
:���������*
data_formatNHWC*
T0
o
FullyConnected_1/SoftmaxSoftmaxFullyConnected_1/BiasAdd*
T0*'
_output_shapes
:���������
[
	targets/YPlaceholder*'
_output_shapes
:���������*
shape: *
dtype0
[
Accuracy/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
�
Accuracy/ArgMaxArgMaxFullyConnected_1/SoftmaxAccuracy/ArgMax/dimension*#
_output_shapes
:���������*
T0*

Tidx0
]
Accuracy/ArgMax_1/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
}
Accuracy/ArgMax_1ArgMax	targets/YAccuracy/ArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:���������
i
Accuracy/EqualEqualAccuracy/ArgMaxAccuracy/ArgMax_1*#
_output_shapes
:���������*
T0	
b
Accuracy/CastCastAccuracy/Equal*#
_output_shapes
:���������*

DstT0*

SrcT0

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
"Crossentropy/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
�
Crossentropy/SumSumFullyConnected_1/Softmax"Crossentropy/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:���������
}
Crossentropy/truedivRealDivFullyConnected_1/SoftmaxCrossentropy/Sum*
T0*'
_output_shapes
:���������
X
Crossentropy/Cast/xConst*
valueB
 *���.*
_output_shapes
: *
dtype0
Z
Crossentropy/Cast_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
"Crossentropy/clip_by_value/MinimumMinimumCrossentropy/truedivCrossentropy/Cast_1/x*'
_output_shapes
:���������*
T0
�
Crossentropy/clip_by_valueMaximum"Crossentropy/clip_by_value/MinimumCrossentropy/Cast/x*
T0*'
_output_shapes
:���������
e
Crossentropy/LogLogCrossentropy/clip_by_value*'
_output_shapes
:���������*
T0
f
Crossentropy/mulMul	targets/YCrossentropy/Log*'
_output_shapes
:���������*
T0
f
$Crossentropy/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
�
Crossentropy/Sum_1SumCrossentropy/mul$Crossentropy/Sum_1/reduction_indices*#
_output_shapes
:���������*
T0*
	keep_dims( *

Tidx0
Y
Crossentropy/NegNegCrossentropy/Sum_1*#
_output_shapes
:���������*
T0
\
Crossentropy/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
}
Crossentropy/MeanMeanCrossentropy/NegCrossentropy/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
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
dtype0*
shared_name *
shape: 
�
Training_step/AssignAssignTraining_stepTraining_step/initial_value*
use_locking(*
T0* 
_class
loc:@Training_step*
validate_shape(*
_output_shapes
: 
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
�
Global_Step/AssignAssignGlobal_StepGlobal_Step/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Global_Step
j
Global_Step/readIdentityGlobal_Step*
_output_shapes
: *
_class
loc:@Global_Step*
T0
J
Add/yConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
D
AddAddGlobal_Step/readAdd/y*
_output_shapes
: *
T0
�
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
 *    *
dtype0*
_output_shapes
: 
l
val_loss
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 
�
val_loss/AssignAssignval_lossval_loss/initial_value*
use_locking(*
T0*
_class
loc:@val_loss*
validate_shape(*
_output_shapes
: 
a
val_loss/readIdentityval_loss*
T0*
_class
loc:@val_loss*
_output_shapes
: 
Z
val_acc/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
val_acc
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
�
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
dtype0*
shape: *
_output_shapes
:
V
placeholder/val_accPlaceholder*
shape: *
dtype0*
_output_shapes
:
�
assign/val_lossAssignval_lossplaceholder/val_loss*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@val_loss
�
assign/val_accAssignval_accplaceholder/val_acc*
_output_shapes
: *
validate_shape(*
_class
loc:@val_acc*
T0*
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
�
Accuracy/Mean/moving_avg/AssignAssignAccuracy/Mean/moving_avgzeros*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
�
Accuracy/Mean/moving_avg/readIdentityAccuracy/Mean/moving_avg*
_output_shapes
: *+
_class!
loc:@Accuracy/Mean/moving_avg*
T0
U
moving_avg/decayConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
U
moving_avg/add/xConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
\
moving_avg/addAddmoving_avg/add/xTraining_step/read*
_output_shapes
: *
T0
W
moving_avg/add_1/xConst*
valueB
 *   A*
_output_shapes
: *
dtype0
`
moving_avg/add_1Addmoving_avg/add_1/xTraining_step/read*
_output_shapes
: *
T0
`
moving_avg/truedivRealDivmoving_avg/addmoving_avg/add_1*
_output_shapes
: *
T0
d
moving_avg/MinimumMinimummoving_avg/decaymoving_avg/truediv*
T0*
_output_shapes
: 
�
 moving_avg/AssignMovingAvg/sub/xConst*
valueB
 *  �?*+
_class!
loc:@Accuracy/Mean/moving_avg*
dtype0*
_output_shapes
: 
�
moving_avg/AssignMovingAvg/subSub moving_avg/AssignMovingAvg/sub/xmoving_avg/Minimum*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: *
T0
�
 moving_avg/AssignMovingAvg/sub_1SubAccuracy/Mean/moving_avg/readAccuracy/Mean*
_output_shapes
: *+
_class!
loc:@Accuracy/Mean/moving_avg*
T0
�
moving_avg/AssignMovingAvg/mulMul moving_avg/AssignMovingAvg/sub_1moving_avg/AssignMovingAvg/sub*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: *
T0
�
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

Adam/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
Crossentropy/Mean/moving_avg
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
�
#Crossentropy/Mean/moving_avg/AssignAssignCrossentropy/Mean/moving_avg
Adam/zeros*
use_locking(*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
�
!Crossentropy/Mean/moving_avg/readIdentityCrossentropy/Mean/moving_avg*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg*
T0
Z
Adam/moving_avg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *fff?
Z
Adam/moving_avg/add/xConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
f
Adam/moving_avg/addAddAdam/moving_avg/add/xTraining_step/read*
T0*
_output_shapes
: 
\
Adam/moving_avg/add_1/xConst*
valueB
 *   A*
_output_shapes
: *
dtype0
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
Adam/moving_avg/MinimumMinimumAdam/moving_avg/decayAdam/moving_avg/truediv*
_output_shapes
: *
T0
�
%Adam/moving_avg/AssignMovingAvg/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?*/
_class%
#!loc:@Crossentropy/Mean/moving_avg
�
#Adam/moving_avg/AssignMovingAvg/subSub%Adam/moving_avg/AssignMovingAvg/sub/xAdam/moving_avg/Minimum*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: 
�
%Adam/moving_avg/AssignMovingAvg/sub_1Sub!Crossentropy/Mean/moving_avg/readCrossentropy/Mean*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg*
T0
�
#Adam/moving_avg/AssignMovingAvg/mulMul%Adam/moving_avg/AssignMovingAvg/sub_1#Adam/moving_avg/AssignMovingAvg/sub*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg*
T0
�
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
	Loss/tagsConst*
_output_shapes
: *
dtype0*
valueB
 BLoss
d
LossScalarSummary	Loss/tags!Crossentropy/Mean/moving_avg/read*
T0*
_output_shapes
: 
`
Adam/Loss/raw/tagsConst*
dtype0*
_output_shapes
: *
valueB BAdam/Loss/raw
f
Adam/Loss/rawScalarSummaryAdam/Loss/raw/tagsCrossentropy/Mean*
_output_shapes
: *
T0
v
Adam/gradients/ShapeConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB 
x
Adam/gradients/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *  �?*
dtype0*
_output_shapes
: 
h
Adam/gradients/FillFillAdam/gradients/ShapeAdam/gradients/Const*
_output_shapes
: *
T0
�
3Adam/gradients/Crossentropy/Mean_grad/Reshape/shapeConst^Adam/moving_avg^moving_avg*
valueB:*
dtype0*
_output_shapes
:
�
-Adam/gradients/Crossentropy/Mean_grad/ReshapeReshapeAdam/gradients/Fill3Adam/gradients/Crossentropy/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
�
+Adam/gradients/Crossentropy/Mean_grad/ShapeShapeCrossentropy/Neg^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
*Adam/gradients/Crossentropy/Mean_grad/TileTile-Adam/gradients/Crossentropy/Mean_grad/Reshape+Adam/gradients/Crossentropy/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
�
-Adam/gradients/Crossentropy/Mean_grad/Shape_1ShapeCrossentropy/Neg^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
�
-Adam/gradients/Crossentropy/Mean_grad/Shape_2Const^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB 
�
+Adam/gradients/Crossentropy/Mean_grad/ConstConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*
valueB: 
�
*Adam/gradients/Crossentropy/Mean_grad/ProdProd-Adam/gradients/Crossentropy/Mean_grad/Shape_1+Adam/gradients/Crossentropy/Mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
-Adam/gradients/Crossentropy/Mean_grad/Const_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*
valueB: 
�
,Adam/gradients/Crossentropy/Mean_grad/Prod_1Prod-Adam/gradients/Crossentropy/Mean_grad/Shape_2-Adam/gradients/Crossentropy/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
/Adam/gradients/Crossentropy/Mean_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*
_output_shapes
: *
dtype0
�
-Adam/gradients/Crossentropy/Mean_grad/MaximumMaximum,Adam/gradients/Crossentropy/Mean_grad/Prod_1/Adam/gradients/Crossentropy/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/Mean_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Mean_grad/Prod-Adam/gradients/Crossentropy/Mean_grad/Maximum*
_output_shapes
: *
T0
�
*Adam/gradients/Crossentropy/Mean_grad/CastCast.Adam/gradients/Crossentropy/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
-Adam/gradients/Crossentropy/Mean_grad/truedivRealDiv*Adam/gradients/Crossentropy/Mean_grad/Tile*Adam/gradients/Crossentropy/Mean_grad/Cast*#
_output_shapes
:���������*
T0
�
(Adam/gradients/Crossentropy/Neg_grad/NegNeg-Adam/gradients/Crossentropy/Mean_grad/truediv*#
_output_shapes
:���������*
T0
�
,Adam/gradients/Crossentropy/Sum_1_grad/ShapeShapeCrossentropy/mul^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
�
+Adam/gradients/Crossentropy/Sum_1_grad/SizeConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Sum_1_grad/addAdd$Crossentropy/Sum_1/reduction_indices+Adam/gradients/Crossentropy/Sum_1_grad/Size*
_output_shapes
: *
T0
�
*Adam/gradients/Crossentropy/Sum_1_grad/modFloorMod*Adam/gradients/Crossentropy/Sum_1_grad/add+Adam/gradients/Crossentropy/Sum_1_grad/Size*
T0*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/Sum_1_grad/Shape_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB 
�
2Adam/gradients/Crossentropy/Sum_1_grad/range/startConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B : 
�
2Adam/gradients/Crossentropy/Sum_1_grad/range/deltaConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
�
,Adam/gradients/Crossentropy/Sum_1_grad/rangeRange2Adam/gradients/Crossentropy/Sum_1_grad/range/start+Adam/gradients/Crossentropy/Sum_1_grad/Size2Adam/gradients/Crossentropy/Sum_1_grad/range/delta*

Tidx0*
_output_shapes
:
�
1Adam/gradients/Crossentropy/Sum_1_grad/Fill/valueConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*
_output_shapes
: 
�
+Adam/gradients/Crossentropy/Sum_1_grad/FillFill.Adam/gradients/Crossentropy/Sum_1_grad/Shape_11Adam/gradients/Crossentropy/Sum_1_grad/Fill/value*
T0*
_output_shapes
: 
�
4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitchDynamicStitch,Adam/gradients/Crossentropy/Sum_1_grad/range*Adam/gradients/Crossentropy/Sum_1_grad/mod,Adam/gradients/Crossentropy/Sum_1_grad/Shape+Adam/gradients/Crossentropy/Sum_1_grad/Fill*#
_output_shapes
:���������*
N*
T0
�
0Adam/gradients/Crossentropy/Sum_1_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
�
.Adam/gradients/Crossentropy/Sum_1_grad/MaximumMaximum4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitch0Adam/gradients/Crossentropy/Sum_1_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
/Adam/gradients/Crossentropy/Sum_1_grad/floordivFloorDiv,Adam/gradients/Crossentropy/Sum_1_grad/Shape.Adam/gradients/Crossentropy/Sum_1_grad/Maximum*
_output_shapes
:*
T0
�
.Adam/gradients/Crossentropy/Sum_1_grad/ReshapeReshape(Adam/gradients/Crossentropy/Neg_grad/Neg4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
�
+Adam/gradients/Crossentropy/Sum_1_grad/TileTile.Adam/gradients/Crossentropy/Sum_1_grad/Reshape/Adam/gradients/Crossentropy/Sum_1_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:���������
�
*Adam/gradients/Crossentropy/mul_grad/ShapeShape	targets/Y^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
�
,Adam/gradients/Crossentropy/mul_grad/Shape_1ShapeCrossentropy/Log^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
:Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgsBroadcastGradientArgs*Adam/gradients/Crossentropy/mul_grad/Shape,Adam/gradients/Crossentropy/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
(Adam/gradients/Crossentropy/mul_grad/mulMul+Adam/gradients/Crossentropy/Sum_1_grad/TileCrossentropy/Log*
T0*'
_output_shapes
:���������
�
(Adam/gradients/Crossentropy/mul_grad/SumSum(Adam/gradients/Crossentropy/mul_grad/mul:Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
,Adam/gradients/Crossentropy/mul_grad/ReshapeReshape(Adam/gradients/Crossentropy/mul_grad/Sum*Adam/gradients/Crossentropy/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
*Adam/gradients/Crossentropy/mul_grad/mul_1Mul	targets/Y+Adam/gradients/Crossentropy/Sum_1_grad/Tile*'
_output_shapes
:���������*
T0
�
*Adam/gradients/Crossentropy/mul_grad/Sum_1Sum*Adam/gradients/Crossentropy/mul_grad/mul_1<Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
.Adam/gradients/Crossentropy/mul_grad/Reshape_1Reshape*Adam/gradients/Crossentropy/mul_grad/Sum_1,Adam/gradients/Crossentropy/mul_grad/Shape_1*
Tshape0*'
_output_shapes
:���������*
T0
�
/Adam/gradients/Crossentropy/Log_grad/Reciprocal
ReciprocalCrossentropy/clip_by_value^Adam/moving_avg^moving_avg/^Adam/gradients/Crossentropy/mul_grad/Reshape_1*
T0*'
_output_shapes
:���������
�
(Adam/gradients/Crossentropy/Log_grad/mulMul.Adam/gradients/Crossentropy/mul_grad/Reshape_1/Adam/gradients/Crossentropy/Log_grad/Reciprocal*'
_output_shapes
:���������*
T0
�
4Adam/gradients/Crossentropy/clip_by_value_grad/ShapeShape"Crossentropy/clip_by_value/Minimum^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB 
�
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2Shape(Adam/gradients/Crossentropy/Log_grad/mul*
T0*
out_type0*
_output_shapes
:
�
:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB
 *    
�
4Adam/gradients/Crossentropy/clip_by_value_grad/zerosFill6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/Const*'
_output_shapes
:���������*
T0
�
;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqualGreaterEqual"Crossentropy/clip_by_value/MinimumCrossentropy/Cast/x^Adam/moving_avg^moving_avg*'
_output_shapes
:���������*
T0
�
DAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs4Adam/gradients/Crossentropy/clip_by_value_grad/Shape6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
5Adam/gradients/Crossentropy/clip_by_value_grad/SelectSelect;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual(Adam/gradients/Crossentropy/Log_grad/mul4Adam/gradients/Crossentropy/clip_by_value_grad/zeros*'
_output_shapes
:���������*
T0
�
9Adam/gradients/Crossentropy/clip_by_value_grad/LogicalNot
LogicalNot;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual*'
_output_shapes
:���������
�
7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1Select9Adam/gradients/Crossentropy/clip_by_value_grad/LogicalNot(Adam/gradients/Crossentropy/Log_grad/mul4Adam/gradients/Crossentropy/clip_by_value_grad/zeros*'
_output_shapes
:���������*
T0
�
2Adam/gradients/Crossentropy/clip_by_value_grad/SumSum5Adam/gradients/Crossentropy/clip_by_value_grad/SelectDAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
6Adam/gradients/Crossentropy/clip_by_value_grad/ReshapeReshape2Adam/gradients/Crossentropy/clip_by_value_grad/Sum4Adam/gradients/Crossentropy/clip_by_value_grad/Shape*
T0*'
_output_shapes
:���������*
Tshape0
�
4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_1Sum7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1FAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
8Adam/gradients/Crossentropy/clip_by_value_grad/Reshape_1Reshape4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_16Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ShapeShapeCrossentropy/truediv^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
_output_shapes
: *
dtype0
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_2Shape6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape*
T0*
_output_shapes
:*
out_type0
�
BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *    *
_output_shapes
: *
dtype0
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zerosFill>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_2BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:���������*
T0
�
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualCrossentropy/truedivCrossentropy/Cast_1/x^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:���������
�
LAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
=Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SelectSelect@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:���������*
T0
�
AAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/LogicalNot
LogicalNot@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual*'
_output_shapes
:���������
�
?Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Select_1SelectAAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/LogicalNot6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:���������
�
:Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SumSum=Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SelectLAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ReshapeReshape:Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape*
T0*'
_output_shapes
:���������*
Tshape0
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum_1Sum?Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Select_1NAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum_1>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
�
.Adam/gradients/Crossentropy/truediv_grad/ShapeShapeFullyConnected_1/Softmax^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
0Adam/gradients/Crossentropy/truediv_grad/Shape_1ShapeCrossentropy/Sum^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
�
>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs.Adam/gradients/Crossentropy/truediv_grad/Shape0Adam/gradients/Crossentropy/truediv_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
0Adam/gradients/Crossentropy/truediv_grad/RealDivRealDiv>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ReshapeCrossentropy/Sum*
T0*'
_output_shapes
:���������
�
,Adam/gradients/Crossentropy/truediv_grad/SumSum0Adam/gradients/Crossentropy/truediv_grad/RealDiv>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
0Adam/gradients/Crossentropy/truediv_grad/ReshapeReshape,Adam/gradients/Crossentropy/truediv_grad/Sum.Adam/gradients/Crossentropy/truediv_grad/Shape*
Tshape0*'
_output_shapes
:���������*
T0
�
,Adam/gradients/Crossentropy/truediv_grad/NegNegFullyConnected_1/Softmax^Adam/moving_avg^moving_avg*'
_output_shapes
:���������*
T0
�
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1RealDiv,Adam/gradients/Crossentropy/truediv_grad/NegCrossentropy/Sum*
T0*'
_output_shapes
:���������
�
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_2RealDiv2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1Crossentropy/Sum*
T0*'
_output_shapes
:���������
�
,Adam/gradients/Crossentropy/truediv_grad/mulMul>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Reshape2Adam/gradients/Crossentropy/truediv_grad/RealDiv_2*'
_output_shapes
:���������*
T0
�
.Adam/gradients/Crossentropy/truediv_grad/Sum_1Sum,Adam/gradients/Crossentropy/truediv_grad/mul@Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
2Adam/gradients/Crossentropy/truediv_grad/Reshape_1Reshape.Adam/gradients/Crossentropy/truediv_grad/Sum_10Adam/gradients/Crossentropy/truediv_grad/Shape_1*
Tshape0*'
_output_shapes
:���������*
T0
�
*Adam/gradients/Crossentropy/Sum_grad/ShapeShapeFullyConnected_1/Softmax^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
�
)Adam/gradients/Crossentropy/Sum_grad/SizeConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
�
(Adam/gradients/Crossentropy/Sum_grad/addAdd"Crossentropy/Sum/reduction_indices)Adam/gradients/Crossentropy/Sum_grad/Size*
T0*
_output_shapes
: 
�
(Adam/gradients/Crossentropy/Sum_grad/modFloorMod(Adam/gradients/Crossentropy/Sum_grad/add)Adam/gradients/Crossentropy/Sum_grad/Size*
_output_shapes
: *
T0
�
,Adam/gradients/Crossentropy/Sum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB 
�
0Adam/gradients/Crossentropy/Sum_grad/range/startConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
value	B : 
�
0Adam/gradients/Crossentropy/Sum_grad/range/deltaConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
�
*Adam/gradients/Crossentropy/Sum_grad/rangeRange0Adam/gradients/Crossentropy/Sum_grad/range/start)Adam/gradients/Crossentropy/Sum_grad/Size0Adam/gradients/Crossentropy/Sum_grad/range/delta*

Tidx0*
_output_shapes
:
�
/Adam/gradients/Crossentropy/Sum_grad/Fill/valueConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
value	B :
�
)Adam/gradients/Crossentropy/Sum_grad/FillFill,Adam/gradients/Crossentropy/Sum_grad/Shape_1/Adam/gradients/Crossentropy/Sum_grad/Fill/value*
_output_shapes
: *
T0
�
2Adam/gradients/Crossentropy/Sum_grad/DynamicStitchDynamicStitch*Adam/gradients/Crossentropy/Sum_grad/range(Adam/gradients/Crossentropy/Sum_grad/mod*Adam/gradients/Crossentropy/Sum_grad/Shape)Adam/gradients/Crossentropy/Sum_grad/Fill*
T0*
N*#
_output_shapes
:���������
�
.Adam/gradients/Crossentropy/Sum_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
�
,Adam/gradients/Crossentropy/Sum_grad/MaximumMaximum2Adam/gradients/Crossentropy/Sum_grad/DynamicStitch.Adam/gradients/Crossentropy/Sum_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
-Adam/gradients/Crossentropy/Sum_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Sum_grad/Shape,Adam/gradients/Crossentropy/Sum_grad/Maximum*
T0*
_output_shapes
:
�
,Adam/gradients/Crossentropy/Sum_grad/ReshapeReshape2Adam/gradients/Crossentropy/truediv_grad/Reshape_12Adam/gradients/Crossentropy/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
�
)Adam/gradients/Crossentropy/Sum_grad/TileTile,Adam/gradients/Crossentropy/Sum_grad/Reshape-Adam/gradients/Crossentropy/Sum_grad/floordiv*'
_output_shapes
:���������*
T0*

Tmultiples0
�
Adam/gradients/AddNAddN0Adam/gradients/Crossentropy/truediv_grad/Reshape)Adam/gradients/Crossentropy/Sum_grad/Tile*C
_class9
75loc:@Adam/gradients/Crossentropy/truediv_grad/Reshape*'
_output_shapes
:���������*
T0*
N
�
0Adam/gradients/FullyConnected_1/Softmax_grad/mulMulAdam/gradients/AddNFullyConnected_1/Softmax*
T0*'
_output_shapes
:���������
�
BAdam/gradients/FullyConnected_1/Softmax_grad/Sum/reduction_indicesConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*
valueB:
�
0Adam/gradients/FullyConnected_1/Softmax_grad/SumSum0Adam/gradients/FullyConnected_1/Softmax_grad/mulBAdam/gradients/FullyConnected_1/Softmax_grad/Sum/reduction_indices*#
_output_shapes
:���������*
T0*
	keep_dims( *

Tidx0
�
:Adam/gradients/FullyConnected_1/Softmax_grad/Reshape/shapeConst^Adam/moving_avg^moving_avg*
valueB"����   *
_output_shapes
:*
dtype0
�
4Adam/gradients/FullyConnected_1/Softmax_grad/ReshapeReshape0Adam/gradients/FullyConnected_1/Softmax_grad/Sum:Adam/gradients/FullyConnected_1/Softmax_grad/Reshape/shape*
T0*'
_output_shapes
:���������*
Tshape0
�
0Adam/gradients/FullyConnected_1/Softmax_grad/subSubAdam/gradients/AddN4Adam/gradients/FullyConnected_1/Softmax_grad/Reshape*
T0*'
_output_shapes
:���������
�
2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1Mul0Adam/gradients/FullyConnected_1/Softmax_grad/subFullyConnected_1/Softmax*'
_output_shapes
:���������*
T0
�
8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1*
_output_shapes
:*
T0*
data_formatNHWC
�
2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulMatMul2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1FullyConnected_1/W/read*
transpose_b(*
T0*(
_output_shapes
:����������*
transpose_a( 
�
4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1MatMulDropout/cond/Merge2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1*
transpose_b( *
_output_shapes
:	�*
transpose_a(*
T0
�
0Adam/gradients/Dropout/cond/Merge_grad/cond_gradSwitch2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulDropout/cond/pred_id*<
_output_shapes*
(:����������:����������*E
_class;
97loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul*
T0
�
Adam/gradients/SwitchSwitchFullyConnected/ReluDropout/cond/pred_id^Adam/moving_avg^moving_avg*
T0*<
_output_shapes*
(:����������:����������
m
Adam/gradients/Shape_1ShapeAdam/gradients/Switch:1*
_output_shapes
:*
out_type0*
T0
~
Adam/gradients/zeros/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Adam/gradients/zerosFillAdam/gradients/Shape_1Adam/gradients/zeros/Const*
T0*(
_output_shapes
:����������
�
3Adam/gradients/Dropout/cond/Switch_1_grad/cond_gradMerge0Adam/gradients/Dropout/cond/Merge_grad/cond_gradAdam/gradients/zeros*
T0*
N**
_output_shapes
:����������: 
�
2Adam/gradients/Dropout/cond/dropout/mul_grad/ShapeShapeDropout/cond/dropout/div^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
�
4Adam/gradients/Dropout/cond/dropout/mul_grad/Shape_1ShapeDropout/cond/dropout/Floor^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
�
BAdam/gradients/Dropout/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2Adam/gradients/Dropout/cond/dropout/mul_grad/Shape4Adam/gradients/Dropout/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
0Adam/gradients/Dropout/cond/dropout/mul_grad/mulMul2Adam/gradients/Dropout/cond/Merge_grad/cond_grad:1Dropout/cond/dropout/Floor*
T0*(
_output_shapes
:����������
�
0Adam/gradients/Dropout/cond/dropout/mul_grad/SumSum0Adam/gradients/Dropout/cond/dropout/mul_grad/mulBAdam/gradients/Dropout/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
4Adam/gradients/Dropout/cond/dropout/mul_grad/ReshapeReshape0Adam/gradients/Dropout/cond/dropout/mul_grad/Sum2Adam/gradients/Dropout/cond/dropout/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
2Adam/gradients/Dropout/cond/dropout/mul_grad/mul_1MulDropout/cond/dropout/div2Adam/gradients/Dropout/cond/Merge_grad/cond_grad:1*
T0*(
_output_shapes
:����������
�
2Adam/gradients/Dropout/cond/dropout/mul_grad/Sum_1Sum2Adam/gradients/Dropout/cond/dropout/mul_grad/mul_1DAdam/gradients/Dropout/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
6Adam/gradients/Dropout/cond/dropout/mul_grad/Reshape_1Reshape2Adam/gradients/Dropout/cond/dropout/mul_grad/Sum_14Adam/gradients/Dropout/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:����������
�
2Adam/gradients/Dropout/cond/dropout/div_grad/ShapeShape#Dropout/cond/dropout/Shape/Switch:1^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
�
4Adam/gradients/Dropout/cond/dropout/div_grad/Shape_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB 
�
BAdam/gradients/Dropout/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs2Adam/gradients/Dropout/cond/dropout/div_grad/Shape4Adam/gradients/Dropout/cond/dropout/div_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
4Adam/gradients/Dropout/cond/dropout/div_grad/RealDivRealDiv4Adam/gradients/Dropout/cond/dropout/mul_grad/ReshapeDropout/cond/dropout/keep_prob*(
_output_shapes
:����������*
T0
�
0Adam/gradients/Dropout/cond/dropout/div_grad/SumSum4Adam/gradients/Dropout/cond/dropout/div_grad/RealDivBAdam/gradients/Dropout/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
4Adam/gradients/Dropout/cond/dropout/div_grad/ReshapeReshape0Adam/gradients/Dropout/cond/dropout/div_grad/Sum2Adam/gradients/Dropout/cond/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
0Adam/gradients/Dropout/cond/dropout/div_grad/NegNeg#Dropout/cond/dropout/Shape/Switch:1^Adam/moving_avg^moving_avg*(
_output_shapes
:����������*
T0
�
6Adam/gradients/Dropout/cond/dropout/div_grad/RealDiv_1RealDiv0Adam/gradients/Dropout/cond/dropout/div_grad/NegDropout/cond/dropout/keep_prob*(
_output_shapes
:����������*
T0
�
6Adam/gradients/Dropout/cond/dropout/div_grad/RealDiv_2RealDiv6Adam/gradients/Dropout/cond/dropout/div_grad/RealDiv_1Dropout/cond/dropout/keep_prob*
T0*(
_output_shapes
:����������
�
0Adam/gradients/Dropout/cond/dropout/div_grad/mulMul4Adam/gradients/Dropout/cond/dropout/mul_grad/Reshape6Adam/gradients/Dropout/cond/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:����������
�
2Adam/gradients/Dropout/cond/dropout/div_grad/Sum_1Sum0Adam/gradients/Dropout/cond/dropout/div_grad/mulDAdam/gradients/Dropout/cond/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
6Adam/gradients/Dropout/cond/dropout/div_grad/Reshape_1Reshape2Adam/gradients/Dropout/cond/dropout/div_grad/Sum_14Adam/gradients/Dropout/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Adam/gradients/Switch_1SwitchFullyConnected/ReluDropout/cond/pred_id^Adam/moving_avg^moving_avg*
T0*<
_output_shapes*
(:����������:����������
m
Adam/gradients/Shape_2ShapeAdam/gradients/Switch_1*
T0*
out_type0*
_output_shapes
:
�
Adam/gradients/zeros_1/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *    *
_output_shapes
: *
dtype0
�
Adam/gradients/zeros_1FillAdam/gradients/Shape_2Adam/gradients/zeros_1/Const*(
_output_shapes
:����������*
T0
�
?Adam/gradients/Dropout/cond/dropout/Shape/Switch_grad/cond_gradMerge4Adam/gradients/Dropout/cond/dropout/div_grad/ReshapeAdam/gradients/zeros_1*
N*
T0**
_output_shapes
:����������: 
�
Adam/gradients/AddN_1AddN3Adam/gradients/Dropout/cond/Switch_1_grad/cond_grad?Adam/gradients/Dropout/cond/dropout/Shape/Switch_grad/cond_grad*
T0*F
_class<
:8loc:@Adam/gradients/Dropout/cond/Switch_1_grad/cond_grad*
N*(
_output_shapes
:����������
�
0Adam/gradients/FullyConnected/Relu_grad/ReluGradReluGradAdam/gradients/AddN_1FullyConnected/Relu*(
_output_shapes
:����������*
T0
�
6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradBiasAddGrad0Adam/gradients/FullyConnected/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:�
�
0Adam/gradients/FullyConnected/MatMul_grad/MatMulMatMul0Adam/gradients/FullyConnected/Relu_grad/ReluGradFullyConnected/W/read*
transpose_b(*
T0*'
_output_shapes
:��������� *
transpose_a( 
�
2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1MatMulFullyConnected/Reshape0Adam/gradients/FullyConnected/Relu_grad/ReluGrad*
transpose_b( *
_output_shapes
:	 �*
transpose_a(*
T0
�
0Adam/gradients/FullyConnected/Reshape_grad/ShapeShapeMaxPool2D_4/MaxPool^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
�
2Adam/gradients/FullyConnected/Reshape_grad/ReshapeReshape0Adam/gradients/FullyConnected/MatMul_grad/MatMul0Adam/gradients/FullyConnected/Reshape_grad/Shape*/
_output_shapes
:��������� *
Tshape0*
T0
�
3Adam/gradients/MaxPool2D_4/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_4/ReluMaxPool2D_4/MaxPool2Adam/gradients/FullyConnected/Reshape_grad/Reshape*
paddingSAME*
data_formatNHWC*
strides
*
T0*/
_output_shapes
:��������� *
ksize

�
*Adam/gradients/Conv2D_4/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_4/MaxPool_grad/MaxPoolGradConv2D_4/Relu*/
_output_shapes
:��������� *
T0
�
0Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_4/Relu_grad/ReluGrad*
_output_shapes
: *
T0*
data_formatNHWC
�
)Adam/gradients/Conv2D_4/Conv2D_grad/ShapeShapeMaxPool2D_3/MaxPool^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
�
7Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_4/Conv2D_grad/ShapeConv2D_4/W/read*Adam/gradients/Conv2D_4/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*/
_output_shapes
:���������@*
paddingSAME*
T0*
use_cudnn_on_gpu(
�
+Adam/gradients/Conv2D_4/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*%
valueB"      @       
�
8Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D_3/MaxPool+Adam/gradients/Conv2D_4/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_4/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*&
_output_shapes
:@ *
paddingSAME*
T0*
use_cudnn_on_gpu(
�
3Adam/gradients/MaxPool2D_3/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_3/ReluMaxPool2D_3/MaxPool7Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropInput*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:���������@
�
*Adam/gradients/Conv2D_3/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_3/MaxPool_grad/MaxPoolGradConv2D_3/Relu*/
_output_shapes
:���������@*
T0
�
0Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_3/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
:@
�
)Adam/gradients/Conv2D_3/Conv2D_grad/ShapeShapeMaxPool2D_2/MaxPool^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
7Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_3/Conv2D_grad/ShapeConv2D_3/W/read*Adam/gradients/Conv2D_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:����������
�
+Adam/gradients/Conv2D_3/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*%
valueB"      �   @   *
_output_shapes
:*
dtype0
�
8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D_2/MaxPool+Adam/gradients/Conv2D_3/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:�@
�
3Adam/gradients/MaxPool2D_2/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_2/ReluMaxPool2D_2/MaxPool7Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropInput*
paddingSAME*
data_formatNHWC*
strides
*
T0*0
_output_shapes
:����������*
ksize

�
*Adam/gradients/Conv2D_2/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_2/MaxPool_grad/MaxPoolGradConv2D_2/Relu*0
_output_shapes
:����������*
T0
�
0Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:�
�
)Adam/gradients/Conv2D_2/Conv2D_grad/ShapeShapeMaxPool2D_1/MaxPool^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
7Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_2/Conv2D_grad/ShapeConv2D_2/W/read*Adam/gradients/Conv2D_2/Relu_grad/ReluGrad*
paddingSAME*
T0*
data_formatNHWC*
strides
*/
_output_shapes
:���������@*
use_cudnn_on_gpu(
�
+Adam/gradients/Conv2D_2/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*%
valueB"      @   �   *
dtype0*
_output_shapes
:
�
8Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D_1/MaxPool+Adam/gradients/Conv2D_2/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_2/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*'
_output_shapes
:@�*
data_formatNHWC*
strides
*
T0*
paddingSAME
�
3Adam/gradients/MaxPool2D_1/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_1/ReluMaxPool2D_1/MaxPool7Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropInput*
ksize
*/
_output_shapes
:���������7
@*
T0*
data_formatNHWC*
strides
*
paddingSAME
�
*Adam/gradients/Conv2D_1/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_1/MaxPool_grad/MaxPoolGradConv2D_1/Relu*
T0*/
_output_shapes
:���������7
@
�
0Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_1/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
:@
�
)Adam/gradients/Conv2D_1/Conv2D_grad/ShapeShapeMaxPool2D/MaxPool^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
7Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_1/Conv2D_grad/ShapeConv2D_1/W/read*Adam/gradients/Conv2D_1/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*/
_output_shapes
:���������7
 *
data_formatNHWC*
strides
*
T0*
paddingSAME
�
+Adam/gradients/Conv2D_1/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*%
valueB"          @   *
dtype0*
_output_shapes
:
�
8Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D/MaxPool+Adam/gradients/Conv2D_1/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_1/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*&
_output_shapes
: @*
data_formatNHWC*
strides
*
T0*
paddingSAME
�
1Adam/gradients/MaxPool2D/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D/ReluMaxPool2D/MaxPool7Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropInput*
ksize
*0
_output_shapes
:����������0 *
T0*
data_formatNHWC*
strides
*
paddingSAME
�
(Adam/gradients/Conv2D/Relu_grad/ReluGradReluGrad1Adam/gradients/MaxPool2D/MaxPool_grad/MaxPoolGradConv2D/Relu*0
_output_shapes
:����������0 *
T0
�
.Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGradBiasAddGrad(Adam/gradients/Conv2D/Relu_grad/ReluGrad*
_output_shapes
: *
data_formatNHWC*
T0
�
'Adam/gradients/Conv2D/Conv2D_grad/ShapeShapeinput/X^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
�
5Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput'Adam/gradients/Conv2D/Conv2D_grad/ShapeConv2D/W/read(Adam/gradients/Conv2D/Relu_grad/ReluGrad*
paddingSAME*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*0
_output_shapes
:����������0
�
)Adam/gradients/Conv2D/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*%
valueB"             *
_output_shapes
:*
dtype0
�
6Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinput/X)Adam/gradients/Conv2D/Conv2D_grad/Shape_1(Adam/gradients/Conv2D/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: 
�
Adam/global_norm/L2LossL2Loss6Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter*
T0*
_output_shapes
: *I
_class?
=;loc:@Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter
�
Adam/global_norm/L2Loss_1L2Loss.Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*A
_class7
53loc:@Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
Adam/global_norm/L2Loss_2L2Loss8Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter*
T0*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter
�
Adam/global_norm/L2Loss_3L2Loss0Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad*
T0*C
_class9
75loc:@Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
Adam/global_norm/L2Loss_4L2Loss8Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*
T0
�
Adam/global_norm/L2Loss_5L2Loss0Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
T0
�
Adam/global_norm/L2Loss_6L2Loss8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter*
T0*K
_classA
?=loc:@Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: 
�
Adam/global_norm/L2Loss_7L2Loss0Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad*C
_class9
75loc:@Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
Adam/global_norm/L2Loss_8L2Loss8Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter*
T0*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter
�
Adam/global_norm/L2Loss_9L2Loss0Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad*
T0
�
Adam/global_norm/L2Loss_10L2Loss2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes
: 
�
Adam/global_norm/L2Loss_11L2Loss6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
T0*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
Adam/global_norm/L2Loss_12L2Loss4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes
: *G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
T0
�
Adam/global_norm/L2Loss_13L2Loss8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
T0
�
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
�
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
�
"Adam/clip_by_global_norm/truediv/xConst^Adam/moving_avg^moving_avg*
valueB
 *  �?*
_output_shapes
: *
dtype0
�
 Adam/clip_by_global_norm/truedivRealDiv"Adam/clip_by_global_norm/truediv/xAdam/global_norm/global_norm*
T0*
_output_shapes
: 
�
Adam/clip_by_global_norm/ConstConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
$Adam/clip_by_global_norm/truediv_1/yConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB
 *  �@
�
"Adam/clip_by_global_norm/truediv_1RealDivAdam/clip_by_global_norm/Const$Adam/clip_by_global_norm/truediv_1/y*
_output_shapes
: *
T0
�
 Adam/clip_by_global_norm/MinimumMinimum Adam/clip_by_global_norm/truediv"Adam/clip_by_global_norm/truediv_1*
T0*
_output_shapes
: 
�
Adam/clip_by_global_norm/mul/xConst^Adam/moving_avg^moving_avg*
valueB
 *  �@*
_output_shapes
: *
dtype0
�
Adam/clip_by_global_norm/mulMulAdam/clip_by_global_norm/mul/x Adam/clip_by_global_norm/Minimum*
T0*
_output_shapes
: 
�
Adam/clip_by_global_norm/mul_1Mul6Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*
T0*&
_output_shapes
: *I
_class?
=;loc:@Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0IdentityAdam/clip_by_global_norm/mul_1*I
_class?
=;loc:@Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: *
T0
�
Adam/clip_by_global_norm/mul_2Mul.Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
_output_shapes
: *A
_class7
53loc:@Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*
T0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1IdentityAdam/clip_by_global_norm/mul_2*
_output_shapes
: *A
_class7
53loc:@Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*
T0
�
Adam/clip_by_global_norm/mul_3Mul8Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*
T0*&
_output_shapes
: @*K
_classA
?=loc:@Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2IdentityAdam/clip_by_global_norm/mul_3*
T0*K
_classA
?=loc:@Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
�
Adam/clip_by_global_norm/mul_4Mul0Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*C
_class9
75loc:@Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3IdentityAdam/clip_by_global_norm/mul_4*
T0*
_output_shapes
:@*C
_class9
75loc:@Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad
�
Adam/clip_by_global_norm/mul_5Mul8Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*'
_output_shapes
:@�*K
_classA
?=loc:@Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*
T0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_4IdentityAdam/clip_by_global_norm/mul_5*K
_classA
?=loc:@Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@�*
T0
�
Adam/clip_by_global_norm/mul_6Mul0Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*
_output_shapes	
:�*C
_class9
75loc:@Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5IdentityAdam/clip_by_global_norm/mul_6*
_output_shapes	
:�*C
_class9
75loc:@Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
T0
�
Adam/clip_by_global_norm/mul_7Mul8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*
T0*'
_output_shapes
:�@*K
_classA
?=loc:@Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_6IdentityAdam/clip_by_global_norm/mul_7*
T0*'
_output_shapes
:�@*K
_classA
?=loc:@Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter
�
Adam/clip_by_global_norm/mul_8Mul0Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
_output_shapes
:@*C
_class9
75loc:@Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad*
T0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_7IdentityAdam/clip_by_global_norm/mul_8*C
_class9
75loc:@Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
�
Adam/clip_by_global_norm/mul_9Mul8Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*
T0*&
_output_shapes
:@ *K
_classA
?=loc:@Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_8IdentityAdam/clip_by_global_norm/mul_9*K
_classA
?=loc:@Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:@ *
T0
�
Adam/clip_by_global_norm/mul_10Mul0Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_9IdentityAdam/clip_by_global_norm/mul_10*C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
Adam/clip_by_global_norm/mul_11Mul2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes
:	 �
�
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_10IdentityAdam/clip_by_global_norm/mul_11*
T0*
_output_shapes
:	 �*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1
�
Adam/clip_by_global_norm/mul_12Mul6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
_output_shapes	
:�*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
T0
�
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_11IdentityAdam/clip_by_global_norm/mul_12*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
�
Adam/clip_by_global_norm/mul_13Mul4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0*
_output_shapes
:	�*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1
�
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_12IdentityAdam/clip_by_global_norm/mul_13*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes
:	�
�
Adam/clip_by_global_norm/mul_14Mul8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*
_output_shapes
:*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad
�
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_13IdentityAdam/clip_by_global_norm/mul_14*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
�
Adam/beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@Conv2D/W*
_output_shapes
: *
dtype0
�
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
�
Adam/beta1_power/AssignAssignAdam/beta1_powerAdam/beta1_power/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
q
Adam/beta1_power/readIdentityAdam/beta1_power*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0
�
Adam/beta2_power/initial_valueConst*
valueB
 *w�?*
_class
loc:@Conv2D/W*
dtype0*
_output_shapes
: 
�
Adam/beta2_power
VariableV2*
	container *
shared_name *
dtype0*
shape: *
_output_shapes
: *
_class
loc:@Conv2D/W
�
Adam/beta2_power/AssignAssignAdam/beta2_powerAdam/beta2_power/initial_value*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(
q
Adam/beta2_power/readIdentityAdam/beta2_power*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
q
Adam/zeros_1Const*%
valueB *    *&
_output_shapes
: *
dtype0
�
Conv2D/W/Adam
VariableV2*&
_output_shapes
: *
dtype0*
shape: *
	container *
_class
loc:@Conv2D/W*
shared_name 
�
Conv2D/W/Adam/AssignAssignConv2D/W/AdamAdam/zeros_1*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*&
_output_shapes
: 
{
Conv2D/W/Adam/readIdentityConv2D/W/Adam*&
_output_shapes
: *
_class
loc:@Conv2D/W*
T0
q
Adam/zeros_2Const*&
_output_shapes
: *
dtype0*%
valueB *    
�
Conv2D/W/Adam_1
VariableV2*
shared_name *
_class
loc:@Conv2D/W*
	container *
shape: *
dtype0*&
_output_shapes
: 
�
Conv2D/W/Adam_1/AssignAssignConv2D/W/Adam_1Adam/zeros_2*&
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(

Conv2D/W/Adam_1/readIdentityConv2D/W/Adam_1*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0
Y
Adam/zeros_3Const*
_output_shapes
: *
dtype0*
valueB *    
�
Conv2D/b/Adam
VariableV2*
shared_name *
_class
loc:@Conv2D/b*
	container *
shape: *
dtype0*
_output_shapes
: 
�
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
Adam/zeros_4Const*
_output_shapes
: *
dtype0*
valueB *    
�
Conv2D/b/Adam_1
VariableV2*
shared_name *
_class
loc:@Conv2D/b*
	container *
shape: *
dtype0*
_output_shapes
: 
�
Conv2D/b/Adam_1/AssignAssignConv2D/b/Adam_1Adam/zeros_4*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
s
Conv2D/b/Adam_1/readIdentityConv2D/b/Adam_1*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0
q
Adam/zeros_5Const*%
valueB @*    *&
_output_shapes
: @*
dtype0
�
Conv2D_1/W/Adam
VariableV2*
shape: @*&
_output_shapes
: @*
shared_name *
_class
loc:@Conv2D_1/W*
dtype0*
	container 
�
Conv2D_1/W/Adam/AssignAssignConv2D_1/W/AdamAdam/zeros_5*
use_locking(*
T0*
_class
loc:@Conv2D_1/W*
validate_shape(*&
_output_shapes
: @
�
Conv2D_1/W/Adam/readIdentityConv2D_1/W/Adam*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0
q
Adam/zeros_6Const*&
_output_shapes
: @*
dtype0*%
valueB @*    
�
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
�
Conv2D_1/W/Adam_1/AssignAssignConv2D_1/W/Adam_1Adam/zeros_6*&
_output_shapes
: @*
validate_shape(*
_class
loc:@Conv2D_1/W*
T0*
use_locking(
�
Conv2D_1/W/Adam_1/readIdentityConv2D_1/W/Adam_1*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
Y
Adam/zeros_7Const*
valueB@*    *
_output_shapes
:@*
dtype0
�
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
�
Conv2D_1/b/Adam/AssignAssignConv2D_1/b/AdamAdam/zeros_7*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
u
Conv2D_1/b/Adam/readIdentityConv2D_1/b/Adam*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0
Y
Adam/zeros_8Const*
valueB@*    *
_output_shapes
:@*
dtype0
�
Conv2D_1/b/Adam_1
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
shape:@*
shared_name 
�
Conv2D_1/b/Adam_1/AssignAssignConv2D_1/b/Adam_1Adam/zeros_8*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
y
Conv2D_1/b/Adam_1/readIdentityConv2D_1/b/Adam_1*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
s
Adam/zeros_9Const*'
_output_shapes
:@�*
dtype0*&
valueB@�*    
�
Conv2D_2/W/Adam
VariableV2*
shared_name *
_class
loc:@Conv2D_2/W*
	container *
shape:@�*
dtype0*'
_output_shapes
:@�
�
Conv2D_2/W/Adam/AssignAssignConv2D_2/W/AdamAdam/zeros_9*
use_locking(*
T0*
_class
loc:@Conv2D_2/W*
validate_shape(*'
_output_shapes
:@�
�
Conv2D_2/W/Adam/readIdentityConv2D_2/W/Adam*
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
t
Adam/zeros_10Const*'
_output_shapes
:@�*
dtype0*&
valueB@�*    
�
Conv2D_2/W/Adam_1
VariableV2*
shared_name *
shape:@�*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W*
dtype0*
	container 
�
Conv2D_2/W/Adam_1/AssignAssignConv2D_2/W/Adam_1Adam/zeros_10*
use_locking(*
T0*
_class
loc:@Conv2D_2/W*
validate_shape(*'
_output_shapes
:@�
�
Conv2D_2/W/Adam_1/readIdentityConv2D_2/W/Adam_1*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W*
T0
\
Adam/zeros_11Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
Conv2D_2/b/Adam
VariableV2*
shared_name *
_class
loc:@Conv2D_2/b*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
Conv2D_2/b/Adam/AssignAssignConv2D_2/b/AdamAdam/zeros_11*
_output_shapes	
:�*
validate_shape(*
_class
loc:@Conv2D_2/b*
T0*
use_locking(
v
Conv2D_2/b/Adam/readIdentityConv2D_2/b/Adam*
T0*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b
\
Adam/zeros_12Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
Conv2D_2/b/Adam_1
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_2/b*
shared_name *
_output_shapes	
:�*
shape:�
�
Conv2D_2/b/Adam_1/AssignAssignConv2D_2/b/Adam_1Adam/zeros_12*
_class
loc:@Conv2D_2/b*
_output_shapes	
:�*
T0*
validate_shape(*
use_locking(
z
Conv2D_2/b/Adam_1/readIdentityConv2D_2/b/Adam_1*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b*
T0
t
Adam/zeros_13Const*&
valueB�@*    *
dtype0*'
_output_shapes
:�@
�
Conv2D_3/W/Adam
VariableV2*'
_output_shapes
:�@*
dtype0*
shape:�@*
	container *
_class
loc:@Conv2D_3/W*
shared_name 
�
Conv2D_3/W/Adam/AssignAssignConv2D_3/W/AdamAdam/zeros_13*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
T0*
validate_shape(*
use_locking(
�
Conv2D_3/W/Adam/readIdentityConv2D_3/W/Adam*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
T0
t
Adam/zeros_14Const*&
valueB�@*    *
dtype0*'
_output_shapes
:�@
�
Conv2D_3/W/Adam_1
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_3/W*
shared_name *'
_output_shapes
:�@*
shape:�@
�
Conv2D_3/W/Adam_1/AssignAssignConv2D_3/W/Adam_1Adam/zeros_14*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
T0*
validate_shape(*
use_locking(
�
Conv2D_3/W/Adam_1/readIdentityConv2D_3/W/Adam_1*
T0*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@
Z
Adam/zeros_15Const*
dtype0*
_output_shapes
:@*
valueB@*    
�
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
�
Conv2D_3/b/Adam/AssignAssignConv2D_3/b/AdamAdam/zeros_15*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_3/b*
T0*
use_locking(
u
Conv2D_3/b/Adam/readIdentityConv2D_3/b/Adam*
T0*
_class
loc:@Conv2D_3/b*
_output_shapes
:@
Z
Adam/zeros_16Const*
valueB@*    *
_output_shapes
:@*
dtype0
�
Conv2D_3/b/Adam_1
VariableV2*
_output_shapes
:@*
dtype0*
shape:@*
	container *
_class
loc:@Conv2D_3/b*
shared_name 
�
Conv2D_3/b/Adam_1/AssignAssignConv2D_3/b/Adam_1Adam/zeros_16*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
y
Conv2D_3/b/Adam_1/readIdentityConv2D_3/b/Adam_1*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
r
Adam/zeros_17Const*&
_output_shapes
:@ *
dtype0*%
valueB@ *    
�
Conv2D_4/W/Adam
VariableV2*
	container *
shared_name *
dtype0*
shape:@ *&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
�
Conv2D_4/W/Adam/AssignAssignConv2D_4/W/AdamAdam/zeros_17*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
�
Conv2D_4/W/Adam/readIdentityConv2D_4/W/Adam*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
r
Adam/zeros_18Const*%
valueB@ *    *
dtype0*&
_output_shapes
:@ 
�
Conv2D_4/W/Adam_1
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_4/W*
shared_name *&
_output_shapes
:@ *
shape:@ 
�
Conv2D_4/W/Adam_1/AssignAssignConv2D_4/W/Adam_1Adam/zeros_18*
use_locking(*
T0*
_class
loc:@Conv2D_4/W*
validate_shape(*&
_output_shapes
:@ 
�
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
�
Conv2D_4/b/Adam
VariableV2*
shared_name *
_class
loc:@Conv2D_4/b*
	container *
shape: *
dtype0*
_output_shapes
: 
�
Conv2D_4/b/Adam/AssignAssignConv2D_4/b/AdamAdam/zeros_19*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
u
Conv2D_4/b/Adam/readIdentityConv2D_4/b/Adam*
T0*
_class
loc:@Conv2D_4/b*
_output_shapes
: 
Z
Adam/zeros_20Const*
_output_shapes
: *
dtype0*
valueB *    
�
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
�
Conv2D_4/b/Adam_1/AssignAssignConv2D_4/b/Adam_1Adam/zeros_20*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D_4/b*
T0*
use_locking(
y
Conv2D_4/b/Adam_1/readIdentityConv2D_4/b/Adam_1*
T0*
_class
loc:@Conv2D_4/b*
_output_shapes
: 
d
Adam/zeros_21Const*
dtype0*
_output_shapes
:	 �*
valueB	 �*    
�
FullyConnected/W/Adam
VariableV2*
	container *
dtype0*#
_class
loc:@FullyConnected/W*
shared_name *
_output_shapes
:	 �*
shape:	 �
�
FullyConnected/W/Adam/AssignAssignFullyConnected/W/AdamAdam/zeros_21*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
:	 �
�
FullyConnected/W/Adam/readIdentityFullyConnected/W/Adam*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
T0
d
Adam/zeros_22Const*
_output_shapes
:	 �*
dtype0*
valueB	 �*    
�
FullyConnected/W/Adam_1
VariableV2*
	container *
shared_name *
dtype0*
shape:	 �*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
�
FullyConnected/W/Adam_1/AssignAssignFullyConnected/W/Adam_1Adam/zeros_22*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
:	 �
�
FullyConnected/W/Adam_1/readIdentityFullyConnected/W/Adam_1*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W*
T0
\
Adam/zeros_23Const*
valueB�*    *
_output_shapes	
:�*
dtype0
�
FullyConnected/b/Adam
VariableV2*
	container *
dtype0*#
_class
loc:@FullyConnected/b*
shared_name *
_output_shapes	
:�*
shape:�
�
FullyConnected/b/Adam/AssignAssignFullyConnected/b/AdamAdam/zeros_23*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�*
T0*
validate_shape(*
use_locking(
�
FullyConnected/b/Adam/readIdentityFullyConnected/b/Adam*
T0*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�
\
Adam/zeros_24Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
FullyConnected/b/Adam_1
VariableV2*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�*
shape:�*
dtype0*
shared_name *
	container 
�
FullyConnected/b/Adam_1/AssignAssignFullyConnected/b/Adam_1Adam/zeros_24*
_output_shapes	
:�*
validate_shape(*#
_class
loc:@FullyConnected/b*
T0*
use_locking(
�
FullyConnected/b/Adam_1/readIdentityFullyConnected/b/Adam_1*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�*
T0
d
Adam/zeros_25Const*
valueB	�*    *
_output_shapes
:	�*
dtype0
�
FullyConnected_1/W/Adam
VariableV2*
shape:	�*
_output_shapes
:	�*
shared_name *%
_class
loc:@FullyConnected_1/W*
dtype0*
	container 
�
FullyConnected_1/W/Adam/AssignAssignFullyConnected_1/W/AdamAdam/zeros_25*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0*
validate_shape(*
use_locking(
�
FullyConnected_1/W/Adam/readIdentityFullyConnected_1/W/Adam*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W*
T0
d
Adam/zeros_26Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
FullyConnected_1/W/Adam_1
VariableV2*
shared_name *%
_class
loc:@FullyConnected_1/W*
	container *
shape:	�*
dtype0*
_output_shapes
:	�
�
 FullyConnected_1/W/Adam_1/AssignAssignFullyConnected_1/W/Adam_1Adam/zeros_26*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	�
�
FullyConnected_1/W/Adam_1/readIdentityFullyConnected_1/W/Adam_1*
T0*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W
Z
Adam/zeros_27Const*
dtype0*
_output_shapes
:*
valueB*    
�
FullyConnected_1/b/Adam
VariableV2*
shared_name *%
_class
loc:@FullyConnected_1/b*
	container *
shape:*
dtype0*
_output_shapes
:
�
FullyConnected_1/b/Adam/AssignAssignFullyConnected_1/b/AdamAdam/zeros_27*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
�
FullyConnected_1/b/Adam/readIdentityFullyConnected_1/b/Adam*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0
Z
Adam/zeros_28Const*
_output_shapes
:*
dtype0*
valueB*    
�
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
�
 FullyConnected_1/b/Adam_1/AssignAssignFullyConnected_1/b/Adam_1Adam/zeros_28*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
�
FullyConnected_1/b/Adam_1/readIdentityFullyConnected_1/b/Adam_1*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b*
T0
g
"Adam/apply_grad_op_0/learning_rateConst*
valueB
 *o�:*
_output_shapes
: *
dtype0
_
Adam/apply_grad_op_0/beta1Const*
valueB
 *fff?*
_output_shapes
: *
dtype0
_
Adam/apply_grad_op_0/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
a
Adam/apply_grad_op_0/epsilonConst*
_output_shapes
: *
dtype0*
valueB
 *w�+2
�
.Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam	ApplyAdamConv2D/WConv2D/W/AdamConv2D/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0*
use_locking( 
�
.Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam	ApplyAdamConv2D/bConv2D/b/AdamConv2D/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1*
use_locking( *
T0*
_class
loc:@Conv2D/b*
_output_shapes
: 
�
0Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam	ApplyAdam
Conv2D_1/WConv2D_1/W/AdamConv2D_1/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2*
use_locking( *
T0*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @
�
0Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam	ApplyAdam
Conv2D_1/bConv2D_1/b/AdamConv2D_1/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0*
use_locking( 
�
0Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam	ApplyAdam
Conv2D_2/WConv2D_2/W/AdamConv2D_2/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_4*
use_locking( *
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
�
0Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam	ApplyAdam
Conv2D_2/bConv2D_2/b/AdamConv2D_2/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b*
T0*
use_locking( 
�
0Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam	ApplyAdam
Conv2D_3/WConv2D_3/W/AdamConv2D_3/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_6*
use_locking( *
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
�
0Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam	ApplyAdam
Conv2D_3/bConv2D_3/b/AdamConv2D_3/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_7*
_output_shapes
:@*
_class
loc:@Conv2D_3/b*
T0*
use_locking( 
�
0Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam	ApplyAdam
Conv2D_4/WConv2D_4/W/AdamConv2D_4/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_8*
use_locking( *
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
�
0Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam	ApplyAdam
Conv2D_4/bConv2D_4/b/AdamConv2D_4/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_9*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
T0*
use_locking( 
�
6Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam	ApplyAdamFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_10*
use_locking( *
T0*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �
�
6Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam	ApplyAdamFullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_11*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�*
T0*
use_locking( 
�
8Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam	ApplyAdamFullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_12*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking( 
�
8Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam	ApplyAdamFullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_13*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b*
T0*
use_locking( 
�
Adam/apply_grad_op_0/mulMulAdam/beta1_power/readAdam/apply_grad_op_0/beta1/^Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam/^Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
�
Adam/apply_grad_op_0/AssignAssignAdam/beta1_powerAdam/apply_grad_op_0/mul*
use_locking( *
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
�
Adam/apply_grad_op_0/mul_1MulAdam/beta2_power/readAdam/apply_grad_op_0/beta2/^Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam/^Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
�
Adam/apply_grad_op_0/Assign_1AssignAdam/beta2_powerAdam/apply_grad_op_0/mul_1*
use_locking( *
T0*
_class
loc:@Conv2D/W*
validate_shape(*
_output_shapes
: 
�
Adam/apply_grad_op_0/updateNoOp/^Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam/^Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam^Adam/apply_grad_op_0/Assign^Adam/apply_grad_op_0/Assign_1
�
Adam/apply_grad_op_0/valueConst^Adam/apply_grad_op_0/update*
valueB
 *  �?* 
_class
loc:@Training_step*
_output_shapes
: *
dtype0
�
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

save/ConstConst*
_output_shapes
: *
dtype0*
valueB Bmodel
�
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:3*�
value�B�3BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBConv2D/WBConv2D/W/AdamBConv2D/W/Adam_1BConv2D/bBConv2D/b/AdamBConv2D/b/Adam_1B
Conv2D_1/WBConv2D_1/W/AdamBConv2D_1/W/Adam_1B
Conv2D_1/bBConv2D_1/b/AdamBConv2D_1/b/Adam_1B
Conv2D_2/WBConv2D_2/W/AdamBConv2D_2/W/Adam_1B
Conv2D_2/bBConv2D_2/b/AdamBConv2D_2/b/Adam_1B
Conv2D_3/WBConv2D_3/W/AdamBConv2D_3/W/Adam_1B
Conv2D_3/bBConv2D_3/b/AdamBConv2D_3/b/Adam_1B
Conv2D_4/WBConv2D_4/W/AdamBConv2D_4/W/Adam_1B
Conv2D_4/bBConv2D_4/b/AdamBConv2D_4/b/Adam_1BCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss
�
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:3*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
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
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*-
value$B"BAccuracy/Mean/moving_avg
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
valueBBAdam/beta1_power*
dtype0*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_1AssignAdam/beta1_powersave/RestoreV2_1*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
v
save/RestoreV2_2/tensor_namesConst*
dtype0*
_output_shapes
:*%
valueBBAdam/beta2_power
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_3AssignConv2D/Wsave/RestoreV2_3*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*&
_output_shapes
: 
s
save/RestoreV2_4/tensor_namesConst*
dtype0*
_output_shapes
:*"
valueBBConv2D/W/Adam
j
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_4AssignConv2D/W/Adamsave/RestoreV2_4*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
u
save/RestoreV2_5/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D/W/Adam_1
j
!save/RestoreV2_5/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_6AssignConv2D/bsave/RestoreV2_6*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
s
save/RestoreV2_7/tensor_namesConst*
_output_shapes
:*
dtype0*"
valueBBConv2D/b/Adam
j
!save/RestoreV2_7/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_7AssignConv2D/b/Adamsave/RestoreV2_7*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/b*
T0*
use_locking(
u
save/RestoreV2_8/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D/b/Adam_1
j
!save/RestoreV2_8/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_8AssignConv2D/b/Adam_1save/RestoreV2_8*
use_locking(*
T0*
_class
loc:@Conv2D/b*
validate_shape(*
_output_shapes
: 
p
save/RestoreV2_9/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_1/W
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
save/RestoreV2_10/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_1/W/Adam
k
"save/RestoreV2_10/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_10AssignConv2D_1/W/Adamsave/RestoreV2_10*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(
x
save/RestoreV2_11/tensor_namesConst*&
valueBBConv2D_1/W/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_11AssignConv2D_1/W/Adam_1save/RestoreV2_11*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(
q
save/RestoreV2_12/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_1/b
k
"save/RestoreV2_12/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
save/RestoreV2_13/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_1/b/Adam
k
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_13AssignConv2D_1/b/Adamsave/RestoreV2_13*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_1/b*
T0*
use_locking(
x
save/RestoreV2_14/tensor_namesConst*&
valueBBConv2D_1/b/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_14AssignConv2D_1/b/Adam_1save/RestoreV2_14*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
q
save/RestoreV2_15/tensor_namesConst*
valueBB
Conv2D_2/W*
_output_shapes
:*
dtype0
k
"save/RestoreV2_15/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_15Assign
Conv2D_2/Wsave/RestoreV2_15*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
v
save/RestoreV2_16/tensor_namesConst*$
valueBBConv2D_2/W/Adam*
_output_shapes
:*
dtype0
k
"save/RestoreV2_16/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_16AssignConv2D_2/W/Adamsave/RestoreV2_16*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
x
save/RestoreV2_17/tensor_namesConst*&
valueBBConv2D_2/W/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_17AssignConv2D_2/W/Adam_1save/RestoreV2_17*
use_locking(*
T0*
_class
loc:@Conv2D_2/W*
validate_shape(*'
_output_shapes
:@�
q
save/RestoreV2_18/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_2/b
k
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_18Assign
Conv2D_2/bsave/RestoreV2_18*
_class
loc:@Conv2D_2/b*
_output_shapes	
:�*
T0*
validate_shape(*
use_locking(
v
save/RestoreV2_19/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_2/b/Adam
k
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_19AssignConv2D_2/b/Adamsave/RestoreV2_19*
_output_shapes	
:�*
validate_shape(*
_class
loc:@Conv2D_2/b*
T0*
use_locking(
x
save/RestoreV2_20/tensor_namesConst*&
valueBBConv2D_2/b/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_20AssignConv2D_2/b/Adam_1save/RestoreV2_20*
_output_shapes	
:�*
validate_shape(*
_class
loc:@Conv2D_2/b*
T0*
use_locking(
q
save/RestoreV2_21/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_3/W
k
"save/RestoreV2_21/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_21Assign
Conv2D_3/Wsave/RestoreV2_21*
use_locking(*
T0*
_class
loc:@Conv2D_3/W*
validate_shape(*'
_output_shapes
:�@
v
save/RestoreV2_22/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_3/W/Adam
k
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_22AssignConv2D_3/W/Adamsave/RestoreV2_22*
use_locking(*
T0*
_class
loc:@Conv2D_3/W*
validate_shape(*'
_output_shapes
:�@
x
save/RestoreV2_23/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_3/W/Adam_1
k
"save/RestoreV2_23/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_23AssignConv2D_3/W/Adam_1save/RestoreV2_23*'
_output_shapes
:�@*
validate_shape(*
_class
loc:@Conv2D_3/W*
T0*
use_locking(
q
save/RestoreV2_24/tensor_namesConst*
valueBB
Conv2D_3/b*
dtype0*
_output_shapes
:
k
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_24Assign
Conv2D_3/bsave/RestoreV2_24*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_3/b*
T0*
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
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_25AssignConv2D_3/b/Adamsave/RestoreV2_25*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
x
save/RestoreV2_26/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_3/b/Adam_1
k
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_26AssignConv2D_3/b/Adam_1save/RestoreV2_26*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
q
save/RestoreV2_27/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_4/W
k
"save/RestoreV2_27/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
save/RestoreV2_28/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_4/W/Adam
k
"save/RestoreV2_28/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
"save/RestoreV2_29/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_29	RestoreV2
save/Constsave/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_30	RestoreV2
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
�
save/RestoreV2_31	RestoreV2
save/Constsave/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_31AssignConv2D_4/b/Adamsave/RestoreV2_31*
use_locking(*
T0*
_class
loc:@Conv2D_4/b*
validate_shape(*
_output_shapes
: 
x
save/RestoreV2_32/tensor_namesConst*&
valueBBConv2D_4/b/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_32/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_32	RestoreV2
save/Constsave/RestoreV2_32/tensor_names"save/RestoreV2_32/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_32AssignConv2D_4/b/Adam_1save/RestoreV2_32*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
�
save/RestoreV2_33/tensor_namesConst*1
value(B&BCrossentropy/Mean/moving_avg*
dtype0*
_output_shapes
:
k
"save/RestoreV2_33/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_33	RestoreV2
save/Constsave/RestoreV2_33/tensor_names"save/RestoreV2_33/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
"save/RestoreV2_34/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_34	RestoreV2
save/Constsave/RestoreV2_34/tensor_names"save/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_34AssignFullyConnected/Wsave/RestoreV2_34*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
|
save/RestoreV2_35/tensor_namesConst**
value!BBFullyConnected/W/Adam*
_output_shapes
:*
dtype0
k
"save/RestoreV2_35/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_35	RestoreV2
save/Constsave/RestoreV2_35/tensor_names"save/RestoreV2_35/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_35AssignFullyConnected/W/Adamsave/RestoreV2_35*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
T0*
validate_shape(*
use_locking(
~
save/RestoreV2_36/tensor_namesConst*
dtype0*
_output_shapes
:*,
value#B!BFullyConnected/W/Adam_1
k
"save/RestoreV2_36/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_36	RestoreV2
save/Constsave/RestoreV2_36/tensor_names"save/RestoreV2_36/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_36AssignFullyConnected/W/Adam_1save/RestoreV2_36*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
T0*
validate_shape(*
use_locking(
w
save/RestoreV2_37/tensor_namesConst*
_output_shapes
:*
dtype0*%
valueBBFullyConnected/b
k
"save/RestoreV2_37/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_37	RestoreV2
save/Constsave/RestoreV2_37/tensor_names"save/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_37AssignFullyConnected/bsave/RestoreV2_37*
_output_shapes	
:�*
validate_shape(*#
_class
loc:@FullyConnected/b*
T0*
use_locking(
|
save/RestoreV2_38/tensor_namesConst**
value!BBFullyConnected/b/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_38/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_38	RestoreV2
save/Constsave/RestoreV2_38/tensor_names"save/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_38AssignFullyConnected/b/Adamsave/RestoreV2_38*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:�
~
save/RestoreV2_39/tensor_namesConst*,
value#B!BFullyConnected/b/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_39/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_39	RestoreV2
save/Constsave/RestoreV2_39/tensor_names"save/RestoreV2_39/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_39AssignFullyConnected/b/Adam_1save/RestoreV2_39*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:�
y
save/RestoreV2_40/tensor_namesConst*
dtype0*
_output_shapes
:*'
valueBBFullyConnected_1/W
k
"save/RestoreV2_40/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_40	RestoreV2
save/Constsave/RestoreV2_40/tensor_names"save/RestoreV2_40/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_40AssignFullyConnected_1/Wsave/RestoreV2_40*
_output_shapes
:	�*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
~
save/RestoreV2_41/tensor_namesConst*
dtype0*
_output_shapes
:*,
value#B!BFullyConnected_1/W/Adam
k
"save/RestoreV2_41/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_41	RestoreV2
save/Constsave/RestoreV2_41/tensor_names"save/RestoreV2_41/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_41AssignFullyConnected_1/W/Adamsave/RestoreV2_41*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W
�
save/RestoreV2_42/tensor_namesConst*.
value%B#BFullyConnected_1/W/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_42/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_42	RestoreV2
save/Constsave/RestoreV2_42/tensor_names"save/RestoreV2_42/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_42AssignFullyConnected_1/W/Adam_1save/RestoreV2_42*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	�
y
save/RestoreV2_43/tensor_namesConst*'
valueBBFullyConnected_1/b*
_output_shapes
:*
dtype0
k
"save/RestoreV2_43/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_43	RestoreV2
save/Constsave/RestoreV2_43/tensor_names"save/RestoreV2_43/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_43AssignFullyConnected_1/bsave/RestoreV2_43*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
~
save/RestoreV2_44/tensor_namesConst*
dtype0*
_output_shapes
:*,
value#B!BFullyConnected_1/b/Adam
k
"save/RestoreV2_44/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_44	RestoreV2
save/Constsave/RestoreV2_44/tensor_names"save/RestoreV2_44/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_44AssignFullyConnected_1/b/Adamsave/RestoreV2_44*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
�
save/RestoreV2_45/tensor_namesConst*
_output_shapes
:*
dtype0*.
value%B#BFullyConnected_1/b/Adam_1
k
"save/RestoreV2_45/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_45	RestoreV2
save/Constsave/RestoreV2_45/tensor_names"save/RestoreV2_45/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_45AssignFullyConnected_1/b/Adam_1save/RestoreV2_45*
_output_shapes
:*
validate_shape(*%
_class
loc:@FullyConnected_1/b*
T0*
use_locking(
r
save/RestoreV2_46/tensor_namesConst* 
valueBBGlobal_Step*
dtype0*
_output_shapes
:
k
"save/RestoreV2_46/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_46	RestoreV2
save/Constsave/RestoreV2_46/tensor_names"save/RestoreV2_46/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
"save/RestoreV2_47/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_47	RestoreV2
save/Constsave/RestoreV2_47/tensor_names"save/RestoreV2_47/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
"save/RestoreV2_48/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_48	RestoreV2
save/Constsave/RestoreV2_48/tensor_names"save/RestoreV2_48/shape_and_slices*
dtypes
2
*
_output_shapes
:
�
save/Assign_48Assignis_trainingsave/RestoreV2_48*
use_locking(*
validate_shape(*
T0
*
_output_shapes
: *
_class
loc:@is_training
n
save/RestoreV2_49/tensor_namesConst*
valueBBval_acc*
_output_shapes
:*
dtype0
k
"save/RestoreV2_49/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_49	RestoreV2
save/Constsave/RestoreV2_49/tensor_names"save/RestoreV2_49/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
valueBBval_loss*
_output_shapes
:*
dtype0
k
"save/RestoreV2_50/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_50	RestoreV2
save/Constsave/RestoreV2_50/tensor_names"save/RestoreV2_50/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_50Assignval_losssave/RestoreV2_50*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@val_loss
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_50
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_1/SaveV2/tensor_namesConst*
_output_shapes
:3*
dtype0*�
value�B�3BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBConv2D/WBConv2D/W/AdamBConv2D/W/Adam_1BConv2D/bBConv2D/b/AdamBConv2D/b/Adam_1B
Conv2D_1/WBConv2D_1/W/AdamBConv2D_1/W/Adam_1B
Conv2D_1/bBConv2D_1/b/AdamBConv2D_1/b/Adam_1B
Conv2D_2/WBConv2D_2/W/AdamBConv2D_2/W/Adam_1B
Conv2D_2/bBConv2D_2/b/AdamBConv2D_2/b/Adam_1B
Conv2D_3/WBConv2D_3/W/AdamBConv2D_3/W/Adam_1B
Conv2D_3/bBConv2D_3/b/AdamBConv2D_3/b/Adam_1B
Conv2D_4/WBConv2D_4/W/AdamBConv2D_4/W/Adam_1B
Conv2D_4/bBConv2D_4/b/AdamBConv2D_4/b/Adam_1BCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss
�
save_1/SaveV2/shape_and_slicesConst*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:3*
dtype0
�
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
�
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
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/AssignAssignAccuracy/Mean/moving_avgsave_1/RestoreV2*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
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
�
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_1AssignAdam/beta1_powersave_1/RestoreV2_1*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
x
save_1/RestoreV2_2/tensor_namesConst*
_output_shapes
:*
dtype0*%
valueBBAdam/beta2_power
l
#save_1/RestoreV2_2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
valueBBConv2D/W*
_output_shapes
:*
dtype0
l
#save_1/RestoreV2_3/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_3AssignConv2D/Wsave_1/RestoreV2_3*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*&
_output_shapes
: 
u
save_1/RestoreV2_4/tensor_namesConst*
_output_shapes
:*
dtype0*"
valueBBConv2D/W/Adam
l
#save_1/RestoreV2_4/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_4AssignConv2D/W/Adamsave_1/RestoreV2_4*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
w
save_1/RestoreV2_5/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D/W/Adam_1
l
#save_1/RestoreV2_5/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
valueBBConv2D/b*
_output_shapes
:*
dtype0
l
#save_1/RestoreV2_6/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_6AssignConv2D/bsave_1/RestoreV2_6*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/b
u
save_1/RestoreV2_7/tensor_namesConst*"
valueBBConv2D/b/Adam*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_7/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_7AssignConv2D/b/Adamsave_1/RestoreV2_7*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
w
save_1/RestoreV2_8/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D/b/Adam_1
l
#save_1/RestoreV2_8/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
Conv2D_1/W*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_9/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_9Assign
Conv2D_1/Wsave_1/RestoreV2_9*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
x
 save_1/RestoreV2_10/tensor_namesConst*$
valueBBConv2D_1/W/Adam*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_10AssignConv2D_1/W/Adamsave_1/RestoreV2_10*&
_output_shapes
: @*
validate_shape(*
_class
loc:@Conv2D_1/W*
T0*
use_locking(
z
 save_1/RestoreV2_11/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_1/W/Adam_1
m
$save_1/RestoreV2_11/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_11AssignConv2D_1/W/Adam_1save_1/RestoreV2_11*
use_locking(*
T0*
_class
loc:@Conv2D_1/W*
validate_shape(*&
_output_shapes
: @
s
 save_1/RestoreV2_12/tensor_namesConst*
valueBB
Conv2D_1/b*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_12Assign
Conv2D_1/bsave_1/RestoreV2_12*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
x
 save_1/RestoreV2_13/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_1/b/Adam
m
$save_1/RestoreV2_13/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_13AssignConv2D_1/b/Adamsave_1/RestoreV2_13*
use_locking(*
T0*
_class
loc:@Conv2D_1/b*
validate_shape(*
_output_shapes
:@
z
 save_1/RestoreV2_14/tensor_namesConst*&
valueBBConv2D_1/b/Adam_1*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
$save_1/RestoreV2_15/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_15Assign
Conv2D_2/Wsave_1/RestoreV2_15*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�*
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
$save_1/RestoreV2_16/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_16AssignConv2D_2/W/Adamsave_1/RestoreV2_16*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
z
 save_1/RestoreV2_17/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_2/W/Adam_1
m
$save_1/RestoreV2_17/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_17AssignConv2D_2/W/Adam_1save_1/RestoreV2_17*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�*
T0*
validate_shape(*
use_locking(
s
 save_1/RestoreV2_18/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_2/b
m
$save_1/RestoreV2_18/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_18Assign
Conv2D_2/bsave_1/RestoreV2_18*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b
x
 save_1/RestoreV2_19/tensor_namesConst*$
valueBBConv2D_2/b/Adam*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_19AssignConv2D_2/b/Adamsave_1/RestoreV2_19*
use_locking(*
T0*
_class
loc:@Conv2D_2/b*
validate_shape(*
_output_shapes	
:�
z
 save_1/RestoreV2_20/tensor_namesConst*&
valueBBConv2D_2/b/Adam_1*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_20/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_20AssignConv2D_2/b/Adam_1save_1/RestoreV2_20*
use_locking(*
T0*
_class
loc:@Conv2D_2/b*
validate_shape(*
_output_shapes	
:�
s
 save_1/RestoreV2_21/tensor_namesConst*
valueBB
Conv2D_3/W*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_21Assign
Conv2D_3/Wsave_1/RestoreV2_21*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
x
 save_1/RestoreV2_22/tensor_namesConst*$
valueBBConv2D_3/W/Adam*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_22/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_22AssignConv2D_3/W/Adamsave_1/RestoreV2_22*
use_locking(*
T0*
_class
loc:@Conv2D_3/W*
validate_shape(*'
_output_shapes
:�@
z
 save_1/RestoreV2_23/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_3/W/Adam_1
m
$save_1/RestoreV2_23/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_23	RestoreV2save_1/Const save_1/RestoreV2_23/tensor_names$save_1/RestoreV2_23/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_23AssignConv2D_3/W/Adam_1save_1/RestoreV2_23*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
T0*
validate_shape(*
use_locking(
s
 save_1/RestoreV2_24/tensor_namesConst*
valueBB
Conv2D_3/b*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_24/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_24	RestoreV2save_1/Const save_1/RestoreV2_24/tensor_names$save_1/RestoreV2_24/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_24Assign
Conv2D_3/bsave_1/RestoreV2_24*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_3/b*
T0*
use_locking(
x
 save_1/RestoreV2_25/tensor_namesConst*$
valueBBConv2D_3/b/Adam*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_25/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_25	RestoreV2save_1/Const save_1/RestoreV2_25/tensor_names$save_1/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_25AssignConv2D_3/b/Adamsave_1/RestoreV2_25*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_3/b*
T0*
use_locking(
z
 save_1/RestoreV2_26/tensor_namesConst*&
valueBBConv2D_3/b/Adam_1*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_26/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_26	RestoreV2save_1/Const save_1/RestoreV2_26/tensor_names$save_1/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_26AssignConv2D_3/b/Adam_1save_1/RestoreV2_26*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
s
 save_1/RestoreV2_27/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_4/W
m
$save_1/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_27	RestoreV2save_1/Const save_1/RestoreV2_27/tensor_names$save_1/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
$save_1/RestoreV2_28/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_28	RestoreV2save_1/Const save_1/RestoreV2_28/tensor_names$save_1/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
$save_1/RestoreV2_29/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_29	RestoreV2save_1/Const save_1/RestoreV2_29/tensor_names$save_1/RestoreV2_29/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
valueBB
Conv2D_4/b*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_30/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_30	RestoreV2save_1/Const save_1/RestoreV2_30/tensor_names$save_1/RestoreV2_30/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
$save_1/RestoreV2_31/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_31	RestoreV2save_1/Const save_1/RestoreV2_31/tensor_names$save_1/RestoreV2_31/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
$save_1/RestoreV2_32/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_32	RestoreV2save_1/Const save_1/RestoreV2_32/tensor_names$save_1/RestoreV2_32/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_32AssignConv2D_4/b/Adam_1save_1/RestoreV2_32*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
�
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
�
save_1/RestoreV2_33	RestoreV2save_1/Const save_1/RestoreV2_33/tensor_names$save_1/RestoreV2_33/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
�
save_1/RestoreV2_34	RestoreV2save_1/Const save_1/RestoreV2_34/tensor_names$save_1/RestoreV2_34/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_34AssignFullyConnected/Wsave_1/RestoreV2_34*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
T0*
validate_shape(*
use_locking(
~
 save_1/RestoreV2_35/tensor_namesConst**
value!BBFullyConnected/W/Adam*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_35/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_35	RestoreV2save_1/Const save_1/RestoreV2_35/tensor_names$save_1/RestoreV2_35/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_35AssignFullyConnected/W/Adamsave_1/RestoreV2_35*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
:	 �
�
 save_1/RestoreV2_36/tensor_namesConst*,
value#B!BFullyConnected/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_36/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_36	RestoreV2save_1/Const save_1/RestoreV2_36/tensor_names$save_1/RestoreV2_36/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_36AssignFullyConnected/W/Adam_1save_1/RestoreV2_36*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
y
 save_1/RestoreV2_37/tensor_namesConst*%
valueBBFullyConnected/b*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_37/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_37	RestoreV2save_1/Const save_1/RestoreV2_37/tensor_names$save_1/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_37AssignFullyConnected/bsave_1/RestoreV2_37*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�*
T0*
validate_shape(*
use_locking(
~
 save_1/RestoreV2_38/tensor_namesConst*
_output_shapes
:*
dtype0**
value!BBFullyConnected/b/Adam
m
$save_1/RestoreV2_38/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_38	RestoreV2save_1/Const save_1/RestoreV2_38/tensor_names$save_1/RestoreV2_38/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_38AssignFullyConnected/b/Adamsave_1/RestoreV2_38*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:�
�
 save_1/RestoreV2_39/tensor_namesConst*
dtype0*
_output_shapes
:*,
value#B!BFullyConnected/b/Adam_1
m
$save_1/RestoreV2_39/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_39	RestoreV2save_1/Const save_1/RestoreV2_39/tensor_names$save_1/RestoreV2_39/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_39AssignFullyConnected/b/Adam_1save_1/RestoreV2_39*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�*
T0*
validate_shape(*
use_locking(
{
 save_1/RestoreV2_40/tensor_namesConst*
_output_shapes
:*
dtype0*'
valueBBFullyConnected_1/W
m
$save_1/RestoreV2_40/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_40	RestoreV2save_1/Const save_1/RestoreV2_40/tensor_names$save_1/RestoreV2_40/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_40AssignFullyConnected_1/Wsave_1/RestoreV2_40*
_output_shapes
:	�*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
�
 save_1/RestoreV2_41/tensor_namesConst*,
value#B!BFullyConnected_1/W/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_41/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_41	RestoreV2save_1/Const save_1/RestoreV2_41/tensor_names$save_1/RestoreV2_41/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_41AssignFullyConnected_1/W/Adamsave_1/RestoreV2_41*
_output_shapes
:	�*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
�
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
�
save_1/RestoreV2_42	RestoreV2save_1/Const save_1/RestoreV2_42/tensor_names$save_1/RestoreV2_42/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_42AssignFullyConnected_1/W/Adam_1save_1/RestoreV2_42*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	�
{
 save_1/RestoreV2_43/tensor_namesConst*'
valueBBFullyConnected_1/b*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_43/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_43	RestoreV2save_1/Const save_1/RestoreV2_43/tensor_names$save_1/RestoreV2_43/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_43AssignFullyConnected_1/bsave_1/RestoreV2_43*
_output_shapes
:*
validate_shape(*%
_class
loc:@FullyConnected_1/b*
T0*
use_locking(
�
 save_1/RestoreV2_44/tensor_namesConst*,
value#B!BFullyConnected_1/b/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_44/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_44	RestoreV2save_1/Const save_1/RestoreV2_44/tensor_names$save_1/RestoreV2_44/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_44AssignFullyConnected_1/b/Adamsave_1/RestoreV2_44*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
 save_1/RestoreV2_45/tensor_namesConst*.
value%B#BFullyConnected_1/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_45/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_45	RestoreV2save_1/Const save_1/RestoreV2_45/tensor_names$save_1/RestoreV2_45/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
$save_1/RestoreV2_46/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_46	RestoreV2save_1/Const save_1/RestoreV2_46/tensor_names$save_1/RestoreV2_46/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_46AssignGlobal_Stepsave_1/RestoreV2_46*
_output_shapes
: *
validate_shape(*
_class
loc:@Global_Step*
T0*
use_locking(
v
 save_1/RestoreV2_47/tensor_namesConst*
dtype0*
_output_shapes
:*"
valueBBTraining_step
m
$save_1/RestoreV2_47/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_47	RestoreV2save_1/Const save_1/RestoreV2_47/tensor_names$save_1/RestoreV2_47/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_47AssignTraining_stepsave_1/RestoreV2_47*
use_locking(*
T0* 
_class
loc:@Training_step*
validate_shape(*
_output_shapes
: 
t
 save_1/RestoreV2_48/tensor_namesConst*
dtype0*
_output_shapes
:* 
valueBBis_training
m
$save_1/RestoreV2_48/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_48	RestoreV2save_1/Const save_1/RestoreV2_48/tensor_names$save_1/RestoreV2_48/shape_and_slices*
_output_shapes
:*
dtypes
2

�
save_1/Assign_48Assignis_trainingsave_1/RestoreV2_48*
use_locking(*
T0
*
_class
loc:@is_training*
validate_shape(*
_output_shapes
: 
p
 save_1/RestoreV2_49/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBval_acc
m
$save_1/RestoreV2_49/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_49	RestoreV2save_1/Const save_1/RestoreV2_49/tensor_names$save_1/RestoreV2_49/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_49Assignval_accsave_1/RestoreV2_49*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@val_acc
q
 save_1/RestoreV2_50/tensor_namesConst*
valueBBval_loss*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_50/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_50	RestoreV2save_1/Const save_1/RestoreV2_50/tensor_names$save_1/RestoreV2_50/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_50Assignval_losssave_1/RestoreV2_50*
_output_shapes
: *
validate_shape(*
_class
loc:@val_loss*
T0*
use_locking(
�
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_50
R
save_2/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0
�
save_2/SaveV2/tensor_namesConst*�
value�B�BConv2D/WBConv2D/bB
Conv2D_1/WB
Conv2D_1/bB
Conv2D_2/WB
Conv2D_2/bB
Conv2D_3/WB
Conv2D_3/bB
Conv2D_4/WB
Conv2D_4/bBFullyConnected/WBFullyConnected/bBFullyConnected_1/WBFullyConnected_1/b*
dtype0*
_output_shapes
:
�
save_2/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*/
value&B$B B B B B B B B B B B B B B 
�
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
�
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
!save_2/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_2/AssignAssignConv2D/Wsave_2/RestoreV2*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
p
save_2/RestoreV2_1/tensor_namesConst*
valueBBConv2D/b*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_1/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_2/RestoreV2_1	RestoreV2save_2/Constsave_2/RestoreV2_1/tensor_names#save_2/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_2/Assign_1AssignConv2D/bsave_2/RestoreV2_1*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/b
r
save_2/RestoreV2_2/tensor_namesConst*
valueBB
Conv2D_1/W*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_2/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_2/RestoreV2_2	RestoreV2save_2/Constsave_2/RestoreV2_2/tensor_names#save_2/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
dtype0*
_output_shapes
:*
valueBB
Conv2D_1/b
l
#save_2/RestoreV2_3/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_2/RestoreV2_3	RestoreV2save_2/Constsave_2/RestoreV2_3/tensor_names#save_2/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_3Assign
Conv2D_1/bsave_2/RestoreV2_3*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
r
save_2/RestoreV2_4/tensor_namesConst*
valueBB
Conv2D_2/W*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_4/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_2/RestoreV2_4	RestoreV2save_2/Constsave_2/RestoreV2_4/tensor_names#save_2/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_2/Assign_4Assign
Conv2D_2/Wsave_2/RestoreV2_4*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
r
save_2/RestoreV2_5/tensor_namesConst*
valueBB
Conv2D_2/b*
_output_shapes
:*
dtype0
l
#save_2/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_5	RestoreV2save_2/Constsave_2/RestoreV2_5/tensor_names#save_2/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_5Assign
Conv2D_2/bsave_2/RestoreV2_5*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*
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
�
save_2/RestoreV2_6	RestoreV2save_2/Constsave_2/RestoreV2_6/tensor_names#save_2/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_2/Assign_6Assign
Conv2D_3/Wsave_2/RestoreV2_6*'
_output_shapes
:�@*
validate_shape(*
_class
loc:@Conv2D_3/W*
T0*
use_locking(
r
save_2/RestoreV2_7/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_3/b
l
#save_2/RestoreV2_7/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_2/RestoreV2_7	RestoreV2save_2/Constsave_2/RestoreV2_7/tensor_names#save_2/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_2/Assign_7Assign
Conv2D_3/bsave_2/RestoreV2_7*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
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
�
save_2/RestoreV2_8	RestoreV2save_2/Constsave_2/RestoreV2_8/tensor_names#save_2/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
save_2/RestoreV2_9/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_4/b
l
#save_2/RestoreV2_9/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_2/RestoreV2_9	RestoreV2save_2/Constsave_2/RestoreV2_9/tensor_names#save_2/RestoreV2_9/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_2/Assign_9Assign
Conv2D_4/bsave_2/RestoreV2_9*
use_locking(*
T0*
_class
loc:@Conv2D_4/b*
validate_shape(*
_output_shapes
: 
y
 save_2/RestoreV2_10/tensor_namesConst*
_output_shapes
:*
dtype0*%
valueBBFullyConnected/W
m
$save_2/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_10	RestoreV2save_2/Const save_2/RestoreV2_10/tensor_names$save_2/RestoreV2_10/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_2/Assign_10AssignFullyConnected/Wsave_2/RestoreV2_10*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
y
 save_2/RestoreV2_11/tensor_namesConst*%
valueBBFullyConnected/b*
dtype0*
_output_shapes
:
m
$save_2/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_11	RestoreV2save_2/Const save_2/RestoreV2_11/tensor_names$save_2/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_11AssignFullyConnected/bsave_2/RestoreV2_11*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:�
{
 save_2/RestoreV2_12/tensor_namesConst*
dtype0*
_output_shapes
:*'
valueBBFullyConnected_1/W
m
$save_2/RestoreV2_12/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_2/RestoreV2_12	RestoreV2save_2/Const save_2/RestoreV2_12/tensor_names$save_2/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_12AssignFullyConnected_1/Wsave_2/RestoreV2_12*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W
{
 save_2/RestoreV2_13/tensor_namesConst*
dtype0*
_output_shapes
:*'
valueBBFullyConnected_1/b
m
$save_2/RestoreV2_13/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_2/RestoreV2_13	RestoreV2save_2/Const save_2/RestoreV2_13/tensor_names$save_2/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_13AssignFullyConnected_1/bsave_2/RestoreV2_13*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
save_2/restore_allNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13
�

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
�
save_3/SaveV2/tensor_namesConst*�
value�B�3BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBConv2D/WBConv2D/W/AdamBConv2D/W/Adam_1BConv2D/bBConv2D/b/AdamBConv2D/b/Adam_1B
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
�
save_3/SaveV2/shape_and_slicesConst*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:3*
dtype0
�
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
�
save_3/control_dependencyIdentitysave_3/Const^save_3/SaveV2*
T0*
_output_shapes
: *
_class
loc:@save_3/Const
~
save_3/RestoreV2/tensor_namesConst*-
value$B"BAccuracy/Mean/moving_avg*
dtype0*
_output_shapes
:
j
!save_3/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
valueBBAdam/beta1_power*
_output_shapes
:*
dtype0
l
#save_3/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_1	RestoreV2save_3/Constsave_3/RestoreV2_1/tensor_names#save_3/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_1AssignAdam/beta1_powersave_3/RestoreV2_1*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
x
save_3/RestoreV2_2/tensor_namesConst*
_output_shapes
:*
dtype0*%
valueBBAdam/beta2_power
l
#save_3/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_2	RestoreV2save_3/Constsave_3/RestoreV2_2/tensor_names#save_3/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
dtype0*
_output_shapes
:*
valueBBConv2D/W
l
#save_3/RestoreV2_3/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_3	RestoreV2save_3/Constsave_3/RestoreV2_3/tensor_names#save_3/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
#save_3/RestoreV2_4/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_4	RestoreV2save_3/Constsave_3/RestoreV2_4/tensor_names#save_3/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
#save_3/RestoreV2_5/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_5	RestoreV2save_3/Constsave_3/RestoreV2_5/tensor_names#save_3/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
dtype0*
_output_shapes
:*
valueBBConv2D/b
l
#save_3/RestoreV2_6/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_6	RestoreV2save_3/Constsave_3/RestoreV2_6/tensor_names#save_3/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_6AssignConv2D/bsave_3/RestoreV2_6*
use_locking(*
T0*
_class
loc:@Conv2D/b*
validate_shape(*
_output_shapes
: 
u
save_3/RestoreV2_7/tensor_namesConst*"
valueBBConv2D/b/Adam*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_7/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_7	RestoreV2save_3/Constsave_3/RestoreV2_7/tensor_names#save_3/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_7AssignConv2D/b/Adamsave_3/RestoreV2_7*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
w
save_3/RestoreV2_8/tensor_namesConst*$
valueBBConv2D/b/Adam_1*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_8	RestoreV2save_3/Constsave_3/RestoreV2_8/tensor_names#save_3/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_8AssignConv2D/b/Adam_1save_3/RestoreV2_8*
use_locking(*
T0*
_class
loc:@Conv2D/b*
validate_shape(*
_output_shapes
: 
r
save_3/RestoreV2_9/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_1/W
l
#save_3/RestoreV2_9/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_9	RestoreV2save_3/Constsave_3/RestoreV2_9/tensor_names#save_3/RestoreV2_9/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
�
save_3/RestoreV2_10	RestoreV2save_3/Const save_3/RestoreV2_10/tensor_names$save_3/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_10AssignConv2D_1/W/Adamsave_3/RestoreV2_10*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(
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
�
save_3/RestoreV2_11	RestoreV2save_3/Const save_3/RestoreV2_11/tensor_names$save_3/RestoreV2_11/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_11AssignConv2D_1/W/Adam_1save_3/RestoreV2_11*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(
s
 save_3/RestoreV2_12/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_1/b
m
$save_3/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_12	RestoreV2save_3/Const save_3/RestoreV2_12/tensor_names$save_3/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_12Assign
Conv2D_1/bsave_3/RestoreV2_12*
use_locking(*
T0*
_class
loc:@Conv2D_1/b*
validate_shape(*
_output_shapes
:@
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
�
save_3/RestoreV2_13	RestoreV2save_3/Const save_3/RestoreV2_13/tensor_names$save_3/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_13AssignConv2D_1/b/Adamsave_3/RestoreV2_13*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_1/b*
T0*
use_locking(
z
 save_3/RestoreV2_14/tensor_namesConst*&
valueBBConv2D_1/b/Adam_1*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_14/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_14	RestoreV2save_3/Const save_3/RestoreV2_14/tensor_names$save_3/RestoreV2_14/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_14AssignConv2D_1/b/Adam_1save_3/RestoreV2_14*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
s
 save_3/RestoreV2_15/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_2/W
m
$save_3/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_15	RestoreV2save_3/Const save_3/RestoreV2_15/tensor_names$save_3/RestoreV2_15/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_15Assign
Conv2D_2/Wsave_3/RestoreV2_15*'
_output_shapes
:@�*
validate_shape(*
_class
loc:@Conv2D_2/W*
T0*
use_locking(
x
 save_3/RestoreV2_16/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_2/W/Adam
m
$save_3/RestoreV2_16/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_16	RestoreV2save_3/Const save_3/RestoreV2_16/tensor_names$save_3/RestoreV2_16/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_16AssignConv2D_2/W/Adamsave_3/RestoreV2_16*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�*
T0*
validate_shape(*
use_locking(
z
 save_3/RestoreV2_17/tensor_namesConst*&
valueBBConv2D_2/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_17/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_17	RestoreV2save_3/Const save_3/RestoreV2_17/tensor_names$save_3/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_17AssignConv2D_2/W/Adam_1save_3/RestoreV2_17*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
s
 save_3/RestoreV2_18/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_2/b
m
$save_3/RestoreV2_18/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_18	RestoreV2save_3/Const save_3/RestoreV2_18/tensor_names$save_3/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_18Assign
Conv2D_2/bsave_3/RestoreV2_18*
_output_shapes	
:�*
validate_shape(*
_class
loc:@Conv2D_2/b*
T0*
use_locking(
x
 save_3/RestoreV2_19/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_2/b/Adam
m
$save_3/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_19	RestoreV2save_3/Const save_3/RestoreV2_19/tensor_names$save_3/RestoreV2_19/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_19AssignConv2D_2/b/Adamsave_3/RestoreV2_19*
use_locking(*
T0*
_class
loc:@Conv2D_2/b*
validate_shape(*
_output_shapes	
:�
z
 save_3/RestoreV2_20/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_2/b/Adam_1
m
$save_3/RestoreV2_20/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_20	RestoreV2save_3/Const save_3/RestoreV2_20/tensor_names$save_3/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_20AssignConv2D_2/b/Adam_1save_3/RestoreV2_20*
_output_shapes	
:�*
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
$save_3/RestoreV2_21/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_21	RestoreV2save_3/Const save_3/RestoreV2_21/tensor_names$save_3/RestoreV2_21/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_21Assign
Conv2D_3/Wsave_3/RestoreV2_21*
use_locking(*
T0*
_class
loc:@Conv2D_3/W*
validate_shape(*'
_output_shapes
:�@
x
 save_3/RestoreV2_22/tensor_namesConst*$
valueBBConv2D_3/W/Adam*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_22/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_22	RestoreV2save_3/Const save_3/RestoreV2_22/tensor_names$save_3/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_22AssignConv2D_3/W/Adamsave_3/RestoreV2_22*'
_output_shapes
:�@*
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
�
save_3/RestoreV2_23	RestoreV2save_3/Const save_3/RestoreV2_23/tensor_names$save_3/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_23AssignConv2D_3/W/Adam_1save_3/RestoreV2_23*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
s
 save_3/RestoreV2_24/tensor_namesConst*
valueBB
Conv2D_3/b*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_24/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_24	RestoreV2save_3/Const save_3/RestoreV2_24/tensor_names$save_3/RestoreV2_24/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_24Assign
Conv2D_3/bsave_3/RestoreV2_24*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
x
 save_3/RestoreV2_25/tensor_namesConst*$
valueBBConv2D_3/b/Adam*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_25/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_25	RestoreV2save_3/Const save_3/RestoreV2_25/tensor_names$save_3/RestoreV2_25/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_25AssignConv2D_3/b/Adamsave_3/RestoreV2_25*
use_locking(*
T0*
_class
loc:@Conv2D_3/b*
validate_shape(*
_output_shapes
:@
z
 save_3/RestoreV2_26/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_3/b/Adam_1
m
$save_3/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_26	RestoreV2save_3/Const save_3/RestoreV2_26/tensor_names$save_3/RestoreV2_26/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
�
save_3/RestoreV2_27	RestoreV2save_3/Const save_3/RestoreV2_27/tensor_names$save_3/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_27Assign
Conv2D_4/Wsave_3/RestoreV2_27*&
_output_shapes
:@ *
validate_shape(*
_class
loc:@Conv2D_4/W*
T0*
use_locking(
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
�
save_3/RestoreV2_28	RestoreV2save_3/Const save_3/RestoreV2_28/tensor_names$save_3/RestoreV2_28/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_28AssignConv2D_4/W/Adamsave_3/RestoreV2_28*&
_output_shapes
:@ *
validate_shape(*
_class
loc:@Conv2D_4/W*
T0*
use_locking(
z
 save_3/RestoreV2_29/tensor_namesConst*&
valueBBConv2D_4/W/Adam_1*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_29/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_29	RestoreV2save_3/Const save_3/RestoreV2_29/tensor_names$save_3/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_29AssignConv2D_4/W/Adam_1save_3/RestoreV2_29*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0*
validate_shape(*
use_locking(
s
 save_3/RestoreV2_30/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_4/b
m
$save_3/RestoreV2_30/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_30	RestoreV2save_3/Const save_3/RestoreV2_30/tensor_names$save_3/RestoreV2_30/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_30Assign
Conv2D_4/bsave_3/RestoreV2_30*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
x
 save_3/RestoreV2_31/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_4/b/Adam
m
$save_3/RestoreV2_31/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_31	RestoreV2save_3/Const save_3/RestoreV2_31/tensor_names$save_3/RestoreV2_31/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_31AssignConv2D_4/b/Adamsave_3/RestoreV2_31*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
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
�
save_3/RestoreV2_32	RestoreV2save_3/Const save_3/RestoreV2_32/tensor_names$save_3/RestoreV2_32/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_32AssignConv2D_4/b/Adam_1save_3/RestoreV2_32*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
�
 save_3/RestoreV2_33/tensor_namesConst*1
value(B&BCrossentropy/Mean/moving_avg*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_33/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_33	RestoreV2save_3/Const save_3/RestoreV2_33/tensor_names$save_3/RestoreV2_33/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_33AssignCrossentropy/Mean/moving_avgsave_3/RestoreV2_33*
_output_shapes
: *
validate_shape(*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
T0*
use_locking(
y
 save_3/RestoreV2_34/tensor_namesConst*%
valueBBFullyConnected/W*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_34/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_34	RestoreV2save_3/Const save_3/RestoreV2_34/tensor_names$save_3/RestoreV2_34/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_34AssignFullyConnected/Wsave_3/RestoreV2_34*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
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
�
save_3/RestoreV2_35	RestoreV2save_3/Const save_3/RestoreV2_35/tensor_names$save_3/RestoreV2_35/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_35AssignFullyConnected/W/Adamsave_3/RestoreV2_35*
_output_shapes
:	 �*
validate_shape(*#
_class
loc:@FullyConnected/W*
T0*
use_locking(
�
 save_3/RestoreV2_36/tensor_namesConst*,
value#B!BFullyConnected/W/Adam_1*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_36/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_36	RestoreV2save_3/Const save_3/RestoreV2_36/tensor_names$save_3/RestoreV2_36/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_36AssignFullyConnected/W/Adam_1save_3/RestoreV2_36*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
y
 save_3/RestoreV2_37/tensor_namesConst*
dtype0*
_output_shapes
:*%
valueBBFullyConnected/b
m
$save_3/RestoreV2_37/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_37	RestoreV2save_3/Const save_3/RestoreV2_37/tensor_names$save_3/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_37AssignFullyConnected/bsave_3/RestoreV2_37*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:�
~
 save_3/RestoreV2_38/tensor_namesConst**
value!BBFullyConnected/b/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_38/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_38	RestoreV2save_3/Const save_3/RestoreV2_38/tensor_names$save_3/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_38AssignFullyConnected/b/Adamsave_3/RestoreV2_38*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�*
T0*
validate_shape(*
use_locking(
�
 save_3/RestoreV2_39/tensor_namesConst*
dtype0*
_output_shapes
:*,
value#B!BFullyConnected/b/Adam_1
m
$save_3/RestoreV2_39/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_39	RestoreV2save_3/Const save_3/RestoreV2_39/tensor_names$save_3/RestoreV2_39/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_39AssignFullyConnected/b/Adam_1save_3/RestoreV2_39*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:�
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
�
save_3/RestoreV2_40	RestoreV2save_3/Const save_3/RestoreV2_40/tensor_names$save_3/RestoreV2_40/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_40AssignFullyConnected_1/Wsave_3/RestoreV2_40*
_output_shapes
:	�*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
�
 save_3/RestoreV2_41/tensor_namesConst*
dtype0*
_output_shapes
:*,
value#B!BFullyConnected_1/W/Adam
m
$save_3/RestoreV2_41/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_41	RestoreV2save_3/Const save_3/RestoreV2_41/tensor_names$save_3/RestoreV2_41/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_41AssignFullyConnected_1/W/Adamsave_3/RestoreV2_41*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0*
validate_shape(*
use_locking(
�
 save_3/RestoreV2_42/tensor_namesConst*
dtype0*
_output_shapes
:*.
value%B#BFullyConnected_1/W/Adam_1
m
$save_3/RestoreV2_42/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_42	RestoreV2save_3/Const save_3/RestoreV2_42/tensor_names$save_3/RestoreV2_42/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_42AssignFullyConnected_1/W/Adam_1save_3/RestoreV2_42*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	�
{
 save_3/RestoreV2_43/tensor_namesConst*
dtype0*
_output_shapes
:*'
valueBBFullyConnected_1/b
m
$save_3/RestoreV2_43/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_43	RestoreV2save_3/Const save_3/RestoreV2_43/tensor_names$save_3/RestoreV2_43/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_43AssignFullyConnected_1/bsave_3/RestoreV2_43*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
�
 save_3/RestoreV2_44/tensor_namesConst*,
value#B!BFullyConnected_1/b/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_44/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_44	RestoreV2save_3/Const save_3/RestoreV2_44/tensor_names$save_3/RestoreV2_44/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_44AssignFullyConnected_1/b/Adamsave_3/RestoreV2_44*
_output_shapes
:*
validate_shape(*%
_class
loc:@FullyConnected_1/b*
T0*
use_locking(
�
 save_3/RestoreV2_45/tensor_namesConst*.
value%B#BFullyConnected_1/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_45/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_45	RestoreV2save_3/Const save_3/RestoreV2_45/tensor_names$save_3/RestoreV2_45/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_45AssignFullyConnected_1/b/Adam_1save_3/RestoreV2_45*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
t
 save_3/RestoreV2_46/tensor_namesConst*
_output_shapes
:*
dtype0* 
valueBBGlobal_Step
m
$save_3/RestoreV2_46/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_46	RestoreV2save_3/Const save_3/RestoreV2_46/tensor_names$save_3/RestoreV2_46/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_46AssignGlobal_Stepsave_3/RestoreV2_46*
_output_shapes
: *
validate_shape(*
_class
loc:@Global_Step*
T0*
use_locking(
v
 save_3/RestoreV2_47/tensor_namesConst*"
valueBBTraining_step*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_47/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_47	RestoreV2save_3/Const save_3/RestoreV2_47/tensor_names$save_3/RestoreV2_47/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_47AssignTraining_stepsave_3/RestoreV2_47*
use_locking(*
T0* 
_class
loc:@Training_step*
validate_shape(*
_output_shapes
: 
t
 save_3/RestoreV2_48/tensor_namesConst*
_output_shapes
:*
dtype0* 
valueBBis_training
m
$save_3/RestoreV2_48/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_48	RestoreV2save_3/Const save_3/RestoreV2_48/tensor_names$save_3/RestoreV2_48/shape_and_slices*
_output_shapes
:*
dtypes
2

�
save_3/Assign_48Assignis_trainingsave_3/RestoreV2_48*
use_locking(*
T0
*
_class
loc:@is_training*
validate_shape(*
_output_shapes
: 
p
 save_3/RestoreV2_49/tensor_namesConst*
valueBBval_acc*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_49/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_49	RestoreV2save_3/Const save_3/RestoreV2_49/tensor_names$save_3/RestoreV2_49/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_49Assignval_accsave_3/RestoreV2_49*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@val_acc
q
 save_3/RestoreV2_50/tensor_namesConst*
valueBBval_loss*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_50/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_50	RestoreV2save_3/Const save_3/RestoreV2_50/tensor_names$save_3/RestoreV2_50/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_50Assignval_losssave_3/RestoreV2_50*
_class
loc:@val_loss*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
�
save_3/restore_allNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_2^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26^save_3/Assign_27^save_3/Assign_28^save_3/Assign_29^save_3/Assign_30^save_3/Assign_31^save_3/Assign_32^save_3/Assign_33^save_3/Assign_34^save_3/Assign_35^save_3/Assign_36^save_3/Assign_37^save_3/Assign_38^save_3/Assign_39^save_3/Assign_40^save_3/Assign_41^save_3/Assign_42^save_3/Assign_43^save_3/Assign_44^save_3/Assign_45^save_3/Assign_46^save_3/Assign_47^save_3/Assign_48^save_3/Assign_49^save_3/Assign_50" ���:�     ���.	���uq9�AJ��
�-�,
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
2	��
�
	ApplyAdam
var"T�	
m"T�	
v"T�
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T�"
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
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
p
	AssignAdd
ref"T�

value"T

output_ref"T�"
Ttype:
2	"
use_lockingbool( 
p
	AssignSub
ref"T�

value"T

output_ref"T�"
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
�
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
�
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
�
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
�
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
�
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
�
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
2	�
�
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
2	�
<
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
�
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
2	�
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
�
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
2	�
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �*1.0.12v1.0.0-65-g4763edf-dirty��
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
�
is_training
VariableV2*
_output_shapes
: *
dtype0
*
shape: *
	container *
_class
loc:@is_training*
shared_name 
�
is_training/AssignAssignis_trainingis_training/Initializer/Const*
use_locking(*
validate_shape(*
T0
*
_output_shapes
: *
_class
loc:@is_training
j
is_training/readIdentityis_training*
_output_shapes
: *
_class
loc:@is_training*
T0

N
Assign/valueConst*
_output_shapes
: *
dtype0
*
value	B
 Z
�
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
 Z *
_output_shapes
: *
dtype0

�
Assign_1Assignis_trainingAssign_1/value*
use_locking(*
validate_shape(*
T0
*
_output_shapes
: *
_class
loc:@is_training
b
input/XPlaceholder*
dtype0*
shape: *0
_output_shapes
:����������0
�
)Conv2D/W/Initializer/random_uniform/shapeConst*
_class
loc:@Conv2D/W*%
valueB"             *
_output_shapes
:*
dtype0
�
'Conv2D/W/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
_class
loc:@Conv2D/W*
valueB
 *�\��
�
'Conv2D/W/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
_class
loc:@Conv2D/W*
valueB
 *�\�>
�
1Conv2D/W/Initializer/random_uniform/RandomUniformRandomUniform)Conv2D/W/Initializer/random_uniform/shape*&
_output_shapes
: *
_class
loc:@Conv2D/W*
dtype0*

seed *
T0*
seed2 
�
'Conv2D/W/Initializer/random_uniform/subSub'Conv2D/W/Initializer/random_uniform/max'Conv2D/W/Initializer/random_uniform/min*
T0*
_class
loc:@Conv2D/W*
_output_shapes
: 
�
'Conv2D/W/Initializer/random_uniform/mulMul1Conv2D/W/Initializer/random_uniform/RandomUniform'Conv2D/W/Initializer/random_uniform/sub*
T0*
_class
loc:@Conv2D/W*&
_output_shapes
: 
�
#Conv2D/W/Initializer/random_uniformAdd'Conv2D/W/Initializer/random_uniform/mul'Conv2D/W/Initializer/random_uniform/min*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
�
Conv2D/W
VariableV2*
shared_name *
_class
loc:@Conv2D/W*
	container *
shape: *
dtype0*&
_output_shapes
: 
�
Conv2D/W/AssignAssignConv2D/W#Conv2D/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*&
_output_shapes
: 
q
Conv2D/W/readIdentityConv2D/W*&
_output_shapes
: *
_class
loc:@Conv2D/W*
T0
�
Conv2D/b/Initializer/ConstConst*
_class
loc:@Conv2D/b*
valueB *    *
_output_shapes
: *
dtype0
�
Conv2D/b
VariableV2*
_class
loc:@Conv2D/b*
_output_shapes
: *
shape: *
dtype0*
shared_name *
	container 
�
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
T0*
_class
loc:@Conv2D/b*
_output_shapes
: 
�
Conv2D/Conv2DConv2Dinput/XConv2D/W/read*
use_cudnn_on_gpu(*
T0*
paddingSAME*0
_output_shapes
:����������0 *
strides
*
data_formatNHWC
�
Conv2D/BiasAddBiasAddConv2D/Conv2DConv2D/b/read*0
_output_shapes
:����������0 *
T0*
data_formatNHWC
^
Conv2D/ReluReluConv2D/BiasAdd*0
_output_shapes
:����������0 *
T0
�
MaxPool2D/MaxPoolMaxPoolConv2D/Relu*
paddingSAME*
strides
*
data_formatNHWC*
T0*/
_output_shapes
:���������7
 *
ksize

�
+Conv2D_1/W/Initializer/random_uniform/shapeConst*
_class
loc:@Conv2D_1/W*%
valueB"          @   *
dtype0*
_output_shapes
:
�
)Conv2D_1/W/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D_1/W*
valueB
 *��z�
�
)Conv2D_1/W/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
_class
loc:@Conv2D_1/W*
valueB
 *��z=
�
3Conv2D_1/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_1/W/Initializer/random_uniform/shape*
T0*&
_output_shapes
: @*

seed *
_class
loc:@Conv2D_1/W*
dtype0*
seed2 
�
)Conv2D_1/W/Initializer/random_uniform/subSub)Conv2D_1/W/Initializer/random_uniform/max)Conv2D_1/W/Initializer/random_uniform/min*
T0*
_output_shapes
: *
_class
loc:@Conv2D_1/W
�
)Conv2D_1/W/Initializer/random_uniform/mulMul3Conv2D_1/W/Initializer/random_uniform/RandomUniform)Conv2D_1/W/Initializer/random_uniform/sub*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W*
T0
�
%Conv2D_1/W/Initializer/random_uniformAdd)Conv2D_1/W/Initializer/random_uniform/mul)Conv2D_1/W/Initializer/random_uniform/min*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W*
T0
�

Conv2D_1/W
VariableV2*
shape: @*&
_output_shapes
: @*
shared_name *
_class
loc:@Conv2D_1/W*
dtype0*
	container 
�
Conv2D_1/W/AssignAssign
Conv2D_1/W%Conv2D_1/W/Initializer/random_uniform*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(
w
Conv2D_1/W/readIdentity
Conv2D_1/W*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W*
T0
�
Conv2D_1/b/Initializer/ConstConst*
_class
loc:@Conv2D_1/b*
valueB@*    *
dtype0*
_output_shapes
:@
�

Conv2D_1/b
VariableV2*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
shape:@*
dtype0*
shared_name *
	container 
�
Conv2D_1/b/AssignAssign
Conv2D_1/bConv2D_1/b/Initializer/Const*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
k
Conv2D_1/b/readIdentity
Conv2D_1/b*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
�
Conv2D_1/Conv2DConv2DMaxPool2D/MaxPoolConv2D_1/W/read*
paddingSAME*
T0*
strides
*
data_formatNHWC*/
_output_shapes
:���������7
@*
use_cudnn_on_gpu(
�
Conv2D_1/BiasAddBiasAddConv2D_1/Conv2DConv2D_1/b/read*/
_output_shapes
:���������7
@*
data_formatNHWC*
T0
a
Conv2D_1/ReluReluConv2D_1/BiasAdd*
T0*/
_output_shapes
:���������7
@
�
MaxPool2D_1/MaxPoolMaxPoolConv2D_1/Relu*
strides
*
data_formatNHWC*/
_output_shapes
:���������@*
paddingSAME*
T0*
ksize

�
+Conv2D_2/W/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
_class
loc:@Conv2D_2/W*%
valueB"      @   �   
�
)Conv2D_2/W/Initializer/random_uniform/minConst*
_class
loc:@Conv2D_2/W*
valueB
 *�\1�*
dtype0*
_output_shapes
: 
�
)Conv2D_2/W/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
_class
loc:@Conv2D_2/W*
valueB
 *�\1=
�
3Conv2D_2/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_2/W/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
�
)Conv2D_2/W/Initializer/random_uniform/subSub)Conv2D_2/W/Initializer/random_uniform/max)Conv2D_2/W/Initializer/random_uniform/min*
T0*
_class
loc:@Conv2D_2/W*
_output_shapes
: 
�
)Conv2D_2/W/Initializer/random_uniform/mulMul3Conv2D_2/W/Initializer/random_uniform/RandomUniform)Conv2D_2/W/Initializer/random_uniform/sub*
T0*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�
�
%Conv2D_2/W/Initializer/random_uniformAdd)Conv2D_2/W/Initializer/random_uniform/mul)Conv2D_2/W/Initializer/random_uniform/min*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�*
T0
�

Conv2D_2/W
VariableV2*
shared_name *
shape:@�*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W*
dtype0*
	container 
�
Conv2D_2/W/AssignAssign
Conv2D_2/W%Conv2D_2/W/Initializer/random_uniform*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�*
T0*
validate_shape(*
use_locking(
x
Conv2D_2/W/readIdentity
Conv2D_2/W*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�*
T0
�
Conv2D_2/b/Initializer/ConstConst*
_class
loc:@Conv2D_2/b*
valueB�*    *
_output_shapes	
:�*
dtype0
�

Conv2D_2/b
VariableV2*
	container *
shared_name *
dtype0*
shape:�*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b
�
Conv2D_2/b/AssignAssign
Conv2D_2/bConv2D_2/b/Initializer/Const*
_output_shapes	
:�*
validate_shape(*
_class
loc:@Conv2D_2/b*
T0*
use_locking(
l
Conv2D_2/b/readIdentity
Conv2D_2/b*
T0*
_class
loc:@Conv2D_2/b*
_output_shapes	
:�
�
Conv2D_2/Conv2DConv2DMaxPool2D_1/MaxPoolConv2D_2/W/read*
paddingSAME*
T0*
strides
*
data_formatNHWC*0
_output_shapes
:����������*
use_cudnn_on_gpu(
�
Conv2D_2/BiasAddBiasAddConv2D_2/Conv2DConv2D_2/b/read*
data_formatNHWC*
T0*0
_output_shapes
:����������
b
Conv2D_2/ReluReluConv2D_2/BiasAdd*
T0*0
_output_shapes
:����������
�
MaxPool2D_2/MaxPoolMaxPoolConv2D_2/Relu*
ksize
*
T0*
paddingSAME*0
_output_shapes
:����������*
strides
*
data_formatNHWC
�
+Conv2D_3/W/Initializer/random_uniform/shapeConst*
_class
loc:@Conv2D_3/W*%
valueB"      �   @   *
dtype0*
_output_shapes
:
�
)Conv2D_3/W/Initializer/random_uniform/minConst*
_class
loc:@Conv2D_3/W*
valueB
 *����*
dtype0*
_output_shapes
: 
�
)Conv2D_3/W/Initializer/random_uniform/maxConst*
_class
loc:@Conv2D_3/W*
valueB
 *���<*
_output_shapes
: *
dtype0
�
3Conv2D_3/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_3/W/Initializer/random_uniform/shape*
seed2 *
dtype0*
_class
loc:@Conv2D_3/W*

seed *'
_output_shapes
:�@*
T0
�
)Conv2D_3/W/Initializer/random_uniform/subSub)Conv2D_3/W/Initializer/random_uniform/max)Conv2D_3/W/Initializer/random_uniform/min*
_output_shapes
: *
_class
loc:@Conv2D_3/W*
T0
�
)Conv2D_3/W/Initializer/random_uniform/mulMul3Conv2D_3/W/Initializer/random_uniform/RandomUniform)Conv2D_3/W/Initializer/random_uniform/sub*
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
�
%Conv2D_3/W/Initializer/random_uniformAdd)Conv2D_3/W/Initializer/random_uniform/mul)Conv2D_3/W/Initializer/random_uniform/min*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W*
T0
�

Conv2D_3/W
VariableV2*
shared_name *
shape:�@*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W*
dtype0*
	container 
�
Conv2D_3/W/AssignAssign
Conv2D_3/W%Conv2D_3/W/Initializer/random_uniform*'
_output_shapes
:�@*
validate_shape(*
_class
loc:@Conv2D_3/W*
T0*
use_locking(
x
Conv2D_3/W/readIdentity
Conv2D_3/W*
T0*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@
�
Conv2D_3/b/Initializer/ConstConst*
_class
loc:@Conv2D_3/b*
valueB@*    *
dtype0*
_output_shapes
:@
�

Conv2D_3/b
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
shape:@*
shared_name 
�
Conv2D_3/b/AssignAssign
Conv2D_3/bConv2D_3/b/Initializer/Const*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_3/b*
T0*
use_locking(
k
Conv2D_3/b/readIdentity
Conv2D_3/b*
T0*
_class
loc:@Conv2D_3/b*
_output_shapes
:@
�
Conv2D_3/Conv2DConv2DMaxPool2D_2/MaxPoolConv2D_3/W/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������@
�
Conv2D_3/BiasAddBiasAddConv2D_3/Conv2DConv2D_3/b/read*
T0*
data_formatNHWC*/
_output_shapes
:���������@
a
Conv2D_3/ReluReluConv2D_3/BiasAdd*
T0*/
_output_shapes
:���������@
�
MaxPool2D_3/MaxPoolMaxPoolConv2D_3/Relu*/
_output_shapes
:���������@*
paddingSAME*
ksize
*
strides
*
data_formatNHWC*
T0
�
+Conv2D_4/W/Initializer/random_uniform/shapeConst*
_class
loc:@Conv2D_4/W*%
valueB"      @       *
_output_shapes
:*
dtype0
�
)Conv2D_4/W/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D_4/W*
valueB
 *�\1�
�
)Conv2D_4/W/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D_4/W*
valueB
 *�\1=
�
3Conv2D_4/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_4/W/Initializer/random_uniform/shape*
seed2 *
T0*

seed *
dtype0*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ 
�
)Conv2D_4/W/Initializer/random_uniform/subSub)Conv2D_4/W/Initializer/random_uniform/max)Conv2D_4/W/Initializer/random_uniform/min*
_class
loc:@Conv2D_4/W*
_output_shapes
: *
T0
�
)Conv2D_4/W/Initializer/random_uniform/mulMul3Conv2D_4/W/Initializer/random_uniform/RandomUniform)Conv2D_4/W/Initializer/random_uniform/sub*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0
�
%Conv2D_4/W/Initializer/random_uniformAdd)Conv2D_4/W/Initializer/random_uniform/mul)Conv2D_4/W/Initializer/random_uniform/min*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0
�

Conv2D_4/W
VariableV2*
	container *
shared_name *
dtype0*
shape:@ *&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
�
Conv2D_4/W/AssignAssign
Conv2D_4/W%Conv2D_4/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@Conv2D_4/W*
validate_shape(*&
_output_shapes
:@ 
w
Conv2D_4/W/readIdentity
Conv2D_4/W*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W*
T0
�
Conv2D_4/b/Initializer/ConstConst*
_class
loc:@Conv2D_4/b*
valueB *    *
dtype0*
_output_shapes
: 
�

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
�
Conv2D_4/b/AssignAssign
Conv2D_4/bConv2D_4/b/Initializer/Const*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D_4/b*
T0*
use_locking(
k
Conv2D_4/b/readIdentity
Conv2D_4/b*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
�
Conv2D_4/Conv2DConv2DMaxPool2D_3/MaxPoolConv2D_4/W/read*
use_cudnn_on_gpu(*/
_output_shapes
:��������� *
strides
*
data_formatNHWC*
T0*
paddingSAME
�
Conv2D_4/BiasAddBiasAddConv2D_4/Conv2DConv2D_4/b/read*
T0*
data_formatNHWC*/
_output_shapes
:��������� 
a
Conv2D_4/ReluReluConv2D_4/BiasAdd*
T0*/
_output_shapes
:��������� 
�
MaxPool2D_4/MaxPoolMaxPoolConv2D_4/Relu*
ksize
*/
_output_shapes
:��������� *
T0*
strides
*
data_formatNHWC*
paddingSAME
�
3FullyConnected/W/Initializer/truncated_normal/shapeConst*#
_class
loc:@FullyConnected/W*
valueB"       *
_output_shapes
:*
dtype0
�
2FullyConnected/W/Initializer/truncated_normal/meanConst*#
_class
loc:@FullyConnected/W*
valueB
 *    *
_output_shapes
: *
dtype0
�
4FullyConnected/W/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*#
_class
loc:@FullyConnected/W*
valueB
 *
ף<
�
=FullyConnected/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3FullyConnected/W/Initializer/truncated_normal/shape*
_output_shapes
:	 �*
dtype0*
seed2 *#
_class
loc:@FullyConnected/W*
T0*

seed 
�
1FullyConnected/W/Initializer/truncated_normal/mulMul=FullyConnected/W/Initializer/truncated_normal/TruncatedNormal4FullyConnected/W/Initializer/truncated_normal/stddev*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �
�
-FullyConnected/W/Initializer/truncated_normalAdd1FullyConnected/W/Initializer/truncated_normal/mul2FullyConnected/W/Initializer/truncated_normal/mean*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
T0
�
FullyConnected/W
VariableV2*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
shape:	 �*
dtype0*
shared_name *
	container 
�
FullyConnected/W/AssignAssignFullyConnected/W-FullyConnected/W/Initializer/truncated_normal*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
�
FullyConnected/W/readIdentityFullyConnected/W*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W*
T0
�
"FullyConnected/b/Initializer/ConstConst*#
_class
loc:@FullyConnected/b*
valueB�*    *
_output_shapes	
:�*
dtype0
�
FullyConnected/b
VariableV2*
	container *
dtype0*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�*
shape:�*
shared_name 
�
FullyConnected/b/AssignAssignFullyConnected/b"FullyConnected/b/Initializer/Const*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:�
~
FullyConnected/b/readIdentityFullyConnected/b*
T0*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b
m
FullyConnected/Reshape/shapeConst*
valueB"����    *
dtype0*
_output_shapes
:
�
FullyConnected/ReshapeReshapeMaxPool2D_4/MaxPoolFullyConnected/Reshape/shape*
Tshape0*'
_output_shapes
:��������� *
T0
�
FullyConnected/MatMulMatMulFullyConnected/ReshapeFullyConnected/W/read*
transpose_b( *
T0*(
_output_shapes
:����������*
transpose_a( 
�
FullyConnected/BiasAddBiasAddFullyConnected/MatMulFullyConnected/b/read*
data_formatNHWC*
T0*(
_output_shapes
:����������
f
FullyConnected/ReluReluFullyConnected/BiasAdd*(
_output_shapes
:����������*
T0
_
Dropout/cond/SwitchSwitchis_trainingis_training/read*
T0
*
_output_shapes
: : 
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
 *��L?*
_output_shapes
: *
dtype0
�
!Dropout/cond/dropout/Shape/SwitchSwitchFullyConnected/ReluDropout/cond/pred_id*&
_class
loc:@FullyConnected/Relu*<
_output_shapes*
(:����������:����������*
T0
}
Dropout/cond/dropout/ShapeShape#Dropout/cond/dropout/Shape/Switch:1*
_output_shapes
:*
out_type0*
T0
�
'Dropout/cond/dropout/random_uniform/minConst^Dropout/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
'Dropout/cond/dropout/random_uniform/maxConst^Dropout/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
1Dropout/cond/dropout/random_uniform/RandomUniformRandomUniformDropout/cond/dropout/Shape*(
_output_shapes
:����������*
seed2 *
T0*

seed *
dtype0
�
'Dropout/cond/dropout/random_uniform/subSub'Dropout/cond/dropout/random_uniform/max'Dropout/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
�
'Dropout/cond/dropout/random_uniform/mulMul1Dropout/cond/dropout/random_uniform/RandomUniform'Dropout/cond/dropout/random_uniform/sub*(
_output_shapes
:����������*
T0
�
#Dropout/cond/dropout/random_uniformAdd'Dropout/cond/dropout/random_uniform/mul'Dropout/cond/dropout/random_uniform/min*(
_output_shapes
:����������*
T0
�
Dropout/cond/dropout/addAddDropout/cond/dropout/keep_prob#Dropout/cond/dropout/random_uniform*
T0*(
_output_shapes
:����������
p
Dropout/cond/dropout/FloorFloorDropout/cond/dropout/add*(
_output_shapes
:����������*
T0
�
Dropout/cond/dropout/divRealDiv#Dropout/cond/dropout/Shape/Switch:1Dropout/cond/dropout/keep_prob*(
_output_shapes
:����������*
T0
�
Dropout/cond/dropout/mulMulDropout/cond/dropout/divDropout/cond/dropout/Floor*(
_output_shapes
:����������*
T0
�
Dropout/cond/Switch_1SwitchFullyConnected/ReluDropout/cond/pred_id*
T0*<
_output_shapes*
(:����������:����������*&
_class
loc:@FullyConnected/Relu
�
Dropout/cond/MergeMergeDropout/cond/Switch_1Dropout/cond/dropout/mul**
_output_shapes
:����������: *
N*
T0
�
5FullyConnected_1/W/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*%
_class
loc:@FullyConnected_1/W*
valueB"      
�
4FullyConnected_1/W/Initializer/truncated_normal/meanConst*%
_class
loc:@FullyConnected_1/W*
valueB
 *    *
_output_shapes
: *
dtype0
�
6FullyConnected_1/W/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *%
_class
loc:@FullyConnected_1/W*
valueB
 *
ף<
�
?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5FullyConnected_1/W/Initializer/truncated_normal/shape*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W*
dtype0*

seed *
T0*
seed2 
�
3FullyConnected_1/W/Initializer/truncated_normal/mulMul?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormal6FullyConnected_1/W/Initializer/truncated_normal/stddev*
T0*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W
�
/FullyConnected_1/W/Initializer/truncated_normalAdd3FullyConnected_1/W/Initializer/truncated_normal/mul4FullyConnected_1/W/Initializer/truncated_normal/mean*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�
�
FullyConnected_1/W
VariableV2*
shape:	�*
_output_shapes
:	�*
shared_name *%
_class
loc:@FullyConnected_1/W*
dtype0*
	container 
�
FullyConnected_1/W/AssignAssignFullyConnected_1/W/FullyConnected_1/W/Initializer/truncated_normal*
_output_shapes
:	�*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
�
FullyConnected_1/W/readIdentityFullyConnected_1/W*
T0*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W
�
$FullyConnected_1/b/Initializer/ConstConst*
_output_shapes
:*
dtype0*%
_class
loc:@FullyConnected_1/b*
valueB*    
�
FullyConnected_1/b
VariableV2*
	container *
dtype0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
shape:*
shared_name 
�
FullyConnected_1/b/AssignAssignFullyConnected_1/b$FullyConnected_1/b/Initializer/Const*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
FullyConnected_1/b/readIdentityFullyConnected_1/b*
T0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
FullyConnected_1/MatMulMatMulDropout/cond/MergeFullyConnected_1/W/read*
transpose_b( *'
_output_shapes
:���������*
transpose_a( *
T0
�
FullyConnected_1/BiasAddBiasAddFullyConnected_1/MatMulFullyConnected_1/b/read*
data_formatNHWC*
T0*'
_output_shapes
:���������
o
FullyConnected_1/SoftmaxSoftmaxFullyConnected_1/BiasAdd*
T0*'
_output_shapes
:���������
[
	targets/YPlaceholder*
dtype0*
shape: *'
_output_shapes
:���������
[
Accuracy/ArgMax/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
�
Accuracy/ArgMaxArgMaxFullyConnected_1/SoftmaxAccuracy/ArgMax/dimension*#
_output_shapes
:���������*
T0*

Tidx0
]
Accuracy/ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
}
Accuracy/ArgMax_1ArgMax	targets/YAccuracy/ArgMax_1/dimension*#
_output_shapes
:���������*
T0*

Tidx0
i
Accuracy/EqualEqualAccuracy/ArgMaxAccuracy/ArgMax_1*#
_output_shapes
:���������*
T0	
b
Accuracy/CastCastAccuracy/Equal*#
_output_shapes
:���������*

DstT0*

SrcT0

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
value	B :*
_output_shapes
: *
dtype0
�
Crossentropy/SumSumFullyConnected_1/Softmax"Crossentropy/Sum/reduction_indices*'
_output_shapes
:���������*
T0*
	keep_dims(*

Tidx0
}
Crossentropy/truedivRealDivFullyConnected_1/SoftmaxCrossentropy/Sum*
T0*'
_output_shapes
:���������
X
Crossentropy/Cast/xConst*
dtype0*
_output_shapes
: *
valueB
 *���.
Z
Crossentropy/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
"Crossentropy/clip_by_value/MinimumMinimumCrossentropy/truedivCrossentropy/Cast_1/x*
T0*'
_output_shapes
:���������
�
Crossentropy/clip_by_valueMaximum"Crossentropy/clip_by_value/MinimumCrossentropy/Cast/x*
T0*'
_output_shapes
:���������
e
Crossentropy/LogLogCrossentropy/clip_by_value*'
_output_shapes
:���������*
T0
f
Crossentropy/mulMul	targets/YCrossentropy/Log*'
_output_shapes
:���������*
T0
f
$Crossentropy/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
�
Crossentropy/Sum_1SumCrossentropy/mul$Crossentropy/Sum_1/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:���������
Y
Crossentropy/NegNegCrossentropy/Sum_1*#
_output_shapes
:���������*
T0
\
Crossentropy/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
}
Crossentropy/MeanMeanCrossentropy/NegCrossentropy/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
`
Training_step/initial_valueConst*
dtype0*
_output_shapes
: *
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
�
Training_step/AssignAssignTraining_stepTraining_step/initial_value* 
_class
loc:@Training_step*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
p
Training_step/readIdentityTraining_step*
T0*
_output_shapes
: * 
_class
loc:@Training_step
^
Global_Step/initial_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
o
Global_Step
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 
�
Global_Step/AssignAssignGlobal_StepGlobal_Step/initial_value*
_output_shapes
: *
validate_shape(*
_class
loc:@Global_Step*
T0*
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
 *  �?
D
AddAddGlobal_Step/readAdd/y*
_output_shapes
: *
T0
�
Assign_2AssignGlobal_StepAdd*
_output_shapes
: *
validate_shape(*
_class
loc:@Global_Step*
T0*
use_locking(
[
val_loss/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
l
val_loss
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
�
val_loss/AssignAssignval_lossval_loss/initial_value*
use_locking(*
T0*
_class
loc:@val_loss*
validate_shape(*
_output_shapes
: 
a
val_loss/readIdentityval_loss*
_output_shapes
: *
_class
loc:@val_loss*
T0
Z
val_acc/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
k
val_acc
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 
�
val_acc/AssignAssignval_accval_acc/initial_value*
use_locking(*
T0*
_class
loc:@val_acc*
validate_shape(*
_output_shapes
: 
^
val_acc/readIdentityval_acc*
_class
loc:@val_acc*
_output_shapes
: *
T0
W
placeholder/val_lossPlaceholder*
_output_shapes
:*
shape: *
dtype0
V
placeholder/val_accPlaceholder*
dtype0*
shape: *
_output_shapes
:
�
assign/val_lossAssignval_lossplaceholder/val_loss*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@val_loss
�
assign/val_accAssignval_accplaceholder/val_acc*
use_locking(*
T0*
_class
loc:@val_acc*
validate_shape(*
_output_shapes
: 
J
zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
|
Accuracy/Mean/moving_avg
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 
�
Accuracy/Mean/moving_avg/AssignAssignAccuracy/Mean/moving_avgzeros*
_output_shapes
: *
validate_shape(*+
_class!
loc:@Accuracy/Mean/moving_avg*
T0*
use_locking(
�
Accuracy/Mean/moving_avg/readIdentityAccuracy/Mean/moving_avg*
T0*
_output_shapes
: *+
_class!
loc:@Accuracy/Mean/moving_avg
U
moving_avg/decayConst*
valueB
 *fff?*
_output_shapes
: *
dtype0
U
moving_avg/add/xConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
\
moving_avg/addAddmoving_avg/add/xTraining_step/read*
_output_shapes
: *
T0
W
moving_avg/add_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *   A
`
moving_avg/add_1Addmoving_avg/add_1/xTraining_step/read*
_output_shapes
: *
T0
`
moving_avg/truedivRealDivmoving_avg/addmoving_avg/add_1*
_output_shapes
: *
T0
d
moving_avg/MinimumMinimummoving_avg/decaymoving_avg/truediv*
_output_shapes
: *
T0
�
 moving_avg/AssignMovingAvg/sub/xConst*
valueB
 *  �?*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: *
dtype0
�
moving_avg/AssignMovingAvg/subSub moving_avg/AssignMovingAvg/sub/xmoving_avg/Minimum*
_output_shapes
: *+
_class!
loc:@Accuracy/Mean/moving_avg*
T0
�
 moving_avg/AssignMovingAvg/sub_1SubAccuracy/Mean/moving_avg/readAccuracy/Mean*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: *
T0
�
moving_avg/AssignMovingAvg/mulMul moving_avg/AssignMovingAvg/sub_1moving_avg/AssignMovingAvg/sub*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
moving_avg/AssignMovingAvg	AssignSubAccuracy/Mean/moving_avgmoving_avg/AssignMovingAvg/mul*
_output_shapes
: *+
_class!
loc:@Accuracy/Mean/moving_avg*
T0*
use_locking( 
/

moving_avgNoOp^moving_avg/AssignMovingAvg
O
Adam/Total_LossIdentityCrossentropy/Mean*
_output_shapes
: *
T0
O

Adam/zerosConst*
valueB
 *    *
_output_shapes
: *
dtype0
�
Crossentropy/Mean/moving_avg
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 
�
#Crossentropy/Mean/moving_avg/AssignAssignCrossentropy/Mean/moving_avg
Adam/zeros*
_output_shapes
: *
validate_shape(*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
T0*
use_locking(
�
!Crossentropy/Mean/moving_avg/readIdentityCrossentropy/Mean/moving_avg*
T0*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg
Z
Adam/moving_avg/decayConst*
valueB
 *fff?*
_output_shapes
: *
dtype0
Z
Adam/moving_avg/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
f
Adam/moving_avg/addAddAdam/moving_avg/add/xTraining_step/read*
T0*
_output_shapes
: 
\
Adam/moving_avg/add_1/xConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
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
�
%Adam/moving_avg/AssignMovingAvg/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?*/
_class%
#!loc:@Crossentropy/Mean/moving_avg
�
#Adam/moving_avg/AssignMovingAvg/subSub%Adam/moving_avg/AssignMovingAvg/sub/xAdam/moving_avg/Minimum*
T0*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg
�
%Adam/moving_avg/AssignMovingAvg/sub_1Sub!Crossentropy/Mean/moving_avg/readCrossentropy/Mean*
T0*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg
�
#Adam/moving_avg/AssignMovingAvg/mulMul%Adam/moving_avg/AssignMovingAvg/sub_1#Adam/moving_avg/AssignMovingAvg/sub*
T0*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg
�
Adam/moving_avg/AssignMovingAvg	AssignSubCrossentropy/Mean/moving_avg#Adam/moving_avg/AssignMovingAvg/mul*
use_locking( *
T0*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg
9
Adam/moving_avgNoOp ^Adam/moving_avg/AssignMovingAvg
N
	Loss/tagsConst*
valueB
 BLoss*
_output_shapes
: *
dtype0
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
 *  �?
h
Adam/gradients/FillFillAdam/gradients/ShapeAdam/gradients/Const*
T0*
_output_shapes
: 
�
3Adam/gradients/Crossentropy/Mean_grad/Reshape/shapeConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*
valueB:
�
-Adam/gradients/Crossentropy/Mean_grad/ReshapeReshapeAdam/gradients/Fill3Adam/gradients/Crossentropy/Mean_grad/Reshape/shape*
T0*
_output_shapes
:*
Tshape0
�
+Adam/gradients/Crossentropy/Mean_grad/ShapeShapeCrossentropy/Neg^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
�
*Adam/gradients/Crossentropy/Mean_grad/TileTile-Adam/gradients/Crossentropy/Mean_grad/Reshape+Adam/gradients/Crossentropy/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
�
-Adam/gradients/Crossentropy/Mean_grad/Shape_1ShapeCrossentropy/Neg^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
�
-Adam/gradients/Crossentropy/Mean_grad/Shape_2Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB 
�
+Adam/gradients/Crossentropy/Mean_grad/ConstConst^Adam/moving_avg^moving_avg*
valueB: *
_output_shapes
:*
dtype0
�
*Adam/gradients/Crossentropy/Mean_grad/ProdProd-Adam/gradients/Crossentropy/Mean_grad/Shape_1+Adam/gradients/Crossentropy/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
-Adam/gradients/Crossentropy/Mean_grad/Const_1Const^Adam/moving_avg^moving_avg*
valueB: *
dtype0*
_output_shapes
:
�
,Adam/gradients/Crossentropy/Mean_grad/Prod_1Prod-Adam/gradients/Crossentropy/Mean_grad/Shape_2-Adam/gradients/Crossentropy/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
/Adam/gradients/Crossentropy/Mean_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
value	B :
�
-Adam/gradients/Crossentropy/Mean_grad/MaximumMaximum,Adam/gradients/Crossentropy/Mean_grad/Prod_1/Adam/gradients/Crossentropy/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/Mean_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Mean_grad/Prod-Adam/gradients/Crossentropy/Mean_grad/Maximum*
_output_shapes
: *
T0
�
*Adam/gradients/Crossentropy/Mean_grad/CastCast.Adam/gradients/Crossentropy/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
-Adam/gradients/Crossentropy/Mean_grad/truedivRealDiv*Adam/gradients/Crossentropy/Mean_grad/Tile*Adam/gradients/Crossentropy/Mean_grad/Cast*
T0*#
_output_shapes
:���������
�
(Adam/gradients/Crossentropy/Neg_grad/NegNeg-Adam/gradients/Crossentropy/Mean_grad/truediv*#
_output_shapes
:���������*
T0
�
,Adam/gradients/Crossentropy/Sum_1_grad/ShapeShapeCrossentropy/mul^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
+Adam/gradients/Crossentropy/Sum_1_grad/SizeConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
value	B :
�
*Adam/gradients/Crossentropy/Sum_1_grad/addAdd$Crossentropy/Sum_1/reduction_indices+Adam/gradients/Crossentropy/Sum_1_grad/Size*
T0*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Sum_1_grad/modFloorMod*Adam/gradients/Crossentropy/Sum_1_grad/add+Adam/gradients/Crossentropy/Sum_1_grad/Size*
T0*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/Sum_1_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
�
2Adam/gradients/Crossentropy/Sum_1_grad/range/startConst^Adam/moving_avg^moving_avg*
value	B : *
_output_shapes
: *
dtype0
�
2Adam/gradients/Crossentropy/Sum_1_grad/range/deltaConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*
_output_shapes
: 
�
,Adam/gradients/Crossentropy/Sum_1_grad/rangeRange2Adam/gradients/Crossentropy/Sum_1_grad/range/start+Adam/gradients/Crossentropy/Sum_1_grad/Size2Adam/gradients/Crossentropy/Sum_1_grad/range/delta*
_output_shapes
:*

Tidx0
�
1Adam/gradients/Crossentropy/Sum_1_grad/Fill/valueConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
value	B :
�
+Adam/gradients/Crossentropy/Sum_1_grad/FillFill.Adam/gradients/Crossentropy/Sum_1_grad/Shape_11Adam/gradients/Crossentropy/Sum_1_grad/Fill/value*
_output_shapes
: *
T0
�
4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitchDynamicStitch,Adam/gradients/Crossentropy/Sum_1_grad/range*Adam/gradients/Crossentropy/Sum_1_grad/mod,Adam/gradients/Crossentropy/Sum_1_grad/Shape+Adam/gradients/Crossentropy/Sum_1_grad/Fill*
T0*
N*#
_output_shapes
:���������
�
0Adam/gradients/Crossentropy/Sum_1_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*
_output_shapes
: 
�
.Adam/gradients/Crossentropy/Sum_1_grad/MaximumMaximum4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitch0Adam/gradients/Crossentropy/Sum_1_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
/Adam/gradients/Crossentropy/Sum_1_grad/floordivFloorDiv,Adam/gradients/Crossentropy/Sum_1_grad/Shape.Adam/gradients/Crossentropy/Sum_1_grad/Maximum*
T0*
_output_shapes
:
�
.Adam/gradients/Crossentropy/Sum_1_grad/ReshapeReshape(Adam/gradients/Crossentropy/Neg_grad/Neg4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
�
+Adam/gradients/Crossentropy/Sum_1_grad/TileTile.Adam/gradients/Crossentropy/Sum_1_grad/Reshape/Adam/gradients/Crossentropy/Sum_1_grad/floordiv*'
_output_shapes
:���������*
T0*

Tmultiples0
�
*Adam/gradients/Crossentropy/mul_grad/ShapeShape	targets/Y^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
,Adam/gradients/Crossentropy/mul_grad/Shape_1ShapeCrossentropy/Log^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
�
:Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgsBroadcastGradientArgs*Adam/gradients/Crossentropy/mul_grad/Shape,Adam/gradients/Crossentropy/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
(Adam/gradients/Crossentropy/mul_grad/mulMul+Adam/gradients/Crossentropy/Sum_1_grad/TileCrossentropy/Log*
T0*'
_output_shapes
:���������
�
(Adam/gradients/Crossentropy/mul_grad/SumSum(Adam/gradients/Crossentropy/mul_grad/mul:Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
,Adam/gradients/Crossentropy/mul_grad/ReshapeReshape(Adam/gradients/Crossentropy/mul_grad/Sum*Adam/gradients/Crossentropy/mul_grad/Shape*
Tshape0*'
_output_shapes
:���������*
T0
�
*Adam/gradients/Crossentropy/mul_grad/mul_1Mul	targets/Y+Adam/gradients/Crossentropy/Sum_1_grad/Tile*
T0*'
_output_shapes
:���������
�
*Adam/gradients/Crossentropy/mul_grad/Sum_1Sum*Adam/gradients/Crossentropy/mul_grad/mul_1<Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
.Adam/gradients/Crossentropy/mul_grad/Reshape_1Reshape*Adam/gradients/Crossentropy/mul_grad/Sum_1,Adam/gradients/Crossentropy/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
/Adam/gradients/Crossentropy/Log_grad/Reciprocal
ReciprocalCrossentropy/clip_by_value^Adam/moving_avg^moving_avg/^Adam/gradients/Crossentropy/mul_grad/Reshape_1*
T0*'
_output_shapes
:���������
�
(Adam/gradients/Crossentropy/Log_grad/mulMul.Adam/gradients/Crossentropy/mul_grad/Reshape_1/Adam/gradients/Crossentropy/Log_grad/Reciprocal*'
_output_shapes
:���������*
T0
�
4Adam/gradients/Crossentropy/clip_by_value_grad/ShapeShape"Crossentropy/clip_by_value/Minimum^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
�
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
�
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2Shape(Adam/gradients/Crossentropy/Log_grad/mul*
_output_shapes
:*
out_type0*
T0
�
:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *    *
_output_shapes
: *
dtype0
�
4Adam/gradients/Crossentropy/clip_by_value_grad/zerosFill6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/Const*'
_output_shapes
:���������*
T0
�
;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqualGreaterEqual"Crossentropy/clip_by_value/MinimumCrossentropy/Cast/x^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:���������
�
DAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs4Adam/gradients/Crossentropy/clip_by_value_grad/Shape6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
5Adam/gradients/Crossentropy/clip_by_value_grad/SelectSelect;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual(Adam/gradients/Crossentropy/Log_grad/mul4Adam/gradients/Crossentropy/clip_by_value_grad/zeros*'
_output_shapes
:���������*
T0
�
9Adam/gradients/Crossentropy/clip_by_value_grad/LogicalNot
LogicalNot;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual*'
_output_shapes
:���������
�
7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1Select9Adam/gradients/Crossentropy/clip_by_value_grad/LogicalNot(Adam/gradients/Crossentropy/Log_grad/mul4Adam/gradients/Crossentropy/clip_by_value_grad/zeros*
T0*'
_output_shapes
:���������
�
2Adam/gradients/Crossentropy/clip_by_value_grad/SumSum5Adam/gradients/Crossentropy/clip_by_value_grad/SelectDAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
6Adam/gradients/Crossentropy/clip_by_value_grad/ReshapeReshape2Adam/gradients/Crossentropy/clip_by_value_grad/Sum4Adam/gradients/Crossentropy/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_1Sum7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1FAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
8Adam/gradients/Crossentropy/clip_by_value_grad/Reshape_1Reshape4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_16Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ShapeShapeCrossentropy/truediv^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB 
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_2Shape6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape*
T0*
out_type0*
_output_shapes
:
�
BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB
 *    
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zerosFill>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_2BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:���������
�
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualCrossentropy/truedivCrossentropy/Cast_1/x^Adam/moving_avg^moving_avg*'
_output_shapes
:���������*
T0
�
LAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
=Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SelectSelect@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:���������*
T0
�
AAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/LogicalNot
LogicalNot@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual*'
_output_shapes
:���������
�
?Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Select_1SelectAAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/LogicalNot6Adam/gradients/Crossentropy/clip_by_value_grad/Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:���������
�
:Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SumSum=Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/SelectLAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ReshapeReshape:Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape*
Tshape0*'
_output_shapes
:���������*
T0
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum_1Sum?Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Select_1NAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum_1>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
�
.Adam/gradients/Crossentropy/truediv_grad/ShapeShapeFullyConnected_1/Softmax^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
�
0Adam/gradients/Crossentropy/truediv_grad/Shape_1ShapeCrossentropy/Sum^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
�
>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs.Adam/gradients/Crossentropy/truediv_grad/Shape0Adam/gradients/Crossentropy/truediv_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
0Adam/gradients/Crossentropy/truediv_grad/RealDivRealDiv>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ReshapeCrossentropy/Sum*
T0*'
_output_shapes
:���������
�
,Adam/gradients/Crossentropy/truediv_grad/SumSum0Adam/gradients/Crossentropy/truediv_grad/RealDiv>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
0Adam/gradients/Crossentropy/truediv_grad/ReshapeReshape,Adam/gradients/Crossentropy/truediv_grad/Sum.Adam/gradients/Crossentropy/truediv_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
,Adam/gradients/Crossentropy/truediv_grad/NegNegFullyConnected_1/Softmax^Adam/moving_avg^moving_avg*'
_output_shapes
:���������*
T0
�
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1RealDiv,Adam/gradients/Crossentropy/truediv_grad/NegCrossentropy/Sum*
T0*'
_output_shapes
:���������
�
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_2RealDiv2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1Crossentropy/Sum*
T0*'
_output_shapes
:���������
�
,Adam/gradients/Crossentropy/truediv_grad/mulMul>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Reshape2Adam/gradients/Crossentropy/truediv_grad/RealDiv_2*'
_output_shapes
:���������*
T0
�
.Adam/gradients/Crossentropy/truediv_grad/Sum_1Sum,Adam/gradients/Crossentropy/truediv_grad/mul@Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
2Adam/gradients/Crossentropy/truediv_grad/Reshape_1Reshape.Adam/gradients/Crossentropy/truediv_grad/Sum_10Adam/gradients/Crossentropy/truediv_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
*Adam/gradients/Crossentropy/Sum_grad/ShapeShapeFullyConnected_1/Softmax^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
�
)Adam/gradients/Crossentropy/Sum_grad/SizeConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
�
(Adam/gradients/Crossentropy/Sum_grad/addAdd"Crossentropy/Sum/reduction_indices)Adam/gradients/Crossentropy/Sum_grad/Size*
_output_shapes
: *
T0
�
(Adam/gradients/Crossentropy/Sum_grad/modFloorMod(Adam/gradients/Crossentropy/Sum_grad/add)Adam/gradients/Crossentropy/Sum_grad/Size*
T0*
_output_shapes
: 
�
,Adam/gradients/Crossentropy/Sum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
�
0Adam/gradients/Crossentropy/Sum_grad/range/startConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
value	B : 
�
0Adam/gradients/Crossentropy/Sum_grad/range/deltaConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*
_output_shapes
: 
�
*Adam/gradients/Crossentropy/Sum_grad/rangeRange0Adam/gradients/Crossentropy/Sum_grad/range/start)Adam/gradients/Crossentropy/Sum_grad/Size0Adam/gradients/Crossentropy/Sum_grad/range/delta*

Tidx0*
_output_shapes
:
�
/Adam/gradients/Crossentropy/Sum_grad/Fill/valueConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
�
)Adam/gradients/Crossentropy/Sum_grad/FillFill,Adam/gradients/Crossentropy/Sum_grad/Shape_1/Adam/gradients/Crossentropy/Sum_grad/Fill/value*
_output_shapes
: *
T0
�
2Adam/gradients/Crossentropy/Sum_grad/DynamicStitchDynamicStitch*Adam/gradients/Crossentropy/Sum_grad/range(Adam/gradients/Crossentropy/Sum_grad/mod*Adam/gradients/Crossentropy/Sum_grad/Shape)Adam/gradients/Crossentropy/Sum_grad/Fill*
T0*
N*#
_output_shapes
:���������
�
.Adam/gradients/Crossentropy/Sum_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*
_output_shapes
: *
dtype0
�
,Adam/gradients/Crossentropy/Sum_grad/MaximumMaximum2Adam/gradients/Crossentropy/Sum_grad/DynamicStitch.Adam/gradients/Crossentropy/Sum_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
-Adam/gradients/Crossentropy/Sum_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Sum_grad/Shape,Adam/gradients/Crossentropy/Sum_grad/Maximum*
T0*
_output_shapes
:
�
,Adam/gradients/Crossentropy/Sum_grad/ReshapeReshape2Adam/gradients/Crossentropy/truediv_grad/Reshape_12Adam/gradients/Crossentropy/Sum_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
�
)Adam/gradients/Crossentropy/Sum_grad/TileTile,Adam/gradients/Crossentropy/Sum_grad/Reshape-Adam/gradients/Crossentropy/Sum_grad/floordiv*'
_output_shapes
:���������*
T0*

Tmultiples0
�
Adam/gradients/AddNAddN0Adam/gradients/Crossentropy/truediv_grad/Reshape)Adam/gradients/Crossentropy/Sum_grad/Tile*
T0*C
_class9
75loc:@Adam/gradients/Crossentropy/truediv_grad/Reshape*
N*'
_output_shapes
:���������
�
0Adam/gradients/FullyConnected_1/Softmax_grad/mulMulAdam/gradients/AddNFullyConnected_1/Softmax*
T0*'
_output_shapes
:���������
�
BAdam/gradients/FullyConnected_1/Softmax_grad/Sum/reduction_indicesConst^Adam/moving_avg^moving_avg*
valueB:*
_output_shapes
:*
dtype0
�
0Adam/gradients/FullyConnected_1/Softmax_grad/SumSum0Adam/gradients/FullyConnected_1/Softmax_grad/mulBAdam/gradients/FullyConnected_1/Softmax_grad/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:���������
�
:Adam/gradients/FullyConnected_1/Softmax_grad/Reshape/shapeConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*
valueB"����   
�
4Adam/gradients/FullyConnected_1/Softmax_grad/ReshapeReshape0Adam/gradients/FullyConnected_1/Softmax_grad/Sum:Adam/gradients/FullyConnected_1/Softmax_grad/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:���������
�
0Adam/gradients/FullyConnected_1/Softmax_grad/subSubAdam/gradients/AddN4Adam/gradients/FullyConnected_1/Softmax_grad/Reshape*
T0*'
_output_shapes
:���������
�
2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1Mul0Adam/gradients/FullyConnected_1/Softmax_grad/subFullyConnected_1/Softmax*
T0*'
_output_shapes
:���������
�
8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1*
data_formatNHWC*
T0*
_output_shapes
:
�
2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulMatMul2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1FullyConnected_1/W/read*
transpose_b(*
T0*(
_output_shapes
:����������*
transpose_a( 
�
4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1MatMulDropout/cond/Merge2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1*
transpose_b( *
T0*
_output_shapes
:	�*
transpose_a(
�
0Adam/gradients/Dropout/cond/Merge_grad/cond_gradSwitch2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulDropout/cond/pred_id*<
_output_shapes*
(:����������:����������*E
_class;
97loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul*
T0
�
Adam/gradients/SwitchSwitchFullyConnected/ReluDropout/cond/pred_id^Adam/moving_avg^moving_avg*
T0*<
_output_shapes*
(:����������:����������
m
Adam/gradients/Shape_1ShapeAdam/gradients/Switch:1*
T0*
_output_shapes
:*
out_type0
~
Adam/gradients/zeros/ConstConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB
 *    
�
Adam/gradients/zerosFillAdam/gradients/Shape_1Adam/gradients/zeros/Const*
T0*(
_output_shapes
:����������
�
3Adam/gradients/Dropout/cond/Switch_1_grad/cond_gradMerge0Adam/gradients/Dropout/cond/Merge_grad/cond_gradAdam/gradients/zeros*
T0*
N**
_output_shapes
:����������: 
�
2Adam/gradients/Dropout/cond/dropout/mul_grad/ShapeShapeDropout/cond/dropout/div^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
�
4Adam/gradients/Dropout/cond/dropout/mul_grad/Shape_1ShapeDropout/cond/dropout/Floor^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
BAdam/gradients/Dropout/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2Adam/gradients/Dropout/cond/dropout/mul_grad/Shape4Adam/gradients/Dropout/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
0Adam/gradients/Dropout/cond/dropout/mul_grad/mulMul2Adam/gradients/Dropout/cond/Merge_grad/cond_grad:1Dropout/cond/dropout/Floor*
T0*(
_output_shapes
:����������
�
0Adam/gradients/Dropout/cond/dropout/mul_grad/SumSum0Adam/gradients/Dropout/cond/dropout/mul_grad/mulBAdam/gradients/Dropout/cond/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
4Adam/gradients/Dropout/cond/dropout/mul_grad/ReshapeReshape0Adam/gradients/Dropout/cond/dropout/mul_grad/Sum2Adam/gradients/Dropout/cond/dropout/mul_grad/Shape*
Tshape0*(
_output_shapes
:����������*
T0
�
2Adam/gradients/Dropout/cond/dropout/mul_grad/mul_1MulDropout/cond/dropout/div2Adam/gradients/Dropout/cond/Merge_grad/cond_grad:1*(
_output_shapes
:����������*
T0
�
2Adam/gradients/Dropout/cond/dropout/mul_grad/Sum_1Sum2Adam/gradients/Dropout/cond/dropout/mul_grad/mul_1DAdam/gradients/Dropout/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
6Adam/gradients/Dropout/cond/dropout/mul_grad/Reshape_1Reshape2Adam/gradients/Dropout/cond/dropout/mul_grad/Sum_14Adam/gradients/Dropout/cond/dropout/mul_grad/Shape_1*
Tshape0*(
_output_shapes
:����������*
T0
�
2Adam/gradients/Dropout/cond/dropout/div_grad/ShapeShape#Dropout/cond/dropout/Shape/Switch:1^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
�
4Adam/gradients/Dropout/cond/dropout/div_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB 
�
BAdam/gradients/Dropout/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs2Adam/gradients/Dropout/cond/dropout/div_grad/Shape4Adam/gradients/Dropout/cond/dropout/div_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
4Adam/gradients/Dropout/cond/dropout/div_grad/RealDivRealDiv4Adam/gradients/Dropout/cond/dropout/mul_grad/ReshapeDropout/cond/dropout/keep_prob*(
_output_shapes
:����������*
T0
�
0Adam/gradients/Dropout/cond/dropout/div_grad/SumSum4Adam/gradients/Dropout/cond/dropout/div_grad/RealDivBAdam/gradients/Dropout/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
4Adam/gradients/Dropout/cond/dropout/div_grad/ReshapeReshape0Adam/gradients/Dropout/cond/dropout/div_grad/Sum2Adam/gradients/Dropout/cond/dropout/div_grad/Shape*
Tshape0*(
_output_shapes
:����������*
T0
�
0Adam/gradients/Dropout/cond/dropout/div_grad/NegNeg#Dropout/cond/dropout/Shape/Switch:1^Adam/moving_avg^moving_avg*(
_output_shapes
:����������*
T0
�
6Adam/gradients/Dropout/cond/dropout/div_grad/RealDiv_1RealDiv0Adam/gradients/Dropout/cond/dropout/div_grad/NegDropout/cond/dropout/keep_prob*(
_output_shapes
:����������*
T0
�
6Adam/gradients/Dropout/cond/dropout/div_grad/RealDiv_2RealDiv6Adam/gradients/Dropout/cond/dropout/div_grad/RealDiv_1Dropout/cond/dropout/keep_prob*(
_output_shapes
:����������*
T0
�
0Adam/gradients/Dropout/cond/dropout/div_grad/mulMul4Adam/gradients/Dropout/cond/dropout/mul_grad/Reshape6Adam/gradients/Dropout/cond/dropout/div_grad/RealDiv_2*(
_output_shapes
:����������*
T0
�
2Adam/gradients/Dropout/cond/dropout/div_grad/Sum_1Sum0Adam/gradients/Dropout/cond/dropout/div_grad/mulDAdam/gradients/Dropout/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
6Adam/gradients/Dropout/cond/dropout/div_grad/Reshape_1Reshape2Adam/gradients/Dropout/cond/dropout/div_grad/Sum_14Adam/gradients/Dropout/cond/dropout/div_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
�
Adam/gradients/Switch_1SwitchFullyConnected/ReluDropout/cond/pred_id^Adam/moving_avg^moving_avg*
T0*<
_output_shapes*
(:����������:����������
m
Adam/gradients/Shape_2ShapeAdam/gradients/Switch_1*
out_type0*
_output_shapes
:*
T0
�
Adam/gradients/zeros_1/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *    *
_output_shapes
: *
dtype0
�
Adam/gradients/zeros_1FillAdam/gradients/Shape_2Adam/gradients/zeros_1/Const*
T0*(
_output_shapes
:����������
�
?Adam/gradients/Dropout/cond/dropout/Shape/Switch_grad/cond_gradMerge4Adam/gradients/Dropout/cond/dropout/div_grad/ReshapeAdam/gradients/zeros_1*
N*
T0**
_output_shapes
:����������: 
�
Adam/gradients/AddN_1AddN3Adam/gradients/Dropout/cond/Switch_1_grad/cond_grad?Adam/gradients/Dropout/cond/dropout/Shape/Switch_grad/cond_grad*F
_class<
:8loc:@Adam/gradients/Dropout/cond/Switch_1_grad/cond_grad*(
_output_shapes
:����������*
T0*
N
�
0Adam/gradients/FullyConnected/Relu_grad/ReluGradReluGradAdam/gradients/AddN_1FullyConnected/Relu*(
_output_shapes
:����������*
T0
�
6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradBiasAddGrad0Adam/gradients/FullyConnected/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:�
�
0Adam/gradients/FullyConnected/MatMul_grad/MatMulMatMul0Adam/gradients/FullyConnected/Relu_grad/ReluGradFullyConnected/W/read*
transpose_b(*
T0*'
_output_shapes
:��������� *
transpose_a( 
�
2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1MatMulFullyConnected/Reshape0Adam/gradients/FullyConnected/Relu_grad/ReluGrad*
transpose_b( *
_output_shapes
:	 �*
transpose_a(*
T0
�
0Adam/gradients/FullyConnected/Reshape_grad/ShapeShapeMaxPool2D_4/MaxPool^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
2Adam/gradients/FullyConnected/Reshape_grad/ReshapeReshape0Adam/gradients/FullyConnected/MatMul_grad/MatMul0Adam/gradients/FullyConnected/Reshape_grad/Shape*
T0*/
_output_shapes
:��������� *
Tshape0
�
3Adam/gradients/MaxPool2D_4/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_4/ReluMaxPool2D_4/MaxPool2Adam/gradients/FullyConnected/Reshape_grad/Reshape*
ksize
*
T0*
paddingSAME*/
_output_shapes
:��������� *
data_formatNHWC*
strides

�
*Adam/gradients/Conv2D_4/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_4/MaxPool_grad/MaxPoolGradConv2D_4/Relu*/
_output_shapes
:��������� *
T0
�
0Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_4/Relu_grad/ReluGrad*
_output_shapes
: *
data_formatNHWC*
T0
�
)Adam/gradients/Conv2D_4/Conv2D_grad/ShapeShapeMaxPool2D_3/MaxPool^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
�
7Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_4/Conv2D_grad/ShapeConv2D_4/W/read*Adam/gradients/Conv2D_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������@
�
+Adam/gradients/Conv2D_4/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*%
valueB"      @       
�
8Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D_3/MaxPool+Adam/gradients/Conv2D_4/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:@ 
�
3Adam/gradients/MaxPool2D_3/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_3/ReluMaxPool2D_3/MaxPool7Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropInput*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:���������@
�
*Adam/gradients/Conv2D_3/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_3/MaxPool_grad/MaxPoolGradConv2D_3/Relu*
T0*/
_output_shapes
:���������@
�
0Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_3/Relu_grad/ReluGrad*
_output_shapes
:@*
T0*
data_formatNHWC
�
)Adam/gradients/Conv2D_3/Conv2D_grad/ShapeShapeMaxPool2D_2/MaxPool^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
7Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_3/Conv2D_grad/ShapeConv2D_3/W/read*Adam/gradients/Conv2D_3/Relu_grad/ReluGrad*0
_output_shapes
:����������*
T0*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
paddingSAME
�
+Adam/gradients/Conv2D_3/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*%
valueB"      �   @   *
_output_shapes
:*
dtype0
�
8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D_2/MaxPool+Adam/gradients/Conv2D_3/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_3/Relu_grad/ReluGrad*'
_output_shapes
:�@*
T0*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
paddingSAME
�
3Adam/gradients/MaxPool2D_2/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_2/ReluMaxPool2D_2/MaxPool7Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropInput*
paddingSAME*
data_formatNHWC*
strides
*
T0*0
_output_shapes
:����������*
ksize

�
*Adam/gradients/Conv2D_2/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_2/MaxPool_grad/MaxPoolGradConv2D_2/Relu*0
_output_shapes
:����������*
T0
�
0Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:�
�
)Adam/gradients/Conv2D_2/Conv2D_grad/ShapeShapeMaxPool2D_1/MaxPool^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
�
7Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_2/Conv2D_grad/ShapeConv2D_2/W/read*Adam/gradients/Conv2D_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������@
�
+Adam/gradients/Conv2D_2/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
:*
dtype0*%
valueB"      @   �   
�
8Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D_1/MaxPool+Adam/gradients/Conv2D_2/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_2/Relu_grad/ReluGrad*
paddingSAME*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*'
_output_shapes
:@�
�
3Adam/gradients/MaxPool2D_1/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_1/ReluMaxPool2D_1/MaxPool7Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropInput*
paddingSAME*
T0*
data_formatNHWC*
strides
*/
_output_shapes
:���������7
@*
ksize

�
*Adam/gradients/Conv2D_1/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_1/MaxPool_grad/MaxPoolGradConv2D_1/Relu*/
_output_shapes
:���������7
@*
T0
�
0Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_1/Relu_grad/ReluGrad*
_output_shapes
:@*
T0*
data_formatNHWC
�
)Adam/gradients/Conv2D_1/Conv2D_grad/ShapeShapeMaxPool2D/MaxPool^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
�
7Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_1/Conv2D_grad/ShapeConv2D_1/W/read*Adam/gradients/Conv2D_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������7
 
�
+Adam/gradients/Conv2D_1/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*%
valueB"          @   
�
8Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D/MaxPool+Adam/gradients/Conv2D_1/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_1/Relu_grad/ReluGrad*&
_output_shapes
: @*
paddingSAME*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
T0
�
1Adam/gradients/MaxPool2D/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D/ReluMaxPool2D/MaxPool7Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropInput*
paddingSAME*
T0*
data_formatNHWC*
strides
*0
_output_shapes
:����������0 *
ksize

�
(Adam/gradients/Conv2D/Relu_grad/ReluGradReluGrad1Adam/gradients/MaxPool2D/MaxPool_grad/MaxPoolGradConv2D/Relu*0
_output_shapes
:����������0 *
T0
�
.Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGradBiasAddGrad(Adam/gradients/Conv2D/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
: 
�
'Adam/gradients/Conv2D/Conv2D_grad/ShapeShapeinput/X^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
�
5Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput'Adam/gradients/Conv2D/Conv2D_grad/ShapeConv2D/W/read(Adam/gradients/Conv2D/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:����������0
�
)Adam/gradients/Conv2D/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*%
valueB"             
�
6Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinput/X)Adam/gradients/Conv2D/Conv2D_grad/Shape_1(Adam/gradients/Conv2D/Relu_grad/ReluGrad*
paddingSAME*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*&
_output_shapes
: 
�
Adam/global_norm/L2LossL2Loss6Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter*
T0*
_output_shapes
: *I
_class?
=;loc:@Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter
�
Adam/global_norm/L2Loss_1L2Loss.Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *A
_class7
53loc:@Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*
T0
�
Adam/global_norm/L2Loss_2L2Loss8Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter*K
_classA
?=loc:@Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: *
T0
�
Adam/global_norm/L2Loss_3L2Loss0Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad*C
_class9
75loc:@Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
Adam/global_norm/L2Loss_4L2Loss8Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*
T0
�
Adam/global_norm/L2Loss_5L2Loss0Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*C
_class9
75loc:@Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
Adam/global_norm/L2Loss_6L2Loss8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter*
T0*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter
�
Adam/global_norm/L2Loss_7L2Loss0Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad
�
Adam/global_norm/L2Loss_8L2Loss8Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter*
T0*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter
�
Adam/global_norm/L2Loss_9L2Loss0Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad
�
Adam/global_norm/L2Loss_10L2Loss2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes
: 
�
Adam/global_norm/L2Loss_11L2Loss6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
Adam/global_norm/L2Loss_12L2Loss4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes
: *G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
T0
�
Adam/global_norm/L2Loss_13L2Loss8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad
�
Adam/global_norm/stackPackAdam/global_norm/L2LossAdam/global_norm/L2Loss_1Adam/global_norm/L2Loss_2Adam/global_norm/L2Loss_3Adam/global_norm/L2Loss_4Adam/global_norm/L2Loss_5Adam/global_norm/L2Loss_6Adam/global_norm/L2Loss_7Adam/global_norm/L2Loss_8Adam/global_norm/L2Loss_9Adam/global_norm/L2Loss_10Adam/global_norm/L2Loss_11Adam/global_norm/L2Loss_12Adam/global_norm/L2Loss_13*
_output_shapes
:*
N*

axis *
T0

Adam/global_norm/ConstConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*
valueB: 
�
Adam/global_norm/SumSumAdam/global_norm/stackAdam/global_norm/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
|
Adam/global_norm/Const_1Const^Adam/moving_avg^moving_avg*
valueB
 *   @*
_output_shapes
: *
dtype0
l
Adam/global_norm/mulMulAdam/global_norm/SumAdam/global_norm/Const_1*
T0*
_output_shapes
: 
[
Adam/global_norm/global_normSqrtAdam/global_norm/mul*
_output_shapes
: *
T0
�
"Adam/clip_by_global_norm/truediv/xConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
 Adam/clip_by_global_norm/truedivRealDiv"Adam/clip_by_global_norm/truediv/xAdam/global_norm/global_norm*
T0*
_output_shapes
: 
�
Adam/clip_by_global_norm/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *  �?*
_output_shapes
: *
dtype0
�
$Adam/clip_by_global_norm/truediv_1/yConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB
 *  �@
�
"Adam/clip_by_global_norm/truediv_1RealDivAdam/clip_by_global_norm/Const$Adam/clip_by_global_norm/truediv_1/y*
T0*
_output_shapes
: 
�
 Adam/clip_by_global_norm/MinimumMinimum Adam/clip_by_global_norm/truediv"Adam/clip_by_global_norm/truediv_1*
T0*
_output_shapes
: 
�
Adam/clip_by_global_norm/mul/xConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB
 *  �@
�
Adam/clip_by_global_norm/mulMulAdam/clip_by_global_norm/mul/x Adam/clip_by_global_norm/Minimum*
_output_shapes
: *
T0
�
Adam/clip_by_global_norm/mul_1Mul6Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*
T0*I
_class?
=;loc:@Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0IdentityAdam/clip_by_global_norm/mul_1*&
_output_shapes
: *I
_class?
=;loc:@Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter*
T0
�
Adam/clip_by_global_norm/mul_2Mul.Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*A
_class7
53loc:@Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1IdentityAdam/clip_by_global_norm/mul_2*A
_class7
53loc:@Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
Adam/clip_by_global_norm/mul_3Mul8Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*
T0*K
_classA
?=loc:@Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2IdentityAdam/clip_by_global_norm/mul_3*K
_classA
?=loc:@Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @*
T0
�
Adam/clip_by_global_norm/mul_4Mul0Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
_output_shapes
:@*C
_class9
75loc:@Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad*
T0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3IdentityAdam/clip_by_global_norm/mul_4*
_output_shapes
:@*C
_class9
75loc:@Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad*
T0
�
Adam/clip_by_global_norm/mul_5Mul8Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*'
_output_shapes
:@�*K
_classA
?=loc:@Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*
T0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_4IdentityAdam/clip_by_global_norm/mul_5*
T0*K
_classA
?=loc:@Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@�
�
Adam/clip_by_global_norm/mul_6Mul0Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*C
_class9
75loc:@Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5IdentityAdam/clip_by_global_norm/mul_6*C
_class9
75loc:@Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
�
Adam/clip_by_global_norm/mul_7Mul8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*
T0*K
_classA
?=loc:@Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:�@
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_6IdentityAdam/clip_by_global_norm/mul_7*'
_output_shapes
:�@*K
_classA
?=loc:@Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter*
T0
�
Adam/clip_by_global_norm/mul_8Mul0Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*C
_class9
75loc:@Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_7IdentityAdam/clip_by_global_norm/mul_8*C
_class9
75loc:@Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
�
Adam/clip_by_global_norm/mul_9Mul8Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*K
_classA
?=loc:@Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:@ *
T0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_8IdentityAdam/clip_by_global_norm/mul_9*
T0*&
_output_shapes
:@ *K
_classA
?=loc:@Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter
�
Adam/clip_by_global_norm/mul_10Mul0Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad*
T0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_9IdentityAdam/clip_by_global_norm/mul_10*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad*
T0
�
Adam/clip_by_global_norm/mul_11Mul2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes
:	 �
�
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_10IdentityAdam/clip_by_global_norm/mul_11*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes
:	 �*
T0
�
Adam/clip_by_global_norm/mul_12Mul6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
�
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_11IdentityAdam/clip_by_global_norm/mul_12*
T0*
_output_shapes	
:�*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad
�
Adam/clip_by_global_norm/mul_13Mul4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
_output_shapes
:	�*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
T0
�
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_12IdentityAdam/clip_by_global_norm/mul_13*
_output_shapes
:	�*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
T0
�
Adam/clip_by_global_norm/mul_14Mul8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_13IdentityAdam/clip_by_global_norm/mul_14*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
Adam/beta1_power/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *fff?*
_class
loc:@Conv2D/W
�
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
�
Adam/beta1_power/AssignAssignAdam/beta1_powerAdam/beta1_power/initial_value*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
q
Adam/beta1_power/readIdentityAdam/beta1_power*
T0*
_class
loc:@Conv2D/W*
_output_shapes
: 
�
Adam/beta2_power/initial_valueConst*
valueB
 *w�?*
_class
loc:@Conv2D/W*
_output_shapes
: *
dtype0
�
Adam/beta2_power
VariableV2*
shape: *
_output_shapes
: *
shared_name *
_class
loc:@Conv2D/W*
dtype0*
	container 
�
Adam/beta2_power/AssignAssignAdam/beta2_powerAdam/beta2_power/initial_value*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
q
Adam/beta2_power/readIdentityAdam/beta2_power*
T0*
_class
loc:@Conv2D/W*
_output_shapes
: 
q
Adam/zeros_1Const*%
valueB *    *
dtype0*&
_output_shapes
: 
�
Conv2D/W/Adam
VariableV2*
shape: *&
_output_shapes
: *
shared_name *
_class
loc:@Conv2D/W*
dtype0*
	container 
�
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
Adam/zeros_2Const*&
_output_shapes
: *
dtype0*%
valueB *    
�
Conv2D/W/Adam_1
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D/W*
shared_name *&
_output_shapes
: *
shape: 
�
Conv2D/W/Adam_1/AssignAssignConv2D/W/Adam_1Adam/zeros_2*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W

Conv2D/W/Adam_1/readIdentityConv2D/W/Adam_1*&
_output_shapes
: *
_class
loc:@Conv2D/W*
T0
Y
Adam/zeros_3Const*
valueB *    *
dtype0*
_output_shapes
: 
�
Conv2D/b/Adam
VariableV2*
shared_name *
shape: *
_output_shapes
: *
_class
loc:@Conv2D/b*
dtype0*
	container 
�
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
Adam/zeros_4Const*
dtype0*
_output_shapes
: *
valueB *    
�
Conv2D/b/Adam_1
VariableV2*
	container *
shared_name *
dtype0*
shape: *
_output_shapes
: *
_class
loc:@Conv2D/b
�
Conv2D/b/Adam_1/AssignAssignConv2D/b/Adam_1Adam/zeros_4*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/b*
T0*
use_locking(
s
Conv2D/b/Adam_1/readIdentityConv2D/b/Adam_1*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0
q
Adam/zeros_5Const*&
_output_shapes
: @*
dtype0*%
valueB @*    
�
Conv2D_1/W/Adam
VariableV2*
	container *
shared_name *
dtype0*
shape: @*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
�
Conv2D_1/W/Adam/AssignAssignConv2D_1/W/AdamAdam/zeros_5*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
�
Conv2D_1/W/Adam/readIdentityConv2D_1/W/Adam*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W*
T0
q
Adam/zeros_6Const*%
valueB @*    *&
_output_shapes
: @*
dtype0
�
Conv2D_1/W/Adam_1
VariableV2*
	container *
shared_name *
dtype0*
shape: @*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
�
Conv2D_1/W/Adam_1/AssignAssignConv2D_1/W/Adam_1Adam/zeros_6*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(
�
Conv2D_1/W/Adam_1/readIdentityConv2D_1/W/Adam_1*
T0*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @
Y
Adam/zeros_7Const*
dtype0*
_output_shapes
:@*
valueB@*    
�
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
�
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
T0*
_class
loc:@Conv2D_1/b*
_output_shapes
:@
Y
Adam/zeros_8Const*
_output_shapes
:@*
dtype0*
valueB@*    
�
Conv2D_1/b/Adam_1
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_1/b*
shared_name *
_output_shapes
:@*
shape:@
�
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
Adam/zeros_9Const*'
_output_shapes
:@�*
dtype0*&
valueB@�*    
�
Conv2D_2/W/Adam
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�*
shape:@�*
shared_name 
�
Conv2D_2/W/Adam/AssignAssignConv2D_2/W/AdamAdam/zeros_9*
use_locking(*
T0*
_class
loc:@Conv2D_2/W*
validate_shape(*'
_output_shapes
:@�
�
Conv2D_2/W/Adam/readIdentityConv2D_2/W/Adam*
T0*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�
t
Adam/zeros_10Const*
dtype0*'
_output_shapes
:@�*&
valueB@�*    
�
Conv2D_2/W/Adam_1
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_2/W*
shared_name *'
_output_shapes
:@�*
shape:@�
�
Conv2D_2/W/Adam_1/AssignAssignConv2D_2/W/Adam_1Adam/zeros_10*'
_output_shapes
:@�*
validate_shape(*
_class
loc:@Conv2D_2/W*
T0*
use_locking(
�
Conv2D_2/W/Adam_1/readIdentityConv2D_2/W/Adam_1*
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
\
Adam/zeros_11Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
Conv2D_2/b/Adam
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_2/b*
shared_name *
_output_shapes	
:�*
shape:�
�
Conv2D_2/b/Adam/AssignAssignConv2D_2/b/AdamAdam/zeros_11*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b
v
Conv2D_2/b/Adam/readIdentityConv2D_2/b/Adam*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b*
T0
\
Adam/zeros_12Const*
dtype0*
_output_shapes	
:�*
valueB�*    
�
Conv2D_2/b/Adam_1
VariableV2*
_output_shapes	
:�*
dtype0*
shape:�*
	container *
_class
loc:@Conv2D_2/b*
shared_name 
�
Conv2D_2/b/Adam_1/AssignAssignConv2D_2/b/Adam_1Adam/zeros_12*
use_locking(*
T0*
_class
loc:@Conv2D_2/b*
validate_shape(*
_output_shapes	
:�
z
Conv2D_2/b/Adam_1/readIdentityConv2D_2/b/Adam_1*
T0*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b
t
Adam/zeros_13Const*&
valueB�@*    *
dtype0*'
_output_shapes
:�@
�
Conv2D_3/W/Adam
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
shape:�@*
shared_name 
�
Conv2D_3/W/Adam/AssignAssignConv2D_3/W/AdamAdam/zeros_13*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
T0*
validate_shape(*
use_locking(
�
Conv2D_3/W/Adam/readIdentityConv2D_3/W/Adam*
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
t
Adam/zeros_14Const*'
_output_shapes
:�@*
dtype0*&
valueB�@*    
�
Conv2D_3/W/Adam_1
VariableV2*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
shape:�@*
dtype0*
shared_name *
	container 
�
Conv2D_3/W/Adam_1/AssignAssignConv2D_3/W/Adam_1Adam/zeros_14*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
T0*
validate_shape(*
use_locking(
�
Conv2D_3/W/Adam_1/readIdentityConv2D_3/W/Adam_1*
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
Z
Adam/zeros_15Const*
valueB@*    *
_output_shapes
:@*
dtype0
�
Conv2D_3/b/Adam
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
shape:@*
shared_name 
�
Conv2D_3/b/Adam/AssignAssignConv2D_3/b/AdamAdam/zeros_15*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_3/b*
T0*
use_locking(
u
Conv2D_3/b/Adam/readIdentityConv2D_3/b/Adam*
T0*
_class
loc:@Conv2D_3/b*
_output_shapes
:@
Z
Adam/zeros_16Const*
dtype0*
_output_shapes
:@*
valueB@*    
�
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
�
Conv2D_3/b/Adam_1/AssignAssignConv2D_3/b/Adam_1Adam/zeros_16*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_3/b*
T0*
use_locking(
y
Conv2D_3/b/Adam_1/readIdentityConv2D_3/b/Adam_1*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0
r
Adam/zeros_17Const*&
_output_shapes
:@ *
dtype0*%
valueB@ *    
�
Conv2D_4/W/Adam
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_4/W*
shared_name *&
_output_shapes
:@ *
shape:@ 
�
Conv2D_4/W/Adam/AssignAssignConv2D_4/W/AdamAdam/zeros_17*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
�
Conv2D_4/W/Adam/readIdentityConv2D_4/W/Adam*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W*
T0
r
Adam/zeros_18Const*
dtype0*&
_output_shapes
:@ *%
valueB@ *    
�
Conv2D_4/W/Adam_1
VariableV2*
shared_name *
shape:@ *&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W*
dtype0*
	container 
�
Conv2D_4/W/Adam_1/AssignAssignConv2D_4/W/Adam_1Adam/zeros_18*
use_locking(*
T0*
_class
loc:@Conv2D_4/W*
validate_shape(*&
_output_shapes
:@ 
�
Conv2D_4/W/Adam_1/readIdentityConv2D_4/W/Adam_1*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
Z
Adam/zeros_19Const*
valueB *    *
_output_shapes
: *
dtype0
�
Conv2D_4/b/Adam
VariableV2*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
shape: *
dtype0*
shared_name *
	container 
�
Conv2D_4/b/Adam/AssignAssignConv2D_4/b/AdamAdam/zeros_19*
use_locking(*
T0*
_class
loc:@Conv2D_4/b*
validate_shape(*
_output_shapes
: 
u
Conv2D_4/b/Adam/readIdentityConv2D_4/b/Adam*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
T0
Z
Adam/zeros_20Const*
valueB *    *
_output_shapes
: *
dtype0
�
Conv2D_4/b/Adam_1
VariableV2*
	container *
shared_name *
dtype0*
shape: *
_output_shapes
: *
_class
loc:@Conv2D_4/b
�
Conv2D_4/b/Adam_1/AssignAssignConv2D_4/b/Adam_1Adam/zeros_20*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
y
Conv2D_4/b/Adam_1/readIdentityConv2D_4/b/Adam_1*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
T0
d
Adam/zeros_21Const*
valueB	 �*    *
_output_shapes
:	 �*
dtype0
�
FullyConnected/W/Adam
VariableV2*
shape:	 �*
_output_shapes
:	 �*
shared_name *#
_class
loc:@FullyConnected/W*
dtype0*
	container 
�
FullyConnected/W/Adam/AssignAssignFullyConnected/W/AdamAdam/zeros_21*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
�
FullyConnected/W/Adam/readIdentityFullyConnected/W/Adam*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W*
T0
d
Adam/zeros_22Const*
_output_shapes
:	 �*
dtype0*
valueB	 �*    
�
FullyConnected/W/Adam_1
VariableV2*
	container *
dtype0*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
shape:	 �*
shared_name 
�
FullyConnected/W/Adam_1/AssignAssignFullyConnected/W/Adam_1Adam/zeros_22*
_output_shapes
:	 �*
validate_shape(*#
_class
loc:@FullyConnected/W*
T0*
use_locking(
�
FullyConnected/W/Adam_1/readIdentityFullyConnected/W/Adam_1*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
\
Adam/zeros_23Const*
dtype0*
_output_shapes	
:�*
valueB�*    
�
FullyConnected/b/Adam
VariableV2*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�*
shape:�*
dtype0*
shared_name *
	container 
�
FullyConnected/b/Adam/AssignAssignFullyConnected/b/AdamAdam/zeros_23*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b
�
FullyConnected/b/Adam/readIdentityFullyConnected/b/Adam*
T0*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b
\
Adam/zeros_24Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
FullyConnected/b/Adam_1
VariableV2*
_output_shapes	
:�*
dtype0*
shape:�*
	container *#
_class
loc:@FullyConnected/b*
shared_name 
�
FullyConnected/b/Adam_1/AssignAssignFullyConnected/b/Adam_1Adam/zeros_24*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�*
T0*
validate_shape(*
use_locking(
�
FullyConnected/b/Adam_1/readIdentityFullyConnected/b/Adam_1*
T0*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�
d
Adam/zeros_25Const*
valueB	�*    *
_output_shapes
:	�*
dtype0
�
FullyConnected_1/W/Adam
VariableV2*
	container *
shared_name *
dtype0*
shape:	�*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W
�
FullyConnected_1/W/Adam/AssignAssignFullyConnected_1/W/AdamAdam/zeros_25*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0*
validate_shape(*
use_locking(
�
FullyConnected_1/W/Adam/readIdentityFullyConnected_1/W/Adam*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�
d
Adam/zeros_26Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
FullyConnected_1/W/Adam_1
VariableV2*
	container *
dtype0*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
shape:	�*
shared_name 
�
 FullyConnected_1/W/Adam_1/AssignAssignFullyConnected_1/W/Adam_1Adam/zeros_26*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0*
validate_shape(*
use_locking(
�
FullyConnected_1/W/Adam_1/readIdentityFullyConnected_1/W/Adam_1*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W*
T0
Z
Adam/zeros_27Const*
valueB*    *
dtype0*
_output_shapes
:
�
FullyConnected_1/b/Adam
VariableV2*
_output_shapes
:*
dtype0*
shape:*
	container *%
_class
loc:@FullyConnected_1/b*
shared_name 
�
FullyConnected_1/b/Adam/AssignAssignFullyConnected_1/b/AdamAdam/zeros_27*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
�
FullyConnected_1/b/Adam/readIdentityFullyConnected_1/b/Adam*
T0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
Z
Adam/zeros_28Const*
valueB*    *
_output_shapes
:*
dtype0
�
FullyConnected_1/b/Adam_1
VariableV2*
_output_shapes
:*
dtype0*
shape:*
	container *%
_class
loc:@FullyConnected_1/b*
shared_name 
�
 FullyConnected_1/b/Adam_1/AssignAssignFullyConnected_1/b/Adam_1Adam/zeros_28*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
�
FullyConnected_1/b/Adam_1/readIdentityFullyConnected_1/b/Adam_1*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b*
T0
g
"Adam/apply_grad_op_0/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *o�:
_
Adam/apply_grad_op_0/beta1Const*
valueB
 *fff?*
_output_shapes
: *
dtype0
_
Adam/apply_grad_op_0/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
a
Adam/apply_grad_op_0/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
.Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam	ApplyAdamConv2D/WConv2D/W/AdamConv2D/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0*
use_locking( 
�
.Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam	ApplyAdamConv2D/bConv2D/b/AdamConv2D/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1*
use_locking( *
T0*
_class
loc:@Conv2D/b*
_output_shapes
: 
�
0Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam	ApplyAdam
Conv2D_1/WConv2D_1/W/AdamConv2D_1/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W*
T0*
use_locking( 
�
0Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam	ApplyAdam
Conv2D_1/bConv2D_1/b/AdamConv2D_1/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3*
use_locking( *
T0*
_class
loc:@Conv2D_1/b*
_output_shapes
:@
�
0Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam	ApplyAdam
Conv2D_2/WConv2D_2/W/AdamConv2D_2/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_4*
use_locking( *
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
�
0Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam	ApplyAdam
Conv2D_2/bConv2D_2/b/AdamConv2D_2/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5*
use_locking( *
T0*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b
�
0Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam	ApplyAdam
Conv2D_3/WConv2D_3/W/AdamConv2D_3/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_6*
use_locking( *
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
�
0Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam	ApplyAdam
Conv2D_3/bConv2D_3/b/AdamConv2D_3/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_7*
_output_shapes
:@*
_class
loc:@Conv2D_3/b*
T0*
use_locking( 
�
0Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam	ApplyAdam
Conv2D_4/WConv2D_4/W/AdamConv2D_4/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_8*
use_locking( *
T0*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ 
�
0Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam	ApplyAdam
Conv2D_4/bConv2D_4/b/AdamConv2D_4/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_9*
use_locking( *
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
�
6Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam	ApplyAdamFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_10*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
T0*
use_locking( 
�
6Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam	ApplyAdamFullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_11*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�*
T0*
use_locking( 
�
8Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam	ApplyAdamFullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_12*
use_locking( *
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�
�
8Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam	ApplyAdamFullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_13*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
use_locking( 
�
Adam/apply_grad_op_0/mulMulAdam/beta1_power/readAdam/apply_grad_op_0/beta1/^Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam/^Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam*
T0*
_class
loc:@Conv2D/W*
_output_shapes
: 
�
Adam/apply_grad_op_0/AssignAssignAdam/beta1_powerAdam/apply_grad_op_0/mul*
use_locking( *
T0*
_class
loc:@Conv2D/W*
validate_shape(*
_output_shapes
: 
�
Adam/apply_grad_op_0/mul_1MulAdam/beta2_power/readAdam/apply_grad_op_0/beta2/^Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam/^Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0
�
Adam/apply_grad_op_0/Assign_1AssignAdam/beta2_powerAdam/apply_grad_op_0/mul_1*
use_locking( *
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
�
Adam/apply_grad_op_0/updateNoOp/^Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam/^Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam^Adam/apply_grad_op_0/Assign^Adam/apply_grad_op_0/Assign_1
�
Adam/apply_grad_op_0/valueConst^Adam/apply_grad_op_0/update*
dtype0*
_output_shapes
: *
valueB
 *  �?* 
_class
loc:@Training_step
�
Adam/apply_grad_op_0	AssignAddTraining_stepAdam/apply_grad_op_0/value*
_output_shapes
: * 
_class
loc:@Training_step*
T0*
use_locking( 
]
Adam/Merge/MergeSummaryMergeSummaryLossAdam/Loss/raw*
_output_shapes
: *
N
.
Adam/train_op_0NoOp^Adam/apply_grad_op_0
P

save/ConstConst*
_output_shapes
: *
dtype0*
valueB Bmodel
�
save/SaveV2/tensor_namesConst*�
value�B�3BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBConv2D/WBConv2D/W/AdamBConv2D/W/Adam_1BConv2D/bBConv2D/b/AdamBConv2D/b/Adam_1B
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
�
save/SaveV2/shape_and_slicesConst*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:3*
dtype0
�
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
save/Const^save/SaveV2*
_class
loc:@save/Const*
_output_shapes
: *
T0
|
save/RestoreV2/tensor_namesConst*-
value$B"BAccuracy/Mean/moving_avg*
_output_shapes
:*
dtype0
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/AssignAssignAccuracy/Mean/moving_avgsave/RestoreV2*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
v
save/RestoreV2_1/tensor_namesConst*%
valueBBAdam/beta1_power*
_output_shapes
:*
dtype0
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_1AssignAdam/beta1_powersave/RestoreV2_1*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*
_output_shapes
: 
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
�
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_2AssignAdam/beta2_powersave/RestoreV2_2*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(
n
save/RestoreV2_3/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBConv2D/W
j
!save/RestoreV2_3/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_3AssignConv2D/Wsave/RestoreV2_3*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
s
save/RestoreV2_4/tensor_namesConst*
dtype0*
_output_shapes
:*"
valueBBConv2D/W/Adam
j
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_4AssignConv2D/W/Adamsave/RestoreV2_4*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*&
_output_shapes
: 
u
save/RestoreV2_5/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D/W/Adam_1
j
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_5AssignConv2D/W/Adam_1save/RestoreV2_5*&
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(
n
save/RestoreV2_6/tensor_namesConst*
valueBBConv2D/b*
dtype0*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_6AssignConv2D/bsave/RestoreV2_6*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
s
save/RestoreV2_7/tensor_namesConst*"
valueBBConv2D/b/Adam*
dtype0*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
valueBBConv2D/b/Adam_1*
_output_shapes
:*
dtype0
j
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_8AssignConv2D/b/Adam_1save/RestoreV2_8*
use_locking(*
T0*
_class
loc:@Conv2D/b*
validate_shape(*
_output_shapes
: 
p
save/RestoreV2_9/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_1/W
j
!save/RestoreV2_9/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_9Assign
Conv2D_1/Wsave/RestoreV2_9*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(
v
save/RestoreV2_10/tensor_namesConst*$
valueBBConv2D_1/W/Adam*
_output_shapes
:*
dtype0
k
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_10AssignConv2D_1/W/Adamsave/RestoreV2_10*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(
x
save/RestoreV2_11/tensor_namesConst*&
valueBBConv2D_1/W/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_11AssignConv2D_1/W/Adam_1save/RestoreV2_11*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
q
save/RestoreV2_12/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_1/b
k
"save/RestoreV2_12/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_12Assign
Conv2D_1/bsave/RestoreV2_12*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_1/b*
T0*
use_locking(
v
save/RestoreV2_13/tensor_namesConst*$
valueBBConv2D_1/b/Adam*
_output_shapes
:*
dtype0
k
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_13AssignConv2D_1/b/Adamsave/RestoreV2_13*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_1/b*
T0*
use_locking(
x
save/RestoreV2_14/tensor_namesConst*&
valueBBConv2D_1/b/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_14AssignConv2D_1/b/Adam_1save/RestoreV2_14*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
q
save/RestoreV2_15/tensor_namesConst*
valueBB
Conv2D_2/W*
dtype0*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_15Assign
Conv2D_2/Wsave/RestoreV2_15*'
_output_shapes
:@�*
validate_shape(*
_class
loc:@Conv2D_2/W*
T0*
use_locking(
v
save/RestoreV2_16/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_2/W/Adam
k
"save/RestoreV2_16/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_16AssignConv2D_2/W/Adamsave/RestoreV2_16*'
_output_shapes
:@�*
validate_shape(*
_class
loc:@Conv2D_2/W*
T0*
use_locking(
x
save/RestoreV2_17/tensor_namesConst*&
valueBBConv2D_2/W/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_17AssignConv2D_2/W/Adam_1save/RestoreV2_17*
use_locking(*
T0*
_class
loc:@Conv2D_2/W*
validate_shape(*'
_output_shapes
:@�
q
save/RestoreV2_18/tensor_namesConst*
valueBB
Conv2D_2/b*
dtype0*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_18Assign
Conv2D_2/bsave/RestoreV2_18*
_class
loc:@Conv2D_2/b*
_output_shapes	
:�*
T0*
validate_shape(*
use_locking(
v
save/RestoreV2_19/tensor_namesConst*$
valueBBConv2D_2/b/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_19AssignConv2D_2/b/Adamsave/RestoreV2_19*
use_locking(*
T0*
_class
loc:@Conv2D_2/b*
validate_shape(*
_output_shapes	
:�
x
save/RestoreV2_20/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_2/b/Adam_1
k
"save/RestoreV2_20/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_20AssignConv2D_2/b/Adam_1save/RestoreV2_20*
use_locking(*
T0*
_class
loc:@Conv2D_2/b*
validate_shape(*
_output_shapes	
:�
q
save/RestoreV2_21/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_3/W
k
"save/RestoreV2_21/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_21Assign
Conv2D_3/Wsave/RestoreV2_21*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
v
save/RestoreV2_22/tensor_namesConst*$
valueBBConv2D_3/W/Adam*
_output_shapes
:*
dtype0
k
"save/RestoreV2_22/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_22AssignConv2D_3/W/Adamsave/RestoreV2_22*'
_output_shapes
:�@*
validate_shape(*
_class
loc:@Conv2D_3/W*
T0*
use_locking(
x
save/RestoreV2_23/tensor_namesConst*&
valueBBConv2D_3/W/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_23AssignConv2D_3/W/Adam_1save/RestoreV2_23*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
T0*
validate_shape(*
use_locking(
q
save/RestoreV2_24/tensor_namesConst*
valueBB
Conv2D_3/b*
_output_shapes
:*
dtype0
k
"save/RestoreV2_24/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
valueBBConv2D_3/b/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_25/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
valueBBConv2D_3/b/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_26/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_26AssignConv2D_3/b/Adam_1save/RestoreV2_26*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_3/b*
T0*
use_locking(
q
save/RestoreV2_27/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_4/W
k
"save/RestoreV2_27/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
save/RestoreV2_28/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_4/W/Adam
k
"save/RestoreV2_28/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_28AssignConv2D_4/W/Adamsave/RestoreV2_28*
use_locking(*
T0*
_class
loc:@Conv2D_4/W*
validate_shape(*&
_output_shapes
:@ 
x
save/RestoreV2_29/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_4/W/Adam_1
k
"save/RestoreV2_29/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_29	RestoreV2
save/Constsave/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
Conv2D_4/b*
_output_shapes
:*
dtype0
k
"save/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_30	RestoreV2
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_30Assign
Conv2D_4/bsave/RestoreV2_30*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D_4/b*
T0*
use_locking(
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
�
save/RestoreV2_31	RestoreV2
save/Constsave/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_31AssignConv2D_4/b/Adamsave/RestoreV2_31*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
x
save/RestoreV2_32/tensor_namesConst*&
valueBBConv2D_4/b/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_32/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_32	RestoreV2
save/Constsave/RestoreV2_32/tensor_names"save/RestoreV2_32/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_32AssignConv2D_4/b/Adam_1save/RestoreV2_32*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
�
save/RestoreV2_33/tensor_namesConst*1
value(B&BCrossentropy/Mean/moving_avg*
_output_shapes
:*
dtype0
k
"save/RestoreV2_33/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_33	RestoreV2
save/Constsave/RestoreV2_33/tensor_names"save/RestoreV2_33/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
"save/RestoreV2_34/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_34	RestoreV2
save/Constsave/RestoreV2_34/tensor_names"save/RestoreV2_34/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_34AssignFullyConnected/Wsave/RestoreV2_34*
_output_shapes
:	 �*
validate_shape(*#
_class
loc:@FullyConnected/W*
T0*
use_locking(
|
save/RestoreV2_35/tensor_namesConst**
value!BBFullyConnected/W/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_35/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_35	RestoreV2
save/Constsave/RestoreV2_35/tensor_names"save/RestoreV2_35/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_35AssignFullyConnected/W/Adamsave/RestoreV2_35*
_output_shapes
:	 �*
validate_shape(*#
_class
loc:@FullyConnected/W*
T0*
use_locking(
~
save/RestoreV2_36/tensor_namesConst*,
value#B!BFullyConnected/W/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_36/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_36	RestoreV2
save/Constsave/RestoreV2_36/tensor_names"save/RestoreV2_36/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_36AssignFullyConnected/W/Adam_1save/RestoreV2_36*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
w
save/RestoreV2_37/tensor_namesConst*
_output_shapes
:*
dtype0*%
valueBBFullyConnected/b
k
"save/RestoreV2_37/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_37	RestoreV2
save/Constsave/RestoreV2_37/tensor_names"save/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_37AssignFullyConnected/bsave/RestoreV2_37*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b
|
save/RestoreV2_38/tensor_namesConst*
_output_shapes
:*
dtype0**
value!BBFullyConnected/b/Adam
k
"save/RestoreV2_38/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_38	RestoreV2
save/Constsave/RestoreV2_38/tensor_names"save/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_38AssignFullyConnected/b/Adamsave/RestoreV2_38*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b
~
save/RestoreV2_39/tensor_namesConst*
_output_shapes
:*
dtype0*,
value#B!BFullyConnected/b/Adam_1
k
"save/RestoreV2_39/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_39	RestoreV2
save/Constsave/RestoreV2_39/tensor_names"save/RestoreV2_39/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_39AssignFullyConnected/b/Adam_1save/RestoreV2_39*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b
y
save/RestoreV2_40/tensor_namesConst*
dtype0*
_output_shapes
:*'
valueBBFullyConnected_1/W
k
"save/RestoreV2_40/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_40	RestoreV2
save/Constsave/RestoreV2_40/tensor_names"save/RestoreV2_40/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_40AssignFullyConnected_1/Wsave/RestoreV2_40*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	�
~
save/RestoreV2_41/tensor_namesConst*,
value#B!BFullyConnected_1/W/Adam*
_output_shapes
:*
dtype0
k
"save/RestoreV2_41/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_41	RestoreV2
save/Constsave/RestoreV2_41/tensor_names"save/RestoreV2_41/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_41AssignFullyConnected_1/W/Adamsave/RestoreV2_41*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	�
�
save/RestoreV2_42/tensor_namesConst*
_output_shapes
:*
dtype0*.
value%B#BFullyConnected_1/W/Adam_1
k
"save/RestoreV2_42/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_42	RestoreV2
save/Constsave/RestoreV2_42/tensor_names"save/RestoreV2_42/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_42AssignFullyConnected_1/W/Adam_1save/RestoreV2_42*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W
y
save/RestoreV2_43/tensor_namesConst*'
valueBBFullyConnected_1/b*
dtype0*
_output_shapes
:
k
"save/RestoreV2_43/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_43	RestoreV2
save/Constsave/RestoreV2_43/tensor_names"save/RestoreV2_43/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_43AssignFullyConnected_1/bsave/RestoreV2_43*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
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
�
save/RestoreV2_44	RestoreV2
save/Constsave/RestoreV2_44/tensor_names"save/RestoreV2_44/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_44AssignFullyConnected_1/b/Adamsave/RestoreV2_44*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
�
save/RestoreV2_45/tensor_namesConst*
dtype0*
_output_shapes
:*.
value%B#BFullyConnected_1/b/Adam_1
k
"save/RestoreV2_45/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_45	RestoreV2
save/Constsave/RestoreV2_45/tensor_names"save/RestoreV2_45/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_45AssignFullyConnected_1/b/Adam_1save/RestoreV2_45*
_output_shapes
:*
validate_shape(*%
_class
loc:@FullyConnected_1/b*
T0*
use_locking(
r
save/RestoreV2_46/tensor_namesConst* 
valueBBGlobal_Step*
dtype0*
_output_shapes
:
k
"save/RestoreV2_46/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_46	RestoreV2
save/Constsave/RestoreV2_46/tensor_names"save/RestoreV2_46/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
valueBBTraining_step*
dtype0*
_output_shapes
:
k
"save/RestoreV2_47/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_47	RestoreV2
save/Constsave/RestoreV2_47/tensor_names"save/RestoreV2_47/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_47AssignTraining_stepsave/RestoreV2_47* 
_class
loc:@Training_step*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
r
save/RestoreV2_48/tensor_namesConst* 
valueBBis_training*
dtype0*
_output_shapes
:
k
"save/RestoreV2_48/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_48	RestoreV2
save/Constsave/RestoreV2_48/tensor_names"save/RestoreV2_48/shape_and_slices*
_output_shapes
:*
dtypes
2

�
save/Assign_48Assignis_trainingsave/RestoreV2_48*
_output_shapes
: *
validate_shape(*
_class
loc:@is_training*
T0
*
use_locking(
n
save/RestoreV2_49/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBval_acc
k
"save/RestoreV2_49/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_49	RestoreV2
save/Constsave/RestoreV2_49/tensor_names"save/RestoreV2_49/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_49Assignval_accsave/RestoreV2_49*
use_locking(*
T0*
_class
loc:@val_acc*
validate_shape(*
_output_shapes
: 
o
save/RestoreV2_50/tensor_namesConst*
valueBBval_loss*
dtype0*
_output_shapes
:
k
"save/RestoreV2_50/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_50	RestoreV2
save/Constsave/RestoreV2_50/tensor_names"save/RestoreV2_50/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_50Assignval_losssave/RestoreV2_50*
_class
loc:@val_loss*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_50
R
save_1/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0
�
save_1/SaveV2/tensor_namesConst*�
value�B�3BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBConv2D/WBConv2D/W/AdamBConv2D/W/Adam_1BConv2D/bBConv2D/b/AdamBConv2D/b/Adam_1B
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
�
save_1/SaveV2/shape_and_slicesConst*
_output_shapes
:3*
dtype0*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
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
�
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
_output_shapes
: *
_class
loc:@save_1/Const*
T0
~
save_1/RestoreV2/tensor_namesConst*-
value$B"BAccuracy/Mean/moving_avg*
dtype0*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/AssignAssignAccuracy/Mean/moving_avgsave_1/RestoreV2*
_output_shapes
: *
validate_shape(*+
_class!
loc:@Accuracy/Mean/moving_avg*
T0*
use_locking(
x
save_1/RestoreV2_1/tensor_namesConst*%
valueBBAdam/beta1_power*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_1AssignAdam/beta1_powersave_1/RestoreV2_1*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
x
save_1/RestoreV2_2/tensor_namesConst*
_output_shapes
:*
dtype0*%
valueBBAdam/beta2_power
l
#save_1/RestoreV2_2/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_2AssignAdam/beta2_powersave_1/RestoreV2_2*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(
p
save_1/RestoreV2_3/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBConv2D/W
l
#save_1/RestoreV2_3/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_3AssignConv2D/Wsave_1/RestoreV2_3*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
u
save_1/RestoreV2_4/tensor_namesConst*"
valueBBConv2D/W/Adam*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_4AssignConv2D/W/Adamsave_1/RestoreV2_4*&
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(
w
save_1/RestoreV2_5/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D/W/Adam_1
l
#save_1/RestoreV2_5/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_5AssignConv2D/W/Adam_1save_1/RestoreV2_5*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
p
save_1/RestoreV2_6/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBConv2D/b
l
#save_1/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_6AssignConv2D/bsave_1/RestoreV2_6*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/b
u
save_1/RestoreV2_7/tensor_namesConst*"
valueBBConv2D/b/Adam*
_output_shapes
:*
dtype0
l
#save_1/RestoreV2_7/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_7AssignConv2D/b/Adamsave_1/RestoreV2_7*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/b*
T0*
use_locking(
w
save_1/RestoreV2_8/tensor_namesConst*$
valueBBConv2D/b/Adam_1*
_output_shapes
:*
dtype0
l
#save_1/RestoreV2_8/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_8AssignConv2D/b/Adam_1save_1/RestoreV2_8*
use_locking(*
T0*
_class
loc:@Conv2D/b*
validate_shape(*
_output_shapes
: 
r
save_1/RestoreV2_9/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_1/W
l
#save_1/RestoreV2_9/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_9Assign
Conv2D_1/Wsave_1/RestoreV2_9*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(
x
 save_1/RestoreV2_10/tensor_namesConst*$
valueBBConv2D_1/W/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_10/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_10AssignConv2D_1/W/Adamsave_1/RestoreV2_10*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
z
 save_1/RestoreV2_11/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_1/W/Adam_1
m
$save_1/RestoreV2_11/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
$save_1/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
 save_1/RestoreV2_13/tensor_namesConst*$
valueBBConv2D_1/b/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_13/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
$save_1/RestoreV2_14/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_14AssignConv2D_1/b/Adam_1save_1/RestoreV2_14*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
s
 save_1/RestoreV2_15/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_2/W
m
$save_1/RestoreV2_15/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_15Assign
Conv2D_2/Wsave_1/RestoreV2_15*
use_locking(*
T0*
_class
loc:@Conv2D_2/W*
validate_shape(*'
_output_shapes
:@�
x
 save_1/RestoreV2_16/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_2/W/Adam
m
$save_1/RestoreV2_16/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_16AssignConv2D_2/W/Adamsave_1/RestoreV2_16*'
_output_shapes
:@�*
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
$save_1/RestoreV2_17/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_17AssignConv2D_2/W/Adam_1save_1/RestoreV2_17*'
_output_shapes
:@�*
validate_shape(*
_class
loc:@Conv2D_2/W*
T0*
use_locking(
s
 save_1/RestoreV2_18/tensor_namesConst*
valueBB
Conv2D_2/b*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_18/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_18Assign
Conv2D_2/bsave_1/RestoreV2_18*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b
x
 save_1/RestoreV2_19/tensor_namesConst*$
valueBBConv2D_2/b/Adam*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_19AssignConv2D_2/b/Adamsave_1/RestoreV2_19*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b
z
 save_1/RestoreV2_20/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_2/b/Adam_1
m
$save_1/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_20AssignConv2D_2/b/Adam_1save_1/RestoreV2_20*
_class
loc:@Conv2D_2/b*
_output_shapes	
:�*
T0*
validate_shape(*
use_locking(
s
 save_1/RestoreV2_21/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_3/W
m
$save_1/RestoreV2_21/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_21Assign
Conv2D_3/Wsave_1/RestoreV2_21*
use_locking(*
T0*
_class
loc:@Conv2D_3/W*
validate_shape(*'
_output_shapes
:�@
x
 save_1/RestoreV2_22/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_3/W/Adam
m
$save_1/RestoreV2_22/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_22AssignConv2D_3/W/Adamsave_1/RestoreV2_22*
use_locking(*
T0*
_class
loc:@Conv2D_3/W*
validate_shape(*'
_output_shapes
:�@
z
 save_1/RestoreV2_23/tensor_namesConst*&
valueBBConv2D_3/W/Adam_1*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_23/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_23	RestoreV2save_1/Const save_1/RestoreV2_23/tensor_names$save_1/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_23AssignConv2D_3/W/Adam_1save_1/RestoreV2_23*
use_locking(*
T0*
_class
loc:@Conv2D_3/W*
validate_shape(*'
_output_shapes
:�@
s
 save_1/RestoreV2_24/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_3/b
m
$save_1/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_24	RestoreV2save_1/Const save_1/RestoreV2_24/tensor_names$save_1/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
valueBBConv2D_3/b/Adam*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_25	RestoreV2save_1/Const save_1/RestoreV2_25/tensor_names$save_1/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_25AssignConv2D_3/b/Adamsave_1/RestoreV2_25*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
z
 save_1/RestoreV2_26/tensor_namesConst*&
valueBBConv2D_3/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_26/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_26	RestoreV2save_1/Const save_1/RestoreV2_26/tensor_names$save_1/RestoreV2_26/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_26AssignConv2D_3/b/Adam_1save_1/RestoreV2_26*
use_locking(*
T0*
_class
loc:@Conv2D_3/b*
validate_shape(*
_output_shapes
:@
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
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_27	RestoreV2save_1/Const save_1/RestoreV2_27/tensor_names$save_1/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
 save_1/RestoreV2_28/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_4/W/Adam
m
$save_1/RestoreV2_28/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_28	RestoreV2save_1/Const save_1/RestoreV2_28/tensor_names$save_1/RestoreV2_28/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_28AssignConv2D_4/W/Adamsave_1/RestoreV2_28*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0*
validate_shape(*
use_locking(
z
 save_1/RestoreV2_29/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_4/W/Adam_1
m
$save_1/RestoreV2_29/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_29	RestoreV2save_1/Const save_1/RestoreV2_29/tensor_names$save_1/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_29AssignConv2D_4/W/Adam_1save_1/RestoreV2_29*&
_output_shapes
:@ *
validate_shape(*
_class
loc:@Conv2D_4/W*
T0*
use_locking(
s
 save_1/RestoreV2_30/tensor_namesConst*
valueBB
Conv2D_4/b*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_30/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_30	RestoreV2save_1/Const save_1/RestoreV2_30/tensor_names$save_1/RestoreV2_30/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
 save_1/RestoreV2_31/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_4/b/Adam
m
$save_1/RestoreV2_31/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_31	RestoreV2save_1/Const save_1/RestoreV2_31/tensor_names$save_1/RestoreV2_31/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_31AssignConv2D_4/b/Adamsave_1/RestoreV2_31*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D_4/b*
T0*
use_locking(
z
 save_1/RestoreV2_32/tensor_namesConst*&
valueBBConv2D_4/b/Adam_1*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_32/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_32	RestoreV2save_1/Const save_1/RestoreV2_32/tensor_names$save_1/RestoreV2_32/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_32AssignConv2D_4/b/Adam_1save_1/RestoreV2_32*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D_4/b*
T0*
use_locking(
�
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
�
save_1/RestoreV2_33	RestoreV2save_1/Const save_1/RestoreV2_33/tensor_names$save_1/RestoreV2_33/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_33AssignCrossentropy/Mean/moving_avgsave_1/RestoreV2_33*
use_locking(*
validate_shape(*
T0*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg
y
 save_1/RestoreV2_34/tensor_namesConst*
_output_shapes
:*
dtype0*%
valueBBFullyConnected/W
m
$save_1/RestoreV2_34/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_34	RestoreV2save_1/Const save_1/RestoreV2_34/tensor_names$save_1/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_34AssignFullyConnected/Wsave_1/RestoreV2_34*
_output_shapes
:	 �*
validate_shape(*#
_class
loc:@FullyConnected/W*
T0*
use_locking(
~
 save_1/RestoreV2_35/tensor_namesConst*
dtype0*
_output_shapes
:**
value!BBFullyConnected/W/Adam
m
$save_1/RestoreV2_35/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_35	RestoreV2save_1/Const save_1/RestoreV2_35/tensor_names$save_1/RestoreV2_35/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_35AssignFullyConnected/W/Adamsave_1/RestoreV2_35*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
�
 save_1/RestoreV2_36/tensor_namesConst*
dtype0*
_output_shapes
:*,
value#B!BFullyConnected/W/Adam_1
m
$save_1/RestoreV2_36/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_36	RestoreV2save_1/Const save_1/RestoreV2_36/tensor_names$save_1/RestoreV2_36/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_36AssignFullyConnected/W/Adam_1save_1/RestoreV2_36*
_output_shapes
:	 �*
validate_shape(*#
_class
loc:@FullyConnected/W*
T0*
use_locking(
y
 save_1/RestoreV2_37/tensor_namesConst*%
valueBBFullyConnected/b*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_37/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_37	RestoreV2save_1/Const save_1/RestoreV2_37/tensor_names$save_1/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_37AssignFullyConnected/bsave_1/RestoreV2_37*
_output_shapes	
:�*
validate_shape(*#
_class
loc:@FullyConnected/b*
T0*
use_locking(
~
 save_1/RestoreV2_38/tensor_namesConst*
dtype0*
_output_shapes
:**
value!BBFullyConnected/b/Adam
m
$save_1/RestoreV2_38/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_38	RestoreV2save_1/Const save_1/RestoreV2_38/tensor_names$save_1/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_38AssignFullyConnected/b/Adamsave_1/RestoreV2_38*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:�
�
 save_1/RestoreV2_39/tensor_namesConst*,
value#B!BFullyConnected/b/Adam_1*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_39/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_39	RestoreV2save_1/Const save_1/RestoreV2_39/tensor_names$save_1/RestoreV2_39/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_39AssignFullyConnected/b/Adam_1save_1/RestoreV2_39*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b
{
 save_1/RestoreV2_40/tensor_namesConst*'
valueBBFullyConnected_1/W*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_40/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_40	RestoreV2save_1/Const save_1/RestoreV2_40/tensor_names$save_1/RestoreV2_40/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_40AssignFullyConnected_1/Wsave_1/RestoreV2_40*
_output_shapes
:	�*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
�
 save_1/RestoreV2_41/tensor_namesConst*
dtype0*
_output_shapes
:*,
value#B!BFullyConnected_1/W/Adam
m
$save_1/RestoreV2_41/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_41	RestoreV2save_1/Const save_1/RestoreV2_41/tensor_names$save_1/RestoreV2_41/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_41AssignFullyConnected_1/W/Adamsave_1/RestoreV2_41*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0*
validate_shape(*
use_locking(
�
 save_1/RestoreV2_42/tensor_namesConst*
_output_shapes
:*
dtype0*.
value%B#BFullyConnected_1/W/Adam_1
m
$save_1/RestoreV2_42/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_42	RestoreV2save_1/Const save_1/RestoreV2_42/tensor_names$save_1/RestoreV2_42/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_42AssignFullyConnected_1/W/Adam_1save_1/RestoreV2_42*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	�
{
 save_1/RestoreV2_43/tensor_namesConst*
dtype0*
_output_shapes
:*'
valueBBFullyConnected_1/b
m
$save_1/RestoreV2_43/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_43	RestoreV2save_1/Const save_1/RestoreV2_43/tensor_names$save_1/RestoreV2_43/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_43AssignFullyConnected_1/bsave_1/RestoreV2_43*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
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
�
save_1/RestoreV2_44	RestoreV2save_1/Const save_1/RestoreV2_44/tensor_names$save_1/RestoreV2_44/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_44AssignFullyConnected_1/b/Adamsave_1/RestoreV2_44*
_output_shapes
:*
validate_shape(*%
_class
loc:@FullyConnected_1/b*
T0*
use_locking(
�
 save_1/RestoreV2_45/tensor_namesConst*
dtype0*
_output_shapes
:*.
value%B#BFullyConnected_1/b/Adam_1
m
$save_1/RestoreV2_45/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_45	RestoreV2save_1/Const save_1/RestoreV2_45/tensor_names$save_1/RestoreV2_45/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_45AssignFullyConnected_1/b/Adam_1save_1/RestoreV2_45*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
t
 save_1/RestoreV2_46/tensor_namesConst*
dtype0*
_output_shapes
:* 
valueBBGlobal_Step
m
$save_1/RestoreV2_46/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_46	RestoreV2save_1/Const save_1/RestoreV2_46/tensor_names$save_1/RestoreV2_46/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_46AssignGlobal_Stepsave_1/RestoreV2_46*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Global_Step
v
 save_1/RestoreV2_47/tensor_namesConst*"
valueBBTraining_step*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_47/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_47	RestoreV2save_1/Const save_1/RestoreV2_47/tensor_names$save_1/RestoreV2_47/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_47AssignTraining_stepsave_1/RestoreV2_47*
use_locking(*
T0* 
_class
loc:@Training_step*
validate_shape(*
_output_shapes
: 
t
 save_1/RestoreV2_48/tensor_namesConst* 
valueBBis_training*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_48/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_48	RestoreV2save_1/Const save_1/RestoreV2_48/tensor_names$save_1/RestoreV2_48/shape_and_slices*
_output_shapes
:*
dtypes
2

�
save_1/Assign_48Assignis_trainingsave_1/RestoreV2_48*
_output_shapes
: *
validate_shape(*
_class
loc:@is_training*
T0
*
use_locking(
p
 save_1/RestoreV2_49/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBval_acc
m
$save_1/RestoreV2_49/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_49	RestoreV2save_1/Const save_1/RestoreV2_49/tensor_names$save_1/RestoreV2_49/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_49Assignval_accsave_1/RestoreV2_49*
use_locking(*
T0*
_class
loc:@val_acc*
validate_shape(*
_output_shapes
: 
q
 save_1/RestoreV2_50/tensor_namesConst*
valueBBval_loss*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_50/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_50	RestoreV2save_1/Const save_1/RestoreV2_50/tensor_names$save_1/RestoreV2_50/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_50Assignval_losssave_1/RestoreV2_50*
_class
loc:@val_loss*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
�
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_50
R
save_2/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
�
save_2/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�B�BConv2D/WBConv2D/bB
Conv2D_1/WB
Conv2D_1/bB
Conv2D_2/WB
Conv2D_2/bB
Conv2D_3/WB
Conv2D_3/bB
Conv2D_4/WB
Conv2D_4/bBFullyConnected/WBFullyConnected/bBFullyConnected_1/WBFullyConnected_1/b
�
save_2/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0
�
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
�
save_2/control_dependencyIdentitysave_2/Const^save_2/SaveV2*
_output_shapes
: *
_class
loc:@save_2/Const*
T0
n
save_2/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBConv2D/W
j
!save_2/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/AssignAssignConv2D/Wsave_2/RestoreV2*&
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(
p
save_2/RestoreV2_1/tensor_namesConst*
valueBBConv2D/b*
_output_shapes
:*
dtype0
l
#save_2/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_2/RestoreV2_1	RestoreV2save_2/Constsave_2/RestoreV2_1/tensor_names#save_2/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_2/Assign_1AssignConv2D/bsave_2/RestoreV2_1*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/b
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
B *
_output_shapes
:*
dtype0
�
save_2/RestoreV2_2	RestoreV2save_2/Constsave_2/RestoreV2_2/tensor_names#save_2/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_2Assign
Conv2D_1/Wsave_2/RestoreV2_2*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
r
save_2/RestoreV2_3/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_1/b
l
#save_2/RestoreV2_3/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_2/RestoreV2_3	RestoreV2save_2/Constsave_2/RestoreV2_3/tensor_names#save_2/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_2/Assign_3Assign
Conv2D_1/bsave_2/RestoreV2_3*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
r
save_2/RestoreV2_4/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_2/W
l
#save_2/RestoreV2_4/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_2/RestoreV2_4	RestoreV2save_2/Constsave_2/RestoreV2_4/tensor_names#save_2/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_2/Assign_4Assign
Conv2D_2/Wsave_2/RestoreV2_4*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
r
save_2/RestoreV2_5/tensor_namesConst*
valueBB
Conv2D_2/b*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_5/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_2/RestoreV2_5	RestoreV2save_2/Constsave_2/RestoreV2_5/tensor_names#save_2/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_2/Assign_5Assign
Conv2D_2/bsave_2/RestoreV2_5*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b
r
save_2/RestoreV2_6/tensor_namesConst*
valueBB
Conv2D_3/W*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_6/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_2/RestoreV2_6	RestoreV2save_2/Constsave_2/RestoreV2_6/tensor_names#save_2/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_6Assign
Conv2D_3/Wsave_2/RestoreV2_6*
use_locking(*
T0*
_class
loc:@Conv2D_3/W*
validate_shape(*'
_output_shapes
:�@
r
save_2/RestoreV2_7/tensor_namesConst*
valueBB
Conv2D_3/b*
_output_shapes
:*
dtype0
l
#save_2/RestoreV2_7/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_2/RestoreV2_7	RestoreV2save_2/Constsave_2/RestoreV2_7/tensor_names#save_2/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_7Assign
Conv2D_3/bsave_2/RestoreV2_7*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
r
save_2/RestoreV2_8/tensor_namesConst*
valueBB
Conv2D_4/W*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_8/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_2/RestoreV2_8	RestoreV2save_2/Constsave_2/RestoreV2_8/tensor_names#save_2/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_8Assign
Conv2D_4/Wsave_2/RestoreV2_8*&
_output_shapes
:@ *
validate_shape(*
_class
loc:@Conv2D_4/W*
T0*
use_locking(
r
save_2/RestoreV2_9/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_4/b
l
#save_2/RestoreV2_9/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_2/RestoreV2_9	RestoreV2save_2/Constsave_2/RestoreV2_9/tensor_names#save_2/RestoreV2_9/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_2/Assign_9Assign
Conv2D_4/bsave_2/RestoreV2_9*
use_locking(*
T0*
_class
loc:@Conv2D_4/b*
validate_shape(*
_output_shapes
: 
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
�
save_2/RestoreV2_10	RestoreV2save_2/Const save_2/RestoreV2_10/tensor_names$save_2/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_10AssignFullyConnected/Wsave_2/RestoreV2_10*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
:	 �
y
 save_2/RestoreV2_11/tensor_namesConst*
_output_shapes
:*
dtype0*%
valueBBFullyConnected/b
m
$save_2/RestoreV2_11/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_2/RestoreV2_11	RestoreV2save_2/Const save_2/RestoreV2_11/tensor_names$save_2/RestoreV2_11/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_2/Assign_11AssignFullyConnected/bsave_2/RestoreV2_11*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�*
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
$save_2/RestoreV2_12/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_2/RestoreV2_12	RestoreV2save_2/Const save_2/RestoreV2_12/tensor_names$save_2/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_2/Assign_12AssignFullyConnected_1/Wsave_2/RestoreV2_12*
_output_shapes
:	�*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
{
 save_2/RestoreV2_13/tensor_namesConst*'
valueBBFullyConnected_1/b*
_output_shapes
:*
dtype0
m
$save_2/RestoreV2_13/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_2/RestoreV2_13	RestoreV2save_2/Const save_2/RestoreV2_13/tensor_names$save_2/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_2/Assign_13AssignFullyConnected_1/bsave_2/RestoreV2_13*
_output_shapes
:*
validate_shape(*%
_class
loc:@FullyConnected_1/b*
T0*
use_locking(
�
save_2/restore_allNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13
�

initNoOp^is_training/Assign^Conv2D/W/Assign^Conv2D/b/Assign^Conv2D_1/W/Assign^Conv2D_1/b/Assign^Conv2D_2/W/Assign^Conv2D_2/b/Assign^Conv2D_3/W/Assign^Conv2D_3/b/Assign^Conv2D_4/W/Assign^Conv2D_4/b/Assign^FullyConnected/W/Assign^FullyConnected/b/Assign^FullyConnected_1/W/Assign^FullyConnected_1/b/Assign^Training_step/Assign^Global_Step/Assign^val_loss/Assign^val_acc/Assign ^Accuracy/Mean/moving_avg/Assign$^Crossentropy/Mean/moving_avg/Assign^Adam/beta1_power/Assign^Adam/beta2_power/Assign^Conv2D/W/Adam/Assign^Conv2D/W/Adam_1/Assign^Conv2D/b/Adam/Assign^Conv2D/b/Adam_1/Assign^Conv2D_1/W/Adam/Assign^Conv2D_1/W/Adam_1/Assign^Conv2D_1/b/Adam/Assign^Conv2D_1/b/Adam_1/Assign^Conv2D_2/W/Adam/Assign^Conv2D_2/W/Adam_1/Assign^Conv2D_2/b/Adam/Assign^Conv2D_2/b/Adam_1/Assign^Conv2D_3/W/Adam/Assign^Conv2D_3/W/Adam_1/Assign^Conv2D_3/b/Adam/Assign^Conv2D_3/b/Adam_1/Assign^Conv2D_4/W/Adam/Assign^Conv2D_4/W/Adam_1/Assign^Conv2D_4/b/Adam/Assign^Conv2D_4/b/Adam_1/Assign^FullyConnected/W/Adam/Assign^FullyConnected/W/Adam_1/Assign^FullyConnected/b/Adam/Assign^FullyConnected/b/Adam_1/Assign^FullyConnected_1/W/Adam/Assign!^FullyConnected_1/W/Adam_1/Assign^FullyConnected_1/b/Adam/Assign!^FullyConnected_1/b/Adam_1/Assign

init_1NoOp
"

group_depsNoOp^init^init_1
#
init_2NoOp^is_training/Assign
R
save_3/ConstConst*
_output_shapes
: *
dtype0*
valueB Bmodel
�
save_3/SaveV2/tensor_namesConst*
_output_shapes
:3*
dtype0*�
value�B�3BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBConv2D/WBConv2D/W/AdamBConv2D/W/Adam_1BConv2D/bBConv2D/b/AdamBConv2D/b/Adam_1B
Conv2D_1/WBConv2D_1/W/AdamBConv2D_1/W/Adam_1B
Conv2D_1/bBConv2D_1/b/AdamBConv2D_1/b/Adam_1B
Conv2D_2/WBConv2D_2/W/AdamBConv2D_2/W/Adam_1B
Conv2D_2/bBConv2D_2/b/AdamBConv2D_2/b/Adam_1B
Conv2D_3/WBConv2D_3/W/AdamBConv2D_3/W/Adam_1B
Conv2D_3/bBConv2D_3/b/AdamBConv2D_3/b/Adam_1B
Conv2D_4/WBConv2D_4/W/AdamBConv2D_4/W/Adam_1B
Conv2D_4/bBConv2D_4/b/AdamBConv2D_4/b/Adam_1BCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss
�
save_3/SaveV2/shape_and_slicesConst*
_output_shapes
:3*
dtype0*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
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
�
save_3/control_dependencyIdentitysave_3/Const^save_3/SaveV2*
_output_shapes
: *
_class
loc:@save_3/Const*
T0
~
save_3/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*-
value$B"BAccuracy/Mean/moving_avg
j
!save_3/RestoreV2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/AssignAssignAccuracy/Mean/moving_avgsave_3/RestoreV2*
_output_shapes
: *
validate_shape(*+
_class!
loc:@Accuracy/Mean/moving_avg*
T0*
use_locking(
x
save_3/RestoreV2_1/tensor_namesConst*%
valueBBAdam/beta1_power*
_output_shapes
:*
dtype0
l
#save_3/RestoreV2_1/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_1	RestoreV2save_3/Constsave_3/RestoreV2_1/tensor_names#save_3/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_1AssignAdam/beta1_powersave_3/RestoreV2_1*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
x
save_3/RestoreV2_2/tensor_namesConst*
dtype0*
_output_shapes
:*%
valueBBAdam/beta2_power
l
#save_3/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_2	RestoreV2save_3/Constsave_3/RestoreV2_2/tensor_names#save_3/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_2AssignAdam/beta2_powersave_3/RestoreV2_2*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
p
save_3/RestoreV2_3/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBConv2D/W
l
#save_3/RestoreV2_3/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_3	RestoreV2save_3/Constsave_3/RestoreV2_3/tensor_names#save_3/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_3AssignConv2D/Wsave_3/RestoreV2_3*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(
u
save_3/RestoreV2_4/tensor_namesConst*"
valueBBConv2D/W/Adam*
_output_shapes
:*
dtype0
l
#save_3/RestoreV2_4/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_4	RestoreV2save_3/Constsave_3/RestoreV2_4/tensor_names#save_3/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_4AssignConv2D/W/Adamsave_3/RestoreV2_4*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(
w
save_3/RestoreV2_5/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D/W/Adam_1
l
#save_3/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_5	RestoreV2save_3/Constsave_3/RestoreV2_5/tensor_names#save_3/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
�
save_3/RestoreV2_6	RestoreV2save_3/Constsave_3/RestoreV2_6/tensor_names#save_3/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_6AssignConv2D/bsave_3/RestoreV2_6*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/b*
T0*
use_locking(
u
save_3/RestoreV2_7/tensor_namesConst*
dtype0*
_output_shapes
:*"
valueBBConv2D/b/Adam
l
#save_3/RestoreV2_7/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_7	RestoreV2save_3/Constsave_3/RestoreV2_7/tensor_names#save_3/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_7AssignConv2D/b/Adamsave_3/RestoreV2_7*
use_locking(*
T0*
_class
loc:@Conv2D/b*
validate_shape(*
_output_shapes
: 
w
save_3/RestoreV2_8/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D/b/Adam_1
l
#save_3/RestoreV2_8/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_8	RestoreV2save_3/Constsave_3/RestoreV2_8/tensor_names#save_3/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_8AssignConv2D/b/Adam_1save_3/RestoreV2_8*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/b*
T0*
use_locking(
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
�
save_3/RestoreV2_9	RestoreV2save_3/Constsave_3/RestoreV2_9/tensor_names#save_3/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
$save_3/RestoreV2_10/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_10	RestoreV2save_3/Const save_3/RestoreV2_10/tensor_names$save_3/RestoreV2_10/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
valueBBConv2D_1/W/Adam_1*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_11/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_11	RestoreV2save_3/Const save_3/RestoreV2_11/tensor_names$save_3/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
valueBB
Conv2D_1/b*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_12/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_12	RestoreV2save_3/Const save_3/RestoreV2_12/tensor_names$save_3/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_12Assign
Conv2D_1/bsave_3/RestoreV2_12*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
x
 save_3/RestoreV2_13/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_1/b/Adam
m
$save_3/RestoreV2_13/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_13	RestoreV2save_3/Const save_3/RestoreV2_13/tensor_names$save_3/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
$save_3/RestoreV2_14/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_14	RestoreV2save_3/Const save_3/RestoreV2_14/tensor_names$save_3/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_14AssignConv2D_1/b/Adam_1save_3/RestoreV2_14*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_1/b*
T0*
use_locking(
s
 save_3/RestoreV2_15/tensor_namesConst*
valueBB
Conv2D_2/W*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_15/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_15	RestoreV2save_3/Const save_3/RestoreV2_15/tensor_names$save_3/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_15Assign
Conv2D_2/Wsave_3/RestoreV2_15*'
_output_shapes
:@�*
validate_shape(*
_class
loc:@Conv2D_2/W*
T0*
use_locking(
x
 save_3/RestoreV2_16/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_2/W/Adam
m
$save_3/RestoreV2_16/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_16	RestoreV2save_3/Const save_3/RestoreV2_16/tensor_names$save_3/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_16AssignConv2D_2/W/Adamsave_3/RestoreV2_16*'
_output_shapes
:@�*
validate_shape(*
_class
loc:@Conv2D_2/W*
T0*
use_locking(
z
 save_3/RestoreV2_17/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_2/W/Adam_1
m
$save_3/RestoreV2_17/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_17	RestoreV2save_3/Const save_3/RestoreV2_17/tensor_names$save_3/RestoreV2_17/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_17AssignConv2D_2/W/Adam_1save_3/RestoreV2_17*
use_locking(*
T0*
_class
loc:@Conv2D_2/W*
validate_shape(*'
_output_shapes
:@�
s
 save_3/RestoreV2_18/tensor_namesConst*
valueBB
Conv2D_2/b*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_18/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_18	RestoreV2save_3/Const save_3/RestoreV2_18/tensor_names$save_3/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_18Assign
Conv2D_2/bsave_3/RestoreV2_18*
_output_shapes	
:�*
validate_shape(*
_class
loc:@Conv2D_2/b*
T0*
use_locking(
x
 save_3/RestoreV2_19/tensor_namesConst*$
valueBBConv2D_2/b/Adam*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_19/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_19	RestoreV2save_3/Const save_3/RestoreV2_19/tensor_names$save_3/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_19AssignConv2D_2/b/Adamsave_3/RestoreV2_19*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b
z
 save_3/RestoreV2_20/tensor_namesConst*&
valueBBConv2D_2/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_20/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_20	RestoreV2save_3/Const save_3/RestoreV2_20/tensor_names$save_3/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_20AssignConv2D_2/b/Adam_1save_3/RestoreV2_20*
use_locking(*
T0*
_class
loc:@Conv2D_2/b*
validate_shape(*
_output_shapes	
:�
s
 save_3/RestoreV2_21/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_3/W
m
$save_3/RestoreV2_21/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_21	RestoreV2save_3/Const save_3/RestoreV2_21/tensor_names$save_3/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_21Assign
Conv2D_3/Wsave_3/RestoreV2_21*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
T0*
validate_shape(*
use_locking(
x
 save_3/RestoreV2_22/tensor_namesConst*$
valueBBConv2D_3/W/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_22/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_22	RestoreV2save_3/Const save_3/RestoreV2_22/tensor_names$save_3/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_22AssignConv2D_3/W/Adamsave_3/RestoreV2_22*
use_locking(*
T0*
_class
loc:@Conv2D_3/W*
validate_shape(*'
_output_shapes
:�@
z
 save_3/RestoreV2_23/tensor_namesConst*&
valueBBConv2D_3/W/Adam_1*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_23/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_23	RestoreV2save_3/Const save_3/RestoreV2_23/tensor_names$save_3/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_23AssignConv2D_3/W/Adam_1save_3/RestoreV2_23*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
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
$save_3/RestoreV2_24/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_24	RestoreV2save_3/Const save_3/RestoreV2_24/tensor_names$save_3/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_24Assign
Conv2D_3/bsave_3/RestoreV2_24*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
x
 save_3/RestoreV2_25/tensor_namesConst*$
valueBBConv2D_3/b/Adam*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_25/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_25	RestoreV2save_3/Const save_3/RestoreV2_25/tensor_names$save_3/RestoreV2_25/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_25AssignConv2D_3/b/Adamsave_3/RestoreV2_25*
use_locking(*
T0*
_class
loc:@Conv2D_3/b*
validate_shape(*
_output_shapes
:@
z
 save_3/RestoreV2_26/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_3/b/Adam_1
m
$save_3/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_26	RestoreV2save_3/Const save_3/RestoreV2_26/tensor_names$save_3/RestoreV2_26/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
dtype0*
_output_shapes
:*
valueBB
Conv2D_4/W
m
$save_3/RestoreV2_27/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_27	RestoreV2save_3/Const save_3/RestoreV2_27/tensor_names$save_3/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_27Assign
Conv2D_4/Wsave_3/RestoreV2_27*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
x
 save_3/RestoreV2_28/tensor_namesConst*$
valueBBConv2D_4/W/Adam*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_28/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_28	RestoreV2save_3/Const save_3/RestoreV2_28/tensor_names$save_3/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_28AssignConv2D_4/W/Adamsave_3/RestoreV2_28*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
z
 save_3/RestoreV2_29/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_4/W/Adam_1
m
$save_3/RestoreV2_29/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_29	RestoreV2save_3/Const save_3/RestoreV2_29/tensor_names$save_3/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
Conv2D_4/b*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_30/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_30	RestoreV2save_3/Const save_3/RestoreV2_30/tensor_names$save_3/RestoreV2_30/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_30Assign
Conv2D_4/bsave_3/RestoreV2_30*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D_4/b*
T0*
use_locking(
x
 save_3/RestoreV2_31/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_4/b/Adam
m
$save_3/RestoreV2_31/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_31	RestoreV2save_3/Const save_3/RestoreV2_31/tensor_names$save_3/RestoreV2_31/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_31AssignConv2D_4/b/Adamsave_3/RestoreV2_31*
use_locking(*
T0*
_class
loc:@Conv2D_4/b*
validate_shape(*
_output_shapes
: 
z
 save_3/RestoreV2_32/tensor_namesConst*&
valueBBConv2D_4/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_32/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_32	RestoreV2save_3/Const save_3/RestoreV2_32/tensor_names$save_3/RestoreV2_32/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_32AssignConv2D_4/b/Adam_1save_3/RestoreV2_32*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
�
 save_3/RestoreV2_33/tensor_namesConst*1
value(B&BCrossentropy/Mean/moving_avg*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_33/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_33	RestoreV2save_3/Const save_3/RestoreV2_33/tensor_names$save_3/RestoreV2_33/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_33AssignCrossentropy/Mean/moving_avgsave_3/RestoreV2_33*
use_locking(*
validate_shape(*
T0*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg
y
 save_3/RestoreV2_34/tensor_namesConst*
_output_shapes
:*
dtype0*%
valueBBFullyConnected/W
m
$save_3/RestoreV2_34/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_34	RestoreV2save_3/Const save_3/RestoreV2_34/tensor_names$save_3/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_34AssignFullyConnected/Wsave_3/RestoreV2_34*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
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
�
save_3/RestoreV2_35	RestoreV2save_3/Const save_3/RestoreV2_35/tensor_names$save_3/RestoreV2_35/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_35AssignFullyConnected/W/Adamsave_3/RestoreV2_35*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
�
 save_3/RestoreV2_36/tensor_namesConst*,
value#B!BFullyConnected/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_36/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_36	RestoreV2save_3/Const save_3/RestoreV2_36/tensor_names$save_3/RestoreV2_36/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_36AssignFullyConnected/W/Adam_1save_3/RestoreV2_36*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
T0*
validate_shape(*
use_locking(
y
 save_3/RestoreV2_37/tensor_namesConst*%
valueBBFullyConnected/b*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_37/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_37	RestoreV2save_3/Const save_3/RestoreV2_37/tensor_names$save_3/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_37AssignFullyConnected/bsave_3/RestoreV2_37*
_output_shapes	
:�*
validate_shape(*#
_class
loc:@FullyConnected/b*
T0*
use_locking(
~
 save_3/RestoreV2_38/tensor_namesConst**
value!BBFullyConnected/b/Adam*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_38/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_38	RestoreV2save_3/Const save_3/RestoreV2_38/tensor_names$save_3/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_38AssignFullyConnected/b/Adamsave_3/RestoreV2_38*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�*
T0*
validate_shape(*
use_locking(
�
 save_3/RestoreV2_39/tensor_namesConst*
dtype0*
_output_shapes
:*,
value#B!BFullyConnected/b/Adam_1
m
$save_3/RestoreV2_39/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_39	RestoreV2save_3/Const save_3/RestoreV2_39/tensor_names$save_3/RestoreV2_39/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_39AssignFullyConnected/b/Adam_1save_3/RestoreV2_39*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b
{
 save_3/RestoreV2_40/tensor_namesConst*
dtype0*
_output_shapes
:*'
valueBBFullyConnected_1/W
m
$save_3/RestoreV2_40/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_40	RestoreV2save_3/Const save_3/RestoreV2_40/tensor_names$save_3/RestoreV2_40/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_40AssignFullyConnected_1/Wsave_3/RestoreV2_40*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0*
validate_shape(*
use_locking(
�
 save_3/RestoreV2_41/tensor_namesConst*,
value#B!BFullyConnected_1/W/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_41/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_41	RestoreV2save_3/Const save_3/RestoreV2_41/tensor_names$save_3/RestoreV2_41/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_41AssignFullyConnected_1/W/Adamsave_3/RestoreV2_41*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0*
validate_shape(*
use_locking(
�
 save_3/RestoreV2_42/tensor_namesConst*.
value%B#BFullyConnected_1/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_42/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_42	RestoreV2save_3/Const save_3/RestoreV2_42/tensor_names$save_3/RestoreV2_42/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_42AssignFullyConnected_1/W/Adam_1save_3/RestoreV2_42*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0*
validate_shape(*
use_locking(
{
 save_3/RestoreV2_43/tensor_namesConst*'
valueBBFullyConnected_1/b*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_43/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_43	RestoreV2save_3/Const save_3/RestoreV2_43/tensor_names$save_3/RestoreV2_43/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_43AssignFullyConnected_1/bsave_3/RestoreV2_43*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
�
 save_3/RestoreV2_44/tensor_namesConst*,
value#B!BFullyConnected_1/b/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_44/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_44	RestoreV2save_3/Const save_3/RestoreV2_44/tensor_names$save_3/RestoreV2_44/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_44AssignFullyConnected_1/b/Adamsave_3/RestoreV2_44*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
�
 save_3/RestoreV2_45/tensor_namesConst*
_output_shapes
:*
dtype0*.
value%B#BFullyConnected_1/b/Adam_1
m
$save_3/RestoreV2_45/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_45	RestoreV2save_3/Const save_3/RestoreV2_45/tensor_names$save_3/RestoreV2_45/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_45AssignFullyConnected_1/b/Adam_1save_3/RestoreV2_45*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
t
 save_3/RestoreV2_46/tensor_namesConst*
_output_shapes
:*
dtype0* 
valueBBGlobal_Step
m
$save_3/RestoreV2_46/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_46	RestoreV2save_3/Const save_3/RestoreV2_46/tensor_names$save_3/RestoreV2_46/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_46AssignGlobal_Stepsave_3/RestoreV2_46*
_class
loc:@Global_Step*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
v
 save_3/RestoreV2_47/tensor_namesConst*"
valueBBTraining_step*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_47/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_47	RestoreV2save_3/Const save_3/RestoreV2_47/tensor_names$save_3/RestoreV2_47/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
valueBBis_training*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_48/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_48	RestoreV2save_3/Const save_3/RestoreV2_48/tensor_names$save_3/RestoreV2_48/shape_and_slices*
_output_shapes
:*
dtypes
2

�
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
 save_3/RestoreV2_49/tensor_namesConst*
valueBBval_acc*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_49/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_49	RestoreV2save_3/Const save_3/RestoreV2_49/tensor_names$save_3/RestoreV2_49/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
valueBBval_loss*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_50/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_50	RestoreV2save_3/Const save_3/RestoreV2_50/tensor_names$save_3/RestoreV2_50/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_50Assignval_losssave_3/RestoreV2_50*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@val_loss
�
save_3/restore_allNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_2^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26^save_3/Assign_27^save_3/Assign_28^save_3/Assign_29^save_3/Assign_30^save_3/Assign_31^save_3/Assign_32^save_3/Assign_33^save_3/Assign_34^save_3/Assign_35^save_3/Assign_36^save_3/Assign_37^save_3/Assign_38^save_3/Assign_39^save_3/Assign_40^save_3/Assign_41^save_3/Assign_42^save_3/Assign_43^save_3/Assign_44^save_3/Assign_45^save_3/Assign_46^save_3/Assign_47^save_3/Assign_48^save_3/Assign_49^save_3/Assign_50""L
layer_variables/FullyConnected*
(
FullyConnected/W:0
FullyConnected/b:0"?
layer_tensor/FullyConnected_1

FullyConnected_1/Softmax:0"�
cond_context��
�
Dropout/cond/cond_textDropout/cond/pred_id:0Dropout/cond/switch_t:0 *�
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
�
Dropout/cond/cond_text_1Dropout/cond/pred_id:0Dropout/cond/switch_f:0*�
Dropout/cond/Switch_1:0
Dropout/cond/Switch_1:1
Dropout/cond/pred_id:0
Dropout/cond/switch_f:0
FullyConnected/Relu:00
FullyConnected/Relu:0Dropout/cond/Switch_1:0"
targets

targets/Y:0"4
layer_variables/Conv2D


Conv2D/W:0

Conv2D/b:0":
layer_variables/Conv2D_4

Conv2D_4/W:0
Conv2D_4/b:0"�
	variables��
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
FullyConnected_1/b/Adam_1:0 FullyConnected_1/b/Adam_1/Assign FullyConnected_1/b/Adam_1/read:0"0
layer_tensor/Dropout

Dropout/cond/Merge:0"R
 layer_variables/FullyConnected_1.
,
FullyConnected_1/W:0
FullyConnected_1/b:0",
layer_tensor/Conv2D_3

Conv2D_3/Relu:0"�
layer_tensor/MaxPool2Ds
q
MaxPool2D/MaxPool:0
MaxPool2D_1/MaxPool:0
MaxPool2D_2/MaxPool:0
MaxPool2D_3/MaxPool:0
MaxPool2D_4/MaxPool:0"#
layer_tensor/input

	input/X:0"$
train_op

Adam/apply_grad_op_0":
layer_variables/Conv2D_3

Conv2D_3/W:0
Conv2D_3/b:0"�
model_variables�
�
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
FullyConnected_1/b:0",
layer_tensor/Conv2D_2

Conv2D_2/Relu:0"8
layer_tensor/FullyConnected

FullyConnected/Relu:0":
layer_variables/Conv2D_2

Conv2D_2/W:0
Conv2D_2/b:0"�
trainable_variables��
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
Adam/Loss/raw:0"
inputs

	input/X:0",
layer_tensor/Conv2D_1

Conv2D_1/Relu:0" 
is_training

is_training:0"�
activations�
�
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
FullyConnected_1/Softmax:0"+
is_training_ops

Assign:0

Assign_1:0":
layer_variables/Conv2D_1

Conv2D_1/W:0
Conv2D_1/b:0"
trainops

Adam"6
Adam_training_summaries

Loss:0
Adam/Loss/raw:0",
layer_tensor/Conv2D_4

Conv2D_4/Relu:00�Y       �e�	Է��q9�A*L

Lossz� ?

Adam/Loss/rawb�?

Accuracy/__raw_  8?

Accuracyff�>�6�cY       �e�	�轢q9�A*L

Lossۇ?

Adam/Loss/raw
R�>

Accuracy/__raw_  @?

Accuracy�7(?�cbAY       �e�	zV�q9�A*L

Lossu��>

Adam/Loss/rawHլ>

Accuracy/__raw_  @?

Accuracy�:?R�F�Y       �e�	�7�q9�A*L

LossVE�>

Adam/Loss/raw25�>

Accuracy/__raw_  <?

Accuracy�+>?JRֿY       �e�	���q9�A*L

Loss?M�>

Adam/Loss/raw���>

Accuracy/__raw_  L?

Accuracyu�<?���'Y       �e�	�,��q9�A*L

Loss��>

Adam/Loss/raw�ҽ>

Accuracy/__raw_  (?

Accuracy��E?�`s�Y       �e�	*�]�q9�A*L

Loss,��>

Adam/Loss/raw���>

Accuracy/__raw_  @?

Accuracy�5?�/��Y       �e�	��q9�A	*L

Loss�_�>

Adam/Loss/raw,�>

Accuracy/__raw_  4?

Accuracy%�:?*&V�Y       �e�	�6œq9�A
*L

Loss�Ŧ>

Adam/Loss/raw�ź>

Accuracy/__raw_  4?

Accuracy�n7?An�JY       �e�	��}�q9�A*L

Loss�>�>

Adam/Loss/raw��>

Accuracy/__raw_  <?

Accuracyh�5?{��[Y       �e�	_b?�q9�A*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  (?

Accuracy�8?�
��Y       �e�	�/�q9�A*L

LossR��>

Adam/Loss/rawP��>

Accuracy/__raw_  ,?

Accuracyb{1?m���Y       �e�	��q9�A*L

Loss�'�>

Adam/Loss/rawCp?

Accuracy/__raw_  L?

AccuracyF=/?8��Y       �e�	kՙq9�A*L

Loss&p�>

Adam/Loss/rawO��>

Accuracy/__raw_  4?

AccuracyW~:?���Y       �e�	���q9�A*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  P?

Accuracy�8?�r@Y       �e�	S�x�q9�A*L

LossV2�>

Adam/Loss/raw�Q�>

Accuracy/__raw_  D?

Accuracyj�@?R��cY       �e�	�L�q9�A*L

Loss�P�>

Adam/Loss/raw�f�>

Accuracy/__raw_  X?

Accuracy��A?�n�Y       �e�	DQ�q9�A*L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_  H?

Accuracy�7I?�"_<Y       �e�	T��q9�A*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  P?

Accuracy��H?���Y       �e�	N�Ԟq9�A*L

Loss4�>

Adam/Loss/raw���>

Accuracy/__raw_  T?

Accuracy�K?�#YdY       �e�	�I��q9�A*L

Loss ��>

Adam/Loss/raw�ǥ>

Accuracy/__raw_  L?

Accuracy��M?^JiNY       �e�	�?��q9�A*L

Loss��>

Adam/Loss/rawB��>

Accuracy/__raw_  8?

Accuracy�;M?>Zw4Y       �e�	~�q9�A*L

Lossn��>

Adam/Loss/raw��>

Accuracy/__raw_  H?

Accuracy�BG?�B8Y       �e�	���q9�A*L

Loss�G�>

Adam/Loss/raw��>

Accuracy/__raw_  H?

AccuracykvG?_�rY       �e�	��ܣq9�A*L

Loss�t�>

Adam/Loss/raw��>

Accuracy/__raw_  8?

Accuracy֚G?���Y       �e�	1|�q9�A*L

LossP�>

Adam/Loss/rawG,�>

Accuracy/__raw_  D?

Accuracy��C?�BY       �e�	i�ҧq9�A*L

LossN�>

Adam/Loss/raw���>

Accuracy/__raw_  @?

Accuracy��C?*8&ZY       �e�	"�ʨq9�A*L

Losstz�>

Adam/Loss/rawf��>

Accuracy/__raw_  L?

Accuracy��B?�*?�Y       �e�	�a��q9�A*L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_  L?

Accuracy��D?���Y       �e�	� [�q9�A*L

Loss걹>

Adam/Loss/raw��>

Accuracy/__raw_  L?

Accuracy��F?g���Y       �e�	���q9�A *L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_  D?

Accuracy��G?4�VY       �e�	�H�q9�A!*L

Lossi�>

Adam/Loss/raw�T�>

Accuracy/__raw_  H?

Accuracy��F?�4BY       �e�	A�Ԭq9�A"*L

Loss�a�>

Adam/Loss/raw���>

Accuracy/__raw_  D?

Accuracy�1G?�m��Y       �e�	�w��q9�A#*L

LossW�>

Adam/Loss/raw"i�>

Accuracy/__raw_  8?

Accuracy��F?�Ѹ�Y       �e�	�!w�q9�A$*L

Lossus�>

Adam/Loss/raw���>

Accuracy/__raw_  L?

Accuracy�C?�$�Y       �e�	�Y�q9�A%*L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_  L?

Accuracyx>E?���Y       �e�	�>�q9�A&*L

Loss�>

Adam/Loss/raw���>

Accuracy/__raw_  8?

AccuracyېF?�6^�Y       �e�	���q9�A'*L

Loss���>

Adam/Loss/rawxc�>

Accuracy/__raw_  <?

Accuracy��C?��U�Y       �e�	���q9�A(*L

Loss�D�>

Adam/Loss/raw?��>

Accuracy/__raw_  4?

Accuracy�QB?Di�wY       �e�	s-˲q9�A)*L

Lossv��>

Adam/Loss/raw��>

Accuracy/__raw_  T?

AccuracyH�??�(�Y       �e�	����q9�A**L

Loss4��>

Adam/Loss/rawԼ>

Accuracy/__raw_  D?

Accuracy;XC?ހ�PY       �e�	��z�q9�A+*L

Loss�/�>

Adam/Loss/raw�>

Accuracy/__raw_  <?

Accuracy�uC?	l
�Y       �e�	�_�q9�A,*L

Loss�|�>

Adam/Loss/raw�ޟ>

Accuracy/__raw_  H?

AccuracyJ+B?P�h�Y       �e�	��8�q9�A-*L

Loss�y�>

Adam/Loss/raw��>

Accuracy/__raw_  8?

Accuracy�(C?�p�Y       �e�	��q9�A.*L

Loss�e�>

Adam/Loss/raw8�>

Accuracy/__raw_  P?

Accuracy�LA?�wY       �e�	��ҷq9�A/*L

Loss�O�>

Adam/Loss/raw!��>

Accuracy/__raw_  T?

Accuracyw�C?|�n�Y       �e�	����q9�A0*L

Loss~��>

Adam/Loss/raw�L�>

Accuracy/__raw_  T?

Accuracy�RF?���uY       �e�	M�H�q9�A1*L

Loss�d�>

Adam/Loss/raw.\�>

Accuracy/__raw_  @?

Accuracy�{H?rQ�Y       �e�	wK�q9�A2*L

Loss��>

Adam/Loss/rawl�>

Accuracy/__raw_  T?

Accuracy�*G?C��Y       �e�	����q9�A3*L

Loss��>

Adam/Loss/rawn��>

Accuracy/__raw_  H?

Accuracy�I?~]jY       �e�	���q9�A4*L

Loss�{�>

Adam/Loss/raw�0�>

Accuracy/__raw_  T?

Accuracy��H?�D��Y       �e�	��:�q9�A5*L

Loss`�>

Adam/Loss/raw�c�>

Accuracy/__raw_  X?

AccuracyҕJ?Q��Y       �e�	h���q9�A6*L

Loss/�>

Adam/Loss/rawB��>

Accuracy/__raw_  8?

AccuracyU�L?͝m�Y       �e�	�}��q9�A7*L

LossC��>

Adam/Loss/raw2�>

Accuracy/__raw_  (?

Accuracym�I?��&�Y       �e�	�[q�q9�A8*L

Loss�]�>

Adam/Loss/raw�9�>

Accuracy/__raw_  T?

Accuracy��D?𔪅Y       �e�	E/�q9�A9*L

Loss�1�>

Adam/Loss/raw���>

Accuracy/__raw_  <?

Accuracy��F?���Y       �e�	����q9�A:*L

Loss���>

Adam/Loss/raw^��>

Accuracy/__raw_  H?

AccuracyyE?��J�Y       �e�	I���q9�A;*L

Loss��>

Adam/Loss/rawo�>

Accuracy/__raw_  @?

Accuracy��E?~�tY       �e�	aQm�q9�A<*L

Loss�3�>

Adam/Loss/raw�1�>

Accuracy/__raw_  @?

AccuracyE?H-/Y       �e�	b�0�q9�A=*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  P?

Accuracy�bD?[	W�Y       �e�	y���q9�A>*L

Lossu�>

Adam/Loss/raw���>

Accuracy/__raw_  T?

Accuracy��E?�;�Y       �e�	s+��q9�A?*L

Loss��>

Adam/Loss/rawY��>

Accuracy/__raw_  T?

Accuracy/�G?ӑY       �e�	MM]�q9�A@*L

Loss��>

Adam/Loss/raw\j�>

Accuracy/__raw_  @?

Accuracy�5I?��nY       �e�	��q9�AA*L

Loss�X�>

Adam/Loss/rawB�>

Accuracy/__raw_  H?

AccuracyH?�+�6Y       �e�	d�5�q9�AB*L

Loss^٭>

Adam/Loss/raw���>

Accuracy/__raw_  @?

Accuracy�H?R6�{Y       �e�	�%��q9�AC*L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_  $?

Accuracy G?��HY       �e�	&���q9�AD*L

Loss߹�>

Adam/Loss/raw�
�>

Accuracy/__raw_  L?

Accuracy��B?>���Y       �e�	ٓw�q9�AE*L

LossH\�>

Adam/Loss/raw�/�>

Accuracy/__raw_  L?

Accuracy D?��JY       �e�	��2�q9�AF*L

Loss�>

Adam/Loss/raw ��>

Accuracy/__raw_  L?

AccuracyY�D?:К�Y       �e�	�B��q9�AG*L

Loss�	�>

Adam/Loss/raw�{�>

Accuracy/__raw_  \?

Accuracy��E?r�\�Y       �e�	i���q9�AH*L

Lossr�>

Adam/Loss/raw�j�>

Accuracy/__raw_  L?

Accuracy!<H?�ÈY       �e�	Ⰳ�q9�AI*L

Loss�ǯ>

Adam/Loss/raw�>

Accuracy/__raw_  X?

Accuracy:�H?��[Y       �e�	��V�q9�AJ*L

Loss���>

Adam/Loss/rawsJ�>

Accuracy/__raw_  P?

AccuracyoVJ?и+�Y       �e�	c��q9�AK*L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_  @?

Accuracy��J?��
Y       �e�	@Q��q9�AL*L

LossT�>

Adam/Loss/rawR�>

Accuracy/__raw_  D?

Accuracy;�I?��:Y       �e�	�r��q9�AM*L

Loss6ڬ>

Adam/Loss/raw?u�>

Accuracy/__raw_  P?

Accuracy�*I?�c7�Y       �e�	�qG�q9�AN*L

Loss�=�>

Adam/Loss/raw��>

Accuracy/__raw_  T?

Accuracy��I?\�'�Y       �e�	f��q9�AO*L

Loss��>

Adam/Loss/raw6ҙ>

Accuracy/__raw_  <?

Accuracy��J?-��Y       �e�	���q9�AP*L

Lossxh�>

Adam/Loss/raw.��>

Accuracy/__raw_  4?

Accuracy�fI?�Y"Y       �e�	�jx�q9�AQ*L

LossWw�>

Adam/Loss/rawt��>

Accuracy/__raw_  P?

Accuracy�<G?mf��Y       �e�	��/�q9�AR*L

Loss�x�>

Adam/Loss/raw�ݤ>

Accuracy/__raw_  L?

AccuracyH?!6Y       �e�	����q9�AS*L

Loss�>

Adam/Loss/raw�v�>

Accuracy/__raw_  8?

Accuracy��H?�דY       �e�	����q9�AT*L

Lossx*�>

Adam/Loss/rawx�>

Accuracy/__raw_  H?

Accuracy�F?�D�Y       �e�	�yk�q9�AU*L

Loss�Y�>

Adam/Loss/raw�Ś>

Accuracy/__raw_  X?

Accuracy��F?+��LY       �e�	-	)�q9�AV*L

Loss�ʨ>

Adam/Loss/raw���>

Accuracy/__raw_  D?

Accuracy��H?U>�Y       �e�	���q9�AW*L

LossU��>

Adam/Loss/raw��>

Accuracy/__raw_  T?

Accuracy 4H?��dOY       �e�	����q9�AX*L

Loss�O�>

Adam/Loss/raw���>

Accuracy/__raw_  T?

Accuracy bI?�N*Y       �e�	U�b�q9�AY*L

LossN��>

Adam/Loss/rawO��>

Accuracy/__raw_  H?

Accuracy�qJ?+��RY       �e�	���q9�AZ*L

Loss�է>

Adam/Loss/rawN�>

Accuracy/__raw_  L?

Accuracy83J?����Y       �e�	�G��q9�A[*L

Loss�[�>

Adam/Loss/raw��>

Accuracy/__raw_  T?

AccuracyLaJ?[C��Y       �e�	Û��q9�A\*L

Loss�l�>

Adam/Loss/rawF�>

Accuracy/__raw_  \?

Accuracy�WK?��*Y       �e�	�Q�q9�A]*L

Loss!}�>

Adam/Loss/rawn��>

Accuracy/__raw_  P?

AccuracyM?�Z;Y       �e�	���q9�A^*L

Loss)��>

Adam/Loss/rawp��>

Accuracy/__raw_  4?

Accuracy�NM?��Y       �e�	d���q9�A_*L

LossJD�>

Adam/Loss/raw8�>

Accuracy/__raw_  L?

Accuracy��J?��*�Y       �e�	����q9�A`*L

LossHY�>

Adam/Loss/raw��>

Accuracy/__raw_  T?

Accuracy�J?� ЃY       �e�	ػ:�q9�Aa*L

Lossa�>

Adam/Loss/raw��>

Accuracy/__raw_  P?

Accuracy�K?s�Y       �e�	w���q9�Ab*L

Loss>O�>

Adam/Loss/raw^��>

Accuracy/__raw_  <?

Accuracy\:L?kb��Y       �e�	�׻�q9�Ac*L

Loss���>

Adam/Loss/rawܐ>

Accuracy/__raw_  X?

Accuracy�J?w��Y       �e�	[�u�q9�Ad*L

Loss�Z�>

Adam/Loss/rawo�>

Accuracy/__raw_  T?

Accuracy��K?�h%(Y       �e�	;�.�q9�Ae*L

Lossú�>

Adam/Loss/raw]/�>

Accuracy/__raw_  ,?

Accuracy�L?p͊kY       �e�	q���q9�Af*L

Losslƪ>

Adam/Loss/raw���>

Accuracy/__raw_  @?

Accuracy�yI?&j)�Y       �e�	���q9�Ag*L

LossI�>

Adam/Loss/raw��>

Accuracy/__raw_  D?

Accuracy�H?��Y       �e�	� n�q9�Ah*L

Loss��>

Adam/Loss/raw�5�>

Accuracy/__raw_  ,?

Accuracy,H?��xSY       �e�	��&�q9�Ai*L

Loss���>

Adam/Loss/raw�p�>

Accuracy/__raw_  P?

AccuracytDE?M�fY       �e�	�G��q9�Aj*L

Loss�K�>

Adam/Loss/raw_5�>

Accuracy/__raw_  H?

Accuracy5WF?=�.jY       �e�	�Z��q9�Ak*L

Loss��>

Adam/Loss/raw�t�>

Accuracy/__raw_  0?

Accuracy��F?+-�Y       �e�	��\�q9�Al*L

Loss+��>

Adam/Loss/rawm��>

Accuracy/__raw_  D?

Accuracy�AD?0�P�Y       �e�	�k�q9�Am*L

Loss���>

Adam/Loss/raw�κ>

Accuracy/__raw_  D?

Accuracy�:D?
�Y       �e�	����q9�An*L

Loss�ڲ>

Adam/Loss/raw*�>

Accuracy/__raw_  d?

Accuracy5D?�Ȩ�Y       �e�	���q9�Ao*L

Loss\��>

Adam/Loss/rawT��>

Accuracy/__raw_  P?

Accuracy�bG?ƛ��Y       �e�	~�A�q9�Ap*L

Loss��>

Adam/Loss/raw2ݾ>

Accuracy/__raw_  D?

Accuracyx?H?<�vY       �e�	~S��q9�Aq*L

Loss6��>

Adam/Loss/raw'��>

Accuracy/__raw_  P?

Accuracy��G?J��Y       �e�	�c��q9�Ar*L

Loss觱>

Adam/Loss/raw1�>

Accuracy/__raw_  8?

Accuracy�H?���_Y       �e�	��y�q9�As*L

Loss�h�>

Adam/Loss/raw�*�>

Accuracy/__raw_  <?

Accuracy�F?~ {Y       �e�	��3�q9�At*L

Loss��>

Adam/Loss/raw�?�>

Accuracy/__raw_  ,?

Accuracy�E?���aY       �e�	�F��q9�Au*L

Loss�>

Adam/Loss/raw�l�>

Accuracy/__raw_  H?

Accuracy�JC?Ab�Y       �e�	�Z��q9�Av*L

Loss}��>

Adam/Loss/rawwğ>

Accuracy/__raw_  L?

Accuracy�C?m�m�Y       �e�	*f�q9�Aw*L

Loss|ڹ>

Adam/Loss/raw���>

Accuracy/__raw_  T?

Accuracy��D?c�a�Y       �e�	k�#�q9�Ax*L

LossR�>

Adam/Loss/raw\�>

Accuracy/__raw_  L?

Accuracy� F?P�p�Y       �e�	�z��q9�Ay*L

Loss���>

Adam/Loss/rawD��>

Accuracy/__raw_  <?

Accuracy�F?�;��Y       �e�	i��q9�Az*L

Loss���>

Adam/Loss/raw�'�>

Accuracy/__raw_  D?

Accuracy��E?9�O0Y       �e�	ٵT�q9�A{*L

Loss��>

Adam/Loss/rawϳ�>

Accuracy/__raw_  `?

Accuracy�zE?Fѫ$Y       �e�	_��q9�A|*L

LosscT�>

Adam/Loss/rawg��>

Accuracy/__raw_  D?

Accuracy�!H?߆ԭY       �e�	u���q9�A}*L

Loss���>

Adam/Loss/raw�O�>

Accuracy/__raw_  X?

Accuracy÷G?C��Y       �e�	���q9�A~*L

Lossm"�>

Adam/Loss/raw�<�>

Accuracy/__raw_  8?

Accuracy�XI?��<�Y       �e�	�B;�q9�A*L

LossGص>

Adam/Loss/raw�/�>

Accuracy/__raw_  \?

Accuracy��G??ǧ�Z       o��	���q9�A�*L

Lossέ�>

Adam/Loss/raw�>

Accuracy/__raw_  <?

Accuracyz�I?.���Z       o��	L���q9�A�*L

Lossy��>

Adam/Loss/rawK��>

Accuracy/__raw_  \?

AccuracyIH?�{�(Z       o��	v�g�q9�A�*L

Loss[��>

Adam/Loss/raw�=�>

Accuracy/__raw_  \?

Accuracy�AJ??0�KZ       o��	���q9�A�*L

Loss�>

Adam/Loss/rawn��>

Accuracy/__raw_  0?

Accuracy�L?aC|>B       y�n�	���q9�A�*4

Loss/Validationq�>

Accuracy/ValidationkGg?�Ԕ�Z       o��	���q9�A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  0?

Accuracy\:I?�2xBZ       o��	nhD�q9�A�*L

Loss�Ů>

Adam/Loss/raw��>

Accuracy/__raw_  @?

Accuracy��F?��Y�Z       o��	F@�q9�A�*L

Loss!3�>

Adam/Loss/rawo��>

Accuracy/__raw_  D?

Accuracy�F?�>}�Z       o��	`r��q9�A�*L

Loss)`�>

Adam/Loss/raw���>

Accuracy/__raw_  \?

Accuracy��E?� vZ       o��	�u�q9�A�*L

Loss��>

Adam/Loss/raw�b�>

Accuracy/__raw_  D?

AccuracyOH?�q��Z       o��	[�4�q9�A�*L

Loss%{�>

Adam/Loss/rawB�p>

Accuracy/__raw_  d?

Accuracy��G?ƈ0Z       o��	T��q9�A�*L

Loss�{�>

Adam/Loss/rawN	�>

Accuracy/__raw_  <?

Accuracy�zJ?'D��Z       o��	�ư r9�A�*L

Loss뼫>

Adam/Loss/raw���>

Accuracy/__raw_  L?

Accuracy�I?��WZ       o��	M�vr9�A�*L

Loss�V�>

Adam/Loss/raw�A�>

Accuracy/__raw_  H?

Accuracy�SI?&�iZ       o��	��6r9�A�*L

Loss��>

Adam/Loss/rawjJ�>

Accuracy/__raw_  T?

Accuracy�1I?]j�Z       o��	і�r9�A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  <?

Accuracy�FJ?�`]�Z       o��	�,�r9�A�*L

Loss��>

Adam/Loss/rawY��>

Accuracy/__raw_  @?

Accuracy�H? =M�Z       o��	��zr9�A�*L

Lossge�>

Adam/Loss/rawV��>

Accuracy/__raw_  ,?

Accuracy��G?�ңZ       o��	��Br9�A�*L

Loss�s�>

Adam/Loss/raw滠>

Accuracy/__raw_  X?

Accuracy�*E?#BW�Z       o��	q��r9�A�*L

Lossc.�>

Adam/Loss/raw�I�>

Accuracy/__raw_  P?

Accuracy�G?{yE�Z       o��	�U�r9�A�*L

Loss���>

Adam/Loss/rawN��>

Accuracy/__raw_  P?

Accuracy��G?�Q!uZ       o��	��r9�A�*L

Loss�*�>

Adam/Loss/raw���>

Accuracy/__raw_  L?

Accuracy-�H?�у�Z       o��	�5Er9�A�*L

Loss�7�>

Adam/Loss/raw�X�>

Accuracy/__raw_  P?

Accuracy\I?إ�Z       o��	�	r9�A�*L

Loss��>

Adam/Loss/raw`:�>

Accuracy/__raw_  L?

Accuracy��I?:�XZ       o��	��	r9�A�*L

Losshs�>

Adam/Loss/raw_n�>

Accuracy/__raw_  @?

Accuracy��I?����Z       o��	���
r9�A�*L

Loss��>

Adam/Loss/rawxH�>

Accuracy/__raw_  P?

Accuracy��H?gpZ       o��	z�Kr9�A�*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_  L?

Accuracyc�I?(uZ       o��	��r9�A�*L

Loss���>

Adam/Loss/raw�>

Accuracy/__raw_  P?

Accuracys�I?;�7Z       o��	"�r9�A�*L

Loss��>

Adam/Loss/raw�+�>

Accuracy/__raw_  P?

Accuracy�J?�I�Z       o��	׈�r9�A�*L

Loss���>

Adam/Loss/rawoć>

Accuracy/__raw_  \?

AccuracyK?�YJ�Z       o��	�,Kr9�A�*L

Loss�ף>

Adam/Loss/raw�|�>

Accuracy/__raw_  ,?

Accuracy4�L?�g�7Z       o��	��r9�A�*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_  \?

AccuracyH~I?H��Z       o��	��r9�A�*L

Loss_ѥ>

Adam/Loss/raw]��>

Accuracy/__raw_  L?

AccuracyXK?%�M�Z       o��	8e�r9�A�*L

LossE��>

Adam/Loss/raw4�>

Accuracy/__raw_  H?

Accuracy�hK?؝�Z       o��	&Vor9�A�*L

Loss���>

Adam/Loss/raw>��>

Accuracy/__raw_  D?

Accuracy�K?��sBZ       o��	
/r9�A�*L

Loss0{�>

Adam/Loss/raw�>

Accuracy/__raw_  L?

Accuracy�\J?�-�'Z       o��	{�r9�A�*L

Loss�e�>

Adam/Loss/raw�]�>

Accuracy/__raw_  P?

Accuracy��J?w�Z       o��	��r9�A�*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_  @?

Accuracy�K?~ж�Z       o��	�έr9�A�*L

Loss���>

Adam/Loss/rawr2�>

Accuracy/__raw_  \?

Accuracy9�I?j�Z       o��	��ar9�A�*L

LossK��>

Adam/Loss/rawRL�>

Accuracy/__raw_  ,?

Accuracy��K?��O�Z       o��	�_r9�A�*L

LossL��>

Adam/Loss/raw�P�>

Accuracy/__raw_  8?

Accuracy��H?/șAZ       o��	I��r9�A�*L

Loss���>

Adam/Loss/raw�+�>

Accuracy/__raw_  X?

Accuracy��F?�}+&Z       o��	$�{r9�A�*L

Loss*]�>

Adam/Loss/rawr��>

Accuracy/__raw_  8?

AccuracyģH?�5�Z       o��	ް(r9�A�*L

Loss�ͫ>

Adam/Loss/raw�H�>

Accuracy/__raw_  X?

Accuracy��F?�ۦ]Z       o��	�r�r9�A�*L

Loss�&�>

Adam/Loss/raw�2�>

Accuracy/__raw_  T?

Accuracy��H?cp�[Z       o��	S��r9�A�*L

LossY[�>

Adam/Loss/raw��>

Accuracy/__raw_  D?

Accuracys�I?�U�Z       o��	a�<r9�A�*L

LossNP�>

Adam/Loss/raw^K�>

Accuracy/__raw_  P?

Accuracy�:I?��n=Z       o��	bi�r9�A�*L

Lossi�>

Adam/Loss/raw��>

Accuracy/__raw_  D?

Accuracy�I?R�Z       o��	���r9�A�*L

LosslԱ>

Adam/Loss/raw���>

Accuracy/__raw_  L?

Accuracy�PI?$Z       o��	S�Hr9�A�*L

Loss׾�>

Adam/Loss/raw�W�>

Accuracy/__raw_  \?

Accuracy��I?#��Z       o��	��r9�A�*L

Loss'N�>

Adam/Loss/rawE�>

Accuracy/__raw_  \?

Accuracy�lK?C�żZ       o��	P��r9�A�*L

Loss?ͨ>

Adam/Loss/rawPJ�>

Accuracy/__raw_  l?

AccuracyKM?��iZ       o��	1Sr9�A�*L

Loss�Y�>

Adam/Loss/raw��>

Accuracy/__raw_  <?

Accuracy�,P?%!W�Z       o��	�} r9�A�*L

Loss.��>

Adam/Loss/rawd�>

Accuracy/__raw_  \?

AccuracyJ(N?	a�Z       o��	�6�r9�A�*L

Loss���>

Adam/Loss/raw/k�>

Accuracy/__raw_  L?

Accuracy��O?tq1�Z       o��	�?j r9�A�*L

Loss)��>

Adam/Loss/raw�h�>

Accuracy/__raw_  D?

Accuracy�/O?n�cZ       o��	��!r9�A�*L

LossM<�>

Adam/Loss/raw^�n>

Accuracy/__raw_  d?

Accuracy�N?��EZ       o��	"P�!r9�A�*L

Loss�=�>

Adam/Loss/rawn��>

Accuracy/__raw_  \?

Accuracy	CP?ʞF�Z       o��	�n}"r9�A�*L

Lossf`�>

Adam/Loss/rawFN�>

Accuracy/__raw_  T?

Accuracy�oQ?&�Z       o��	��1#r9�A�*L

Lossɑ�>

Adam/Loss/rawG'�>

Accuracy/__raw_  l?

Accuracy.�Q?�?�%Z       o��	T�$r9�A�*L

LossV:�>

Adam/Loss/rawj��>

Accuracy/__raw_  T?

Accuracy�RT?z��Z       o��	���$r9�A�*L

Loss���>

Adam/Loss/rawBs�>

Accuracy/__raw_  L?

AccuracyeJT?zo~%Z       o��	G�%r9�A�*L

Loss^�>

Adam/Loss/rawu�>

Accuracy/__raw_  P?

Accuracy(vS?.M6Z       o��	&�v&r9�A�*L

Lossqa�>

Adam/Loss/rawT��>

Accuracy/__raw_  <?

Accuracy�S?��Z       o��	;W'r9�A�*L

LossU7�>

Adam/Loss/rawy�>

Accuracy/__raw_  `?

Accuracy��P?�Z       o��	1CF(r9�A�*L

Loss�פ>

Adam/Loss/raw���>

Accuracy/__raw_  T?

Accuracy�RR?60�#Z       o��	�(0)r9�A�*L

LossB��>

Adam/Loss/rawd��>

Accuracy/__raw_  X?

Accuracy�}R?�K��Z       o��	a*r9�A�*L

Loss_��>

Adam/Loss/raw�0�>

Accuracy/__raw_  l?

Accuracy�
S?�i#.Z       o��	2U	+r9�A�*L

Lossn-�>

Adam/Loss/raw"��>

Accuracy/__raw_  d?

Accuracy��U?��?�Z       o��	�C,r9�A�*L

Lossj�>

Adam/Loss/raw�8�>

Accuracy/__raw_  T?

Accuracy��V?qڀ%Z       o��	�f-r9�A�*L

Loss���>

Adam/Loss/raw�>

Accuracy/__raw_  T?

Accuracy��V?�4n�Z       o��	��.r9�A�*L

Loss�4�>

Adam/Loss/raw�B�>

Accuracy/__raw_  P?

Accuracy�jV?�U��Z       o��	|+�.r9�A�*L

Loss*�>

Adam/Loss/raw���>

Accuracy/__raw_  H?

Accuracy}�U?q���Z       o��	0f�/r9�A�*L

Loss΂�>

Adam/Loss/raw��>

Accuracy/__raw_  P?

Accuracy�eT?ш0hZ       o��	�v�0r9�A�*L

Loss,U�>

Adam/Loss/raw h�>

Accuracy/__raw_  X?

AccuracyA�S?�+�uZ       o��	�z1r9�A�*L

Loss�#�>

Adam/Loss/raw�_�>

Accuracy/__raw_  \?

Accuracy�\T?�=Z       o��	+�D2r9�A�*L

Loss۩�>

Adam/Loss/rawK#�>

Accuracy/__raw_  L?

AccuracyB U? 	�Z       o��	&73r9�A�*L

Lossf��>

Adam/Loss/raw6�>

Accuracy/__raw_  d?

Accuracy�6T?���Z       o��	��3r9�A�*L

Lossa�>

Adam/Loss/raw�?�>

Accuracy/__raw_  T?

Accuracy��U?H#[�Z       o��	�4r9�A�*L

Loss�E�>

Adam/Loss/raw��>

Accuracy/__raw_  X?

Accuracy�U?�T�Z       o��	�ܠ5r9�A�*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  d?

Accuracy �U?�ɤZ       o��	�6q6r9�A�*L

Loss�#�>

Adam/Loss/raw��>

Accuracy/__raw_  T?

Accuracy3DW?���Z       o��	��47r9�A�*L

Loss�Q�>

Adam/Loss/rawHr	?

Accuracy/__raw_  X?

Accuracy��V?��[�Z       o��	KZ�7r9�A�*L

Loss�ƫ>

Adam/Loss/raw�$[>

Accuracy/__raw_  t?

Accuracy�W?��Z       o��	U�8r9�A�*L

LossJ��>

Adam/Loss/raw�i>

Accuracy/__raw_  X?

Accuracy��Y?���Z       o��	w�V9r9�A�*L

Loss��>

Adam/Loss/raw��V>

Accuracy/__raw_  p?

Accuracy@�Y?U��QZ       o��	t�:r9�A�*L

LossoT�>

Adam/Loss/raw:�>

Accuracy/__raw_  P?

Accuracy��[?���Z       o��	u��:r9�A�*L

Loss�h�>

Adam/Loss/rawd;�>

Accuracy/__raw_  `?

Accuracyo�Z?��^oZ       o��	Gc;r9�A�*L

Lossd�>

Adam/Loss/rawuV�>

Accuracy/__raw_  X?

Accuracy1L[?��6Z       o��	k<r9�A�*L

Loss�b�>

Adam/Loss/rawapo>

Accuracy/__raw_  l?

Accuracy��Z?���Z       o��	��<r9�A�*L

Loss��>

Adam/Loss/raw|�>

Accuracy/__raw_  `?

Accuracy̫\?Hr;Z       o��	�=r9�A�*L

Lossu�>

Adam/Loss/raw�ũ>

Accuracy/__raw_  `?

Accuracy]?��"�Z       o��	�>>r9�A�*L

Loss�c�>

Adam/Loss/raw��}>

Accuracy/__raw_  X?

Accuracy�M]?b���Z       o��	'N�>r9�A�*L

Loss>ؕ>

Adam/Loss/raw�;s>

Accuracy/__raw_  d?

Accuracy��\?4���Z       o��	��?r9�A�*L

Loss��>

Adam/Loss/raw�T>

Accuracy/__raw_  `?

Accuracy�~]?�Y��Z       o��	mYM@r9�A�*L

Loss��>

Adam/Loss/raw��c>

Accuracy/__raw_  d?

Accuracy�]?����Z       o��	�r�@r9�A�*L

Loss��>

Adam/Loss/raw��@>

Accuracy/__raw_  h?

Accuracy&_^?�<
�Z       o��	qʯAr9�A�*L

LossT��>

Adam/Loss/raw7ۏ>

Accuracy/__raw_  X?

Accuracy�U_?@��LZ       o��	�0ZBr9�A�*L

Loss��>

Adam/Loss/raw贅>

Accuracy/__raw_  d?

Accuracyߙ^?�?>Z       o��	�<Cr9�A�*L

Loss%8�>

Adam/Loss/rawKy�>

Accuracy/__raw_  D?

Accuracy$_?y%ΫZ       o��	�G�Cr9�A�*L

Lossv��>

Adam/Loss/raw@5�>

Accuracy/__raw_  P?

AccuracyGm\?�L@Z       o��	�bDr9�A�*L

Lossq�>

Adam/Loss/raw���>

Accuracy/__raw_  T?

Accuracy&/[?��x0Z       o��	�UEr9�A�*L

Loss˘�>

Adam/Loss/raw��>

Accuracy/__raw_  L?

Accuracy<wZ?�;�BZ       o��	(�Er9�A�*L

Loss�>

Adam/Loss/rawo]K>

Accuracy/__raw_  \?

Accuracy�Y?�{Z       o��	�phFr9�A�*L

Loss�?�>

Adam/Loss/raw��@

Accuracy/__raw_  ?

Accuracy8QY?+�S8Z       o��	�LGr9�A�*L

LosstE-?

Adam/Loss/raw�l�>

Accuracy/__raw_  h?

Accuracy�Q?���?Z       o��	�y�Gr9�A�*L

LossW�"?

Adam/Loss/raw�ř>

Accuracy/__raw_  X?

Accuracy��S?���Z       o��	�djHr9�A�*L

Lossg?

Adam/Loss/raw}�>

Accuracy/__raw_  @?

Accuracy�>T?�6jZ       o��	��"Ir9�A�*L

Lossk�?

Adam/Loss/raw���>

Accuracy/__raw_  P?

AccuracyH8R?��#Z       o��	�+�Ir9�A�*L

LossN�?

Adam/Loss/rawd�>

Accuracy/__raw_  P?

Accuracyt�Q?��%LZ       o��	~rJr9�A�*L

Loss	?

Adam/Loss/raw�a�>

Accuracy/__raw_  L?

AccuracyO�Q?5�t�Z       o��	�uKr9�A�*L

Loss�?

Adam/Loss/rawʓ�>

Accuracy/__raw_  \?

Accuracy�7Q?��Z       o��	m�Kr9�A�*L

Loss��>

Adam/Loss/raw E�>

Accuracy/__raw_  X?

Accuracy�KR?�T
Z       o��	n�|Lr9�A�*L

Loss�-�>

Adam/Loss/rawD�>

Accuracy/__raw_  h?

Accuracy��R?'_0�Z       o��	̷(Mr9�A�*L

Loss�I�>

Adam/Loss/raw*�g>

Accuracy/__raw_  d?

Accuracy��T?�1Z       o��	��Mr9�A�*L

Loss���>

Adam/Loss/raw��e>

Accuracy/__raw_  h?

Accuracyl{V?�Y�Z       o��	l�Nr9�A�*L

Loss�=�>

Adam/Loss/raw��_>

Accuracy/__raw_  l?

Accuracy�;X?�b"�Z       o��	 T)Or9�A�*L

Lossǁ�>

Adam/Loss/raw�P_>

Accuracy/__raw_  l?

Accuracy�5Z?�_�Z       o��	�)�Or9�A�*L

Lossո�>

Adam/Loss/rawX3�>

Accuracy/__raw_  h?

AccuracyM�[?%0-)Z       o��	���Pr9�A�*L

LossH��>

Adam/Loss/raw�%3>

Accuracy/__raw_  p?

Accuracy�0]?u�cZ       o��	6=Qr9�A�*L

Loss$n�>

Adam/Loss/rawm�a>

Accuracy/__raw_  l?

AccuracyK_?���Z       o��	tD�Qr9�A�*L

Loss&+�>

Adam/Loss/rawB��>

Accuracy/__raw_  `?

AccuracyD]`?;���Z       o��	
f�Rr9�A�*L

LossBs�>

Adam/Loss/raw*A{>

Accuracy/__raw_  `?

Accuracy�S`?��1Z       o��	]rSr9�A�*L

Loss1^�>

Adam/Loss/raw� �>

Accuracy/__raw_  d?

Accuracy�K`?� \oZ       o��	L�%Tr9�A�*L

LossD;�>

Adam/Loss/raw�o>

Accuracy/__raw_  \?

Accuracyd�`?oь�Z       o��	�a�Tr9�A�*L

Loss�2�>

Adam/Loss/raw��>

Accuracy/__raw_  \?

Accuracy�2`?��(�Z       o��	�|�Ur9�A�*L

Loss���>

Adam/Loss/rawEi�>

Accuracy/__raw_  `?

Accuracyu�_?�oi�Z       o��	�h?Vr9�A�*L

Loss�ܞ>

Adam/Loss/rawJ�>

Accuracy/__raw_  P?

Accuracy�_?���VZ       o��	��Vr9�A�*L

Loss�ޞ>

Adam/Loss/raw-�p>

Accuracy/__raw_  d?

Accuracy�8^?a�cYZ       o��	�?�Wr9�A�*L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_  T?

Accuracy��^?0���Z       o��	�|EXr9�A�*L

Loss�~�>

Adam/Loss/raw���>

Accuracy/__raw_  P?

Accuracy�]?a�Z       o��	D��Xr9�A�*L

Loss�6�>

Adam/Loss/raw{W�>

Accuracy/__raw_  @?

Accuracy�X\?�\Z       o��	}	�Yr9�A�*L

LossEm�>

Adam/Loss/rawV�n>

Accuracy/__raw_  d?

Accuracy1�Y?'��+Z       o��	HZr9�A�*L

Loss�O�>

Adam/Loss/raw�!m>

Accuracy/__raw_  `?

Accuracy��Z?�O�Z       o��	�)�Zr9�A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  X?

Accuracy�[?� �-Z       o��	L�0_r9�A�*L

Loss�K�>

Adam/Loss/raw��z>

Accuracy/__raw_  `?

Accuracyj�Z?m�SB       y�n�	��0_r9�A�*4

Loss/ValidationhNU>

Accuracy/Validation�Lj?�T$�Z       o��	O��_r9�A�*L

Loss@��>

Adam/Loss/raw��>

Accuracy/__raw_  H?

Accuracy�P[?�H�Z       o��	��`r9�A�*L

LossV��>

Adam/Loss/raw8��>

Accuracy/__raw_  H?

Accuracy4bY?��UdZ       o��	\�ar9�A�*L

Loss���>

Adam/Loss/raw��I>

Accuracy/__raw_  l?

Accuracy/�W?0-!ZZ       o��	-}br9�A�*L

Loss]�>

Adam/Loss/rawR!>

Accuracy/__raw_  p?

AccuracyD�Y?�L��Z       o��	�(cr9�A�*L

Loss���>

Adam/Loss/raw��~>

Accuracy/__raw_  \?

Accuracy��[?4�+�Z       o��	;�cr9�A�*L

Loss%�>

Adam/Loss/raw��`>

Accuracy/__raw_  d?

Accuracy��[?n��Z       o��	���dr9�A�*L

Loss���>

Adam/Loss/rawṭ>

Accuracy/__raw_  H?

Accuracy��\?�(�Z       o��	�4uer9�A�*L

Loss=	�>

Adam/Loss/rawl� ?

Accuracy/__raw_  0?

Accuracy�Z?��Z       o��	ȳ%fr9�A�*L

Loss ϡ>

Adam/Loss/raw���>

Accuracy/__raw_  D?

AccuracydV?ݱ�cZ       o��	�m�fr9�A�*L

Loss)�>

Adam/Loss/raw���>

Accuracy/__raw_  D?

Accuracy7�T?�:Z       o��	Զ�gr9�A�*L

Loss��>

Adam/Loss/raw
@�>

Accuracy/__raw_  d?

Accuracy~�R?�&��Z       o��	w0:hr9�A�*L

Lossх�>

Adam/Loss/rawR�>

Accuracy/__raw_  \?

AccuracyX�T?�*�Z       o��	t^�hr9�A�*L

Loss��>

Adam/Loss/raw��W>

Accuracy/__raw_  l?

Accuracy�XU?39�[Z       o��	=c�ir9�A�*L

Loss��>

Adam/Loss/raw��a>

Accuracy/__raw_  h?

Accuracy��W?� �hZ       o��	��fjr9�A�*L

LossM�>

Adam/Loss/rawY>

Accuracy/__raw_  l?

Accuracy@Y?���Z       o��	��$kr9�A�*L

Loss���>

Adam/Loss/raw2��>

Accuracy/__raw_  d?

Accuracy [?>A�qZ       o��	(��kr9�A�*L

Loss�y�>

Adam/Loss/raw��A>

Accuracy/__raw_  l?

AccuracyG\?�o�CZ       o��	�Ðlr9�A�*L

Loss�S�>

Adam/Loss/rawpF�>

Accuracy/__raw_  X?

Accuracy��]?�#��Z       o��	�?mr9�A�*L

Lossظ�>

Adam/Loss/rawb�>

Accuracy/__raw_  X?

Accuracy�]?�i�Z       o��	��nr9�A�*L

Loss�ɑ>

Adam/Loss/raw&:l>

Accuracy/__raw_  d?

Accuracy��\?�?��Z       o��	���nr9�A�*L

LossM�>

Adam/Loss/raw�$->

Accuracy/__raw_  h?

AccuracyrJ]?���Z       o��	a�|or9�A�*L

Loss4`�>

Adam/Loss/raws�c>

Accuracy/__raw_  h?

Accuracy�\^?��GXZ       o��	|�(pr9�A�*L

Loss[�>

Adam/Loss/raw��f>

Accuracy/__raw_  h?

AccuracyWS_?Ax�CZ       o��	6��pr9�A�*L

Loss��>

Adam/Loss/rawgȗ>

Accuracy/__raw_  d?

Accuracyh1`?�u^Z       o��	;Vqr9�A�*L

Loss���>

Adam/Loss/rawN1\>

Accuracy/__raw_  `?

Accuracyޒ`?& ��Z       o��	[�(rr9�A�*L

Loss�t�>

Adam/Loss/rawj�z>

Accuracy/__raw_  h?

Accuracy.�`?�
VZ       o��	|{�rr9�A�*L

Losso��>

Adam/Loss/raw��k>

Accuracy/__raw_  p?

Accuracy�Ca?��O>Z       o��	���sr9�A�*L

Lossz^�>

Adam/Loss/raw.v3>

Accuracy/__raw_  p?

Accuracy��b?�Y�Z       o��	Id9tr9�A�*L

LossF�|>

Adam/Loss/rawf9h>

Accuracy/__raw_  p?

Accuracy|d?�Z       o��	LT�tr9�A�*L

Lossc�z>

Adam/Loss/raw�x>

Accuracy/__raw_  p?

Accuracy	Be?�:Z       o��	T �ur9�A�*L

LossCp>

Adam/Loss/raw��>

Accuracy/__raw_  `?

AccuracyUf?�1�Z       o��	9
xvr9�A�*L

Loss�s>

Adam/Loss/raw�i�>

Accuracy/__raw_  `?

Accuracy�e?+l�Z       o��	�h wr9�A�*L

Loss�]v>

Adam/Loss/rawq=>

Accuracy/__raw_  p?

Accuracy	!e?�r�*Z       o��	L�wr9�A�*L

Loss#tm>

Adam/Loss/rawT�3>

Accuracy/__raw_  p?

AccuracyU7f?ف�Z       o��	#ewxr9�A�*L

Loss��g>

Adam/Loss/raw~XH>

Accuracy/__raw_  l?

Accuracy�1g?��UZ       o��	C8)yr9�A�*L

Loss�d>

Adam/Loss/rawN�>

Accuracy/__raw_  h?

AccuracyҬg?�Yg�Z       o��	\V�yr9�A�*L

LossH�g>

Adam/Loss/raw�yg>

Accuracy/__raw_  l?

Accuracy#�g?�@�Z       o��	(C|zr9�A�*L

Loss��g>

Adam/Loss/raw.l>

Accuracy/__raw_  \?

Accuracy#h?w)y
Z       o��	F�%{r9�A�*L

Loss�Dh>

Adam/Loss/raw��0>

Accuracy/__raw_  p?

AccuracyR�f?7ΥnZ       o��	C<�{r9�A�*L

Loss�b>

Adam/Loss/raw�~H>

Accuracy/__raw_  d?

Accuracy��g?�X�Z       o��	�	�|r9�A�*L

Loss"`>

Adam/Loss/rawu�/>

Accuracy/__raw_  p?

Accuracy�rg?ۚ`�Z       o��	quD}r9�A�*L

Loss�9[>

Adam/Loss/rawp�->

Accuracy/__raw_  t?

Accuracy�Mh?��l�Z       o��	���}r9�A�*L

LossҬV>

Adam/Loss/raw���=

Accuracy/__raw_  x?

Accuracy yi?����Z       o��	5Ѩ~r9�A�*L

Loss*WL>

Adam/Loss/rawP?�=

Accuracy/__raw_  x?

Accuracy��j?�OӾZ       o��	�9Xr9�A�*L

Loss8B>

Adam/Loss/rawd�W>

Accuracy/__raw_  `?

Accuracy�;l?�d[�Z       o��	^��r9�A�*L

Losss`D>

Adam/Loss/raw'�/>

Accuracy/__raw_  h?

Accuracysk?�B%Z       o��	϶�r9�A�*L

Loss8KB>

Adam/Loss/raw<�@>

Accuracy/__raw_  h?

Accuracyg�j?d��Z       o��	K|�r9�A�*L

Lossl)B>

Adam/Loss/rawv�N>

Accuracy/__raw_  l?

Accuracypj?�rZ       o��	�:�r9�A�*L

LossmkC>

Adam/Loss/rawZэ>

Accuracy/__raw_  \?

Accuracy�j?�GSYZ       o��	W>��r9�A�*L

Loss�=L>

Adam/Loss/rawdz�=

Accuracy/__raw_  �?

Accuracys"i?=բ
Z       o��	�һ�r9�A�*L

LossL�B>

Adam/Loss/raw�͋>

Accuracy/__raw_  d?

Accuracy�kk?�ܶ�Z       o��	i��r9�A�*L

Loss]QK>

Adam/Loss/raw��=

Accuracy/__raw_  x?

Accuracyӭj?�U�Z       o��	:�V�r9�A�*L

Lossn�A>

Adam/Loss/raw�١>

Accuracy/__raw_  `?

Accuracy�l?a,��Z       o��	��:�r9�A�*L

Loss;�N>

Adam/Loss/raw/	�=

Accuracy/__raw_  x?

Accuracy\�j?O�zZ       o��	���r9�A�*L

LossiB>

Adam/Loss/rawWm�>

Accuracy/__raw_  X?

Accuracy!l?7ex�Z       o��	p�Ňr9�A�*L

LossK>

Adam/Loss/rawrl�>

Accuracy/__raw_  \?

Accuracy�j?m���Z       o��	h�o�r9�A�*L

LossoW>

Adam/Loss/raw�?g>

Accuracy/__raw_  h?

AccuracyZ�h?'��Z       o��	�� �r9�A�*L

Loss�Y>

Adam/Loss/raw�2,>

Accuracy/__raw_  t?

AccuracyQ�h?;%jZ       o��	*R͉r9�A�*L

Loss��T>

Adam/Loss/raw�>

Accuracy/__raw_  p?

AccuracyI�i?@��Z       o��	����r9�A�*L

Loss N>

Adam/Loss/raw�.*>

Accuracy/__raw_  x?

Accuracy�dj?��IZ       o��	fJh�r9�A�*L

Loss�J>

Adam/Loss/raw�
w>

Accuracy/__raw_  d?

Accuracy�k?*�UZ       o��	ep8�r9�A�*L

Loss�N>

Adam/Loss/raw�	>

Accuracy/__raw_  l?

Accuracy��j?�WĲZ       o��	9(��r9�A�*L

Loss��I>

Adam/Loss/raw��*>

Accuracy/__raw_  t?

Accuracy�k?����Z       o��	0�̍r9�A�*L

Losso�F>

Adam/Loss/rawB0R>

Accuracy/__raw_  p?

Accuracy�k?�*
Z       o��	��r9�A�*L

Loss��G>

Adam/Loss/raw(7>

Accuracy/__raw_  t?

Accuracy$`l?
U�SZ       o��	��S�r9�A�*L

Loss�NB>

Adam/Loss/rawX�>

Accuracy/__raw_  p?

AccuracyT#m?�zWZ       o��	߿�r9�A�*L

Loss��>>

Adam/Loss/rawC�>

Accuracy/__raw_  p?

Accuracy�lm?~��Z       o��	��ΐr9�A�*L

LossS;>

Adam/Loss/raw�n�>

Accuracy/__raw_  d?

Accuracy��m?6��Z       o��	ZE��r9�A�*L

Loss^GC>

Adam/Loss/raw��)>

Accuracy/__raw_  p?

Accuracy��l?���Z       o��	˽;�r9�A�*L

Loss0�@>

Adam/Loss/raw~sj>

Accuracy/__raw_  `?

Accuracy�
m?o�6Z       o��	�Q�r9�A�*L

Loss��D>

Adam/Loss/rawP�>

Accuracy/__raw_  X?

Accuracy�k?0��Z       o��	���r9�A�*L

LossR L>

Adam/Loss/rawf�>

Accuracy/__raw_  t?

Accuracy��i?��6�Z       o��	�MU�r9�A�*L

Loss��D>

Adam/Loss/raw�#>

Accuracy/__raw_  t?

Accuracy��j?�H'�Z       o��	5'�r9�A�*L

Loss`�A>

Adam/Loss/rawUc>

Accuracy/__raw_  x?

Accuracy��k?�woZ       o��	���r9�A�*L

Lossxy<>

Adam/Loss/raw�U>

Accuracy/__raw_  h?

Accuracy'�l?�HZ       o��	��l�r9�A�*L

Loss �>>

Adam/Loss/raw4">

Accuracy/__raw_  p?

Accuracy�ql?L��Z       o��	���r9�A�*L

Losso<>

Adam/Loss/raw{>j>

Accuracy/__raw_  h?

Accuracy��l?o�d�Z       o��	Lkʗr9�A�*L

Loss#�@>

Adam/Loss/rawD�2>

Accuracy/__raw_  l?

Accuracy�Ql?�nսZ       o��	X��r9�A�*L

Loss�M?>

Adam/Loss/raw���=

Accuracy/__raw_  x?

Accuracy�Il?���Z       o��	�T-�r9�A�*L

Loss�7>

Adam/Loss/rawЖA>

Accuracy/__raw_  l?

Accuracy�um?�-8Z       o��	� ۙr9�A�*L

Loss�8>

Adam/Loss/raw�t�=

Accuracy/__raw_  x?

Accuracy.Pm?Y�zZ       o��	�猚r9�A�*L

LossFD2>

Adam/Loss/raw�]>

Accuracy/__raw_  h?

Accuracy�an?�C�Z       o��	�]?�r9�A�*L

Losst�6>

Adam/Loss/raw^�k>

Accuracy/__raw_  h?

Accuracyc�m?=�uZ       o��	Q��r9�A�*L

Loss��;>

Adam/Loss/raw��>

Accuracy/__raw_  d?

AccuracyY+m?���<Z       o��	<��r9�A�*L

Loss��C>

Adam/Loss/raw)�=

Accuracy/__raw_  x?

Accuracy�@l?�;!�Z       o��	F|X�r9�A�*L

Loss��9>

Adam/Loss/rawn-�=

Accuracy/__raw_  x?

AccuracyZmm?�e��Z       o��	0��r9�A�*L

Loss��/>

Adam/Loss/rawR�;>

Accuracy/__raw_  d?

Accuracy|n?�1��Z       o��	�
��r9�A�*L

Loss�0>

Adam/Loss/raw�=

Accuracy/__raw_  |?

Accuracy�om?''mNZ       o��	p]k�r9�A�*L

Loss��'>

Adam/Loss/raw�(>

Accuracy/__raw_  l?

Accuracyt�n?�5"aZ       o��	cF�r9�A�*L

Lossv(>

Adam/Loss/raw~�b>

Accuracy/__raw_  `?

Accuracyh�n?�M�Z       o��	��r9�A�*L

Loss�->

Adam/Loss/raw�>

Accuracy/__raw_  T?

Accuracy�$m?n��yZ       o��	�*x�r9�A�*L

Loss6B>

Adam/Loss/raw��=

Accuracy/__raw_  x?

Accuracy�j?6�Z       o��	��/�r9�A�*L

Loss?:>

Adam/Loss/rawh�>

Accuracy/__raw_  x?

Accuracy8�k?��c�Z       o��	�F�r9�A�*L

Loss)|4>

Adam/Loss/raw A>

Accuracy/__raw_  p?

AccuracyL+m?߆?QZ       o��	'���r9�A�*L

Loss��/>

Adam/Loss/raw
�>

Accuracy/__raw_  p?

Accuracy�sm?����Z       o��	��S�r9�A�*L

Loss��->

Adam/Loss/raw~��=

Accuracy/__raw_  |?

Accuracy��m?Sz�gZ       o��	���r9�A�*L

Loss;�#>

Adam/Loss/raw�kG>

Accuracy/__raw_  d?

Accuracy�"o?`�R�Z       o��	l��r9�A�*L

Loss~#'>

Adam/Loss/raw��A>

Accuracy/__raw_  l?

Accuracy�n?D�`Z       o��	�S[�r9�A�*L

Loss��)>

Adam/Loss/raw�=1>

Accuracy/__raw_  t?

Accuracy�m?|�_Z       o��	��r9�A�*L

Loss�*>

Adam/Loss/raw~=>

Accuracy/__raw_  x?

Accuracy8pn?E��!Z       o��	zUǧr9�A�*L

Loss(�&>

Adam/Loss/raw'�>

Accuracy/__raw_  T?

Accuracy�do?	�Z       o��	�y�r9�A�*L

Loss(G?>

Adam/Loss/raw�>

Accuracy/__raw_  p?

Accuracy��l?aY/Z       o��	/�+�r9�A�*L

LossY�;>

Adam/Loss/raw�^&>

Accuracy/__raw_  p?

AccuracyS�l?ވ�Z       o��	=b٩r9�A�*L

Loss�h9>

Adam/Loss/raw��$>

Accuracy/__raw_  h?

AccuracydJm?X.�Z       o��	�J��r9�A�*L

Loss�[7>

Adam/Loss/raw��Y>

Accuracy/__raw_  `?

Accuracy��l?��nZ       o��	S�8�r9�A�*L

Loss��:>

Adam/Loss/rawR*e>

Accuracy/__raw_  `?

AccuracyB|k?�ޗ�Z       o��	f��r9�A�*L

Loss�?>

Adam/Loss/raw%��=

Accuracy/__raw_  |?

Accuracy;Vj?l�4Z       o��	���r9�A�*L

Loss>o4>

Adam/Loss/raw!>

Accuracy/__raw_  x?

Accuracyhl?h�`Z       o��	�cu�r9�A�*L

Loss�1>

Adam/Loss/raw�S>

Accuracy/__raw_  p?

Accuracy�Jm?fdNZ       o��	��)�r9�A�*L

Lossk�4>

Adam/Loss/raw�}>

Accuracy/__raw_  d?

AccuracyE�m?��7�Z       o��	�U�r9�A�*L

Loss�<>

Adam/Loss/raw���=

Accuracy/__raw_  x?

Accuracyq�l?Z&Z       o��	1|��r9�A�*L

LosszY4>

Adam/Loss/raw
F�=

Accuracy/__raw_  x?

Accuracy�m?�\ݵZ       o��	~T�r9�A�*L

Loss;G+>

Adam/Loss/raw�G>

Accuracy/__raw_  d?

Accuracy��n?K-O�Z       o��	s���r9�A�*L

Loss.>

Adam/Loss/raw�w
>

Accuracy/__raw_  p?

Accuracyձm?�Z       o��	�f��r9�A�*L

Loss*>

Adam/Loss/raw�Ph>

Accuracy/__raw_  p?

Accuracy��m?�vk/Z       o��	� d�r9�A�*L

Loss��0>

Adam/Loss/raw|�G>

Accuracy/__raw_  h?

Accuracy�!n?+Z       o��	�Z�r9�A�*L

Loss3>

Adam/Loss/rawn��=

Accuracy/__raw_  x?

Accuracy��m?s���Z       o��	����r9�A�*L

Loss��*>

Adam/Loss/raw�;>

Accuracy/__raw_  p?

AccuracyF�n?���Z       o��	Pm�r9�A�*L

Lossk�,>

Adam/Loss/raw�g�=

Accuracy/__raw_  p?

Accuracy�n?���'Z       o��	��r9�A�*L

Loss�#'>

Adam/Loss/raw%1*>

Accuracy/__raw_  h?

Accuracy��n?%��Z       o��	�ɵr9�A�*L

Loss�q'>

Adam/Loss/raw*��=

Accuracy/__raw_  x?

Accuracy�'n? &�QZ       o��	�w�r9�A�*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_  x?

Accuracy�#o?�Z��Z       o��	�%�r9�A�*L

Loss�C>

Adam/Loss/raw<�v>

Accuracy/__raw_  \?

Accuracy�p?VԦ�Z       o��	#eַr9�A�*L

Loss�(>

Adam/Loss/raw$I�=

Accuracy/__raw_  �?

Accuracyn?�y�RZ       o��	-���r9�A�*L

LossP�>

Adam/Loss/raw�N)>

Accuracy/__raw_  p?

Accuracy7�o?���Z       o��	U�8�r9�A�*L

Loss� >

Adam/Loss/raw�O�=

Accuracy/__raw_  t?

Accuracy��o?���#Z       o��	���r9�A�*L

LosswR>

Adam/Loss/raw.x�=

Accuracy/__raw_  t?

AccuracyPAp?�2�;Z       o��	� ��r9�A�*L

Lossm�>

Adam/Loss/raw���=

Accuracy/__raw_  x?

Accuracy.�p?�F�Z       o��	��a�r9�A�*L

Loss;�>

Adam/Loss/raw�y>

Accuracy/__raw_  p?

Accuracy�]q?�eITZ       o��	��r9�A�*L

Loss�>

Adam/Loss/raw*y�>

Accuracy/__raw_  \?

Accuracy�:q?���JZ       o��	��r9�A�*L

Loss>

Adam/Loss/rawd�=

Accuracy/__raw_  |?

Accuracyco?�)��B       y�n�	¿�r9�A�*4

Loss/ValidationMk >

Accuracy/Validationp�r?ͣ��