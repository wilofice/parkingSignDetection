       �K"	  @�k9�Abrain.Event:2�H�_     !N�$	��d�k9�A"��

is_training/Initializer/ConstConst*
dtype0
*
_output_shapes
: *
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

�
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
Assign_1/valueConst*
dtype0
*
_output_shapes
: *
value	B
 Z 
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
input/XPlaceholder*0
_output_shapes
:����������0*
shape: *
dtype0
�
)Conv2D/W/Initializer/random_uniform/shapeConst*
_class
loc:@Conv2D/W*%
valueB"             *
dtype0*
_output_shapes
:
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
'Conv2D/W/Initializer/random_uniform/maxConst*
_class
loc:@Conv2D/W*
valueB
 *�\�>*
dtype0*
_output_shapes
: 
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
'Conv2D/W/Initializer/random_uniform/subSub'Conv2D/W/Initializer/random_uniform/max'Conv2D/W/Initializer/random_uniform/min*
_output_shapes
: *
_class
loc:@Conv2D/W*
T0
�
'Conv2D/W/Initializer/random_uniform/mulMul1Conv2D/W/Initializer/random_uniform/RandomUniform'Conv2D/W/Initializer/random_uniform/sub*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
�
#Conv2D/W/Initializer/random_uniformAdd'Conv2D/W/Initializer/random_uniform/mul'Conv2D/W/Initializer/random_uniform/min*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0
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
Conv2D/W/AssignAssignConv2D/W#Conv2D/W/Initializer/random_uniform*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(
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
VariableV2*
_output_shapes
: *
dtype0*
shape: *
	container *
_class
loc:@Conv2D/b*
shared_name 
�
Conv2D/b/AssignAssignConv2D/bConv2D/b/Initializer/Const*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/b
e
Conv2D/b/readIdentityConv2D/b*
T0*
_class
loc:@Conv2D/b*
_output_shapes
: 
�
Conv2D/Conv2DConv2Dinput/XConv2D/W/read*
paddingSAME*
T0*
strides
*
data_formatNHWC*0
_output_shapes
:����������0 *
use_cudnn_on_gpu(
�
Conv2D/BiasAddBiasAddConv2D/Conv2DConv2D/b/read*
T0*
data_formatNHWC*0
_output_shapes
:����������0 
^
Conv2D/ReluReluConv2D/BiasAdd*0
_output_shapes
:����������0 *
T0
�
MaxPool2D/MaxPoolMaxPoolConv2D/Relu*
paddingSAME*
T0*
strides
*
data_formatNHWC*/
_output_shapes
:���������(
 *
ksize

�
+Conv2D_1/W/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
_class
loc:@Conv2D_1/W*%
valueB"          @   
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
_class
loc:@Conv2D_1/W*
valueB
 *��z=*
dtype0*
_output_shapes
: 
�
3Conv2D_1/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_1/W/Initializer/random_uniform/shape*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W*
dtype0*

seed *
T0*
seed2 
�
)Conv2D_1/W/Initializer/random_uniform/subSub)Conv2D_1/W/Initializer/random_uniform/max)Conv2D_1/W/Initializer/random_uniform/min*
T0*
_class
loc:@Conv2D_1/W*
_output_shapes
: 
�
)Conv2D_1/W/Initializer/random_uniform/mulMul3Conv2D_1/W/Initializer/random_uniform/RandomUniform)Conv2D_1/W/Initializer/random_uniform/sub*
T0*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @
�
%Conv2D_1/W/Initializer/random_uniformAdd)Conv2D_1/W/Initializer/random_uniform/mul)Conv2D_1/W/Initializer/random_uniform/min*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
�

Conv2D_1/W
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_1/W*
shared_name *&
_output_shapes
: @*
shape: @
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
Conv2D_1/W*
T0*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @
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
VariableV2*
shared_name *
shape:@*
_output_shapes
:@*
_class
loc:@Conv2D_1/b*
dtype0*
	container 
�
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
Conv2D_1/b*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0
�
Conv2D_1/Conv2DConv2DMaxPool2D/MaxPoolConv2D_1/W/read*
strides
*
data_formatNHWC*/
_output_shapes
:���������(
@*
paddingSAME*
T0*
use_cudnn_on_gpu(
�
Conv2D_1/BiasAddBiasAddConv2D_1/Conv2DConv2D_1/b/read*/
_output_shapes
:���������(
@*
data_formatNHWC*
T0
a
Conv2D_1/ReluReluConv2D_1/BiasAdd*
T0*/
_output_shapes
:���������(
@
�
MaxPool2D_1/MaxPoolMaxPoolConv2D_1/Relu*/
_output_shapes
:���������@*
paddingSAME*
ksize
*
strides
*
data_formatNHWC*
T0
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
 *�\1�*
_output_shapes
: *
dtype0
�
)Conv2D_2/W/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D_2/W*
valueB
 *�\1=
�
3Conv2D_2/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_2/W/Initializer/random_uniform/shape*
T0*'
_output_shapes
:@�*

seed *
_class
loc:@Conv2D_2/W*
dtype0*
seed2 
�
)Conv2D_2/W/Initializer/random_uniform/subSub)Conv2D_2/W/Initializer/random_uniform/max)Conv2D_2/W/Initializer/random_uniform/min*
T0*
_output_shapes
: *
_class
loc:@Conv2D_2/W
�
)Conv2D_2/W/Initializer/random_uniform/mulMul3Conv2D_2/W/Initializer/random_uniform/RandomUniform)Conv2D_2/W/Initializer/random_uniform/sub*
T0*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�
�
%Conv2D_2/W/Initializer/random_uniformAdd)Conv2D_2/W/Initializer/random_uniform/mul)Conv2D_2/W/Initializer/random_uniform/min*
T0*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�
�

Conv2D_2/W
VariableV2*'
_output_shapes
:@�*
dtype0*
shape:@�*
	container *
_class
loc:@Conv2D_2/W*
shared_name 
�
Conv2D_2/W/AssignAssign
Conv2D_2/W%Conv2D_2/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@Conv2D_2/W*
validate_shape(*'
_output_shapes
:@�
x
Conv2D_2/W/readIdentity
Conv2D_2/W*
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
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
Conv2D_2/b/AssignAssign
Conv2D_2/bConv2D_2/b/Initializer/Const*
use_locking(*
T0*
_class
loc:@Conv2D_2/b*
validate_shape(*
_output_shapes	
:�
l
Conv2D_2/b/readIdentity
Conv2D_2/b*
T0*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b
�
Conv2D_2/Conv2DConv2DMaxPool2D_1/MaxPoolConv2D_2/W/read*
use_cudnn_on_gpu(*0
_output_shapes
:����������*
strides
*
data_formatNHWC*
T0*
paddingSAME
�
Conv2D_2/BiasAddBiasAddConv2D_2/Conv2DConv2D_2/b/read*
T0*
data_formatNHWC*0
_output_shapes
:����������
b
Conv2D_2/ReluReluConv2D_2/BiasAdd*
T0*0
_output_shapes
:����������
�
MaxPool2D_2/MaxPoolMaxPoolConv2D_2/Relu*
paddingSAME*
strides
*
data_formatNHWC*
T0*0
_output_shapes
:����������*
ksize

�
+Conv2D_3/W/Initializer/random_uniform/shapeConst*
_class
loc:@Conv2D_3/W*%
valueB"      �   @   *
dtype0*
_output_shapes
:
�
)Conv2D_3/W/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D_3/W*
valueB
 *����
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
)Conv2D_3/W/Initializer/random_uniform/subSub)Conv2D_3/W/Initializer/random_uniform/max)Conv2D_3/W/Initializer/random_uniform/min*
T0*
_output_shapes
: *
_class
loc:@Conv2D_3/W
�
)Conv2D_3/W/Initializer/random_uniform/mulMul3Conv2D_3/W/Initializer/random_uniform/RandomUniform)Conv2D_3/W/Initializer/random_uniform/sub*
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
�
%Conv2D_3/W/Initializer/random_uniformAdd)Conv2D_3/W/Initializer/random_uniform/mul)Conv2D_3/W/Initializer/random_uniform/min*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
T0
�

Conv2D_3/W
VariableV2*
shared_name *
_class
loc:@Conv2D_3/W*
	container *
shape:�@*
dtype0*'
_output_shapes
:�@
�
Conv2D_3/W/AssignAssign
Conv2D_3/W%Conv2D_3/W/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
x
Conv2D_3/W/readIdentity
Conv2D_3/W*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
T0
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
VariableV2*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
shape:@*
dtype0*
shared_name *
	container 
�
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
Conv2D_3/b*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0
�
Conv2D_3/Conv2DConv2DMaxPool2D_2/MaxPoolConv2D_3/W/read*/
_output_shapes
:���������@*
T0*
use_cudnn_on_gpu(*
strides
*
data_formatNHWC*
paddingSAME
�
Conv2D_3/BiasAddBiasAddConv2D_3/Conv2DConv2D_3/b/read*
data_formatNHWC*
T0*/
_output_shapes
:���������@
a
Conv2D_3/ReluReluConv2D_3/BiasAdd*/
_output_shapes
:���������@*
T0
�
MaxPool2D_3/MaxPoolMaxPoolConv2D_3/Relu*
ksize
*
T0*
paddingSAME*/
_output_shapes
:���������@*
strides
*
data_formatNHWC
�
+Conv2D_4/W/Initializer/random_uniform/shapeConst*
_class
loc:@Conv2D_4/W*%
valueB"      @       *
_output_shapes
:*
dtype0
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
 *�\1=*
_output_shapes
: *
dtype0
�
3Conv2D_4/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_4/W/Initializer/random_uniform/shape*&
_output_shapes
:@ *
dtype0*
seed2 *
_class
loc:@Conv2D_4/W*
T0*

seed 
�
)Conv2D_4/W/Initializer/random_uniform/subSub)Conv2D_4/W/Initializer/random_uniform/max)Conv2D_4/W/Initializer/random_uniform/min*
_class
loc:@Conv2D_4/W*
_output_shapes
: *
T0
�
)Conv2D_4/W/Initializer/random_uniform/mulMul3Conv2D_4/W/Initializer/random_uniform/RandomUniform)Conv2D_4/W/Initializer/random_uniform/sub*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
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
Conv2D_4/W%Conv2D_4/W/Initializer/random_uniform*&
_output_shapes
:@ *
validate_shape(*
_class
loc:@Conv2D_4/W*
T0*
use_locking(
w
Conv2D_4/W/readIdentity
Conv2D_4/W*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
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
VariableV2*
shared_name *
shape: *
_output_shapes
: *
_class
loc:@Conv2D_4/b*
dtype0*
	container 
�
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
Conv2D_4/b*
T0*
_class
loc:@Conv2D_4/b*
_output_shapes
: 
�
Conv2D_4/Conv2DConv2DMaxPool2D_3/MaxPoolConv2D_4/W/read*/
_output_shapes
:��������� *
T0*
use_cudnn_on_gpu(*
strides
*
data_formatNHWC*
paddingSAME
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
3FullyConnected/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*#
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
4FullyConnected/W/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *#
_class
loc:@FullyConnected/W*
valueB
 *
ף<
�
=FullyConnected/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3FullyConnected/W/Initializer/truncated_normal/shape*
seed2 *
T0*

seed *
dtype0*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �
�
1FullyConnected/W/Initializer/truncated_normal/mulMul=FullyConnected/W/Initializer/truncated_normal/TruncatedNormal4FullyConnected/W/Initializer/truncated_normal/stddev*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W*
T0
�
-FullyConnected/W/Initializer/truncated_normalAdd1FullyConnected/W/Initializer/truncated_normal/mul2FullyConnected/W/Initializer/truncated_normal/mean*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
�
FullyConnected/W
VariableV2*
_output_shapes
:	 �*
dtype0*
shape:	 �*
	container *#
_class
loc:@FullyConnected/W*
shared_name 
�
FullyConnected/W/AssignAssignFullyConnected/W-FullyConnected/W/Initializer/truncated_normal*
_output_shapes
:	 �*
validate_shape(*#
_class
loc:@FullyConnected/W*
T0*
use_locking(
�
FullyConnected/W/readIdentityFullyConnected/W*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
T0
�
"FullyConnected/b/Initializer/ConstConst*#
_class
loc:@FullyConnected/b*
valueB�*    *
dtype0*
_output_shapes	
:�
�
FullyConnected/b
VariableV2*
shared_name *#
_class
loc:@FullyConnected/b*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
FullyConnected/b/AssignAssignFullyConnected/b"FullyConnected/b/Initializer/Const*
_output_shapes	
:�*
validate_shape(*#
_class
loc:@FullyConnected/b*
T0*
use_locking(
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
T0*
Tshape0*'
_output_shapes
:��������� 
�
FullyConnected/MatMulMatMulFullyConnected/ReshapeFullyConnected/W/read*
transpose_b( *(
_output_shapes
:����������*
transpose_a( *
T0
�
FullyConnected/BiasAddBiasAddFullyConnected/MatMulFullyConnected/b/read*
data_formatNHWC*
T0*(
_output_shapes
:����������
f
FullyConnected/ReluReluFullyConnected/BiasAdd*
T0*(
_output_shapes
:����������
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
Dropout/cond/pred_idIdentityis_training/read*
T0
*
_output_shapes
: 
{
Dropout/cond/dropout/keep_probConst^Dropout/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *��L?
�
!Dropout/cond/dropout/Shape/SwitchSwitchFullyConnected/ReluDropout/cond/pred_id*<
_output_shapes*
(:����������:����������*&
_class
loc:@FullyConnected/Relu*
T0
}
Dropout/cond/dropout/ShapeShape#Dropout/cond/dropout/Shape/Switch:1*
_output_shapes
:*
out_type0*
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
1Dropout/cond/dropout/random_uniform/RandomUniformRandomUniformDropout/cond/dropout/Shape*(
_output_shapes
:����������*
seed2 *
dtype0*
T0*

seed 
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
Dropout/cond/dropout/divRealDiv#Dropout/cond/dropout/Shape/Switch:1Dropout/cond/dropout/keep_prob*
T0*(
_output_shapes
:����������
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
Dropout/cond/MergeMergeDropout/cond/Switch_1Dropout/cond/dropout/mul*
N*
T0**
_output_shapes
:����������: 
�
5FullyConnected_1/W/Initializer/truncated_normal/shapeConst*%
_class
loc:@FullyConnected_1/W*
valueB"      *
dtype0*
_output_shapes
:
�
4FullyConnected_1/W/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *%
_class
loc:@FullyConnected_1/W*
valueB
 *    
�
6FullyConnected_1/W/Initializer/truncated_normal/stddevConst*%
_class
loc:@FullyConnected_1/W*
valueB
 *
ף<*
_output_shapes
: *
dtype0
�
?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5FullyConnected_1/W/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W
�
3FullyConnected_1/W/Initializer/truncated_normal/mulMul?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormal6FullyConnected_1/W/Initializer/truncated_normal/stddev*
T0*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W
�
/FullyConnected_1/W/Initializer/truncated_normalAdd3FullyConnected_1/W/Initializer/truncated_normal/mul4FullyConnected_1/W/Initializer/truncated_normal/mean*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W*
T0
�
FullyConnected_1/W
VariableV2*
shared_name *
shape:	�*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W*
dtype0*
	container 
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
FullyConnected_1/W/readIdentityFullyConnected_1/W*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0
�
$FullyConnected_1/b/Initializer/ConstConst*%
_class
loc:@FullyConnected_1/b*
valueB*    *
_output_shapes
:*
dtype0
�
FullyConnected_1/b
VariableV2*
shared_name *
shape:*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b*
dtype0*
	container 
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
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
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
FullyConnected_1/SoftmaxSoftmaxFullyConnected_1/BiasAdd*'
_output_shapes
:���������*
T0
[
	targets/YPlaceholder*'
_output_shapes
:���������*
shape: *
dtype0
[
Accuracy/ArgMax/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
�
Accuracy/ArgMaxArgMaxFullyConnected_1/SoftmaxAccuracy/ArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:���������
]
Accuracy/ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
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
"Crossentropy/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
�
Crossentropy/SumSumFullyConnected_1/Softmax"Crossentropy/Sum/reduction_indices*'
_output_shapes
:���������*
T0*
	keep_dims(*

Tidx0
}
Crossentropy/truedivRealDivFullyConnected_1/SoftmaxCrossentropy/Sum*'
_output_shapes
:���������*
T0
X
Crossentropy/Cast/xConst*
valueB
 *���.*
dtype0*
_output_shapes
: 
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
Crossentropy/clip_by_valueMaximum"Crossentropy/clip_by_value/MinimumCrossentropy/Cast/x*'
_output_shapes
:���������*
T0
e
Crossentropy/LogLogCrossentropy/clip_by_value*'
_output_shapes
:���������*
T0
f
Crossentropy/mulMul	targets/YCrossentropy/Log*
T0*'
_output_shapes
:���������
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
Crossentropy/NegNegCrossentropy/Sum_1*
T0*#
_output_shapes
:���������
\
Crossentropy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
}
Crossentropy/MeanMeanCrossentropy/NegCrossentropy/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
`
Training_step/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
q
Training_step
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
�
Training_step/AssignAssignTraining_stepTraining_step/initial_value*
_output_shapes
: *
validate_shape(* 
_class
loc:@Training_step*
T0*
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
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 
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
Add/yConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
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
placeholder/val_lossPlaceholder*
dtype0*
shape: *
_output_shapes
:
V
placeholder/val_accPlaceholder*
dtype0*
shape: *
_output_shapes
:
�
assign/val_lossAssignval_lossplaceholder/val_loss*
use_locking(*
T0*
_class
loc:@val_loss*
validate_shape(*
_output_shapes
: 
�
assign/val_accAssignval_accplaceholder/val_acc*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@val_acc
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
moving_avg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *fff?
U
moving_avg/add/xConst*
valueB
 *  �?*
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
moving_avg/add_1Addmoving_avg/add_1/xTraining_step/read*
T0*
_output_shapes
: 
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
 moving_avg/AssignMovingAvg/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?*+
_class!
loc:@Accuracy/Mean/moving_avg
�
moving_avg/AssignMovingAvg/subSub moving_avg/AssignMovingAvg/sub/xmoving_avg/Minimum*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: *
T0
�
 moving_avg/AssignMovingAvg/sub_1SubAccuracy/Mean/moving_avg/readAccuracy/Mean*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
moving_avg/AssignMovingAvg/mulMul moving_avg/AssignMovingAvg/sub_1moving_avg/AssignMovingAvg/sub*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
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
dtype0*
shared_name *
shape: 
�
#Crossentropy/Mean/moving_avg/AssignAssignCrossentropy/Mean/moving_avg
Adam/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg
�
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
Adam/moving_avg/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
f
Adam/moving_avg/addAddAdam/moving_avg/add/xTraining_step/read*
_output_shapes
: *
T0
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
%Adam/moving_avg/AssignMovingAvg/sub/xConst*
valueB
 *  �?*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: *
dtype0
�
#Adam/moving_avg/AssignMovingAvg/subSub%Adam/moving_avg/AssignMovingAvg/sub/xAdam/moving_avg/Minimum*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg*
T0
�
%Adam/moving_avg/AssignMovingAvg/sub_1Sub!Crossentropy/Mean/moving_avg/readCrossentropy/Mean*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg*
T0
�
#Adam/moving_avg/AssignMovingAvg/mulMul%Adam/moving_avg/AssignMovingAvg/sub_1#Adam/moving_avg/AssignMovingAvg/sub*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: *
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
Adam/gradients/ShapeConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB 
x
Adam/gradients/ConstConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
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
T0*
Tshape0*
_output_shapes
:
�
+Adam/gradients/Crossentropy/Mean_grad/ShapeShapeCrossentropy/Neg^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
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
+Adam/gradients/Crossentropy/Mean_grad/ConstConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*
valueB: 
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
-Adam/gradients/Crossentropy/Mean_grad/MaximumMaximum,Adam/gradients/Crossentropy/Mean_grad/Prod_1/Adam/gradients/Crossentropy/Mean_grad/Maximum/y*
_output_shapes
: *
T0
�
.Adam/gradients/Crossentropy/Mean_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Mean_grad/Prod-Adam/gradients/Crossentropy/Mean_grad/Maximum*
T0*
_output_shapes
: 
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
+Adam/gradients/Crossentropy/Sum_1_grad/SizeConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
�
*Adam/gradients/Crossentropy/Sum_1_grad/addAdd$Crossentropy/Sum_1/reduction_indices+Adam/gradients/Crossentropy/Sum_1_grad/Size*
_output_shapes
: *
T0
�
*Adam/gradients/Crossentropy/Sum_1_grad/modFloorMod*Adam/gradients/Crossentropy/Sum_1_grad/add+Adam/gradients/Crossentropy/Sum_1_grad/Size*
_output_shapes
: *
T0
�
.Adam/gradients/Crossentropy/Sum_1_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB 
�
2Adam/gradients/Crossentropy/Sum_1_grad/range/startConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B : 
�
2Adam/gradients/Crossentropy/Sum_1_grad/range/deltaConst^Adam/moving_avg^moving_avg*
value	B :*
_output_shapes
: *
dtype0
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
+Adam/gradients/Crossentropy/Sum_1_grad/FillFill.Adam/gradients/Crossentropy/Sum_1_grad/Shape_11Adam/gradients/Crossentropy/Sum_1_grad/Fill/value*
_output_shapes
: *
T0
�
4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitchDynamicStitch,Adam/gradients/Crossentropy/Sum_1_grad/range*Adam/gradients/Crossentropy/Sum_1_grad/mod,Adam/gradients/Crossentropy/Sum_1_grad/Shape+Adam/gradients/Crossentropy/Sum_1_grad/Fill*#
_output_shapes
:���������*
N*
T0
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
+Adam/gradients/Crossentropy/Sum_1_grad/TileTile.Adam/gradients/Crossentropy/Sum_1_grad/Reshape/Adam/gradients/Crossentropy/Sum_1_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:���������
�
*Adam/gradients/Crossentropy/mul_grad/ShapeShape	targets/Y^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
�
,Adam/gradients/Crossentropy/mul_grad/Shape_1ShapeCrossentropy/Log^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
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
.Adam/gradients/Crossentropy/mul_grad/Reshape_1Reshape*Adam/gradients/Crossentropy/mul_grad/Sum_1,Adam/gradients/Crossentropy/mul_grad/Shape_1*
T0*'
_output_shapes
:���������*
Tshape0
�
/Adam/gradients/Crossentropy/Log_grad/Reciprocal
ReciprocalCrossentropy/clip_by_value^Adam/moving_avg^moving_avg/^Adam/gradients/Crossentropy/mul_grad/Reshape_1*'
_output_shapes
:���������*
T0
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
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
�
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2Shape(Adam/gradients/Crossentropy/Log_grad/mul*
out_type0*
_output_shapes
:*
T0
�
:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB
 *    
�
4Adam/gradients/Crossentropy/clip_by_value_grad/zerosFill6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/Const*
T0*'
_output_shapes
:���������
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
5Adam/gradients/Crossentropy/clip_by_value_grad/SelectSelect;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual(Adam/gradients/Crossentropy/Log_grad/mul4Adam/gradients/Crossentropy/clip_by_value_grad/zeros*
T0*'
_output_shapes
:���������
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
2Adam/gradients/Crossentropy/clip_by_value_grad/SumSum5Adam/gradients/Crossentropy/clip_by_value_grad/SelectDAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
6Adam/gradients/Crossentropy/clip_by_value_grad/ReshapeReshape2Adam/gradients/Crossentropy/clip_by_value_grad/Sum4Adam/gradients/Crossentropy/clip_by_value_grad/Shape*
Tshape0*'
_output_shapes
:���������*
T0
�
4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_1Sum7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1FAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
8Adam/gradients/Crossentropy/clip_by_value_grad/Reshape_1Reshape4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_16Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ShapeShapeCrossentropy/truediv^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
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
BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *    *
dtype0*
_output_shapes
: 
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/zerosFill>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_2BAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:���������
�
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualCrossentropy/truedivCrossentropy/Cast_1/x^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:���������
�
LAdam/gradients/Crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
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
T0*
Tshape0*'
_output_shapes
:���������
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
.Adam/gradients/Crossentropy/truediv_grad/ShapeShapeFullyConnected_1/Softmax^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
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
0Adam/gradients/Crossentropy/truediv_grad/RealDivRealDiv>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ReshapeCrossentropy/Sum*'
_output_shapes
:���������*
T0
�
,Adam/gradients/Crossentropy/truediv_grad/SumSum0Adam/gradients/Crossentropy/truediv_grad/RealDiv>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
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
2Adam/gradients/Crossentropy/truediv_grad/Reshape_1Reshape.Adam/gradients/Crossentropy/truediv_grad/Sum_10Adam/gradients/Crossentropy/truediv_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
*Adam/gradients/Crossentropy/Sum_grad/ShapeShapeFullyConnected_1/Softmax^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
�
)Adam/gradients/Crossentropy/Sum_grad/SizeConst^Adam/moving_avg^moving_avg*
value	B :*
_output_shapes
: *
dtype0
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
,Adam/gradients/Crossentropy/Sum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
_output_shapes
: *
dtype0
�
0Adam/gradients/Crossentropy/Sum_grad/range/startConst^Adam/moving_avg^moving_avg*
value	B : *
dtype0*
_output_shapes
: 
�
0Adam/gradients/Crossentropy/Sum_grad/range/deltaConst^Adam/moving_avg^moving_avg*
value	B :*
_output_shapes
: *
dtype0
�
*Adam/gradients/Crossentropy/Sum_grad/rangeRange0Adam/gradients/Crossentropy/Sum_grad/range/start)Adam/gradients/Crossentropy/Sum_grad/Size0Adam/gradients/Crossentropy/Sum_grad/range/delta*
_output_shapes
:*

Tidx0
�
/Adam/gradients/Crossentropy/Sum_grad/Fill/valueConst^Adam/moving_avg^moving_avg*
value	B :*
_output_shapes
: *
dtype0
�
)Adam/gradients/Crossentropy/Sum_grad/FillFill,Adam/gradients/Crossentropy/Sum_grad/Shape_1/Adam/gradients/Crossentropy/Sum_grad/Fill/value*
_output_shapes
: *
T0
�
2Adam/gradients/Crossentropy/Sum_grad/DynamicStitchDynamicStitch*Adam/gradients/Crossentropy/Sum_grad/range(Adam/gradients/Crossentropy/Sum_grad/mod*Adam/gradients/Crossentropy/Sum_grad/Shape)Adam/gradients/Crossentropy/Sum_grad/Fill*#
_output_shapes
:���������*
N*
T0
�
.Adam/gradients/Crossentropy/Sum_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*
_output_shapes
: 
�
,Adam/gradients/Crossentropy/Sum_grad/MaximumMaximum2Adam/gradients/Crossentropy/Sum_grad/DynamicStitch.Adam/gradients/Crossentropy/Sum_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
-Adam/gradients/Crossentropy/Sum_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Sum_grad/Shape,Adam/gradients/Crossentropy/Sum_grad/Maximum*
T0*
_output_shapes
:
�
,Adam/gradients/Crossentropy/Sum_grad/ReshapeReshape2Adam/gradients/Crossentropy/truediv_grad/Reshape_12Adam/gradients/Crossentropy/Sum_grad/DynamicStitch*
_output_shapes
:*
Tshape0*
T0
�
)Adam/gradients/Crossentropy/Sum_grad/TileTile,Adam/gradients/Crossentropy/Sum_grad/Reshape-Adam/gradients/Crossentropy/Sum_grad/floordiv*'
_output_shapes
:���������*
T0*

Tmultiples0
�
Adam/gradients/AddNAddN0Adam/gradients/Crossentropy/truediv_grad/Reshape)Adam/gradients/Crossentropy/Sum_grad/Tile*
N*
T0*'
_output_shapes
:���������*C
_class9
75loc:@Adam/gradients/Crossentropy/truediv_grad/Reshape
�
0Adam/gradients/FullyConnected_1/Softmax_grad/mulMulAdam/gradients/AddNFullyConnected_1/Softmax*'
_output_shapes
:���������*
T0
�
BAdam/gradients/FullyConnected_1/Softmax_grad/Sum/reduction_indicesConst^Adam/moving_avg^moving_avg*
valueB:*
_output_shapes
:*
dtype0
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
4Adam/gradients/FullyConnected_1/Softmax_grad/ReshapeReshape0Adam/gradients/FullyConnected_1/Softmax_grad/Sum:Adam/gradients/FullyConnected_1/Softmax_grad/Reshape/shape*'
_output_shapes
:���������*
Tshape0*
T0
�
0Adam/gradients/FullyConnected_1/Softmax_grad/subSubAdam/gradients/AddN4Adam/gradients/FullyConnected_1/Softmax_grad/Reshape*'
_output_shapes
:���������*
T0
�
2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1Mul0Adam/gradients/FullyConnected_1/Softmax_grad/subFullyConnected_1/Softmax*'
_output_shapes
:���������*
T0
�
8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1*
T0*
data_formatNHWC*
_output_shapes
:
�
2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulMatMul2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1FullyConnected_1/W/read*
transpose_b(*(
_output_shapes
:����������*
transpose_a( *
T0
�
4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1MatMulDropout/cond/Merge2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1*
transpose_b( *
_output_shapes
:	�*
transpose_a(*
T0
�
0Adam/gradients/Dropout/cond/Merge_grad/cond_gradSwitch2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulDropout/cond/pred_id*
T0*<
_output_shapes*
(:����������:����������*E
_class;
97loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul
�
Adam/gradients/SwitchSwitchFullyConnected/ReluDropout/cond/pred_id^Adam/moving_avg^moving_avg*<
_output_shapes*
(:����������:����������*
T0
m
Adam/gradients/Shape_1ShapeAdam/gradients/Switch:1*
_output_shapes
:*
out_type0*
T0
~
Adam/gradients/zeros/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *    *
_output_shapes
: *
dtype0
�
Adam/gradients/zerosFillAdam/gradients/Shape_1Adam/gradients/zeros/Const*
T0*(
_output_shapes
:����������
�
3Adam/gradients/Dropout/cond/Switch_1_grad/cond_gradMerge0Adam/gradients/Dropout/cond/Merge_grad/cond_gradAdam/gradients/zeros*
N*
T0**
_output_shapes
:����������: 
�
2Adam/gradients/Dropout/cond/dropout/mul_grad/ShapeShapeDropout/cond/dropout/div^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
�
4Adam/gradients/Dropout/cond/dropout/mul_grad/Shape_1ShapeDropout/cond/dropout/Floor^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
�
BAdam/gradients/Dropout/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2Adam/gradients/Dropout/cond/dropout/mul_grad/Shape4Adam/gradients/Dropout/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
0Adam/gradients/Dropout/cond/dropout/mul_grad/mulMul2Adam/gradients/Dropout/cond/Merge_grad/cond_grad:1Dropout/cond/dropout/Floor*(
_output_shapes
:����������*
T0
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
2Adam/gradients/Dropout/cond/dropout/mul_grad/mul_1MulDropout/cond/dropout/div2Adam/gradients/Dropout/cond/Merge_grad/cond_grad:1*(
_output_shapes
:����������*
T0
�
2Adam/gradients/Dropout/cond/dropout/mul_grad/Sum_1Sum2Adam/gradients/Dropout/cond/dropout/mul_grad/mul_1DAdam/gradients/Dropout/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
6Adam/gradients/Dropout/cond/dropout/mul_grad/Reshape_1Reshape2Adam/gradients/Dropout/cond/dropout/mul_grad/Sum_14Adam/gradients/Dropout/cond/dropout/mul_grad/Shape_1*
Tshape0*(
_output_shapes
:����������*
T0
�
2Adam/gradients/Dropout/cond/dropout/div_grad/ShapeShape#Dropout/cond/dropout/Shape/Switch:1^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
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
4Adam/gradients/Dropout/cond/dropout/div_grad/ReshapeReshape0Adam/gradients/Dropout/cond/dropout/div_grad/Sum2Adam/gradients/Dropout/cond/dropout/div_grad/Shape*(
_output_shapes
:����������*
Tshape0*
T0
�
0Adam/gradients/Dropout/cond/dropout/div_grad/NegNeg#Dropout/cond/dropout/Shape/Switch:1^Adam/moving_avg^moving_avg*
T0*(
_output_shapes
:����������
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
Adam/gradients/Switch_1SwitchFullyConnected/ReluDropout/cond/pred_id^Adam/moving_avg^moving_avg*<
_output_shapes*
(:����������:����������*
T0
m
Adam/gradients/Shape_2ShapeAdam/gradients/Switch_1*
T0*
_output_shapes
:*
out_type0
�
Adam/gradients/zeros_1/ConstConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB
 *    
�
Adam/gradients/zeros_1FillAdam/gradients/Shape_2Adam/gradients/zeros_1/Const*(
_output_shapes
:����������*
T0
�
?Adam/gradients/Dropout/cond/dropout/Shape/Switch_grad/cond_gradMerge4Adam/gradients/Dropout/cond/dropout/div_grad/ReshapeAdam/gradients/zeros_1**
_output_shapes
:����������: *
T0*
N
�
Adam/gradients/AddN_1AddN3Adam/gradients/Dropout/cond/Switch_1_grad/cond_grad?Adam/gradients/Dropout/cond/dropout/Shape/Switch_grad/cond_grad*(
_output_shapes
:����������*
N*F
_class<
:8loc:@Adam/gradients/Dropout/cond/Switch_1_grad/cond_grad*
T0
�
0Adam/gradients/FullyConnected/Relu_grad/ReluGradReluGradAdam/gradients/AddN_1FullyConnected/Relu*(
_output_shapes
:����������*
T0
�
6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradBiasAddGrad0Adam/gradients/FullyConnected/Relu_grad/ReluGrad*
_output_shapes	
:�*
T0*
data_formatNHWC
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
0Adam/gradients/FullyConnected/Reshape_grad/ShapeShapeMaxPool2D_4/MaxPool^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
T0
�
2Adam/gradients/FullyConnected/Reshape_grad/ReshapeReshape0Adam/gradients/FullyConnected/MatMul_grad/MatMul0Adam/gradients/FullyConnected/Reshape_grad/Shape*/
_output_shapes
:��������� *
Tshape0*
T0
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
*Adam/gradients/Conv2D_4/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_4/MaxPool_grad/MaxPoolGradConv2D_4/Relu*
T0*/
_output_shapes
:��������� 
�
0Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_4/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
: 
�
)Adam/gradients/Conv2D_4/Conv2D_grad/ShapeShapeMaxPool2D_3/MaxPool^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
�
7Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_4/Conv2D_grad/ShapeConv2D_4/W/read*Adam/gradients/Conv2D_4/Relu_grad/ReluGrad*/
_output_shapes
:���������@*
T0*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
paddingSAME
�
+Adam/gradients/Conv2D_4/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
:*
dtype0*%
valueB"      @       
�
8Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D_3/MaxPool+Adam/gradients/Conv2D_4/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_4/Relu_grad/ReluGrad*&
_output_shapes
:@ *
paddingSAME*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
T0
�
3Adam/gradients/MaxPool2D_3/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_3/ReluMaxPool2D_3/MaxPool7Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropInput*
ksize
*/
_output_shapes
:���������@*
data_formatNHWC*
strides
*
T0*
paddingSAME
�
*Adam/gradients/Conv2D_3/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_3/MaxPool_grad/MaxPoolGradConv2D_3/Relu*
T0*/
_output_shapes
:���������@
�
0Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_3/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
:@
�
)Adam/gradients/Conv2D_3/Conv2D_grad/ShapeShapeMaxPool2D_2/MaxPool^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
�
7Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_3/Conv2D_grad/ShapeConv2D_3/W/read*Adam/gradients/Conv2D_3/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*0
_output_shapes
:����������*
paddingSAME*
T0*
use_cudnn_on_gpu(
�
+Adam/gradients/Conv2D_3/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*%
valueB"      �   @   
�
8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D_2/MaxPool+Adam/gradients/Conv2D_3/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_3/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*'
_output_shapes
:�@*
data_formatNHWC*
strides
*
T0*
paddingSAME
�
3Adam/gradients/MaxPool2D_2/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_2/ReluMaxPool2D_2/MaxPool7Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropInput*
paddingSAME*
T0*
data_formatNHWC*
strides
*0
_output_shapes
:����������*
ksize

�
*Adam/gradients/Conv2D_2/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_2/MaxPool_grad/MaxPoolGradConv2D_2/Relu*0
_output_shapes
:����������*
T0
�
0Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_2/Relu_grad/ReluGrad*
_output_shapes	
:�*
T0*
data_formatNHWC
�
)Adam/gradients/Conv2D_2/Conv2D_grad/ShapeShapeMaxPool2D_1/MaxPool^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
�
7Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_2/Conv2D_grad/ShapeConv2D_2/W/read*Adam/gradients/Conv2D_2/Relu_grad/ReluGrad*/
_output_shapes
:���������@*
paddingSAME*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
T0
�
+Adam/gradients/Conv2D_2/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*%
valueB"      @   �   *
_output_shapes
:*
dtype0
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
3Adam/gradients/MaxPool2D_1/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_1/ReluMaxPool2D_1/MaxPool7Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������(
@*
paddingSAME*
ksize
*
data_formatNHWC*
strides
*
T0
�
*Adam/gradients/Conv2D_1/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_1/MaxPool_grad/MaxPoolGradConv2D_1/Relu*/
_output_shapes
:���������(
@*
T0
�
0Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
�
)Adam/gradients/Conv2D_1/Conv2D_grad/ShapeShapeMaxPool2D/MaxPool^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
�
7Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_1/Conv2D_grad/ShapeConv2D_1/W/read*Adam/gradients/Conv2D_1/Relu_grad/ReluGrad*
paddingSAME*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*/
_output_shapes
:���������(
 
�
+Adam/gradients/Conv2D_1/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*%
valueB"          @   *
dtype0*
_output_shapes
:
�
8Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D/MaxPool+Adam/gradients/Conv2D_1/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_1/Relu_grad/ReluGrad*
paddingSAME*
T0*
data_formatNHWC*
strides
*&
_output_shapes
: @*
use_cudnn_on_gpu(
�
1Adam/gradients/MaxPool2D/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D/ReluMaxPool2D/MaxPool7Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropInput*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:����������0 
�
(Adam/gradients/Conv2D/Relu_grad/ReluGradReluGrad1Adam/gradients/MaxPool2D/MaxPool_grad/MaxPoolGradConv2D/Relu*0
_output_shapes
:����������0 *
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
5Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput'Adam/gradients/Conv2D/Conv2D_grad/ShapeConv2D/W/read(Adam/gradients/Conv2D/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
T0*
paddingSAME*0
_output_shapes
:����������0*
data_formatNHWC*
strides

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
Adam/global_norm/L2Loss_2L2Loss8Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter*
T0*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter
�
Adam/global_norm/L2Loss_3L2Loss0Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad
�
Adam/global_norm/L2Loss_4L2Loss8Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*
T0
�
Adam/global_norm/L2Loss_5L2Loss0Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
T0*C
_class9
75loc:@Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
Adam/global_norm/L2Loss_6L2Loss8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter*
T0
�
Adam/global_norm/L2Loss_7L2Loss0Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad*C
_class9
75loc:@Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
Adam/global_norm/L2Loss_8L2Loss8Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter*
T0*K
_classA
?=loc:@Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: 
�
Adam/global_norm/L2Loss_9L2Loss0Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad
�
Adam/global_norm/L2Loss_10L2Loss2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
T0*
_output_shapes
: *E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1
�
Adam/global_norm/L2Loss_11L2Loss6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
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
Adam/global_norm/Const_1Const^Adam/moving_avg^moving_avg*
valueB
 *   @*
dtype0*
_output_shapes
: 
l
Adam/global_norm/mulMulAdam/global_norm/SumAdam/global_norm/Const_1*
_output_shapes
: *
T0
[
Adam/global_norm/global_normSqrtAdam/global_norm/mul*
T0*
_output_shapes
: 
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
Adam/clip_by_global_norm/ConstConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
$Adam/clip_by_global_norm/truediv_1/yConst^Adam/moving_avg^moving_avg*
valueB
 *  �@*
_output_shapes
: *
dtype0
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
Adam/clip_by_global_norm/mul/xConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
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
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0IdentityAdam/clip_by_global_norm/mul_1*I
_class?
=;loc:@Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: *
T0
�
Adam/clip_by_global_norm/mul_2Mul.Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*A
_class7
53loc:@Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
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
Adam/clip_by_global_norm/mul_4Mul0Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*
_output_shapes
:@*C
_class9
75loc:@Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3IdentityAdam/clip_by_global_norm/mul_4*
T0*C
_class9
75loc:@Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
�
Adam/clip_by_global_norm/mul_5Mul8Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*K
_classA
?=loc:@Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@�*
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
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5IdentityAdam/clip_by_global_norm/mul_6*C
_class9
75loc:@Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
�
Adam/clip_by_global_norm/mul_7Mul8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*K
_classA
?=loc:@Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:�@*
T0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_6IdentityAdam/clip_by_global_norm/mul_7*
T0*'
_output_shapes
:�@*K
_classA
?=loc:@Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter
�
Adam/clip_by_global_norm/mul_8Mul0Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*C
_class9
75loc:@Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_7IdentityAdam/clip_by_global_norm/mul_8*
T0*
_output_shapes
:@*C
_class9
75loc:@Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad
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
Adam/clip_by_global_norm/mul_10Mul0Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_9IdentityAdam/clip_by_global_norm/mul_10*
T0*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad
�
Adam/clip_by_global_norm/mul_11Mul2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
_output_shapes
:	 �*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
T0
�
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_10IdentityAdam/clip_by_global_norm/mul_11*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes
:	 �
�
Adam/clip_by_global_norm/mul_12Mul6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_11IdentityAdam/clip_by_global_norm/mul_12*
T0*
_output_shapes	
:�*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad
�
Adam/clip_by_global_norm/mul_13Mul4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0*
_output_shapes
:	�*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1
�
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_12IdentityAdam/clip_by_global_norm/mul_13*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes
:	�*
T0
�
Adam/clip_by_global_norm/mul_14Mul8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*
_output_shapes
:*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad
�
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_13IdentityAdam/clip_by_global_norm/mul_14*
_output_shapes
:*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
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
VariableV2*
_class
loc:@Conv2D/W*
_output_shapes
: *
shape: *
dtype0*
shared_name *
	container 
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
Adam/beta1_power/readIdentityAdam/beta1_power*
_output_shapes
: *
_class
loc:@Conv2D/W*
T0
�
Adam/beta2_power/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *w�?*
_class
loc:@Conv2D/W
�
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
�
Adam/beta2_power/AssignAssignAdam/beta2_powerAdam/beta2_power/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
q
Adam/beta2_power/readIdentityAdam/beta2_power*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0
q
Adam/zeros_1Const*
dtype0*&
_output_shapes
: *%
valueB *    
�
Conv2D/W/Adam
VariableV2*
	container *
shared_name *
dtype0*
shape: *&
_output_shapes
: *
_class
loc:@Conv2D/W
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
Conv2D/W/Adam/readIdentityConv2D/W/Adam*&
_output_shapes
: *
_class
loc:@Conv2D/W*
T0
q
Adam/zeros_2Const*%
valueB *    *&
_output_shapes
: *
dtype0
�
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
Adam/zeros_3Const*
valueB *    *
_output_shapes
: *
dtype0
�
Conv2D/b/Adam
VariableV2*
_output_shapes
: *
dtype0*
shape: *
	container *
_class
loc:@Conv2D/b*
shared_name 
�
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
T0*
_class
loc:@Conv2D/b*
_output_shapes
: 
Y
Adam/zeros_4Const*
valueB *    *
dtype0*
_output_shapes
: 
�
Conv2D/b/Adam_1
VariableV2*
_output_shapes
: *
dtype0*
shape: *
	container *
_class
loc:@Conv2D/b*
shared_name 
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
Conv2D_1/W/Adam/AssignAssignConv2D_1/W/AdamAdam/zeros_5*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
�
Conv2D_1/W/Adam/readIdentityConv2D_1/W/Adam*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
q
Adam/zeros_6Const*
dtype0*&
_output_shapes
: @*%
valueB @*    
�
Conv2D_1/W/Adam_1
VariableV2*&
_output_shapes
: @*
dtype0*
shape: @*
	container *
_class
loc:@Conv2D_1/W*
shared_name 
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
�
Conv2D_1/b/Adam
VariableV2*
shared_name *
_class
loc:@Conv2D_1/b*
	container *
shape:@*
dtype0*
_output_shapes
:@
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
Conv2D_1/b/Adam/readIdentityConv2D_1/b/Adam*
_output_shapes
:@*
_class
loc:@Conv2D_1/b*
T0
Y
Adam/zeros_8Const*
dtype0*
_output_shapes
:@*
valueB@*    
�
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
�
Conv2D_1/b/Adam_1/AssignAssignConv2D_1/b/Adam_1Adam/zeros_8*
use_locking(*
T0*
_class
loc:@Conv2D_1/b*
validate_shape(*
_output_shapes
:@
y
Conv2D_1/b/Adam_1/readIdentityConv2D_1/b/Adam_1*
T0*
_class
loc:@Conv2D_1/b*
_output_shapes
:@
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
use_locking(*
validate_shape(*
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
�
Conv2D_2/W/Adam/readIdentityConv2D_2/W/Adam*
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
t
Adam/zeros_10Const*&
valueB@�*    *
dtype0*'
_output_shapes
:@�
�
Conv2D_2/W/Adam_1
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
T0*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�
\
Adam/zeros_11Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
Conv2D_2/b/Adam
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
Conv2D_2/b/Adam/AssignAssignConv2D_2/b/AdamAdam/zeros_11*
_class
loc:@Conv2D_2/b*
_output_shapes	
:�*
T0*
validate_shape(*
use_locking(
v
Conv2D_2/b/Adam/readIdentityConv2D_2/b/Adam*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b*
T0
\
Adam/zeros_12Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
Conv2D_2/b/Adam_1
VariableV2*
shape:�*
_output_shapes	
:�*
shared_name *
_class
loc:@Conv2D_2/b*
dtype0*
	container 
�
Conv2D_2/b/Adam_1/AssignAssignConv2D_2/b/Adam_1Adam/zeros_12*
_output_shapes	
:�*
validate_shape(*
_class
loc:@Conv2D_2/b*
T0*
use_locking(
z
Conv2D_2/b/Adam_1/readIdentityConv2D_2/b/Adam_1*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b*
T0
t
Adam/zeros_13Const*
dtype0*'
_output_shapes
:�@*&
valueB�@*    
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
Conv2D_3/W/Adam/AssignAssignConv2D_3/W/AdamAdam/zeros_13*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
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
VariableV2*
shared_name *
_class
loc:@Conv2D_3/W*
	container *
shape:�@*
dtype0*'
_output_shapes
:�@
�
Conv2D_3/W/Adam_1/AssignAssignConv2D_3/W/Adam_1Adam/zeros_14*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
�
Conv2D_3/W/Adam_1/readIdentityConv2D_3/W/Adam_1*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
T0
Z
Adam/zeros_15Const*
dtype0*
_output_shapes
:@*
valueB@*    
�
Conv2D_3/b/Adam
VariableV2*
shape:@*
_output_shapes
:@*
shared_name *
_class
loc:@Conv2D_3/b*
dtype0*
	container 
�
Conv2D_3/b/Adam/AssignAssignConv2D_3/b/AdamAdam/zeros_15*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
u
Conv2D_3/b/Adam/readIdentityConv2D_3/b/Adam*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
Z
Adam/zeros_16Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
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
�
Conv2D_3/b/Adam_1/AssignAssignConv2D_3/b/Adam_1Adam/zeros_16*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
y
Conv2D_3/b/Adam_1/readIdentityConv2D_3/b/Adam_1*
_class
loc:@Conv2D_3/b*
_output_shapes
:@*
T0
r
Adam/zeros_17Const*
dtype0*&
_output_shapes
:@ *%
valueB@ *    
�
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
Conv2D_4/W/Adam/readIdentityConv2D_4/W/Adam*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0
r
Adam/zeros_18Const*%
valueB@ *    *
dtype0*&
_output_shapes
:@ 
�
Conv2D_4/W/Adam_1
VariableV2*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
shape:@ *
dtype0*
shared_name *
	container 
�
Conv2D_4/W/Adam_1/AssignAssignConv2D_4/W/Adam_1Adam/zeros_18*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
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
Conv2D_4/b/Adam/AssignAssignConv2D_4/b/AdamAdam/zeros_19*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D_4/b*
T0*
use_locking(
u
Conv2D_4/b/Adam/readIdentityConv2D_4/b/Adam*
_output_shapes
: *
_class
loc:@Conv2D_4/b*
T0
Z
Adam/zeros_20Const*
valueB *    *
dtype0*
_output_shapes
: 
�
Conv2D_4/b/Adam_1
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
_output_shapes
:	 �*
dtype0*
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
FullyConnected/W/Adam/AssignAssignFullyConnected/W/AdamAdam/zeros_21*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
T0*
validate_shape(*
use_locking(
�
FullyConnected/W/Adam/readIdentityFullyConnected/W/Adam*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
T0
d
Adam/zeros_22Const*
valueB	 �*    *
dtype0*
_output_shapes
:	 �
�
FullyConnected/W/Adam_1
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
T0*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �
\
Adam/zeros_23Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
FullyConnected/b/Adam
VariableV2*
shared_name *#
_class
loc:@FullyConnected/b*
	container *
shape:�*
dtype0*
_output_shapes	
:�
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
FullyConnected/b/Adam/readIdentityFullyConnected/b/Adam*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b*
T0
\
Adam/zeros_24Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
FullyConnected/b/Adam_1
VariableV2*
shape:�*
_output_shapes	
:�*
shared_name *#
_class
loc:@FullyConnected/b*
dtype0*
	container 
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
_output_shapes
:	�*
dtype0*
valueB	�*    
�
FullyConnected_1/W/Adam
VariableV2*
shared_name *
shape:	�*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W*
dtype0*
	container 
�
FullyConnected_1/W/Adam/AssignAssignFullyConnected_1/W/AdamAdam/zeros_25*
_output_shapes
:	�*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
�
FullyConnected_1/W/Adam/readIdentityFullyConnected_1/W/Adam*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0
d
Adam/zeros_26Const*
dtype0*
_output_shapes
:	�*
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
 FullyConnected_1/W/Adam_1/AssignAssignFullyConnected_1/W/Adam_1Adam/zeros_26*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0*
validate_shape(*
use_locking(
�
FullyConnected_1/W/Adam_1/readIdentityFullyConnected_1/W/Adam_1*
T0*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�
Z
Adam/zeros_27Const*
valueB*    *
_output_shapes
:*
dtype0
�
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
�
FullyConnected_1/b/Adam/AssignAssignFullyConnected_1/b/AdamAdam/zeros_27*
_output_shapes
:*
validate_shape(*%
_class
loc:@FullyConnected_1/b*
T0*
use_locking(
�
FullyConnected_1/b/Adam/readIdentityFullyConnected_1/b/Adam*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0
Z
Adam/zeros_28Const*
valueB*    *
dtype0*
_output_shapes
:
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
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
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
Adam/apply_grad_op_0/beta1Const*
_output_shapes
: *
dtype0*
valueB
 *fff?
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
.Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam	ApplyAdamConv2D/WConv2D/W/AdamConv2D/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0*
use_locking( *
T0*
_class
loc:@Conv2D/W*&
_output_shapes
: 
�
.Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam	ApplyAdamConv2D/bConv2D/b/AdamConv2D/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
use_locking( 
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
Conv2D_1/bConv2D_1/b/AdamConv2D_1/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3*
use_locking( *
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
�
0Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam	ApplyAdam
Conv2D_2/WConv2D_2/W/AdamConv2D_2/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_4*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W*
T0*
use_locking( 
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
Conv2D_3/WConv2D_3/W/AdamConv2D_3/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_6*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W*
T0*
use_locking( 
�
0Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam	ApplyAdam
Conv2D_3/bConv2D_3/b/AdamConv2D_3/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_7*
use_locking( *
T0*
_class
loc:@Conv2D_3/b*
_output_shapes
:@
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
Conv2D_4/bConv2D_4/b/AdamConv2D_4/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_9*
use_locking( *
T0*
_class
loc:@Conv2D_4/b*
_output_shapes
: 
�
6Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam	ApplyAdamFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_10*
use_locking( *
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
�
6Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam	ApplyAdamFullyConnected/bFullyConnected/b/AdamFullyConnected/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_11*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b*
T0*
use_locking( 
�
8Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam	ApplyAdamFullyConnected_1/WFullyConnected_1/W/AdamFullyConnected_1/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_12*
use_locking( *
T0*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W
�
8Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam	ApplyAdamFullyConnected_1/bFullyConnected_1/b/AdamFullyConnected_1/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_13*
use_locking( *
T0*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:
�
Adam/apply_grad_op_0/mulMulAdam/beta1_power/readAdam/apply_grad_op_0/beta1/^Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam/^Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
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
Adam/apply_grad_op_0/mul_1MulAdam/beta2_power/readAdam/apply_grad_op_0/beta2/^Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam/^Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam*
T0*
_class
loc:@Conv2D/W*
_output_shapes
: 
�
Adam/apply_grad_op_0/Assign_1AssignAdam/beta2_powerAdam/apply_grad_op_0/mul_1*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking( 
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
Adam/apply_grad_op_0	AssignAddTraining_stepAdam/apply_grad_op_0/value*
use_locking( *
T0* 
_class
loc:@Training_step*
_output_shapes
: 
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
Conv2D_4/bBConv2D_4/b/AdamBConv2D_4/b/Adam_1BCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
_output_shapes
:3*
dtype0
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
save/Const^save/SaveV2*
_class
loc:@save/Const*
_output_shapes
: *
T0
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
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
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
valueBBAdam/beta2_power*
dtype0*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
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
save/RestoreV2_3/tensor_namesConst*
valueBBConv2D/W*
_output_shapes
:*
dtype0
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
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
s
save/RestoreV2_4/tensor_namesConst*
_output_shapes
:*
dtype0*"
valueBBConv2D/W/Adam
j
!save/RestoreV2_4/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_4AssignConv2D/W/Adamsave/RestoreV2_4*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(
u
save/RestoreV2_5/tensor_namesConst*$
valueBBConv2D/W/Adam_1*
_output_shapes
:*
dtype0
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
save/Assign_5AssignConv2D/W/Adam_1save/RestoreV2_5*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
n
save/RestoreV2_6/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBConv2D/b
j
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_6AssignConv2D/bsave/RestoreV2_6*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/b*
T0*
use_locking(
s
save/RestoreV2_7/tensor_namesConst*
dtype0*
_output_shapes
:*"
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
save/Assign_7AssignConv2D/b/Adamsave/RestoreV2_7*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/b
u
save/RestoreV2_8/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D/b/Adam_1
j
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_8AssignConv2D/b/Adam_1save/RestoreV2_8*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/b*
T0*
use_locking(
p
save/RestoreV2_9/tensor_namesConst*
dtype0*
_output_shapes
:*
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
use_locking(*
T0*
_class
loc:@Conv2D_1/W*
validate_shape(*&
_output_shapes
: @
v
save/RestoreV2_10/tensor_namesConst*$
valueBBConv2D_1/W/Adam*
_output_shapes
:*
dtype0
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
_output_shapes
:*
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
"save/RestoreV2_11/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
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
valueBB
Conv2D_1/b*
dtype0*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
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
�
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_13AssignConv2D_1/b/Adamsave/RestoreV2_13*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
x
save/RestoreV2_14/tensor_namesConst*&
valueBBConv2D_1/b/Adam_1*
dtype0*
_output_shapes
:
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
save/Assign_14AssignConv2D_1/b/Adam_1save/RestoreV2_14*
use_locking(*
T0*
_class
loc:@Conv2D_1/b*
validate_shape(*
_output_shapes
:@
q
save/RestoreV2_15/tensor_namesConst*
valueBB
Conv2D_2/W*
_output_shapes
:*
dtype0
k
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
_output_shapes
:*
dtypes
2
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
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
_output_shapes
:*
dtypes
2
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
save/RestoreV2_17/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_2/W/Adam_1
k
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
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
"save/RestoreV2_18/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_18Assign
Conv2D_2/bsave/RestoreV2_18*
use_locking(*
T0*
_class
loc:@Conv2D_2/b*
validate_shape(*
_output_shapes	
:�
v
save/RestoreV2_19/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_2/b/Adam
k
"save/RestoreV2_19/shape_and_slicesConst*
_output_shapes
:*
dtype0*
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
save/RestoreV2_20/tensor_namesConst*&
valueBBConv2D_2/b/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_20AssignConv2D_2/b/Adam_1save/RestoreV2_20*
_class
loc:@Conv2D_2/b*
_output_shapes	
:�*
T0*
validate_shape(*
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
save/Assign_22AssignConv2D_3/W/Adamsave/RestoreV2_22*'
_output_shapes
:�@*
validate_shape(*
_class
loc:@Conv2D_3/W*
T0*
use_locking(
x
save/RestoreV2_23/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_3/W/Adam_1
k
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
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
dtype0*
_output_shapes
:*
valueBB
Conv2D_3/b
k
"save/RestoreV2_24/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
save/RestoreV2_25/tensor_namesConst*$
valueBBConv2D_3/b/Adam*
_output_shapes
:*
dtype0
k
"save/RestoreV2_25/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
_output_shapes
:*
dtypes
2
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
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
_output_shapes
:*
dtypes
2
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
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_27Assign
Conv2D_4/Wsave/RestoreV2_27*&
_output_shapes
:@ *
validate_shape(*
_class
loc:@Conv2D_4/W*
T0*
use_locking(
v
save/RestoreV2_28/tensor_namesConst*$
valueBBConv2D_4/W/Adam*
_output_shapes
:*
dtype0
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
save/RestoreV2_29/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_4/W/Adam_1
k
"save/RestoreV2_29/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
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
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
_output_shapes
:*
dtypes
2
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
save/RestoreV2_31/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_4/b/Adam
k
"save/RestoreV2_31/shape_and_slicesConst*
dtype0*
_output_shapes
:*
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
use_locking(*
T0*
_class
loc:@Conv2D_4/b*
validate_shape(*
_output_shapes
: 
x
save/RestoreV2_32/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_4/b/Adam_1
k
"save/RestoreV2_32/shape_and_slicesConst*
dtype0*
_output_shapes
:*
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
save/Assign_32AssignConv2D_4/b/Adam_1save/RestoreV2_32*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D_4/b*
T0*
use_locking(
�
save/RestoreV2_33/tensor_namesConst*1
value(B&BCrossentropy/Mean/moving_avg*
dtype0*
_output_shapes
:
k
"save/RestoreV2_33/shape_and_slicesConst*
_output_shapes
:*
dtype0*
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
valueBBFullyConnected/W*
dtype0*
_output_shapes
:
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
"save/RestoreV2_35/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_35	RestoreV2
save/Constsave/RestoreV2_35/tensor_names"save/RestoreV2_35/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_35AssignFullyConnected/W/Adamsave/RestoreV2_35*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
~
save/RestoreV2_36/tensor_namesConst*,
value#B!BFullyConnected/W/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_36/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_36	RestoreV2
save/Constsave/RestoreV2_36/tensor_names"save/RestoreV2_36/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_36AssignFullyConnected/W/Adam_1save/RestoreV2_36*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
:	 �
w
save/RestoreV2_37/tensor_namesConst*
dtype0*
_output_shapes
:*%
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
save/Constsave/RestoreV2_37/tensor_names"save/RestoreV2_37/shape_and_slices*
_output_shapes
:*
dtypes
2
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
save/RestoreV2_38/tensor_namesConst*
dtype0*
_output_shapes
:**
value!BBFullyConnected/b/Adam
k
"save/RestoreV2_38/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_38	RestoreV2
save/Constsave/RestoreV2_38/tensor_names"save/RestoreV2_38/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_38AssignFullyConnected/b/Adamsave/RestoreV2_38*
_output_shapes	
:�*
validate_shape(*#
_class
loc:@FullyConnected/b*
T0*
use_locking(
~
save/RestoreV2_39/tensor_namesConst*
_output_shapes
:*
dtype0*,
value#B!BFullyConnected/b/Adam_1
k
"save/RestoreV2_39/shape_and_slicesConst*
_output_shapes
:*
dtype0*
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
save/Assign_39AssignFullyConnected/b/Adam_1save/RestoreV2_39*
_output_shapes	
:�*
validate_shape(*#
_class
loc:@FullyConnected/b*
T0*
use_locking(
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
B *
dtype0*
_output_shapes
:
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
"save/RestoreV2_42/shape_and_slicesConst*
_output_shapes
:*
dtype0*
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
save/RestoreV2_43/tensor_namesConst*
dtype0*
_output_shapes
:*'
valueBBFullyConnected_1/b
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
"save/RestoreV2_44/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_44	RestoreV2
save/Constsave/RestoreV2_44/tensor_names"save/RestoreV2_44/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_44AssignFullyConnected_1/b/Adamsave/RestoreV2_44*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
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
�
save/RestoreV2_45	RestoreV2
save/Constsave/RestoreV2_45/tensor_names"save/RestoreV2_45/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
valueBBGlobal_Step*
dtype0*
_output_shapes
:
k
"save/RestoreV2_46/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_46	RestoreV2
save/Constsave/RestoreV2_46/tensor_names"save/RestoreV2_46/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_46AssignGlobal_Stepsave/RestoreV2_46*
_class
loc:@Global_Step*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
t
save/RestoreV2_47/tensor_namesConst*"
valueBBTraining_step*
dtype0*
_output_shapes
:
k
"save/RestoreV2_47/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_47	RestoreV2
save/Constsave/RestoreV2_47/tensor_names"save/RestoreV2_47/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_47AssignTraining_stepsave/RestoreV2_47*
use_locking(*
T0* 
_class
loc:@Training_step*
validate_shape(*
_output_shapes
: 
r
save/RestoreV2_48/tensor_namesConst*
_output_shapes
:*
dtype0* 
valueBBis_training
k
"save/RestoreV2_48/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_48	RestoreV2
save/Constsave/RestoreV2_48/tensor_names"save/RestoreV2_48/shape_and_slices*
dtypes
2
*
_output_shapes
:
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
save/Assign_49Assignval_accsave/RestoreV2_49*
_class
loc:@val_acc*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
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
�
save/RestoreV2_50	RestoreV2
save/Constsave/RestoreV2_50/tensor_names"save/RestoreV2_50/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_50Assignval_losssave/RestoreV2_50*
_output_shapes
: *
validate_shape(*
_class
loc:@val_loss*
T0*
use_locking(
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_50
R
save_1/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
�
save_1/SaveV2/tensor_namesConst*
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
save_1/SaveV2/shape_and_slicesConst*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:3
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
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
T0*
_class
loc:@save_1/Const*
_output_shapes
: 
~
save_1/RestoreV2/tensor_namesConst*-
value$B"BAccuracy/Mean/moving_avg*
dtype0*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
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
save_1/RestoreV2_2/tensor_namesConst*%
valueBBAdam/beta2_power*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
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
�
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
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
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
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
#save_1/RestoreV2_5/shape_and_slicesConst*
_output_shapes
:*
dtype0*
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
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*&
_output_shapes
: 
p
save_1/RestoreV2_6/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBConv2D/b
l
#save_1/RestoreV2_6/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_6AssignConv2D/bsave_1/RestoreV2_6*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
u
save_1/RestoreV2_7/tensor_namesConst*
dtype0*
_output_shapes
:*"
valueBBConv2D/b/Adam
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
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
dtype0*
_output_shapes
:*
valueBB
Conv2D_1/W
l
#save_1/RestoreV2_9/shape_and_slicesConst*
dtype0*
_output_shapes
:*
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
Conv2D_1/Wsave_1/RestoreV2_9*&
_output_shapes
: @*
validate_shape(*
_class
loc:@Conv2D_1/W*
T0*
use_locking(
x
 save_1/RestoreV2_10/tensor_namesConst*$
valueBBConv2D_1/W/Adam*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_10/shape_and_slicesConst*
_output_shapes
:*
dtype0*
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
 save_1/RestoreV2_11/tensor_namesConst*
dtype0*
_output_shapes
:*&
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
save_1/Assign_11AssignConv2D_1/W/Adam_1save_1/RestoreV2_11*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
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
�
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_12Assign
Conv2D_1/bsave_1/RestoreV2_12*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_1/b*
T0*
use_locking(
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
�
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_13AssignConv2D_1/b/Adamsave_1/RestoreV2_13*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
z
 save_1/RestoreV2_14/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_1/b/Adam_1
m
$save_1/RestoreV2_14/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
 save_1/RestoreV2_16/tensor_namesConst*$
valueBBConv2D_2/W/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
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
 save_1/RestoreV2_17/tensor_namesConst*&
valueBBConv2D_2/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_17/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
_output_shapes
:*
dtypes
2
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
$save_1/RestoreV2_18/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_18Assign
Conv2D_2/bsave_1/RestoreV2_18*
use_locking(*
T0*
_class
loc:@Conv2D_2/b*
validate_shape(*
_output_shapes	
:�
x
 save_1/RestoreV2_19/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_2/b/Adam
m
$save_1/RestoreV2_19/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
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
$save_1/RestoreV2_20/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_20AssignConv2D_2/b/Adam_1save_1/RestoreV2_20*
_output_shapes	
:�*
validate_shape(*
_class
loc:@Conv2D_2/b*
T0*
use_locking(
s
 save_1/RestoreV2_21/tensor_namesConst*
dtype0*
_output_shapes
:*
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
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_21Assign
Conv2D_3/Wsave_1/RestoreV2_21*'
_output_shapes
:�@*
validate_shape(*
_class
loc:@Conv2D_3/W*
T0*
use_locking(
x
 save_1/RestoreV2_22/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_3/W/Adam
m
$save_1/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_22AssignConv2D_3/W/Adamsave_1/RestoreV2_22*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
z
 save_1/RestoreV2_23/tensor_namesConst*&
valueBBConv2D_3/W/Adam_1*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_23/shape_and_slicesConst*
_output_shapes
:*
dtype0*
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
use_locking(*
validate_shape(*
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
s
 save_1/RestoreV2_24/tensor_namesConst*
valueBB
Conv2D_3/b*
dtype0*
_output_shapes
:
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
�
save_1/RestoreV2_25	RestoreV2save_1/Const save_1/RestoreV2_25/tensor_names$save_1/RestoreV2_25/shape_and_slices*
_output_shapes
:*
dtypes
2
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
 save_1/RestoreV2_26/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_3/b/Adam_1
m
$save_1/RestoreV2_26/shape_and_slicesConst*
_output_shapes
:*
dtype0*
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
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_27	RestoreV2save_1/Const save_1/RestoreV2_27/tensor_names$save_1/RestoreV2_27/shape_and_slices*
_output_shapes
:*
dtypes
2
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
 save_1/RestoreV2_28/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_4/W/Adam
m
$save_1/RestoreV2_28/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_28	RestoreV2save_1/Const save_1/RestoreV2_28/tensor_names$save_1/RestoreV2_28/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_28AssignConv2D_4/W/Adamsave_1/RestoreV2_28*
use_locking(*
T0*
_class
loc:@Conv2D_4/W*
validate_shape(*&
_output_shapes
:@ 
z
 save_1/RestoreV2_29/tensor_namesConst*&
valueBBConv2D_4/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_29/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_29	RestoreV2save_1/Const save_1/RestoreV2_29/tensor_names$save_1/RestoreV2_29/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_29AssignConv2D_4/W/Adam_1save_1/RestoreV2_29*
use_locking(*
T0*
_class
loc:@Conv2D_4/W*
validate_shape(*&
_output_shapes
:@ 
s
 save_1/RestoreV2_30/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_4/b
m
$save_1/RestoreV2_30/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_30	RestoreV2save_1/Const save_1/RestoreV2_30/tensor_names$save_1/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_30Assign
Conv2D_4/bsave_1/RestoreV2_30*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D_4/b*
T0*
use_locking(
x
 save_1/RestoreV2_31/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_4/b/Adam
m
$save_1/RestoreV2_31/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_31	RestoreV2save_1/Const save_1/RestoreV2_31/tensor_names$save_1/RestoreV2_31/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
 save_1/RestoreV2_33/tensor_namesConst*1
value(B&BCrossentropy/Mean/moving_avg*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_33/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_33	RestoreV2save_1/Const save_1/RestoreV2_33/tensor_names$save_1/RestoreV2_33/shape_and_slices*
_output_shapes
:*
dtypes
2
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
save_1/RestoreV2_34	RestoreV2save_1/Const save_1/RestoreV2_34/tensor_names$save_1/RestoreV2_34/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_34AssignFullyConnected/Wsave_1/RestoreV2_34*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
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
$save_1/RestoreV2_36/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_36	RestoreV2save_1/Const save_1/RestoreV2_36/tensor_names$save_1/RestoreV2_36/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_36AssignFullyConnected/W/Adam_1save_1/RestoreV2_36*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
T0*
validate_shape(*
use_locking(
y
 save_1/RestoreV2_37/tensor_namesConst*
_output_shapes
:*
dtype0*%
valueBBFullyConnected/b
m
$save_1/RestoreV2_37/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_37	RestoreV2save_1/Const save_1/RestoreV2_37/tensor_names$save_1/RestoreV2_37/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_37AssignFullyConnected/bsave_1/RestoreV2_37*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b
~
 save_1/RestoreV2_38/tensor_namesConst**
value!BBFullyConnected/b/Adam*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_38/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_38	RestoreV2save_1/Const save_1/RestoreV2_38/tensor_names$save_1/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_38AssignFullyConnected/b/Adamsave_1/RestoreV2_38*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b
�
 save_1/RestoreV2_39/tensor_namesConst*,
value#B!BFullyConnected/b/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_39/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_39	RestoreV2save_1/Const save_1/RestoreV2_39/tensor_names$save_1/RestoreV2_39/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_39AssignFullyConnected/b/Adam_1save_1/RestoreV2_39*
_output_shapes	
:�*
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
$save_1/RestoreV2_40/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_40	RestoreV2save_1/Const save_1/RestoreV2_40/tensor_names$save_1/RestoreV2_40/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_40AssignFullyConnected_1/Wsave_1/RestoreV2_40*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0*
validate_shape(*
use_locking(
�
 save_1/RestoreV2_41/tensor_namesConst*,
value#B!BFullyConnected_1/W/Adam*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_41/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_41	RestoreV2save_1/Const save_1/RestoreV2_41/tensor_names$save_1/RestoreV2_41/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_41AssignFullyConnected_1/W/Adamsave_1/RestoreV2_41*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W
�
 save_1/RestoreV2_42/tensor_namesConst*
_output_shapes
:*
dtype0*.
value%B#BFullyConnected_1/W/Adam_1
m
$save_1/RestoreV2_42/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_42	RestoreV2save_1/Const save_1/RestoreV2_42/tensor_names$save_1/RestoreV2_42/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_42AssignFullyConnected_1/W/Adam_1save_1/RestoreV2_42*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W
{
 save_1/RestoreV2_43/tensor_namesConst*'
valueBBFullyConnected_1/b*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_43/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_43	RestoreV2save_1/Const save_1/RestoreV2_43/tensor_names$save_1/RestoreV2_43/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_43AssignFullyConnected_1/bsave_1/RestoreV2_43*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
�
 save_1/RestoreV2_44/tensor_namesConst*
_output_shapes
:*
dtype0*,
value#B!BFullyConnected_1/b/Adam
m
$save_1/RestoreV2_44/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
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
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_45	RestoreV2save_1/Const save_1/RestoreV2_45/tensor_names$save_1/RestoreV2_45/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
B *
_output_shapes
:*
dtype0
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
 save_1/RestoreV2_47/tensor_namesConst*
dtype0*
_output_shapes
:*"
valueBBTraining_step
m
$save_1/RestoreV2_47/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_47	RestoreV2save_1/Const save_1/RestoreV2_47/tensor_names$save_1/RestoreV2_47/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
valueBBis_training*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_48/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_48	RestoreV2save_1/Const save_1/RestoreV2_48/tensor_names$save_1/RestoreV2_48/shape_and_slices*
dtypes
2
*
_output_shapes
:
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
$save_1/RestoreV2_49/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_49	RestoreV2save_1/Const save_1/RestoreV2_49/tensor_names$save_1/RestoreV2_49/shape_and_slices*
_output_shapes
:*
dtypes
2
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
dtype0*
_output_shapes
:*
valueBBval_loss
m
$save_1/RestoreV2_50/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_50	RestoreV2save_1/Const save_1/RestoreV2_50/tensor_names$save_1/RestoreV2_50/shape_and_slices*
dtypes
2*
_output_shapes
:
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
save_2/control_dependencyIdentitysave_2/Const^save_2/SaveV2*
T0*
_output_shapes
: *
_class
loc:@save_2/Const
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
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/AssignAssignConv2D/Wsave_2/RestoreV2*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*&
_output_shapes
: 
p
save_2/RestoreV2_1/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBConv2D/b
l
#save_2/RestoreV2_1/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_2/RestoreV2_1	RestoreV2save_2/Constsave_2/RestoreV2_1/tensor_names#save_2/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
#save_2/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
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
Conv2D_1/Wsave_2/RestoreV2_2*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
r
save_2/RestoreV2_3/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_1/b
l
#save_2/RestoreV2_3/shape_and_slicesConst*
_output_shapes
:*
dtype0*
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
Conv2D_1/bsave_2/RestoreV2_3*
use_locking(*
T0*
_class
loc:@Conv2D_1/b*
validate_shape(*
_output_shapes
:@
r
save_2/RestoreV2_4/tensor_namesConst*
dtype0*
_output_shapes
:*
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
use_locking(*
T0*
_class
loc:@Conv2D_2/W*
validate_shape(*'
_output_shapes
:@�
r
save_2/RestoreV2_5/tensor_namesConst*
valueBB
Conv2D_2/b*
_output_shapes
:*
dtype0
l
#save_2/RestoreV2_5/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
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
Conv2D_3/W*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_6	RestoreV2save_2/Constsave_2/RestoreV2_6/tensor_names#save_2/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_6Assign
Conv2D_3/Wsave_2/RestoreV2_6*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
T0*
validate_shape(*
use_locking(
r
save_2/RestoreV2_7/tensor_namesConst*
valueBB
Conv2D_3/b*
_output_shapes
:*
dtype0
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
Conv2D_3/bsave_2/RestoreV2_7*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_3/b*
T0*
use_locking(
r
save_2/RestoreV2_8/tensor_namesConst*
valueBB
Conv2D_4/W*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_8/shape_and_slicesConst*
dtype0*
_output_shapes
:*
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
Conv2D_4/Wsave_2/RestoreV2_8*&
_output_shapes
:@ *
validate_shape(*
_class
loc:@Conv2D_4/W*
T0*
use_locking(
r
save_2/RestoreV2_9/tensor_namesConst*
valueBB
Conv2D_4/b*
dtype0*
_output_shapes
:
l
#save_2/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_9	RestoreV2save_2/Constsave_2/RestoreV2_9/tensor_names#save_2/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
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
$save_2/RestoreV2_10/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_2/RestoreV2_10	RestoreV2save_2/Const save_2/RestoreV2_10/tensor_names$save_2/RestoreV2_10/shape_and_slices*
_output_shapes
:*
dtypes
2
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
$save_2/RestoreV2_11/shape_and_slicesConst*
dtype0*
_output_shapes
:*
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
 save_2/RestoreV2_12/tensor_namesConst*
_output_shapes
:*
dtype0*'
valueBBFullyConnected_1/W
m
$save_2/RestoreV2_12/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
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
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_3/SaveV2/tensor_namesConst*
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
T0*
_class
loc:@save_3/Const*
_output_shapes
: 
~
save_3/RestoreV2/tensor_namesConst*-
value$B"BAccuracy/Mean/moving_avg*
dtype0*
_output_shapes
:
j
!save_3/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
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
save_3/RestoreV2_1/tensor_namesConst*
_output_shapes
:*
dtype0*%
valueBBAdam/beta1_power
l
#save_3/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_1	RestoreV2save_3/Constsave_3/RestoreV2_1/tensor_names#save_3/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
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
save_3/RestoreV2_2/tensor_namesConst*%
valueBBAdam/beta2_power*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
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
valueBBConv2D/W*
_output_shapes
:*
dtype0
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
save_3/Assign_3AssignConv2D/Wsave_3/RestoreV2_3*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0*
validate_shape(*
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
save_3/Assign_4AssignConv2D/W/Adamsave_3/RestoreV2_4*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
w
save_3/RestoreV2_5/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D/W/Adam_1
l
#save_3/RestoreV2_5/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_5	RestoreV2save_3/Constsave_3/RestoreV2_5/tensor_names#save_3/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_5AssignConv2D/W/Adam_1save_3/RestoreV2_5*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*&
_output_shapes
: 
p
save_3/RestoreV2_6/tensor_namesConst*
valueBBConv2D/b*
_output_shapes
:*
dtype0
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
�
save_3/RestoreV2_7	RestoreV2save_3/Constsave_3/RestoreV2_7/tensor_names#save_3/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
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
�
save_3/RestoreV2_8	RestoreV2save_3/Constsave_3/RestoreV2_8/tensor_names#save_3/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
valueBB
Conv2D_1/W*
_output_shapes
:*
dtype0
l
#save_3/RestoreV2_9/shape_and_slicesConst*
dtype0*
_output_shapes
:*
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
Conv2D_1/Wsave_3/RestoreV2_9*
use_locking(*
T0*
_class
loc:@Conv2D_1/W*
validate_shape(*&
_output_shapes
: @
x
 save_3/RestoreV2_10/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_1/W/Adam
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
save_3/Assign_10AssignConv2D_1/W/Adamsave_3/RestoreV2_10*
use_locking(*
T0*
_class
loc:@Conv2D_1/W*
validate_shape(*&
_output_shapes
: @
z
 save_3/RestoreV2_11/tensor_namesConst*&
valueBBConv2D_1/W/Adam_1*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_11/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_11	RestoreV2save_3/Const save_3/RestoreV2_11/tensor_names$save_3/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
Conv2D_1/b*
dtype0*
_output_shapes
:
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
Conv2D_1/bsave_3/RestoreV2_12*
_class
loc:@Conv2D_1/b*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
x
 save_3/RestoreV2_13/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_1/b/Adam
m
$save_3/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_13	RestoreV2save_3/Const save_3/RestoreV2_13/tensor_names$save_3/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
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
save_3/RestoreV2_14	RestoreV2save_3/Const save_3/RestoreV2_14/tensor_names$save_3/RestoreV2_14/shape_and_slices*
_output_shapes
:*
dtypes
2
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
Conv2D_2/W*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_15/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_15	RestoreV2save_3/Const save_3/RestoreV2_15/tensor_names$save_3/RestoreV2_15/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_15Assign
Conv2D_2/Wsave_3/RestoreV2_15*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�*
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
�
save_3/RestoreV2_16	RestoreV2save_3/Const save_3/RestoreV2_16/tensor_names$save_3/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_16AssignConv2D_2/W/Adamsave_3/RestoreV2_16*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
z
 save_3/RestoreV2_17/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_2/W/Adam_1
m
$save_3/RestoreV2_17/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_17	RestoreV2save_3/Const save_3/RestoreV2_17/tensor_names$save_3/RestoreV2_17/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_17AssignConv2D_2/W/Adam_1save_3/RestoreV2_17*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�*
T0*
validate_shape(*
use_locking(
s
 save_3/RestoreV2_18/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_2/b
m
$save_3/RestoreV2_18/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_18	RestoreV2save_3/Const save_3/RestoreV2_18/tensor_names$save_3/RestoreV2_18/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_18Assign
Conv2D_2/bsave_3/RestoreV2_18*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b
x
 save_3/RestoreV2_19/tensor_namesConst*$
valueBBConv2D_2/b/Adam*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_19/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_19	RestoreV2save_3/Const save_3/RestoreV2_19/tensor_names$save_3/RestoreV2_19/shape_and_slices*
_output_shapes
:*
dtypes
2
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
valueBBConv2D_2/b/Adam_1*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_20/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_20	RestoreV2save_3/Const save_3/RestoreV2_20/tensor_names$save_3/RestoreV2_20/shape_and_slices*
_output_shapes
:*
dtypes
2
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
 save_3/RestoreV2_21/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_3/W
m
$save_3/RestoreV2_21/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_21	RestoreV2save_3/Const save_3/RestoreV2_21/tensor_names$save_3/RestoreV2_21/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_21Assign
Conv2D_3/Wsave_3/RestoreV2_21*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
x
 save_3/RestoreV2_22/tensor_namesConst*$
valueBBConv2D_3/W/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_22/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_22	RestoreV2save_3/Const save_3/RestoreV2_22/tensor_names$save_3/RestoreV2_22/shape_and_slices*
_output_shapes
:*
dtypes
2
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
 save_3/RestoreV2_23/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_3/W/Adam_1
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
valueBB
Conv2D_3/b*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_24/shape_and_slicesConst*
_output_shapes
:*
dtype0*
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
valueBBConv2D_3/b/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_25	RestoreV2save_3/Const save_3/RestoreV2_25/tensor_names$save_3/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
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
 save_3/RestoreV2_26/tensor_namesConst*&
valueBBConv2D_3/b/Adam_1*
dtype0*
_output_shapes
:
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
save_3/Assign_26AssignConv2D_3/b/Adam_1save_3/RestoreV2_26*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_3/b*
T0*
use_locking(
s
 save_3/RestoreV2_27/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_4/W
m
$save_3/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
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
 save_3/RestoreV2_28/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_4/W/Adam
m
$save_3/RestoreV2_28/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_28	RestoreV2save_3/Const save_3/RestoreV2_28/tensor_names$save_3/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_28AssignConv2D_4/W/Adamsave_3/RestoreV2_28*
use_locking(*
T0*
_class
loc:@Conv2D_4/W*
validate_shape(*&
_output_shapes
:@ 
z
 save_3/RestoreV2_29/tensor_namesConst*&
valueBBConv2D_4/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_29/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_29	RestoreV2save_3/Const save_3/RestoreV2_29/tensor_names$save_3/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_29AssignConv2D_4/W/Adam_1save_3/RestoreV2_29*&
_output_shapes
:@ *
validate_shape(*
_class
loc:@Conv2D_4/W*
T0*
use_locking(
s
 save_3/RestoreV2_30/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_4/b
m
$save_3/RestoreV2_30/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_30	RestoreV2save_3/Const save_3/RestoreV2_30/tensor_names$save_3/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
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
 save_3/RestoreV2_31/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_4/b/Adam
m
$save_3/RestoreV2_31/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_31	RestoreV2save_3/Const save_3/RestoreV2_31/tensor_names$save_3/RestoreV2_31/shape_and_slices*
_output_shapes
:*
dtypes
2
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
value(B&BCrossentropy/Mean/moving_avg*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_33/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_33	RestoreV2save_3/Const save_3/RestoreV2_33/tensor_names$save_3/RestoreV2_33/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_33AssignCrossentropy/Mean/moving_avgsave_3/RestoreV2_33*
use_locking(*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
y
 save_3/RestoreV2_34/tensor_namesConst*%
valueBBFullyConnected/W*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_34/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_34	RestoreV2save_3/Const save_3/RestoreV2_34/tensor_names$save_3/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes
:
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
$save_3/RestoreV2_35/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_35	RestoreV2save_3/Const save_3/RestoreV2_35/tensor_names$save_3/RestoreV2_35/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_35AssignFullyConnected/W/Adamsave_3/RestoreV2_35*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
T0*
validate_shape(*
use_locking(
�
 save_3/RestoreV2_36/tensor_namesConst*,
value#B!BFullyConnected/W/Adam_1*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_36/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
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
valueBBFullyConnected/b*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_37/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_37	RestoreV2save_3/Const save_3/RestoreV2_37/tensor_names$save_3/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_37AssignFullyConnected/bsave_3/RestoreV2_37*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b
~
 save_3/RestoreV2_38/tensor_namesConst*
_output_shapes
:*
dtype0**
value!BBFullyConnected/b/Adam
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
 save_3/RestoreV2_39/tensor_namesConst*,
value#B!BFullyConnected/b/Adam_1*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_39/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_39	RestoreV2save_3/Const save_3/RestoreV2_39/tensor_names$save_3/RestoreV2_39/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_39AssignFullyConnected/b/Adam_1save_3/RestoreV2_39*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�*
T0*
validate_shape(*
use_locking(
{
 save_3/RestoreV2_40/tensor_namesConst*'
valueBBFullyConnected_1/W*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_40/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_40	RestoreV2save_3/Const save_3/RestoreV2_40/tensor_names$save_3/RestoreV2_40/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_40AssignFullyConnected_1/Wsave_3/RestoreV2_40*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W
�
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
�
save_3/RestoreV2_41	RestoreV2save_3/Const save_3/RestoreV2_41/tensor_names$save_3/RestoreV2_41/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_41AssignFullyConnected_1/W/Adamsave_3/RestoreV2_41*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W
�
 save_3/RestoreV2_42/tensor_namesConst*
_output_shapes
:*
dtype0*.
value%B#BFullyConnected_1/W/Adam_1
m
$save_3/RestoreV2_42/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_42	RestoreV2save_3/Const save_3/RestoreV2_42/tensor_names$save_3/RestoreV2_42/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_42AssignFullyConnected_1/W/Adam_1save_3/RestoreV2_42*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W
{
 save_3/RestoreV2_43/tensor_namesConst*'
valueBBFullyConnected_1/b*
_output_shapes
:*
dtype0
m
$save_3/RestoreV2_43/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_43	RestoreV2save_3/Const save_3/RestoreV2_43/tensor_names$save_3/RestoreV2_43/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_43AssignFullyConnected_1/bsave_3/RestoreV2_43*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
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
�
save_3/RestoreV2_44	RestoreV2save_3/Const save_3/RestoreV2_44/tensor_names$save_3/RestoreV2_44/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_44AssignFullyConnected_1/b/Adamsave_3/RestoreV2_44*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
�
 save_3/RestoreV2_45/tensor_namesConst*
_output_shapes
:*
dtype0*.
value%B#BFullyConnected_1/b/Adam_1
m
$save_3/RestoreV2_45/shape_and_slicesConst*
_output_shapes
:*
dtype0*
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
 save_3/RestoreV2_46/tensor_namesConst* 
valueBBGlobal_Step*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_46/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_46	RestoreV2save_3/Const save_3/RestoreV2_46/tensor_names$save_3/RestoreV2_46/shape_and_slices*
_output_shapes
:*
dtypes
2
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
 save_3/RestoreV2_47/tensor_namesConst*
_output_shapes
:*
dtype0*"
valueBBTraining_step
m
$save_3/RestoreV2_47/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_47	RestoreV2save_3/Const save_3/RestoreV2_47/tensor_names$save_3/RestoreV2_47/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_47AssignTraining_stepsave_3/RestoreV2_47*
_output_shapes
: *
validate_shape(* 
_class
loc:@Training_step*
T0*
use_locking(
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
save_3/RestoreV2_48	RestoreV2save_3/Const save_3/RestoreV2_48/tensor_names$save_3/RestoreV2_48/shape_and_slices*
dtypes
2
*
_output_shapes
:
�
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
 save_3/RestoreV2_49/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBval_acc
m
$save_3/RestoreV2_49/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
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
 save_3/RestoreV2_50/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBval_loss
m
$save_3/RestoreV2_50/shape_and_slicesConst*
_output_shapes
:*
dtype0*
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
save_3/restore_allNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_2^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26^save_3/Assign_27^save_3/Assign_28^save_3/Assign_29^save_3/Assign_30^save_3/Assign_31^save_3/Assign_32^save_3/Assign_33^save_3/Assign_34^save_3/Assign_35^save_3/Assign_36^save_3/Assign_37^save_3/Assign_38^save_3/Assign_39^save_3/Assign_40^save_3/Assign_41^save_3/Assign_42^save_3/Assign_43^save_3/Assign_44^save_3/Assign_45^save_3/Assign_46^save_3/Assign_47^save_3/Assign_48^save_3/Assign_49^save_3/Assign_50"ꮍ�:�     ���.	x��k9�AJ��
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
Assign/valueConst*
value	B
 Z*
_output_shapes
: *
dtype0

�
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
Assign_1/valueConst*
value	B
 Z *
_output_shapes
: *
dtype0

�
Assign_1Assignis_trainingAssign_1/value*
use_locking(*
T0
*
_class
loc:@is_training*
validate_shape(*
_output_shapes
: 
b
input/XPlaceholder*0
_output_shapes
:����������0*
dtype0*
shape: 
�
)Conv2D/W/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
_class
loc:@Conv2D/W*%
valueB"             
�
'Conv2D/W/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D/W*
valueB
 *�\��
�
'Conv2D/W/Initializer/random_uniform/maxConst*
_class
loc:@Conv2D/W*
valueB
 *�\�>*
dtype0*
_output_shapes
: 
�
1Conv2D/W/Initializer/random_uniform/RandomUniformRandomUniform)Conv2D/W/Initializer/random_uniform/shape*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0*
dtype0*
seed2 *

seed 
�
'Conv2D/W/Initializer/random_uniform/subSub'Conv2D/W/Initializer/random_uniform/max'Conv2D/W/Initializer/random_uniform/min*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
�
'Conv2D/W/Initializer/random_uniform/mulMul1Conv2D/W/Initializer/random_uniform/RandomUniform'Conv2D/W/Initializer/random_uniform/sub*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0
�
#Conv2D/W/Initializer/random_uniformAdd'Conv2D/W/Initializer/random_uniform/mul'Conv2D/W/Initializer/random_uniform/min*
T0*
_class
loc:@Conv2D/W*&
_output_shapes
: 
�
Conv2D/W
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
Conv2D/W/AssignAssignConv2D/W#Conv2D/W/Initializer/random_uniform*&
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(
q
Conv2D/W/readIdentityConv2D/W*&
_output_shapes
: *
_class
loc:@Conv2D/W*
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
Conv2D/b/AssignAssignConv2D/bConv2D/b/Initializer/Const*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
e
Conv2D/b/readIdentityConv2D/b*
_output_shapes
: *
_class
loc:@Conv2D/b*
T0
�
Conv2D/Conv2DConv2Dinput/XConv2D/W/read*
use_cudnn_on_gpu(*0
_output_shapes
:����������0 *
strides
*
data_formatNHWC*
T0*
paddingSAME
�
Conv2D/BiasAddBiasAddConv2D/Conv2DConv2D/b/read*
T0*
data_formatNHWC*0
_output_shapes
:����������0 
^
Conv2D/ReluReluConv2D/BiasAdd*0
_output_shapes
:����������0 *
T0
�
MaxPool2D/MaxPoolMaxPoolConv2D/Relu*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*/
_output_shapes
:���������(
 
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
 *��z�*
dtype0*
_output_shapes
: 
�
)Conv2D_1/W/Initializer/random_uniform/maxConst*
_class
loc:@Conv2D_1/W*
valueB
 *��z=*
dtype0*
_output_shapes
: 
�
3Conv2D_1/W/Initializer/random_uniform/RandomUniformRandomUniform+Conv2D_1/W/Initializer/random_uniform/shape*&
_output_shapes
: @*
dtype0*
seed2 *
_class
loc:@Conv2D_1/W*
T0*

seed 
�
)Conv2D_1/W/Initializer/random_uniform/subSub)Conv2D_1/W/Initializer/random_uniform/max)Conv2D_1/W/Initializer/random_uniform/min*
_class
loc:@Conv2D_1/W*
_output_shapes
: *
T0
�
)Conv2D_1/W/Initializer/random_uniform/mulMul3Conv2D_1/W/Initializer/random_uniform/RandomUniform)Conv2D_1/W/Initializer/random_uniform/sub*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
�
%Conv2D_1/W/Initializer/random_uniformAdd)Conv2D_1/W/Initializer/random_uniform/mul)Conv2D_1/W/Initializer/random_uniform/min*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
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
VariableV2*
	container *
shared_name *
dtype0*
shape:@*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
�
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
�
Conv2D_1/Conv2DConv2DMaxPool2D/MaxPoolConv2D_1/W/read*
use_cudnn_on_gpu(*/
_output_shapes
:���������(
@*
strides
*
data_formatNHWC*
T0*
paddingSAME
�
Conv2D_1/BiasAddBiasAddConv2D_1/Conv2DConv2D_1/b/read*/
_output_shapes
:���������(
@*
T0*
data_formatNHWC
a
Conv2D_1/ReluReluConv2D_1/BiasAdd*
T0*/
_output_shapes
:���������(
@
�
MaxPool2D_1/MaxPoolMaxPoolConv2D_1/Relu*
ksize
*
T0*
paddingSAME*/
_output_shapes
:���������@*
strides
*
data_formatNHWC
�
+Conv2D_2/W/Initializer/random_uniform/shapeConst*
_class
loc:@Conv2D_2/W*%
valueB"      @   �   *
dtype0*
_output_shapes
:
�
)Conv2D_2/W/Initializer/random_uniform/minConst*
_class
loc:@Conv2D_2/W*
valueB
 *�\1�*
_output_shapes
: *
dtype0
�
)Conv2D_2/W/Initializer/random_uniform/maxConst*
_class
loc:@Conv2D_2/W*
valueB
 *�\1=*
dtype0*
_output_shapes
: 
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
)Conv2D_2/W/Initializer/random_uniform/mulMul3Conv2D_2/W/Initializer/random_uniform/RandomUniform)Conv2D_2/W/Initializer/random_uniform/sub*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W*
T0
�
%Conv2D_2/W/Initializer/random_uniformAdd)Conv2D_2/W/Initializer/random_uniform/mul)Conv2D_2/W/Initializer/random_uniform/min*
T0*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�
�

Conv2D_2/W
VariableV2*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�*
shape:@�*
dtype0*
shared_name *
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
Conv2D_2/W*
T0*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�
�
Conv2D_2/b/Initializer/ConstConst*
_output_shapes	
:�*
dtype0*
_class
loc:@Conv2D_2/b*
valueB�*    
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
Conv2D_2/b*
_class
loc:@Conv2D_2/b*
_output_shapes	
:�*
T0
�
Conv2D_2/Conv2DConv2DMaxPool2D_1/MaxPoolConv2D_2/W/read*
use_cudnn_on_gpu(*0
_output_shapes
:����������*
strides
*
data_formatNHWC*
T0*
paddingSAME
�
Conv2D_2/BiasAddBiasAddConv2D_2/Conv2DConv2D_2/b/read*
data_formatNHWC*
T0*0
_output_shapes
:����������
b
Conv2D_2/ReluReluConv2D_2/BiasAdd*
T0*0
_output_shapes
:����������
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
:����������
�
+Conv2D_3/W/Initializer/random_uniform/shapeConst*
_class
loc:@Conv2D_3/W*%
valueB"      �   @   *
dtype0*
_output_shapes
:
�
)Conv2D_3/W/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
_class
loc:@Conv2D_3/W*
valueB
 *����
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

seed *
seed2 *
dtype0*
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
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
T0*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
�
Conv2D_3/b/Initializer/ConstConst*
_output_shapes
:@*
dtype0*
_class
loc:@Conv2D_3/b*
valueB@*    
�

Conv2D_3/b
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
Conv2D_3/b/AssignAssign
Conv2D_3/bConv2D_3/b/Initializer/Const*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_3/b
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
:���������@
�
Conv2D_3/BiasAddBiasAddConv2D_3/Conv2DConv2D_3/b/read*
data_formatNHWC*
T0*/
_output_shapes
:���������@
a
Conv2D_3/ReluReluConv2D_3/BiasAdd*
T0*/
_output_shapes
:���������@
�
MaxPool2D_3/MaxPoolMaxPoolConv2D_3/Relu*
ksize
*
T0*
paddingSAME*/
_output_shapes
:���������@*
strides
*
data_formatNHWC
�
+Conv2D_4/W/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
_class
loc:@Conv2D_4/W*%
valueB"      @       
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

seed *
T0*
_class
loc:@Conv2D_4/W*
seed2 *
dtype0*&
_output_shapes
:@ 
�
)Conv2D_4/W/Initializer/random_uniform/subSub)Conv2D_4/W/Initializer/random_uniform/max)Conv2D_4/W/Initializer/random_uniform/min*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/W
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
Conv2D_4/W*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
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
	container *
shared_name *
dtype0*
shape: *
_output_shapes
: *
_class
loc:@Conv2D_4/b
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
Conv2D_4/Conv2DConv2DMaxPool2D_3/MaxPoolConv2D_4/W/read*/
_output_shapes
:��������� *
T0*
use_cudnn_on_gpu(*
strides
*
data_formatNHWC*
paddingSAME
�
Conv2D_4/BiasAddBiasAddConv2D_4/Conv2DConv2D_4/b/read*/
_output_shapes
:��������� *
T0*
data_formatNHWC
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
3FullyConnected/W/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*#
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
ף<*
_output_shapes
: *
dtype0
�
=FullyConnected/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3FullyConnected/W/Initializer/truncated_normal/shape*
T0*
_output_shapes
:	 �*

seed *#
_class
loc:@FullyConnected/W*
dtype0*
seed2 
�
1FullyConnected/W/Initializer/truncated_normal/mulMul=FullyConnected/W/Initializer/truncated_normal/TruncatedNormal4FullyConnected/W/Initializer/truncated_normal/stddev*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W*
T0
�
-FullyConnected/W/Initializer/truncated_normalAdd1FullyConnected/W/Initializer/truncated_normal/mul2FullyConnected/W/Initializer/truncated_normal/mean*
T0*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �
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
FullyConnected/W/AssignAssignFullyConnected/W-FullyConnected/W/Initializer/truncated_normal*
_output_shapes
:	 �*
validate_shape(*#
_class
loc:@FullyConnected/W*
T0*
use_locking(
�
FullyConnected/W/readIdentityFullyConnected/W*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
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
T0*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�
m
FullyConnected/Reshape/shapeConst*
valueB"����    *
dtype0*
_output_shapes
:
�
FullyConnected/ReshapeReshapeMaxPool2D_4/MaxPoolFullyConnected/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:��������� 
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
!Dropout/cond/dropout/Shape/SwitchSwitchFullyConnected/ReluDropout/cond/pred_id*
T0*&
_class
loc:@FullyConnected/Relu*<
_output_shapes*
(:����������:����������
}
Dropout/cond/dropout/ShapeShape#Dropout/cond/dropout/Shape/Switch:1*
_output_shapes
:*
out_type0*
T0
�
'Dropout/cond/dropout/random_uniform/minConst^Dropout/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
�
'Dropout/cond/dropout/random_uniform/maxConst^Dropout/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
1Dropout/cond/dropout/random_uniform/RandomUniformRandomUniformDropout/cond/dropout/Shape*(
_output_shapes
:����������*
seed2 *
dtype0*
T0*

seed 
�
'Dropout/cond/dropout/random_uniform/subSub'Dropout/cond/dropout/random_uniform/max'Dropout/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
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
Dropout/cond/dropout/addAddDropout/cond/dropout/keep_prob#Dropout/cond/dropout/random_uniform*(
_output_shapes
:����������*
T0
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
Dropout/cond/Switch_1SwitchFullyConnected/ReluDropout/cond/pred_id*&
_class
loc:@FullyConnected/Relu*<
_output_shapes*
(:����������:����������*
T0
�
Dropout/cond/MergeMergeDropout/cond/Switch_1Dropout/cond/dropout/mul**
_output_shapes
:����������: *
T0*
N
�
5FullyConnected_1/W/Initializer/truncated_normal/shapeConst*%
_class
loc:@FullyConnected_1/W*
valueB"      *
dtype0*
_output_shapes
:
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
6FullyConnected_1/W/Initializer/truncated_normal/stddevConst*%
_class
loc:@FullyConnected_1/W*
valueB
 *
ף<*
_output_shapes
: *
dtype0
�
?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5FullyConnected_1/W/Initializer/truncated_normal/shape*
_output_shapes
:	�*
dtype0*
seed2 *%
_class
loc:@FullyConnected_1/W*
T0*

seed 
�
3FullyConnected_1/W/Initializer/truncated_normal/mulMul?FullyConnected_1/W/Initializer/truncated_normal/TruncatedNormal6FullyConnected_1/W/Initializer/truncated_normal/stddev*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
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
VariableV2*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
shape:	�*
dtype0*
shared_name *
	container 
�
FullyConnected_1/W/AssignAssignFullyConnected_1/W/FullyConnected_1/W/Initializer/truncated_normal*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	�
�
FullyConnected_1/W/readIdentityFullyConnected_1/W*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0
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
loc:@FullyConnected_1/b*
shared_name *
_output_shapes
:*
shape:
�
FullyConnected_1/b/AssignAssignFullyConnected_1/b$FullyConnected_1/b/Initializer/Const*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
�
FullyConnected_1/b/readIdentityFullyConnected_1/b*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b*
T0
�
FullyConnected_1/MatMulMatMulDropout/cond/MergeFullyConnected_1/W/read*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
�
FullyConnected_1/BiasAddBiasAddFullyConnected_1/MatMulFullyConnected_1/b/read*'
_output_shapes
:���������*
T0*
data_formatNHWC
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
Accuracy/ArgMaxArgMaxFullyConnected_1/SoftmaxAccuracy/ArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:���������
]
Accuracy/ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
}
Accuracy/ArgMax_1ArgMax	targets/YAccuracy/ArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:���������
i
Accuracy/EqualEqualAccuracy/ArgMaxAccuracy/ArgMax_1*
T0	*#
_output_shapes
:���������
b
Accuracy/CastCastAccuracy/Equal*#
_output_shapes
:���������*

DstT0*

SrcT0

X
Accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
r
Accuracy/MeanMeanAccuracy/CastAccuracy/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
d
"Crossentropy/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
Crossentropy/SumSumFullyConnected_1/Softmax"Crossentropy/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:���������
}
Crossentropy/truedivRealDivFullyConnected_1/SoftmaxCrossentropy/Sum*'
_output_shapes
:���������*
T0
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
Crossentropy/LogLogCrossentropy/clip_by_value*
T0*'
_output_shapes
:���������
f
Crossentropy/mulMul	targets/YCrossentropy/Log*'
_output_shapes
:���������*
T0
f
$Crossentropy/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
Crossentropy/Sum_1SumCrossentropy/mul$Crossentropy/Sum_1/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:���������
Y
Crossentropy/NegNegCrossentropy/Sum_1*
T0*#
_output_shapes
:���������
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
Training_step/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
q
Training_step
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 
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
Training_step/readIdentityTraining_step*
T0* 
_class
loc:@Training_step*
_output_shapes
: 
^
Global_Step/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
Global_Step
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 
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
Add/yConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
D
AddAddGlobal_Step/readAdd/y*
_output_shapes
: *
T0
�
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
 *    *
dtype0*
_output_shapes
: 
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
val_acc/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
k
val_acc
VariableV2*
shared_name *
dtype0*
shape: *
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
T0*
_output_shapes
: *
_class
loc:@val_acc
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
�
assign/val_lossAssignval_lossplaceholder/val_loss*
use_locking(*
T0*
_class
loc:@val_loss*
validate_shape(*
_output_shapes
: 
�
assign/val_accAssignval_accplaceholder/val_acc*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@val_acc
J
zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
|
Accuracy/Mean/moving_avg
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
�
Accuracy/Mean/moving_avg/AssignAssignAccuracy/Mean/moving_avgzeros*
use_locking(*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
�
Accuracy/Mean/moving_avg/readIdentityAccuracy/Mean/moving_avg*
T0*
_output_shapes
: *+
_class!
loc:@Accuracy/Mean/moving_avg
U
moving_avg/decayConst*
dtype0*
_output_shapes
: *
valueB
 *fff?
U
moving_avg/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
\
moving_avg/addAddmoving_avg/add/xTraining_step/read*
T0*
_output_shapes
: 
W
moving_avg/add_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *   A
`
moving_avg/add_1Addmoving_avg/add_1/xTraining_step/read*
T0*
_output_shapes
: 
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
 moving_avg/AssignMovingAvg/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?*+
_class!
loc:@Accuracy/Mean/moving_avg
�
moving_avg/AssignMovingAvg/subSub moving_avg/AssignMovingAvg/sub/xmoving_avg/Minimum*
T0*+
_class!
loc:@Accuracy/Mean/moving_avg*
_output_shapes
: 
�
 moving_avg/AssignMovingAvg/sub_1SubAccuracy/Mean/moving_avg/readAccuracy/Mean*
T0*
_output_shapes
: *+
_class!
loc:@Accuracy/Mean/moving_avg
�
moving_avg/AssignMovingAvg/mulMul moving_avg/AssignMovingAvg/sub_1moving_avg/AssignMovingAvg/sub*
T0*
_output_shapes
: *+
_class!
loc:@Accuracy/Mean/moving_avg
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
 *    *
dtype0*
_output_shapes
: 
�
Crossentropy/Mean/moving_avg
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 
�
#Crossentropy/Mean/moving_avg/AssignAssignCrossentropy/Mean/moving_avg
Adam/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg
�
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
Adam/moving_avg/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
f
Adam/moving_avg/addAddAdam/moving_avg/add/xTraining_step/read*
_output_shapes
: *
T0
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
T0*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg
�
%Adam/moving_avg/AssignMovingAvg/sub_1Sub!Crossentropy/Mean/moving_avg/readCrossentropy/Mean*
_output_shapes
: */
_class%
#!loc:@Crossentropy/Mean/moving_avg*
T0
�
#Adam/moving_avg/AssignMovingAvg/mulMul%Adam/moving_avg/AssignMovingAvg/sub_1#Adam/moving_avg/AssignMovingAvg/sub*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
_output_shapes
: *
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
Adam/Loss/raw/tagsConst*
dtype0*
_output_shapes
: *
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
-Adam/gradients/Crossentropy/Mean_grad/ReshapeReshapeAdam/gradients/Fill3Adam/gradients/Crossentropy/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
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
-Adam/gradients/Crossentropy/Mean_grad/Shape_2Const^Adam/moving_avg^moving_avg*
valueB *
_output_shapes
: *
dtype0
�
+Adam/gradients/Crossentropy/Mean_grad/ConstConst^Adam/moving_avg^moving_avg*
valueB: *
dtype0*
_output_shapes
:
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
/Adam/gradients/Crossentropy/Mean_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
�
-Adam/gradients/Crossentropy/Mean_grad/MaximumMaximum,Adam/gradients/Crossentropy/Mean_grad/Prod_1/Adam/gradients/Crossentropy/Mean_grad/Maximum/y*
_output_shapes
: *
T0
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
(Adam/gradients/Crossentropy/Neg_grad/NegNeg-Adam/gradients/Crossentropy/Mean_grad/truediv*
T0*#
_output_shapes
:���������
�
,Adam/gradients/Crossentropy/Sum_1_grad/ShapeShapeCrossentropy/mul^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
�
+Adam/gradients/Crossentropy/Sum_1_grad/SizeConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B :
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
.Adam/gradients/Crossentropy/Sum_1_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB 
�
2Adam/gradients/Crossentropy/Sum_1_grad/range/startConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B : 
�
2Adam/gradients/Crossentropy/Sum_1_grad/range/deltaConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
value	B :
�
,Adam/gradients/Crossentropy/Sum_1_grad/rangeRange2Adam/gradients/Crossentropy/Sum_1_grad/range/start+Adam/gradients/Crossentropy/Sum_1_grad/Size2Adam/gradients/Crossentropy/Sum_1_grad/range/delta*

Tidx0*
_output_shapes
:
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
4Adam/gradients/Crossentropy/Sum_1_grad/DynamicStitchDynamicStitch,Adam/gradients/Crossentropy/Sum_1_grad/range*Adam/gradients/Crossentropy/Sum_1_grad/mod,Adam/gradients/Crossentropy/Sum_1_grad/Shape+Adam/gradients/Crossentropy/Sum_1_grad/Fill*#
_output_shapes
:���������*
T0*
N
�
0Adam/gradients/Crossentropy/Sum_1_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*
_output_shapes
: *
dtype0
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
T0*
Tshape0*
_output_shapes
:
�
+Adam/gradients/Crossentropy/Sum_1_grad/TileTile.Adam/gradients/Crossentropy/Sum_1_grad/Reshape/Adam/gradients/Crossentropy/Sum_1_grad/floordiv*'
_output_shapes
:���������*
T0*

Tmultiples0
�
*Adam/gradients/Crossentropy/mul_grad/ShapeShape	targets/Y^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
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
(Adam/gradients/Crossentropy/mul_grad/SumSum(Adam/gradients/Crossentropy/mul_grad/mul:Adam/gradients/Crossentropy/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
,Adam/gradients/Crossentropy/mul_grad/ReshapeReshape(Adam/gradients/Crossentropy/mul_grad/Sum*Adam/gradients/Crossentropy/mul_grad/Shape*
T0*'
_output_shapes
:���������*
Tshape0
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
ReciprocalCrossentropy/clip_by_value^Adam/moving_avg^moving_avg/^Adam/gradients/Crossentropy/mul_grad/Reshape_1*'
_output_shapes
:���������*
T0
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
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1Const^Adam/moving_avg^moving_avg*
valueB *
dtype0*
_output_shapes
: 
�
6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2Shape(Adam/gradients/Crossentropy/Log_grad/mul*
T0*
_output_shapes
:*
out_type0
�
:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/ConstConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB
 *    
�
4Adam/gradients/Crossentropy/clip_by_value_grad/zerosFill6Adam/gradients/Crossentropy/clip_by_value_grad/Shape_2:Adam/gradients/Crossentropy/clip_by_value_grad/zeros/Const*
T0*'
_output_shapes
:���������
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
5Adam/gradients/Crossentropy/clip_by_value_grad/SelectSelect;Adam/gradients/Crossentropy/clip_by_value_grad/GreaterEqual(Adam/gradients/Crossentropy/Log_grad/mul4Adam/gradients/Crossentropy/clip_by_value_grad/zeros*
T0*'
_output_shapes
:���������
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
2Adam/gradients/Crossentropy/clip_by_value_grad/SumSum5Adam/gradients/Crossentropy/clip_by_value_grad/SelectDAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
6Adam/gradients/Crossentropy/clip_by_value_grad/ReshapeReshape2Adam/gradients/Crossentropy/clip_by_value_grad/Sum4Adam/gradients/Crossentropy/clip_by_value_grad/Shape*'
_output_shapes
:���������*
Tshape0*
T0
�
4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_1Sum7Adam/gradients/Crossentropy/clip_by_value_grad/Select_1FAdam/gradients/Crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
8Adam/gradients/Crossentropy/clip_by_value_grad/Reshape_1Reshape4Adam/gradients/Crossentropy/clip_by_value_grad/Sum_16Adam/gradients/Crossentropy/clip_by_value_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
�
<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/ShapeShapeCrossentropy/truediv^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
�
>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB 
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
@Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshape<Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Sum_1>Adam/gradients/Crossentropy/clip_by_value/Minimum_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
�
.Adam/gradients/Crossentropy/truediv_grad/ShapeShapeFullyConnected_1/Softmax^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
0Adam/gradients/Crossentropy/truediv_grad/Shape_1ShapeCrossentropy/Sum^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
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
,Adam/gradients/Crossentropy/truediv_grad/SumSum0Adam/gradients/Crossentropy/truediv_grad/RealDiv>Adam/gradients/Crossentropy/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
0Adam/gradients/Crossentropy/truediv_grad/ReshapeReshape,Adam/gradients/Crossentropy/truediv_grad/Sum.Adam/gradients/Crossentropy/truediv_grad/Shape*'
_output_shapes
:���������*
Tshape0*
T0
�
,Adam/gradients/Crossentropy/truediv_grad/NegNegFullyConnected_1/Softmax^Adam/moving_avg^moving_avg*
T0*'
_output_shapes
:���������
�
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1RealDiv,Adam/gradients/Crossentropy/truediv_grad/NegCrossentropy/Sum*'
_output_shapes
:���������*
T0
�
2Adam/gradients/Crossentropy/truediv_grad/RealDiv_2RealDiv2Adam/gradients/Crossentropy/truediv_grad/RealDiv_1Crossentropy/Sum*'
_output_shapes
:���������*
T0
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
2Adam/gradients/Crossentropy/truediv_grad/Reshape_1Reshape.Adam/gradients/Crossentropy/truediv_grad/Sum_10Adam/gradients/Crossentropy/truediv_grad/Shape_1*'
_output_shapes
:���������*
Tshape0*
T0
�
*Adam/gradients/Crossentropy/Sum_grad/ShapeShapeFullyConnected_1/Softmax^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
)Adam/gradients/Crossentropy/Sum_grad/SizeConst^Adam/moving_avg^moving_avg*
value	B :*
_output_shapes
: *
dtype0
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
,Adam/gradients/Crossentropy/Sum_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
valueB 
�
0Adam/gradients/Crossentropy/Sum_grad/range/startConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
value	B : 
�
0Adam/gradients/Crossentropy/Sum_grad/range/deltaConst^Adam/moving_avg^moving_avg*
_output_shapes
: *
dtype0*
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
2Adam/gradients/Crossentropy/Sum_grad/DynamicStitchDynamicStitch*Adam/gradients/Crossentropy/Sum_grad/range(Adam/gradients/Crossentropy/Sum_grad/mod*Adam/gradients/Crossentropy/Sum_grad/Shape)Adam/gradients/Crossentropy/Sum_grad/Fill*#
_output_shapes
:���������*
N*
T0
�
.Adam/gradients/Crossentropy/Sum_grad/Maximum/yConst^Adam/moving_avg^moving_avg*
value	B :*
dtype0*
_output_shapes
: 
�
,Adam/gradients/Crossentropy/Sum_grad/MaximumMaximum2Adam/gradients/Crossentropy/Sum_grad/DynamicStitch.Adam/gradients/Crossentropy/Sum_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
-Adam/gradients/Crossentropy/Sum_grad/floordivFloorDiv*Adam/gradients/Crossentropy/Sum_grad/Shape,Adam/gradients/Crossentropy/Sum_grad/Maximum*
T0*
_output_shapes
:
�
,Adam/gradients/Crossentropy/Sum_grad/ReshapeReshape2Adam/gradients/Crossentropy/truediv_grad/Reshape_12Adam/gradients/Crossentropy/Sum_grad/DynamicStitch*
_output_shapes
:*
Tshape0*
T0
�
)Adam/gradients/Crossentropy/Sum_grad/TileTile,Adam/gradients/Crossentropy/Sum_grad/Reshape-Adam/gradients/Crossentropy/Sum_grad/floordiv*'
_output_shapes
:���������*
T0*

Tmultiples0
�
Adam/gradients/AddNAddN0Adam/gradients/Crossentropy/truediv_grad/Reshape)Adam/gradients/Crossentropy/Sum_grad/Tile*
N*
T0*'
_output_shapes
:���������*C
_class9
75loc:@Adam/gradients/Crossentropy/truediv_grad/Reshape
�
0Adam/gradients/FullyConnected_1/Softmax_grad/mulMulAdam/gradients/AddNFullyConnected_1/Softmax*
T0*'
_output_shapes
:���������
�
BAdam/gradients/FullyConnected_1/Softmax_grad/Sum/reduction_indicesConst^Adam/moving_avg^moving_avg*
_output_shapes
:*
dtype0*
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
T0*
Tshape0*'
_output_shapes
:���������
�
0Adam/gradients/FullyConnected_1/Softmax_grad/subSubAdam/gradients/AddN4Adam/gradients/FullyConnected_1/Softmax_grad/Reshape*'
_output_shapes
:���������*
T0
�
2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1Mul0Adam/gradients/FullyConnected_1/Softmax_grad/subFullyConnected_1/Softmax*
T0*'
_output_shapes
:���������
�
8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradBiasAddGrad2Adam/gradients/FullyConnected_1/Softmax_grad/mul_1*
T0*
data_formatNHWC*
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
0Adam/gradients/Dropout/cond/Merge_grad/cond_gradSwitch2Adam/gradients/FullyConnected_1/MatMul_grad/MatMulDropout/cond/pred_id*E
_class;
97loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul*<
_output_shapes*
(:����������:����������*
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
Adam/gradients/zeros/ConstConst^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB
 *    
�
Adam/gradients/zerosFillAdam/gradients/Shape_1Adam/gradients/zeros/Const*
T0*(
_output_shapes
:����������
�
3Adam/gradients/Dropout/cond/Switch_1_grad/cond_gradMerge0Adam/gradients/Dropout/cond/Merge_grad/cond_gradAdam/gradients/zeros**
_output_shapes
:����������: *
T0*
N
�
2Adam/gradients/Dropout/cond/dropout/mul_grad/ShapeShapeDropout/cond/dropout/div^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
�
4Adam/gradients/Dropout/cond/dropout/mul_grad/Shape_1ShapeDropout/cond/dropout/Floor^Adam/moving_avg^moving_avg*
_output_shapes
:*
out_type0*
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
0Adam/gradients/Dropout/cond/dropout/mul_grad/SumSum0Adam/gradients/Dropout/cond/dropout/mul_grad/mulBAdam/gradients/Dropout/cond/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
4Adam/gradients/Dropout/cond/dropout/mul_grad/ReshapeReshape0Adam/gradients/Dropout/cond/dropout/mul_grad/Sum2Adam/gradients/Dropout/cond/dropout/mul_grad/Shape*
T0*(
_output_shapes
:����������*
Tshape0
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
2Adam/gradients/Dropout/cond/dropout/div_grad/ShapeShape#Dropout/cond/dropout/Shape/Switch:1^Adam/moving_avg^moving_avg*
out_type0*
_output_shapes
:*
T0
�
4Adam/gradients/Dropout/cond/dropout/div_grad/Shape_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
: *
valueB 
�
BAdam/gradients/Dropout/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs2Adam/gradients/Dropout/cond/dropout/div_grad/Shape4Adam/gradients/Dropout/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
4Adam/gradients/Dropout/cond/dropout/div_grad/RealDivRealDiv4Adam/gradients/Dropout/cond/dropout/mul_grad/ReshapeDropout/cond/dropout/keep_prob*
T0*(
_output_shapes
:����������
�
0Adam/gradients/Dropout/cond/dropout/div_grad/SumSum4Adam/gradients/Dropout/cond/dropout/div_grad/RealDivBAdam/gradients/Dropout/cond/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
4Adam/gradients/Dropout/cond/dropout/div_grad/ReshapeReshape0Adam/gradients/Dropout/cond/dropout/div_grad/Sum2Adam/gradients/Dropout/cond/dropout/div_grad/Shape*
Tshape0*(
_output_shapes
:����������*
T0
�
0Adam/gradients/Dropout/cond/dropout/div_grad/NegNeg#Dropout/cond/dropout/Shape/Switch:1^Adam/moving_avg^moving_avg*
T0*(
_output_shapes
:����������
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
0Adam/gradients/Dropout/cond/dropout/div_grad/mulMul4Adam/gradients/Dropout/cond/dropout/mul_grad/Reshape6Adam/gradients/Dropout/cond/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:����������
�
2Adam/gradients/Dropout/cond/dropout/div_grad/Sum_1Sum0Adam/gradients/Dropout/cond/dropout/div_grad/mulDAdam/gradients/Dropout/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
6Adam/gradients/Dropout/cond/dropout/div_grad/Reshape_1Reshape2Adam/gradients/Dropout/cond/dropout/div_grad/Sum_14Adam/gradients/Dropout/cond/dropout/div_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
�
Adam/gradients/Switch_1SwitchFullyConnected/ReluDropout/cond/pred_id^Adam/moving_avg^moving_avg*<
_output_shapes*
(:����������:����������*
T0
m
Adam/gradients/Shape_2ShapeAdam/gradients/Switch_1*
_output_shapes
:*
out_type0*
T0
�
Adam/gradients/zeros_1/ConstConst^Adam/moving_avg^moving_avg*
valueB
 *    *
dtype0*
_output_shapes
: 
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
6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradBiasAddGrad0Adam/gradients/FullyConnected/Relu_grad/ReluGrad*
_output_shapes	
:�*
data_formatNHWC*
T0
�
0Adam/gradients/FullyConnected/MatMul_grad/MatMulMatMul0Adam/gradients/FullyConnected/Relu_grad/ReluGradFullyConnected/W/read*
transpose_b(*
T0*'
_output_shapes
:��������� *
transpose_a( 
�
2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1MatMulFullyConnected/Reshape0Adam/gradients/FullyConnected/Relu_grad/ReluGrad*
transpose_b( *
T0*
_output_shapes
:	 �*
transpose_a(
�
0Adam/gradients/FullyConnected/Reshape_grad/ShapeShapeMaxPool2D_4/MaxPool^Adam/moving_avg^moving_avg*
T0*
_output_shapes
:*
out_type0
�
2Adam/gradients/FullyConnected/Reshape_grad/ReshapeReshape0Adam/gradients/FullyConnected/MatMul_grad/MatMul0Adam/gradients/FullyConnected/Reshape_grad/Shape*
Tshape0*/
_output_shapes
:��������� *
T0
�
3Adam/gradients/MaxPool2D_4/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_4/ReluMaxPool2D_4/MaxPool2Adam/gradients/FullyConnected/Reshape_grad/Reshape*
ksize
*/
_output_shapes
:��������� *
data_formatNHWC*
strides
*
T0*
paddingSAME
�
*Adam/gradients/Conv2D_4/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_4/MaxPool_grad/MaxPoolGradConv2D_4/Relu*
T0*/
_output_shapes
:��������� 
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
7Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_4/Conv2D_grad/ShapeConv2D_4/W/read*Adam/gradients/Conv2D_4/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*/
_output_shapes
:���������@*
data_formatNHWC*
strides
*
T0*
paddingSAME
�
+Adam/gradients/Conv2D_4/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*%
valueB"      @       *
dtype0*
_output_shapes
:
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
3Adam/gradients/MaxPool2D_3/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_3/ReluMaxPool2D_3/MaxPool7Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropInput*
paddingSAME*
T0*
data_formatNHWC*
strides
*/
_output_shapes
:���������@*
ksize

�
*Adam/gradients/Conv2D_3/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_3/MaxPool_grad/MaxPoolGradConv2D_3/Relu*
T0*/
_output_shapes
:���������@
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
7Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_3/Conv2D_grad/ShapeConv2D_3/W/read*Adam/gradients/Conv2D_3/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
T0*
paddingSAME*0
_output_shapes
:����������*
data_formatNHWC*
strides

�
+Adam/gradients/Conv2D_3/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*%
valueB"      �   @   
�
8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D_2/MaxPool+Adam/gradients/Conv2D_3/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_3/Relu_grad/ReluGrad*'
_output_shapes
:�@*
paddingSAME*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
T0
�
3Adam/gradients/MaxPool2D_2/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_2/ReluMaxPool2D_2/MaxPool7Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropInput*
data_formatNHWC*
strides
*0
_output_shapes
:����������*
paddingSAME*
T0*
ksize

�
*Adam/gradients/Conv2D_2/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_2/MaxPool_grad/MaxPoolGradConv2D_2/Relu*
T0*0
_output_shapes
:����������
�
0Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/Conv2D_2/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:�
�
)Adam/gradients/Conv2D_2/Conv2D_grad/ShapeShapeMaxPool2D_1/MaxPool^Adam/moving_avg^moving_avg*
T0*
out_type0*
_output_shapes
:
�
7Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_2/Conv2D_grad/ShapeConv2D_2/W/read*Adam/gradients/Conv2D_2/Relu_grad/ReluGrad*/
_output_shapes
:���������@*
paddingSAME*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
T0
�
+Adam/gradients/Conv2D_2/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*%
valueB"      @   �   *
dtype0*
_output_shapes
:
�
8Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D_1/MaxPool+Adam/gradients/Conv2D_2/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_2/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*'
_output_shapes
:@�*
paddingSAME*
T0*
use_cudnn_on_gpu(
�
3Adam/gradients/MaxPool2D_1/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D_1/ReluMaxPool2D_1/MaxPool7Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropInput*
ksize
*/
_output_shapes
:���������(
@*
data_formatNHWC*
strides
*
T0*
paddingSAME
�
*Adam/gradients/Conv2D_1/Relu_grad/ReluGradReluGrad3Adam/gradients/MaxPool2D_1/MaxPool_grad/MaxPoolGradConv2D_1/Relu*
T0*/
_output_shapes
:���������(
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
7Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)Adam/gradients/Conv2D_1/Conv2D_grad/ShapeConv2D_1/W/read*Adam/gradients/Conv2D_1/Relu_grad/ReluGrad*
paddingSAME*
T0*
data_formatNHWC*
strides
*/
_output_shapes
:���������(
 *
use_cudnn_on_gpu(
�
+Adam/gradients/Conv2D_1/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*
_output_shapes
:*
dtype0*%
valueB"          @   
�
8Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool2D/MaxPool+Adam/gradients/Conv2D_1/Conv2D_grad/Shape_1*Adam/gradients/Conv2D_1/Relu_grad/ReluGrad*
paddingSAME*
T0*
data_formatNHWC*
strides
*&
_output_shapes
: @*
use_cudnn_on_gpu(
�
1Adam/gradients/MaxPool2D/MaxPool_grad/MaxPoolGradMaxPoolGradConv2D/ReluMaxPool2D/MaxPool7Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:����������0 *
paddingSAME*
ksize
*
data_formatNHWC*
strides
*
T0
�
(Adam/gradients/Conv2D/Relu_grad/ReluGradReluGrad1Adam/gradients/MaxPool2D/MaxPool_grad/MaxPoolGradConv2D/Relu*
T0*0
_output_shapes
:����������0 
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
5Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput'Adam/gradients/Conv2D/Conv2D_grad/ShapeConv2D/W/read(Adam/gradients/Conv2D/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:����������0
�
)Adam/gradients/Conv2D/Conv2D_grad/Shape_1Const^Adam/moving_avg^moving_avg*
dtype0*
_output_shapes
:*%
valueB"             
�
6Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinput/X)Adam/gradients/Conv2D/Conv2D_grad/Shape_1(Adam/gradients/Conv2D/Relu_grad/ReluGrad*&
_output_shapes
: *
T0*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
paddingSAME
�
Adam/global_norm/L2LossL2Loss6Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter*
T0*I
_class?
=;loc:@Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: 
�
Adam/global_norm/L2Loss_1L2Loss.Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*A
_class7
53loc:@Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
Adam/global_norm/L2Loss_2L2Loss8Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter*K
_classA
?=loc:@Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: *
T0
�
Adam/global_norm/L2Loss_3L2Loss0Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad
�
Adam/global_norm/L2Loss_4L2Loss8Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter*
T0*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/Conv2D_2/Conv2D_grad/Conv2DBackpropFilter
�
Adam/global_norm/L2Loss_5L2Loss0Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*C
_class9
75loc:@Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
Adam/global_norm/L2Loss_6L2Loss8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter*K
_classA
?=loc:@Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: *
T0
�
Adam/global_norm/L2Loss_7L2Loss0Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad*C
_class9
75loc:@Adam/gradients/Conv2D_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
Adam/global_norm/L2Loss_8L2Loss8Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter*
_output_shapes
: *K
_classA
?=loc:@Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter*
T0
�
Adam/global_norm/L2Loss_9L2Loss0Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad*
T0*C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
Adam/global_norm/L2Loss_10L2Loss2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes
: *E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
T0
�
Adam/global_norm/L2Loss_11L2Loss6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
T0*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
Adam/global_norm/L2Loss_12L2Loss4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
: *G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1
�
Adam/global_norm/L2Loss_13L2Loss8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
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
Adam/global_norm/Const_1Const^Adam/moving_avg^moving_avg*
valueB
 *   @*
dtype0*
_output_shapes
: 
l
Adam/global_norm/mulMulAdam/global_norm/SumAdam/global_norm/Const_1*
_output_shapes
: *
T0
[
Adam/global_norm/global_normSqrtAdam/global_norm/mul*
T0*
_output_shapes
: 
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
 *  �?*
dtype0*
_output_shapes
: 
�
$Adam/clip_by_global_norm/truediv_1/yConst^Adam/moving_avg^moving_avg*
valueB
 *  �@*
_output_shapes
: *
dtype0
�
"Adam/clip_by_global_norm/truediv_1RealDivAdam/clip_by_global_norm/Const$Adam/clip_by_global_norm/truediv_1/y*
_output_shapes
: *
T0
�
 Adam/clip_by_global_norm/MinimumMinimum Adam/clip_by_global_norm/truediv"Adam/clip_by_global_norm/truediv_1*
_output_shapes
: *
T0
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
T0*I
_class?
=;loc:@Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0IdentityAdam/clip_by_global_norm/mul_1*
T0*I
_class?
=;loc:@Adam/gradients/Conv2D/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
�
Adam/clip_by_global_norm/mul_2Mul.Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*A
_class7
53loc:@Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1IdentityAdam/clip_by_global_norm/mul_2*
_output_shapes
: *A
_class7
53loc:@Adam/gradients/Conv2D/BiasAdd_grad/BiasAddGrad*
T0
�
Adam/clip_by_global_norm/mul_3Mul8Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*
T0*K
_classA
?=loc:@Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2IdentityAdam/clip_by_global_norm/mul_3*&
_output_shapes
: @*K
_classA
?=loc:@Adam/gradients/Conv2D_1/Conv2D_grad/Conv2DBackpropFilter*
T0
�
Adam/clip_by_global_norm/mul_4Mul0Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*
_output_shapes
:@*C
_class9
75loc:@Adam/gradients/Conv2D_1/BiasAdd_grad/BiasAddGrad
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
Adam/clip_by_global_norm/mul_6Mul0Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
_output_shapes	
:�*C
_class9
75loc:@Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
T0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_5IdentityAdam/clip_by_global_norm/mul_6*C
_class9
75loc:@Adam/gradients/Conv2D_2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
�
Adam/clip_by_global_norm/mul_7Mul8Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*'
_output_shapes
:�@*K
_classA
?=loc:@Adam/gradients/Conv2D_3/Conv2D_grad/Conv2DBackpropFilter*
T0
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
Adam/clip_by_global_norm/mul_9Mul8Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilterAdam/clip_by_global_norm/mul*K
_classA
?=loc:@Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:@ *
T0
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_8IdentityAdam/clip_by_global_norm/mul_9*
T0*K
_classA
?=loc:@Adam/gradients/Conv2D_4/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:@ 
�
Adam/clip_by_global_norm/mul_10Mul0Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
T0*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad
�
4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_9IdentityAdam/clip_by_global_norm/mul_10*
T0*
_output_shapes
: *C
_class9
75loc:@Adam/gradients/Conv2D_4/BiasAdd_grad/BiasAddGrad
�
Adam/clip_by_global_norm/mul_11Mul2Adam/gradients/FullyConnected/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes
:	 �*
T0
�
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_10IdentityAdam/clip_by_global_norm/mul_11*
T0*E
_class;
97loc:@Adam/gradients/FullyConnected/MatMul_grad/MatMul_1*
_output_shapes
:	 �
�
Adam/clip_by_global_norm/mul_12Mul6Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*
_output_shapes	
:�*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad*
T0
�
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_11IdentityAdam/clip_by_global_norm/mul_12*
T0*
_output_shapes	
:�*I
_class?
=;loc:@Adam/gradients/FullyConnected/BiasAdd_grad/BiasAddGrad
�
Adam/clip_by_global_norm/mul_13Mul4Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1Adam/clip_by_global_norm/mul*
T0*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
_output_shapes
:	�
�
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_12IdentityAdam/clip_by_global_norm/mul_13*
_output_shapes
:	�*G
_class=
;9loc:@Adam/gradients/FullyConnected_1/MatMul_grad/MatMul_1*
T0
�
Adam/clip_by_global_norm/mul_14Mul8Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGradAdam/clip_by_global_norm/mul*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
�
5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_13IdentityAdam/clip_by_global_norm/mul_14*
T0*K
_classA
?=loc:@Adam/gradients/FullyConnected_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
Adam/beta1_power/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?*
_class
loc:@Conv2D/W
�
Adam/beta1_power
VariableV2*
_class
loc:@Conv2D/W*
_output_shapes
: *
shape: *
dtype0*
shared_name *
	container 
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
Adam/beta1_power/readIdentityAdam/beta1_power*
_output_shapes
: *
_class
loc:@Conv2D/W*
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
	container *
dtype0*
_class
loc:@Conv2D/W*
_output_shapes
: *
shape: *
shared_name 
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
Adam/beta2_power/readIdentityAdam/beta2_power*
_output_shapes
: *
_class
loc:@Conv2D/W*
T0
q
Adam/zeros_1Const*
dtype0*&
_output_shapes
: *%
valueB *    
�
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
�
Conv2D/W/Adam/AssignAssignConv2D/W/AdamAdam/zeros_1*&
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(
{
Conv2D/W/Adam/readIdentityConv2D/W/Adam*
T0*
_class
loc:@Conv2D/W*&
_output_shapes
: 
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
T0*&
_output_shapes
: *
_class
loc:@Conv2D/W
Y
Adam/zeros_3Const*
_output_shapes
: *
dtype0*
valueB *    
�
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
Conv2D/b/Adam/readIdentityConv2D/b/Adam*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0
Y
Adam/zeros_4Const*
valueB *    *
_output_shapes
: *
dtype0
�
Conv2D/b/Adam_1
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D/b*
_output_shapes
: *
shape: *
shared_name 
�
Conv2D/b/Adam_1/AssignAssignConv2D/b/Adam_1Adam/zeros_4*
use_locking(*
T0*
_class
loc:@Conv2D/b*
validate_shape(*
_output_shapes
: 
s
Conv2D/b/Adam_1/readIdentityConv2D/b/Adam_1*
_output_shapes
: *
_class
loc:@Conv2D/b*
T0
q
Adam/zeros_5Const*%
valueB @*    *&
_output_shapes
: @*
dtype0
�
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
�
Conv2D_1/W/Adam/AssignAssignConv2D_1/W/AdamAdam/zeros_5*&
_output_shapes
: @*
validate_shape(*
_class
loc:@Conv2D_1/W*
T0*
use_locking(
�
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
�
Conv2D_1/W/Adam_1
VariableV2*&
_output_shapes
: @*
dtype0*
shape: @*
	container *
_class
loc:@Conv2D_1/W*
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
Conv2D_1/b/Adam/AssignAssignConv2D_1/b/AdamAdam/zeros_7*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_1/b*
T0*
use_locking(
u
Conv2D_1/b/Adam/readIdentityConv2D_1/b/Adam*
T0*
_class
loc:@Conv2D_1/b*
_output_shapes
:@
Y
Adam/zeros_8Const*
valueB@*    *
_output_shapes
:@*
dtype0
�
Conv2D_1/b/Adam_1
VariableV2*
shared_name *
_class
loc:@Conv2D_1/b*
	container *
shape:@*
dtype0*
_output_shapes
:@
�
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
loc:@Conv2D_2/W*
shared_name *'
_output_shapes
:@�*
shape:@�
�
Conv2D_2/W/Adam/AssignAssignConv2D_2/W/AdamAdam/zeros_9*'
_output_shapes
:@�*
validate_shape(*
_class
loc:@Conv2D_2/W*
T0*
use_locking(
�
Conv2D_2/W/Adam/readIdentityConv2D_2/W/Adam*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W*
T0
t
Adam/zeros_10Const*'
_output_shapes
:@�*
dtype0*&
valueB@�*    
�
Conv2D_2/W/Adam_1
VariableV2*'
_output_shapes
:@�*
dtype0*
shape:@�*
	container *
_class
loc:@Conv2D_2/W*
shared_name 
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
valueB�*    *
_output_shapes	
:�*
dtype0
�
Conv2D_2/b/Adam
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
Conv2D_2/b/Adam/AssignAssignConv2D_2/b/AdamAdam/zeros_11*
use_locking(*
T0*
_class
loc:@Conv2D_2/b*
validate_shape(*
_output_shapes	
:�
v
Conv2D_2/b/Adam/readIdentityConv2D_2/b/Adam*
_class
loc:@Conv2D_2/b*
_output_shapes	
:�*
T0
\
Adam/zeros_12Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
Conv2D_2/b/Adam_1
VariableV2*
shared_name *
shape:�*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b*
dtype0*
	container 
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
T0*
_class
loc:@Conv2D_2/b*
_output_shapes	
:�
t
Adam/zeros_13Const*
dtype0*'
_output_shapes
:�@*&
valueB�@*    
�
Conv2D_3/W/Adam
VariableV2*
	container *
shared_name *
dtype0*
shape:�@*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W
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
Conv2D_3/W/Adam_1/AssignAssignConv2D_3/W/Adam_1Adam/zeros_14*
use_locking(*
T0*
_class
loc:@Conv2D_3/W*
validate_shape(*'
_output_shapes
:�@
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
loc:@Conv2D_3/b*
shared_name *
_output_shapes
:@*
shape:@
�
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
�
Conv2D_3/b/Adam_1
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
T0*
_class
loc:@Conv2D_3/b*
_output_shapes
:@
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
loc:@Conv2D_4/W*&
_output_shapes
:@ *
shape:@ *
shared_name 
�
Conv2D_4/W/Adam/AssignAssignConv2D_4/W/AdamAdam/zeros_17*&
_output_shapes
:@ *
validate_shape(*
_class
loc:@Conv2D_4/W*
T0*
use_locking(
�
Conv2D_4/W/Adam/readIdentityConv2D_4/W/Adam*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
r
Adam/zeros_18Const*%
valueB@ *    *&
_output_shapes
:@ *
dtype0
�
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
T0*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ 
Z
Adam/zeros_19Const*
_output_shapes
: *
dtype0*
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
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
Z
Adam/zeros_20Const*
valueB *    *
dtype0*
_output_shapes
: 
�
Conv2D_4/b/Adam_1
VariableV2*
	container *
dtype0*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
shape: *
shared_name 
�
Conv2D_4/b/Adam_1/AssignAssignConv2D_4/b/Adam_1Adam/zeros_20*
use_locking(*
T0*
_class
loc:@Conv2D_4/b*
validate_shape(*
_output_shapes
: 
y
Conv2D_4/b/Adam_1/readIdentityConv2D_4/b/Adam_1*
T0*
_class
loc:@Conv2D_4/b*
_output_shapes
: 
d
Adam/zeros_21Const*
_output_shapes
:	 �*
dtype0*
valueB	 �*    
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
FullyConnected/W/Adam/AssignAssignFullyConnected/W/AdamAdam/zeros_21*
_output_shapes
:	 �*
validate_shape(*#
_class
loc:@FullyConnected/W*
T0*
use_locking(
�
FullyConnected/W/Adam/readIdentityFullyConnected/W/Adam*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W*
T0
d
Adam/zeros_22Const*
valueB	 �*    *
_output_shapes
:	 �*
dtype0
�
FullyConnected/W/Adam_1
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
FullyConnected/W/Adam_1/AssignAssignFullyConnected/W/Adam_1Adam/zeros_22*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
�
FullyConnected/W/Adam_1/readIdentityFullyConnected/W/Adam_1*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
\
Adam/zeros_23Const*
valueB�*    *
_output_shapes	
:�*
dtype0
�
FullyConnected/b/Adam
VariableV2*
shape:�*
_output_shapes	
:�*
shared_name *#
_class
loc:@FullyConnected/b*
dtype0*
	container 
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
FullyConnected/b/Adam_1/AssignAssignFullyConnected/b/Adam_1Adam/zeros_24*
use_locking(*
T0*#
_class
loc:@FullyConnected/b*
validate_shape(*
_output_shapes	
:�
�
FullyConnected/b/Adam_1/readIdentityFullyConnected/b/Adam_1*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b*
T0
d
Adam/zeros_25Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
FullyConnected_1/W/Adam
VariableV2*
	container *
dtype0*%
_class
loc:@FullyConnected_1/W*
shared_name *
_output_shapes
:	�*
shape:	�
�
FullyConnected_1/W/Adam/AssignAssignFullyConnected_1/W/AdamAdam/zeros_25*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	�
�
FullyConnected_1/W/Adam/readIdentityFullyConnected_1/W/Adam*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W*
T0
d
Adam/zeros_26Const*
valueB	�*    *
dtype0*
_output_shapes
:	�
�
FullyConnected_1/W/Adam_1
VariableV2*
_output_shapes
:	�*
dtype0*
shape:	�*
	container *%
_class
loc:@FullyConnected_1/W*
shared_name 
�
 FullyConnected_1/W/Adam_1/AssignAssignFullyConnected_1/W/Adam_1Adam/zeros_26*
_output_shapes
:	�*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
�
FullyConnected_1/W/Adam_1/readIdentityFullyConnected_1/W/Adam_1*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0
Z
Adam/zeros_27Const*
valueB*    *
_output_shapes
:*
dtype0
�
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
�
FullyConnected_1/b/Adam/AssignAssignFullyConnected_1/b/AdamAdam/zeros_27*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
�
FullyConnected_1/b/Adam/readIdentityFullyConnected_1/b/Adam*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0
Z
Adam/zeros_28Const*
valueB*    *
_output_shapes
:*
dtype0
�
FullyConnected_1/b/Adam_1
VariableV2*
shared_name *
shape:*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b*
dtype0*
	container 
�
 FullyConnected_1/b/Adam_1/AssignAssignFullyConnected_1/b/Adam_1Adam/zeros_28*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
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
Adam/apply_grad_op_0/beta2Const*
dtype0*
_output_shapes
: *
valueB
 *w�?
a
Adam/apply_grad_op_0/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
.Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam	ApplyAdamConv2D/WConv2D/W/AdamConv2D/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_0*&
_output_shapes
: *
_class
loc:@Conv2D/W*
T0*
use_locking( 
�
.Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam	ApplyAdamConv2D/bConv2D/b/AdamConv2D/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_1*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
use_locking( 
�
0Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam	ApplyAdam
Conv2D_1/WConv2D_1/W/AdamConv2D_1/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_2*
_class
loc:@Conv2D_1/W*&
_output_shapes
: @*
T0*
use_locking( 
�
0Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam	ApplyAdam
Conv2D_1/bConv2D_1/b/AdamConv2D_1/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_3*
use_locking( *
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
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
Conv2D_3/WConv2D_3/W/AdamConv2D_3/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_6*'
_output_shapes
:�@*
_class
loc:@Conv2D_3/W*
T0*
use_locking( 
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
Conv2D_4/bConv2D_4/b/AdamConv2D_4/b/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon4Adam/clip_by_global_norm/Adam/clip_by_global_norm/_9*
use_locking( *
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
�
6Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam	ApplyAdamFullyConnected/WFullyConnected/W/AdamFullyConnected/W/Adam_1Adam/beta1_power/readAdam/beta2_power/read"Adam/apply_grad_op_0/learning_rateAdam/apply_grad_op_0/beta1Adam/apply_grad_op_0/beta2Adam/apply_grad_op_0/epsilon5Adam/clip_by_global_norm/Adam/clip_by_global_norm/_10*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W*
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
T0*
_output_shapes
:	�*%
_class
loc:@FullyConnected_1/W
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
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
�
Adam/apply_grad_op_0/AssignAssignAdam/beta1_powerAdam/apply_grad_op_0/mul*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0*
validate_shape(*
use_locking( 
�
Adam/apply_grad_op_0/mul_1MulAdam/beta2_power/readAdam/apply_grad_op_0/beta2/^Adam/apply_grad_op_0/update_Conv2D/W/ApplyAdam/^Adam/apply_grad_op_0/update_Conv2D/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_1/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_2/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_3/b/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/W/ApplyAdam1^Adam/apply_grad_op_0/update_Conv2D_4/b/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/W/ApplyAdam7^Adam/apply_grad_op_0/update_FullyConnected/b/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/W/ApplyAdam9^Adam/apply_grad_op_0/update_FullyConnected_1/b/ApplyAdam*
T0*
_class
loc:@Conv2D/W*
_output_shapes
: 
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
Adam/apply_grad_op_0/valueConst^Adam/apply_grad_op_0/update*
_output_shapes
: *
dtype0*
valueB
 *  �?* 
_class
loc:@Training_step
�
Adam/apply_grad_op_0	AssignAddTraining_stepAdam/apply_grad_op_0/value*
use_locking( *
T0* 
_class
loc:@Training_step*
_output_shapes
: 
]
Adam/Merge/MergeSummaryMergeSummaryLossAdam/Loss/raw*
_output_shapes
: *
N
.
Adam/train_op_0NoOp^Adam/apply_grad_op_0
P

save/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0
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
Conv2D_4/bBConv2D_4/b/AdamBConv2D_4/b/Adam_1BCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
_output_shapes
:3*
dtype0
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
save/Const^save/SaveV2*
T0*
_output_shapes
: *
_class
loc:@save/Const
|
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*-
value$B"BAccuracy/Mean/moving_avg
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
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
!save/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
dtype0*
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
save/Assign_1AssignAdam/beta1_powersave/RestoreV2_1*
_class
loc:@Conv2D/W*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
v
save/RestoreV2_2/tensor_namesConst*%
valueBBAdam/beta2_power*
dtype0*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
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
save/RestoreV2_3/tensor_namesConst*
valueBBConv2D/W*
dtype0*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
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
save/RestoreV2_4/tensor_namesConst*"
valueBBConv2D/W/Adam*
dtype0*
_output_shapes
:
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
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_5AssignConv2D/W/Adam_1save/RestoreV2_5*
_class
loc:@Conv2D/W*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(
n
save/RestoreV2_6/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBConv2D/b
j
!save/RestoreV2_6/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_6AssignConv2D/bsave/RestoreV2_6*
use_locking(*
T0*
_class
loc:@Conv2D/b*
validate_shape(*
_output_shapes
: 
s
save/RestoreV2_7/tensor_namesConst*"
valueBBConv2D/b/Adam*
_output_shapes
:*
dtype0
j
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_7AssignConv2D/b/Adamsave/RestoreV2_7*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/b
u
save/RestoreV2_8/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D/b/Adam_1
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
save/Assign_8AssignConv2D/b/Adam_1save/RestoreV2_8*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/b*
T0*
use_locking(
p
save/RestoreV2_9/tensor_namesConst*
valueBB
Conv2D_1/W*
dtype0*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_9Assign
Conv2D_1/Wsave/RestoreV2_9*&
_output_shapes
: @*
validate_shape(*
_class
loc:@Conv2D_1/W*
T0*
use_locking(
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
�
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_10AssignConv2D_1/W/Adamsave/RestoreV2_10*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
x
save/RestoreV2_11/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_1/W/Adam_1
k
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_11AssignConv2D_1/W/Adam_1save/RestoreV2_11*
use_locking(*
T0*
_class
loc:@Conv2D_1/W*
validate_shape(*&
_output_shapes
: @
q
save/RestoreV2_12/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Conv2D_1/b
k
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
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
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
valueBBConv2D_1/b/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_14AssignConv2D_1/b/Adam_1save/RestoreV2_14*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
q
save/RestoreV2_15/tensor_namesConst*
valueBB
Conv2D_2/W*
_output_shapes
:*
dtype0
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
_output_shapes
:*
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
Conv2D_2/Wsave/RestoreV2_15*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�*
T0*
validate_shape(*
use_locking(
v
save/RestoreV2_16/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_2/W/Adam
k
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
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
save/RestoreV2_17/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_2/W/Adam_1
k
"save/RestoreV2_17/shape_and_slicesConst*
_output_shapes
:*
dtype0*
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
save/Assign_17AssignConv2D_2/W/Adam_1save/RestoreV2_17*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�*
T0*
validate_shape(*
use_locking(
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
Conv2D_2/bsave/RestoreV2_18*
_output_shapes	
:�*
validate_shape(*
_class
loc:@Conv2D_2/b*
T0*
use_locking(
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
�
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_19AssignConv2D_2/b/Adamsave/RestoreV2_19*
_class
loc:@Conv2D_2/b*
_output_shapes	
:�*
T0*
validate_shape(*
use_locking(
x
save/RestoreV2_20/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_2/b/Adam_1
k
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
_output_shapes
:*
dtypes
2
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
valueBBConv2D_3/W/Adam*
dtype0*
_output_shapes
:
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
save/Assign_22AssignConv2D_3/W/Adamsave/RestoreV2_22*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
T0*
validate_shape(*
use_locking(
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
dtype0*
_output_shapes
:*
valueBB
Conv2D_3/b
k
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
"save/RestoreV2_25/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
_output_shapes
:*
dtypes
2
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
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
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
save/RestoreV2_27/tensor_namesConst*
valueBB
Conv2D_4/W*
dtype0*
_output_shapes
:
k
"save/RestoreV2_27/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
save/RestoreV2_28/tensor_namesConst*$
valueBBConv2D_4/W/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_28/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_28AssignConv2D_4/W/Adamsave/RestoreV2_28*&
_output_shapes
:@ *
validate_shape(*
_class
loc:@Conv2D_4/W*
T0*
use_locking(
x
save/RestoreV2_29/tensor_namesConst*&
valueBBConv2D_4/W/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_29/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
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
Conv2D_4/bsave/RestoreV2_30*
use_locking(*
T0*
_class
loc:@Conv2D_4/b*
validate_shape(*
_output_shapes
: 
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
save/RestoreV2_32/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_4/b/Adam_1
k
"save/RestoreV2_32/shape_and_slicesConst*
dtype0*
_output_shapes
:*
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
save/Assign_32AssignConv2D_4/b/Adam_1save/RestoreV2_32*
_class
loc:@Conv2D_4/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
�
save/RestoreV2_33/tensor_namesConst*
_output_shapes
:*
dtype0*1
value(B&BCrossentropy/Mean/moving_avg
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
save/RestoreV2_35/tensor_namesConst*
_output_shapes
:*
dtype0**
value!BBFullyConnected/W/Adam
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
save/Assign_35AssignFullyConnected/W/Adamsave/RestoreV2_35*
use_locking(*
T0*#
_class
loc:@FullyConnected/W*
validate_shape(*
_output_shapes
:	 �
~
save/RestoreV2_36/tensor_namesConst*,
value#B!BFullyConnected/W/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_36/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_36	RestoreV2
save/Constsave/RestoreV2_36/tensor_names"save/RestoreV2_36/shape_and_slices*
dtypes
2*
_output_shapes
:
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
save/Assign_38AssignFullyConnected/b/Adamsave/RestoreV2_38*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�*
T0*
validate_shape(*
use_locking(
~
save/RestoreV2_39/tensor_namesConst*,
value#B!BFullyConnected/b/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_39/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_39	RestoreV2
save/Constsave/RestoreV2_39/tensor_names"save/RestoreV2_39/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_39AssignFullyConnected/b/Adam_1save/RestoreV2_39*#
_class
loc:@FullyConnected/b*
_output_shapes	
:�*
T0*
validate_shape(*
use_locking(
y
save/RestoreV2_40/tensor_namesConst*
_output_shapes
:*
dtype0*'
valueBBFullyConnected_1/W
k
"save/RestoreV2_40/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_40	RestoreV2
save/Constsave/RestoreV2_40/tensor_names"save/RestoreV2_40/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_40AssignFullyConnected_1/Wsave/RestoreV2_40*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0*
validate_shape(*
use_locking(
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
save/RestoreV2_42/tensor_namesConst*
dtype0*
_output_shapes
:*.
value%B#BFullyConnected_1/W/Adam_1
k
"save/RestoreV2_42/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save/RestoreV2_42	RestoreV2
save/Constsave/RestoreV2_42/tensor_names"save/RestoreV2_42/shape_and_slices*
dtypes
2*
_output_shapes
:
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
�
save/RestoreV2_43	RestoreV2
save/Constsave/RestoreV2_43/tensor_names"save/RestoreV2_43/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
save/Assign_44AssignFullyConnected_1/b/Adamsave/RestoreV2_44*
_output_shapes
:*
validate_shape(*%
_class
loc:@FullyConnected_1/b*
T0*
use_locking(
�
save/RestoreV2_45/tensor_namesConst*.
value%B#BFullyConnected_1/b/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_45/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_45	RestoreV2
save/Constsave/RestoreV2_45/tensor_names"save/RestoreV2_45/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_45AssignFullyConnected_1/b/Adam_1save/RestoreV2_45*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
r
save/RestoreV2_46/tensor_namesConst*
dtype0*
_output_shapes
:* 
valueBBGlobal_Step
k
"save/RestoreV2_46/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save/RestoreV2_46	RestoreV2
save/Constsave/RestoreV2_46/tensor_names"save/RestoreV2_46/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save/Assign_46AssignGlobal_Stepsave/RestoreV2_46*
use_locking(*
T0*
_class
loc:@Global_Step*
validate_shape(*
_output_shapes
: 
t
save/RestoreV2_47/tensor_namesConst*
_output_shapes
:*
dtype0*"
valueBBTraining_step
k
"save/RestoreV2_47/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
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
save/RestoreV2_48/tensor_namesConst*
_output_shapes
:*
dtype0* 
valueBBis_training
k
"save/RestoreV2_48/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_48	RestoreV2
save/Constsave/RestoreV2_48/tensor_names"save/RestoreV2_48/shape_and_slices*
_output_shapes
:*
dtypes
2

�
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
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_49	RestoreV2
save/Constsave/RestoreV2_49/tensor_names"save/RestoreV2_49/shape_and_slices*
_output_shapes
:*
dtypes
2
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
save/RestoreV2_50/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBval_loss
k
"save/RestoreV2_50/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save/RestoreV2_50	RestoreV2
save/Constsave/RestoreV2_50/tensor_names"save/RestoreV2_50/shape_and_slices*
dtypes
2*
_output_shapes
:
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
save_1/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
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
Conv2D_4/bBConv2D_4/b/AdamBConv2D_4/b/Adam_1BCrossentropy/Mean/moving_avgBFullyConnected/WBFullyConnected/W/AdamBFullyConnected/W/Adam_1BFullyConnected/bBFullyConnected/b/AdamBFullyConnected/b/Adam_1BFullyConnected_1/WBFullyConnected_1/W/AdamBFullyConnected_1/W/Adam_1BFullyConnected_1/bBFullyConnected_1/b/AdamBFullyConnected_1/b/Adam_1BGlobal_StepBTraining_stepBis_trainingBval_accBval_loss*
_output_shapes
:3*
dtype0
�
save_1/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:3*y
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
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
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
save_1/RestoreV2_1/tensor_namesConst*
_output_shapes
:*
dtype0*%
valueBBAdam/beta1_power
l
#save_1/RestoreV2_1/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
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
save_1/RestoreV2_2/tensor_namesConst*%
valueBBAdam/beta2_power*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_2AssignAdam/beta2_powersave_1/RestoreV2_2*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*
_output_shapes
: 
p
save_1/RestoreV2_3/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBConv2D/W
l
#save_1/RestoreV2_3/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_3AssignConv2D/Wsave_1/RestoreV2_3*&
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D/W*
T0*
use_locking(
u
save_1/RestoreV2_4/tensor_namesConst*"
valueBBConv2D/W/Adam*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
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
�
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
#save_1/RestoreV2_6/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_6AssignConv2D/bsave_1/RestoreV2_6*
_class
loc:@Conv2D/b*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
u
save_1/RestoreV2_7/tensor_namesConst*
dtype0*
_output_shapes
:*"
valueBBConv2D/b/Adam
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
�
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
dtype0*
_output_shapes
:*
valueBB
Conv2D_1/W
l
#save_1/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
$save_1/RestoreV2_10/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
_output_shapes
:*
dtypes
2
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
 save_1/RestoreV2_11/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_1/W/Adam_1
m
$save_1/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_11AssignConv2D_1/W/Adam_1save_1/RestoreV2_11*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
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
�
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_12Assign
Conv2D_1/bsave_1/RestoreV2_12*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_1/b*
T0*
use_locking(
x
 save_1/RestoreV2_13/tensor_namesConst*$
valueBBConv2D_1/b/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_13/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
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
 save_1/RestoreV2_14/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_1/b/Adam_1
m
$save_1/RestoreV2_14/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
Conv2D_2/W*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_15/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_15Assign
Conv2D_2/Wsave_1/RestoreV2_15*'
_output_shapes
:@�*
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
�
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_16AssignConv2D_2/W/Adamsave_1/RestoreV2_16*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�*
T0*
validate_shape(*
use_locking(
z
 save_1/RestoreV2_17/tensor_namesConst*&
valueBBConv2D_2/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_17/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_17AssignConv2D_2/W/Adam_1save_1/RestoreV2_17*
use_locking(*
T0*
_class
loc:@Conv2D_2/W*
validate_shape(*'
_output_shapes
:@�
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
�
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
_output_shapes
:*
dtypes
2
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
$save_1/RestoreV2_19/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
_output_shapes
:*
dtypes
2
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
 save_1/RestoreV2_20/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_2/b/Adam_1
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
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b
s
 save_1/RestoreV2_21/tensor_namesConst*
valueBB
Conv2D_3/W*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_21/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_21Assign
Conv2D_3/Wsave_1/RestoreV2_21*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
T0*
validate_shape(*
use_locking(
x
 save_1/RestoreV2_22/tensor_namesConst*$
valueBBConv2D_3/W/Adam*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_22/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_22AssignConv2D_3/W/Adamsave_1/RestoreV2_22*
_class
loc:@Conv2D_3/W*'
_output_shapes
:�@*
T0*
validate_shape(*
use_locking(
z
 save_1/RestoreV2_23/tensor_namesConst*&
valueBBConv2D_3/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_23/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
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
 save_1/RestoreV2_24/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_3/b
m
$save_1/RestoreV2_24/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_24	RestoreV2save_1/Const save_1/RestoreV2_24/tensor_names$save_1/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
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
 save_1/RestoreV2_25/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D_3/b/Adam
m
$save_1/RestoreV2_25/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
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
valueBBConv2D_3/b/Adam_1*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
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
 save_1/RestoreV2_27/tensor_namesConst*
valueBB
Conv2D_4/W*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_27/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_27	RestoreV2save_1/Const save_1/RestoreV2_27/tensor_names$save_1/RestoreV2_27/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_27Assign
Conv2D_4/Wsave_1/RestoreV2_27*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@ *
_class
loc:@Conv2D_4/W
x
 save_1/RestoreV2_28/tensor_namesConst*$
valueBBConv2D_4/W/Adam*
_output_shapes
:*
dtype0
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
save_1/Assign_28AssignConv2D_4/W/Adamsave_1/RestoreV2_28*&
_output_shapes
:@ *
validate_shape(*
_class
loc:@Conv2D_4/W*
T0*
use_locking(
z
 save_1/RestoreV2_29/tensor_namesConst*
dtype0*
_output_shapes
:*&
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
�
save_1/RestoreV2_30	RestoreV2save_1/Const save_1/RestoreV2_30/tensor_names$save_1/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_30Assign
Conv2D_4/bsave_1/RestoreV2_30*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D_4/b
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
�
save_1/RestoreV2_31	RestoreV2save_1/Const save_1/RestoreV2_31/tensor_names$save_1/RestoreV2_31/shape_and_slices*
dtypes
2*
_output_shapes
:
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
 save_1/RestoreV2_32/tensor_namesConst*&
valueBBConv2D_4/b/Adam_1*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_32/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_32	RestoreV2save_1/Const save_1/RestoreV2_32/tensor_names$save_1/RestoreV2_32/shape_and_slices*
dtypes
2*
_output_shapes
:
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
 save_1/RestoreV2_33/tensor_namesConst*
_output_shapes
:*
dtype0*1
value(B&BCrossentropy/Mean/moving_avg
m
$save_1/RestoreV2_33/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_33	RestoreV2save_1/Const save_1/RestoreV2_33/tensor_names$save_1/RestoreV2_33/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_33AssignCrossentropy/Mean/moving_avgsave_1/RestoreV2_33*
use_locking(*
T0*/
_class%
#!loc:@Crossentropy/Mean/moving_avg*
validate_shape(*
_output_shapes
: 
y
 save_1/RestoreV2_34/tensor_namesConst*
_output_shapes
:*
dtype0*%
valueBBFullyConnected/W
m
$save_1/RestoreV2_34/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_34	RestoreV2save_1/Const save_1/RestoreV2_34/tensor_names$save_1/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_34AssignFullyConnected/Wsave_1/RestoreV2_34*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	 �*#
_class
loc:@FullyConnected/W
~
 save_1/RestoreV2_35/tensor_namesConst**
value!BBFullyConnected/W/Adam*
dtype0*
_output_shapes
:
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
�
save_1/RestoreV2_36	RestoreV2save_1/Const save_1/RestoreV2_36/tensor_names$save_1/RestoreV2_36/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_36AssignFullyConnected/W/Adam_1save_1/RestoreV2_36*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
T0*
validate_shape(*
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
save_1/RestoreV2_37	RestoreV2save_1/Const save_1/RestoreV2_37/tensor_names$save_1/RestoreV2_37/shape_and_slices*
_output_shapes
:*
dtypes
2
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
 save_1/RestoreV2_38/tensor_namesConst*
_output_shapes
:*
dtype0**
value!BBFullyConnected/b/Adam
m
$save_1/RestoreV2_38/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_38	RestoreV2save_1/Const save_1/RestoreV2_38/tensor_names$save_1/RestoreV2_38/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_38AssignFullyConnected/b/Adamsave_1/RestoreV2_38*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b
�
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
�
save_1/RestoreV2_39	RestoreV2save_1/Const save_1/RestoreV2_39/tensor_names$save_1/RestoreV2_39/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_39AssignFullyConnected/b/Adam_1save_1/RestoreV2_39*
_output_shapes	
:�*
validate_shape(*#
_class
loc:@FullyConnected/b*
T0*
use_locking(
{
 save_1/RestoreV2_40/tensor_namesConst*
_output_shapes
:*
dtype0*'
valueBBFullyConnected_1/W
m
$save_1/RestoreV2_40/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_40	RestoreV2save_1/Const save_1/RestoreV2_40/tensor_names$save_1/RestoreV2_40/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_40AssignFullyConnected_1/Wsave_1/RestoreV2_40*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	�
�
 save_1/RestoreV2_41/tensor_namesConst*
_output_shapes
:*
dtype0*,
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
save_1/Assign_41AssignFullyConnected_1/W/Adamsave_1/RestoreV2_41*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/W*
validate_shape(*
_output_shapes
:	�
�
 save_1/RestoreV2_42/tensor_namesConst*.
value%B#BFullyConnected_1/W/Adam_1*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_42/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_42	RestoreV2save_1/Const save_1/RestoreV2_42/tensor_names$save_1/RestoreV2_42/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_42AssignFullyConnected_1/W/Adam_1save_1/RestoreV2_42*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0*
validate_shape(*
use_locking(
{
 save_1/RestoreV2_43/tensor_namesConst*
dtype0*
_output_shapes
:*'
valueBBFullyConnected_1/b
m
$save_1/RestoreV2_43/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_1/RestoreV2_43	RestoreV2save_1/Const save_1/RestoreV2_43/tensor_names$save_1/RestoreV2_43/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_43AssignFullyConnected_1/bsave_1/RestoreV2_43*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
�
 save_1/RestoreV2_44/tensor_namesConst*
_output_shapes
:*
dtype0*,
value#B!BFullyConnected_1/b/Adam
m
$save_1/RestoreV2_44/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2_44	RestoreV2save_1/Const save_1/RestoreV2_44/tensor_names$save_1/RestoreV2_44/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_44AssignFullyConnected_1/b/Adamsave_1/RestoreV2_44*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*%
_class
loc:@FullyConnected_1/b
�
 save_1/RestoreV2_45/tensor_namesConst*
dtype0*
_output_shapes
:*.
value%B#BFullyConnected_1/b/Adam_1
m
$save_1/RestoreV2_45/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_45	RestoreV2save_1/Const save_1/RestoreV2_45/tensor_names$save_1/RestoreV2_45/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_45AssignFullyConnected_1/b/Adam_1save_1/RestoreV2_45*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
t
 save_1/RestoreV2_46/tensor_namesConst* 
valueBBGlobal_Step*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_46/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_46	RestoreV2save_1/Const save_1/RestoreV2_46/tensor_names$save_1/RestoreV2_46/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_1/Assign_46AssignGlobal_Stepsave_1/RestoreV2_46*
use_locking(*
T0*
_class
loc:@Global_Step*
validate_shape(*
_output_shapes
: 
v
 save_1/RestoreV2_47/tensor_namesConst*
dtype0*
_output_shapes
:*"
valueBBTraining_step
m
$save_1/RestoreV2_47/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_1/RestoreV2_47	RestoreV2save_1/Const save_1/RestoreV2_47/tensor_names$save_1/RestoreV2_47/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
dtype0*
_output_shapes
:* 
valueBBis_training
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
dtype0*
_output_shapes
:*
valueBBval_acc
m
$save_1/RestoreV2_49/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_49	RestoreV2save_1/Const save_1/RestoreV2_49/tensor_names$save_1/RestoreV2_49/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
$save_1/RestoreV2_50/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_1/RestoreV2_50	RestoreV2save_1/Const save_1/RestoreV2_50/tensor_names$save_1/RestoreV2_50/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_50Assignval_losssave_1/RestoreV2_50*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@val_loss
�
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_50
R
save_2/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0
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
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
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
save_2/control_dependencyIdentitysave_2/Const^save_2/SaveV2*
T0*
_output_shapes
: *
_class
loc:@save_2/Const
n
save_2/RestoreV2/tensor_namesConst*
valueBBConv2D/W*
dtype0*
_output_shapes
:
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
valueBBConv2D/b*
_output_shapes
:*
dtype0
l
#save_2/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_1	RestoreV2save_2/Constsave_2/RestoreV2_1/tensor_names#save_2/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
Conv2D_1/b*
_output_shapes
:*
dtype0
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
Conv2D_1/bsave_2/RestoreV2_3*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
r
save_2/RestoreV2_4/tensor_namesConst*
valueBB
Conv2D_2/W*
_output_shapes
:*
dtype0
l
#save_2/RestoreV2_4/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_2/RestoreV2_4	RestoreV2save_2/Constsave_2/RestoreV2_4/tensor_names#save_2/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_4Assign
Conv2D_2/Wsave_2/RestoreV2_4*
_class
loc:@Conv2D_2/W*'
_output_shapes
:@�*
T0*
validate_shape(*
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
�
save_2/RestoreV2_5	RestoreV2save_2/Constsave_2/RestoreV2_5/tensor_names#save_2/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_5Assign
Conv2D_2/bsave_2/RestoreV2_5*
use_locking(*
T0*
_class
loc:@Conv2D_2/b*
validate_shape(*
_output_shapes	
:�
r
save_2/RestoreV2_6/tensor_namesConst*
valueBB
Conv2D_3/W*
_output_shapes
:*
dtype0
l
#save_2/RestoreV2_6/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_2/RestoreV2_6	RestoreV2save_2/Constsave_2/RestoreV2_6/tensor_names#save_2/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
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
Conv2D_4/W*
_output_shapes
:*
dtype0
l
#save_2/RestoreV2_8/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_2/RestoreV2_8	RestoreV2save_2/Constsave_2/RestoreV2_8/tensor_names#save_2/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
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
save_2/RestoreV2_9/tensor_namesConst*
valueBB
Conv2D_4/b*
_output_shapes
:*
dtype0
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
 save_2/RestoreV2_10/tensor_namesConst*%
valueBBFullyConnected/W*
_output_shapes
:*
dtype0
m
$save_2/RestoreV2_10/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_2/RestoreV2_10	RestoreV2save_2/Const save_2/RestoreV2_10/tensor_names$save_2/RestoreV2_10/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_2/Assign_10AssignFullyConnected/Wsave_2/RestoreV2_10*
_output_shapes
:	 �*
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
$save_2/RestoreV2_11/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_2/RestoreV2_11	RestoreV2save_2/Const save_2/RestoreV2_11/tensor_names$save_2/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_11AssignFullyConnected/bsave_2/RestoreV2_11*
_output_shapes	
:�*
validate_shape(*#
_class
loc:@FullyConnected/b*
T0*
use_locking(
{
 save_2/RestoreV2_12/tensor_namesConst*'
valueBBFullyConnected_1/W*
dtype0*
_output_shapes
:
m
$save_2/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_12	RestoreV2save_2/Const save_2/RestoreV2_12/tensor_names$save_2/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_12AssignFullyConnected_1/Wsave_2/RestoreV2_12*%
_class
loc:@FullyConnected_1/W*
_output_shapes
:	�*
T0*
validate_shape(*
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
B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2_13	RestoreV2save_2/Const save_2/RestoreV2_13/tensor_names$save_2/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_2/Assign_13AssignFullyConnected_1/bsave_2/RestoreV2_13*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
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
save_3/SaveV2/tensor_namesConst*�
value�B�3BAccuracy/Mean/moving_avgBAdam/beta1_powerBAdam/beta2_powerBConv2D/WBConv2D/W/AdamBConv2D/W/Adam_1BConv2D/bBConv2D/b/AdamBConv2D/b/Adam_1B
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
!save_3/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/AssignAssignAccuracy/Mean/moving_avgsave_3/RestoreV2*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *+
_class!
loc:@Accuracy/Mean/moving_avg
x
save_3/RestoreV2_1/tensor_namesConst*
_output_shapes
:*
dtype0*%
valueBBAdam/beta1_power
l
#save_3/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_1	RestoreV2save_3/Constsave_3/RestoreV2_1/tensor_names#save_3/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
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
save_3/RestoreV2_2/tensor_namesConst*%
valueBBAdam/beta2_power*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_2/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_2	RestoreV2save_3/Constsave_3/RestoreV2_2/tensor_names#save_3/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_2AssignAdam/beta2_powersave_3/RestoreV2_2*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Conv2D/W
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
�
save_3/RestoreV2_3	RestoreV2save_3/Constsave_3/RestoreV2_3/tensor_names#save_3/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_3AssignConv2D/Wsave_3/RestoreV2_3*
use_locking(*
T0*
_class
loc:@Conv2D/W*
validate_shape(*&
_output_shapes
: 
u
save_3/RestoreV2_4/tensor_namesConst*"
valueBBConv2D/W/Adam*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_4/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
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
save_3/RestoreV2_5/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBConv2D/W/Adam_1
l
#save_3/RestoreV2_5/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_5	RestoreV2save_3/Constsave_3/RestoreV2_5/tensor_names#save_3/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
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
valueBBConv2D/b*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_6/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_6	RestoreV2save_3/Constsave_3/RestoreV2_6/tensor_names#save_3/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
�
save_3/RestoreV2_8	RestoreV2save_3/Constsave_3/RestoreV2_8/tensor_names#save_3/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
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
valueBB
Conv2D_1/W*
dtype0*
_output_shapes
:
l
#save_3/RestoreV2_9/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_9	RestoreV2save_3/Constsave_3/RestoreV2_9/tensor_names#save_3/RestoreV2_9/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_9Assign
Conv2D_1/Wsave_3/RestoreV2_9*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
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
save_3/Assign_10AssignConv2D_1/W/Adamsave_3/RestoreV2_10*
use_locking(*
validate_shape(*
T0*&
_output_shapes
: @*
_class
loc:@Conv2D_1/W
z
 save_3/RestoreV2_11/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_1/W/Adam_1
m
$save_3/RestoreV2_11/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_11	RestoreV2save_3/Const save_3/RestoreV2_11/tensor_names$save_3/RestoreV2_11/shape_and_slices*
_output_shapes
:*
dtypes
2
�
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
dtype0*
_output_shapes
:*
valueBB
Conv2D_1/b
m
$save_3/RestoreV2_12/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
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
 save_3/RestoreV2_13/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_1/b/Adam
m
$save_3/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_13	RestoreV2save_3/Const save_3/RestoreV2_13/tensor_names$save_3/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_13AssignConv2D_1/b/Adamsave_3/RestoreV2_13*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Conv2D_1/b
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
dtype0*
_output_shapes
:*
valueBB
Conv2D_2/W
m
$save_3/RestoreV2_15/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_15	RestoreV2save_3/Const save_3/RestoreV2_15/tensor_names$save_3/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_15Assign
Conv2D_2/Wsave_3/RestoreV2_15*
use_locking(*
validate_shape(*
T0*'
_output_shapes
:@�*
_class
loc:@Conv2D_2/W
x
 save_3/RestoreV2_16/tensor_namesConst*$
valueBBConv2D_2/W/Adam*
dtype0*
_output_shapes
:
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
$save_3/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
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
save_3/RestoreV2_18	RestoreV2save_3/Const save_3/RestoreV2_18/tensor_names$save_3/RestoreV2_18/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_18Assign
Conv2D_2/bsave_3/RestoreV2_18*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*
_class
loc:@Conv2D_2/b
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
save_3/RestoreV2_19	RestoreV2save_3/Const save_3/RestoreV2_19/tensor_names$save_3/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_19AssignConv2D_2/b/Adamsave_3/RestoreV2_19*
_class
loc:@Conv2D_2/b*
_output_shapes	
:�*
T0*
validate_shape(*
use_locking(
z
 save_3/RestoreV2_20/tensor_namesConst*
_output_shapes
:*
dtype0*&
valueBBConv2D_2/b/Adam_1
m
$save_3/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2_20	RestoreV2save_3/Const save_3/RestoreV2_20/tensor_names$save_3/RestoreV2_20/shape_and_slices*
_output_shapes
:*
dtypes
2
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
 save_3/RestoreV2_22/tensor_namesConst*
dtype0*
_output_shapes
:*$
valueBBConv2D_3/W/Adam
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
valueBB
Conv2D_3/b*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_24/shape_and_slicesConst*
dtype0*
_output_shapes
:*
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
Conv2D_3/bsave_3/RestoreV2_24*
_output_shapes
:@*
validate_shape(*
_class
loc:@Conv2D_3/b*
T0*
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
save_3/RestoreV2_25	RestoreV2save_3/Const save_3/RestoreV2_25/tensor_names$save_3/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
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
 save_3/RestoreV2_26/tensor_namesConst*&
valueBBConv2D_3/b/Adam_1*
_output_shapes
:*
dtype0
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
 save_3/RestoreV2_27/tensor_namesConst*
_output_shapes
:*
dtype0*
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
Conv2D_4/Wsave_3/RestoreV2_27*
_class
loc:@Conv2D_4/W*&
_output_shapes
:@ *
T0*
validate_shape(*
use_locking(
x
 save_3/RestoreV2_28/tensor_namesConst*$
valueBBConv2D_4/W/Adam*
dtype0*
_output_shapes
:
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
save_3/RestoreV2_29	RestoreV2save_3/Const save_3/RestoreV2_29/tensor_names$save_3/RestoreV2_29/shape_and_slices*
_output_shapes
:*
dtypes
2
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
 save_3/RestoreV2_30/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Conv2D_4/b
m
$save_3/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
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
 save_3/RestoreV2_31/tensor_namesConst*$
valueBBConv2D_4/b/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_31/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_31	RestoreV2save_3/Const save_3/RestoreV2_31/tensor_names$save_3/RestoreV2_31/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_31AssignConv2D_4/b/Adamsave_3/RestoreV2_31*
_output_shapes
: *
validate_shape(*
_class
loc:@Conv2D_4/b*
T0*
use_locking(
z
 save_3/RestoreV2_32/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBConv2D_4/b/Adam_1
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
use_locking(*
T0*
_class
loc:@Conv2D_4/b*
validate_shape(*
_output_shapes
: 
�
 save_3/RestoreV2_33/tensor_namesConst*
dtype0*
_output_shapes
:*1
value(B&BCrossentropy/Mean/moving_avg
m
$save_3/RestoreV2_33/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_33	RestoreV2save_3/Const save_3/RestoreV2_33/tensor_names$save_3/RestoreV2_33/shape_and_slices*
dtypes
2*
_output_shapes
:
�
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
 save_3/RestoreV2_35/tensor_namesConst*
_output_shapes
:*
dtype0**
value!BBFullyConnected/W/Adam
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
save_3/Assign_35AssignFullyConnected/W/Adamsave_3/RestoreV2_35*#
_class
loc:@FullyConnected/W*
_output_shapes
:	 �*
T0*
validate_shape(*
use_locking(
�
 save_3/RestoreV2_36/tensor_namesConst*
dtype0*
_output_shapes
:*,
value#B!BFullyConnected/W/Adam_1
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
$save_3/RestoreV2_37/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_37	RestoreV2save_3/Const save_3/RestoreV2_37/tensor_names$save_3/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_37AssignFullyConnected/bsave_3/RestoreV2_37*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:�*#
_class
loc:@FullyConnected/b
~
 save_3/RestoreV2_38/tensor_namesConst*
dtype0*
_output_shapes
:**
value!BBFullyConnected/b/Adam
m
$save_3/RestoreV2_38/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_38	RestoreV2save_3/Const save_3/RestoreV2_38/tensor_names$save_3/RestoreV2_38/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_38AssignFullyConnected/b/Adamsave_3/RestoreV2_38*
_output_shapes	
:�*
validate_shape(*#
_class
loc:@FullyConnected/b*
T0*
use_locking(
�
 save_3/RestoreV2_39/tensor_namesConst*
dtype0*
_output_shapes
:*,
value#B!BFullyConnected/b/Adam_1
m
$save_3/RestoreV2_39/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_39	RestoreV2save_3/Const save_3/RestoreV2_39/tensor_names$save_3/RestoreV2_39/shape_and_slices*
dtypes
2*
_output_shapes
:
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
 save_3/RestoreV2_40/tensor_namesConst*
_output_shapes
:*
dtype0*'
valueBBFullyConnected_1/W
m
$save_3/RestoreV2_40/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
�
save_3/RestoreV2_40	RestoreV2save_3/Const save_3/RestoreV2_40/tensor_names$save_3/RestoreV2_40/shape_and_slices*
_output_shapes
:*
dtypes
2
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
 save_3/RestoreV2_41/tensor_namesConst*
dtype0*
_output_shapes
:*,
value#B!BFullyConnected_1/W/Adam
m
$save_3/RestoreV2_41/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_41	RestoreV2save_3/Const save_3/RestoreV2_41/tensor_names$save_3/RestoreV2_41/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_3/Assign_41AssignFullyConnected_1/W/Adamsave_3/RestoreV2_41*
_output_shapes
:	�*
validate_shape(*%
_class
loc:@FullyConnected_1/W*
T0*
use_locking(
�
 save_3/RestoreV2_42/tensor_namesConst*.
value%B#BFullyConnected_1/W/Adam_1*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_42/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
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
 save_3/RestoreV2_43/tensor_namesConst*
_output_shapes
:*
dtype0*'
valueBBFullyConnected_1/b
m
$save_3/RestoreV2_43/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
�
save_3/RestoreV2_43	RestoreV2save_3/Const save_3/RestoreV2_43/tensor_names$save_3/RestoreV2_43/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_43AssignFullyConnected_1/bsave_3/RestoreV2_43*
_output_shapes
:*
validate_shape(*%
_class
loc:@FullyConnected_1/b*
T0*
use_locking(
�
 save_3/RestoreV2_44/tensor_namesConst*,
value#B!BFullyConnected_1/b/Adam*
dtype0*
_output_shapes
:
m
$save_3/RestoreV2_44/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
�
save_3/RestoreV2_44	RestoreV2save_3/Const save_3/RestoreV2_44/tensor_names$save_3/RestoreV2_44/shape_and_slices*
_output_shapes
:*
dtypes
2
�
save_3/Assign_44AssignFullyConnected_1/b/Adamsave_3/RestoreV2_44*%
_class
loc:@FullyConnected_1/b*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
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
save_3/Assign_45AssignFullyConnected_1/b/Adam_1save_3/RestoreV2_45*
use_locking(*
T0*%
_class
loc:@FullyConnected_1/b*
validate_shape(*
_output_shapes
:
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
save_3/Assign_46AssignGlobal_Stepsave_3/RestoreV2_46*
use_locking(*
T0*
_class
loc:@Global_Step*
validate_shape(*
_output_shapes
: 
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
�
save_3/RestoreV2_47	RestoreV2save_3/Const save_3/RestoreV2_47/tensor_names$save_3/RestoreV2_47/shape_and_slices*
dtypes
2*
_output_shapes
:
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
$save_3/RestoreV2_50/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
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
save_3/restore_allNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_2^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26^save_3/Assign_27^save_3/Assign_28^save_3/Assign_29^save_3/Assign_30^save_3/Assign_31^save_3/Assign_32^save_3/Assign_33^save_3/Assign_34^save_3/Assign_35^save_3/Assign_36^save_3/Assign_37^save_3/Assign_38^save_3/Assign_39^save_3/Assign_40^save_3/Assign_41^save_3/Assign_42^save_3/Assign_43^save_3/Assign_44^save_3/Assign_45^save_3/Assign_46^save_3/Assign_47^save_3/Assign_48^save_3/Assign_49^save_3/Assign_50""
inputs

	input/X:0",
layer_tensor/Conv2D_4

Conv2D_4/Relu:0"
targets

targets/Y:0"0
layer_tensor/Dropout

Dropout/cond/Merge:0"R
 layer_variables/FullyConnected_1.
,
FullyConnected_1/W:0
FullyConnected_1/b:0"$
train_op

Adam/apply_grad_op_0":
layer_variables/Conv2D_3

Conv2D_3/W:0
Conv2D_3/b:0",
layer_tensor/Conv2D_2

Conv2D_2/Relu:0"6
Adam_training_summaries

Loss:0
Adam/Loss/raw:0"�
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
FullyConnected/Relu:0Dropout/cond/Switch_1:0"�
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
FullyConnected_1/b/Adam_1:0 FullyConnected_1/b/Adam_1/Assign FullyConnected_1/b/Adam_1/read:0"#
layer_tensor/input

	input/X:0"8
layer_tensor/FullyConnected

FullyConnected/Relu:0"�
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
Adam/Loss/raw:0"+
is_training_ops

Assign:0

Assign_1:0":
layer_variables/Conv2D_1

Conv2D_1/W:0
Conv2D_1/b:0"
trainops

Adam"?
layer_tensor/FullyConnected_1

FullyConnected_1/Softmax:0"�
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
FullyConnected_1/b:0"�
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
FullyConnected_1/Softmax:0":
layer_variables/Conv2D_4

Conv2D_4/W:0
Conv2D_4/b:0",
layer_tensor/Conv2D_3

Conv2D_3/Relu:0"�
layer_tensor/MaxPool2Ds
q
MaxPool2D/MaxPool:0
MaxPool2D_1/MaxPool:0
MaxPool2D_2/MaxPool:0
MaxPool2D_3/MaxPool:0
MaxPool2D_4/MaxPool:0"L
layer_variables/FullyConnected*
(
FullyConnected/W:0
FullyConnected/b:0"4
layer_variables/Conv2D


Conv2D/W:0

Conv2D/b:0":
layer_variables/Conv2D_2

Conv2D_2/W:0
Conv2D_2/b:0",
layer_tensor/Conv2D_1

Conv2D_1/Relu:0" 
is_training

is_training:0���Y       �e�	���k9�A*L

Loss|?

Adam/Loss/raw��+?

Accuracy/__raw_  L?

Accuracy��7?υY       �e�	~��k9�A*L

Loss _)?

Adam/Loss/raw�|$?

Accuracy/__raw_  H?

AccuracyyJH?b�1Y       �e�	J.�k9�A*L

Loss4�%?

Adam/Loss/rawd(	?

Accuracy/__raw_  H?

Accuracy�H?t�Y       �e�	�1��k9�A*L

LossB�?

Adam/Loss/rawr�?

Accuracy/__raw_  <?

Accuracy�H?�yl;Y       �e�	Y2d�k9�A*L

Loss*k?

Adam/Loss/rawTc�>

Accuracy/__raw_  T?

Accuracy0K@?�s��Y       �e�	�=�k9�A*L

Loss���>

Adam/Loss/raw��I?

Accuracy/__raw_  H?

AccuracyL?b���Y       �e�	P9��k9�A*L

Lossڀ(?

Adam/Loss/rawr	�>

Accuracy/__raw_  8?

Accuracy(�I?�z�fY       �e�	��$�k9�A	*L

Lossn�?

Adam/Loss/raw�B?

Accuracy/__raw_  ,?

Accuracy�`@?:�)Y       �e�	ta��k9�A
*L

Loss��?

Adam/Loss/raw�U�>

Accuracy/__raw_  T?

AccuracyF06?���Y       �e�	Q12�k9�A*L

Loss�?

Adam/Loss/raw^�?

Accuracy/__raw_  (?

AccuracyMOD?>��XY       �e�	:��k9�A*L

Loss �?

Adam/Loss/raw�,�>

Accuracy/__raw_  D?

Accuracy�7?�ZWY       �e�	n�D l9�A*L

Loss���>

Adam/Loss/rawn2�>

Accuracy/__raw_  `?

Accuracy��<?���Y       �e�	$�� l9�A*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  L?

Accuracy�AK?��fpY       �e�	 bl9�A*L

Loss�)�>

Adam/Loss/raw�?

Accuracy/__raw_  4?

AccuracyM�K?�}Y       �e�	G��l9�A*L

Lossy1�>

Adam/Loss/raw޿?

Accuracy/__raw_  D?

Accuracy��B?A7x?Y       �e�	�Qpl9�A*L

LossT��>

Adam/Loss/raw>|�>

Accuracy/__raw_  @?

Accuracy�-C?r0��Y       �e�	�X�l9�A*L

LossV��>

Adam/Loss/raw ��>

Accuracy/__raw_  <?

Accuracy'B?D��'Y       �e�	���l9�A*L

Loss��>

Adam/Loss/raw�� ?

Accuracy/__raw_  <?

Accuracyo@?��Y�Y       �e�	h
l9�A*L

Loss�I�>

Adam/Loss/raw��>

Accuracy/__raw_  X?

Accuracy��>?=�FY       �e�	巔l9�A*L

Loss�!�>

Adam/Loss/raw�U�>

Accuracy/__raw_  L?

Accuracy�F?r�Y       �e�	�r"l9�A*L

Loss��>

Adam/Loss/raw,R>?

Accuracy/__raw_  8?

Accuracy�5H?;��CY       �e�	Φ�l9�A*L

Loss�0?

Adam/Loss/raw�>�>

Accuracy/__raw_  H?

Accuracy�C?��ɒY       �e�	�y(l9�A*L

Loss۷ ?

Adam/Loss/raw$�>

Accuracy/__raw_  T?

Accuracy��D?w@5�Y       �e�	�!�l9�A*L

Loss`��>

Adam/Loss/raw��?

Accuracy/__raw_  (?

Accuracy/�H?K��Y       �e�	R�0l9�A*L

Loss(�>

Adam/Loss/rawI.�>

Accuracy/__raw_  X?

Accuracy25@?kªY       �e�	d�l9�A*L

Loss�>�>

Adam/Loss/raw��>

Accuracy/__raw_  <?

AccuracygSF?SY       �e�	
8l9�A*L

Loss� �>

Adam/Loss/raw�>

Accuracy/__raw_  T?

Accuracy��C?�@�Y       �e�	U�l9�A*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  8?

Accuracy̲G?�uvY       �e�	�gI	l9�A*L

Loss���>

Adam/Loss/raw+��>

Accuracy/__raw_  X?

Accuracy��C?���Y       �e�	���	l9�A*L

Loss�F�>

Adam/Loss/rawW�?

Accuracy/__raw_  ,?

Accuracy��H?G],�Y       �e�	��K
l9�A *L

Loss���>

Adam/Loss/raw�;?

Accuracy/__raw_  ,?

AccuracyL*B?��ҝY       �e�	4�
l9�A!*L

Loss���>

Adam/Loss/raw=�&?

Accuracy/__raw_  8?

Accuracy�L=?�K��Y       �e�	�rl9�A"*L

Loss�?

Adam/Loss/rawH"�>

Accuracy/__raw_  X?

Accuracy�)<?W��jY       �e�	1�l9�A#*L

Loss���>

Adam/Loss/rawl��>

Accuracy/__raw_  L?

Accuracy{�A?*p�IY       �e�	g��l9�A$*L

Loss�y�>

Adam/Loss/raw�V�>

Accuracy/__raw_  X?

Accuracy�	D?�wa�Y       �e�	4�l9�A%*L

Lossg?�>

Adam/Loss/raw$�>

Accuracy/__raw_  X?

Accuracy�H?`0IcY       �e�	�ˠl9�A&*L

Loss�s�>

Adam/Loss/raw��>

Accuracy/__raw_  D?

Accuracy�'K?���Y       �e�	+"l9�A'*L

Loss0��>

Adam/Loss/rawG�?

Accuracy/__raw_  <?

Accuracy��I?�`�QY       �e�	��l9�A(*L

Loss��>

Adam/Loss/raw�(�>

Accuracy/__raw_  L?

Accuracy33G?@�Y       �e�	ץ'l9�A)*L

Loss�7�>

Adam/Loss/raw���>

Accuracy/__raw_  L?

Accuracy�H?��DkY       �e�	<��l9�A**L

Lossك�>

Adam/Loss/rawh�?

Accuracy/__raw_  4?

Accuracyu�H?�&beY       �e�	�&l9�A+*L

Lossns�>

Adam/Loss/raw��>

Accuracy/__raw_  <?

Accuracy`E?�N8�Y       �e�	U1�l9�A,*L

Loss2��>

Adam/Loss/raw(��>

Accuracy/__raw_  @?

AccuracyY�C?7��3Y       �e�	\�3l9�A-*L

Lossޕ�>

Adam/Loss/raw�>

Accuracy/__raw_  T?

Accuracyq�B?F��.Y       �e�	���l9�A.*L

Loss� �>

Adam/Loss/raw�G�>

Accuracy/__raw_  L?

Accuracy^�E?4��Y       �e�	��Pl9�A/*L

Loss�d�>

Adam/Loss/rawL�?

Accuracy/__raw_  H?

Accuracy��F?(!Y       �e�	|��l9�A0*L

Loss���>

Adam/Loss/raw�_�>

Accuracy/__raw_  P?

Accuracy/�F?�i�kY       �e�	{�Wl9�A1*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  \?

AccuracyCjH?��u�Y       �e�	�l9�A2*L

Loss}��>

Adam/Loss/rawSU�>

Accuracy/__raw_  L?

AccuracyAtK?t*��Y       �e�	��^l9�A3*L

Loss�B�>

Adam/Loss/raw��?

Accuracy/__raw_  <?

Accuracy��K? R;3Y       �e�	��l9�A4*L

Losss��>

Adam/Loss/raw$G�>

Accuracy/__raw_  L?

Accuracy�4I?n.'�Y       �e�	�Aol9�A5*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  <?

Accuracyo�I?Zg�Y       �e�	C��l9�A6*L

Loss͍�>

Adam/Loss/rawd�?

Accuracy/__raw_  P?

AccuracyW�G?~��HY       �e�	|�l9�A7*L

Lossc�>

Adam/Loss/raw��?

Accuracy/__raw_  8?

Accuracy�H?�b:Y       �e�	�}4l9�A8*L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_  L?

Accuracy�wF?���Y       �e�	���l9�A9*L

Loss���>

Adam/Loss/raw�?

Accuracy/__raw_  L?

Accuracy�;G?���Y       �e�	^Il9�A:*L

Loss��>

Adam/Loss/raw!Q�>

Accuracy/__raw_  X?

AccuracyZ�G?��'Y       �e�	� �l9�A;*L

Loss2G�>

Adam/Loss/rawj?

Accuracy/__raw_  <?

Accuracy�J?�6D�Y       �e�	�bl9�A<*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  @?

Accuracy�0H?-&R�Y       �e�	��l9�A=*L

LossN�>

Adam/Loss/raw���>

Accuracy/__raw_  L?

AccuracyG?t�mgY       �e�	ؚil9�A>*L

Lossn>�>

Adam/Loss/raw��>

Accuracy/__raw_  H?

Accuracy��G?�2�9Y       �e�	�A�l9�A?*L

LossJ��>

Adam/Loss/rawd�?

Accuracy/__raw_  4?

Accuracy��G?�$biY       �e�	�~rl9�A@*L

Loss���>

Adam/Loss/raw5�#?

Accuracy/__raw_  <?

Accuracy�NE?G�WY       �e�	���l9�AA*L

Lossu��>

Adam/Loss/raw^B�>

Accuracy/__raw_  T?

Accuracy)D?�ν�Y       �e�	�rxl9�AB*L

Loss#��>

Adam/Loss/raw^��>

Accuracy/__raw_  H?

Accuracy9F?OΥ�Y       �e�	���l9�AC*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  H?

Accuracy�PF?��r�Y       �e�	�8~l9�AD*L

Loss>x�>

Adam/Loss/rawE��>

Accuracy/__raw_  H?

Accuracy	�F? �5rY       �e�	� l9�AE*L

Loss�x�>

Adam/Loss/rawY;�>

Accuracy/__raw_  D?

Accuracyr�F?�{�Y       �e�	k�l9�AF*L

Loss8��>

Adam/Loss/rawng�>

Accuracy/__raw_  D?

AccuracyaF?X�m@Y       �e�	�)l9�AG*L

Loss���>

Adam/Loss/raw�{�>

Accuracy/__raw_  T?

Accuracy�F?3u�Y       �e�	�L�l9�AH*L

Loss��>

Adam/Loss/raw́�>

Accuracy/__raw_  L?

Accuracy��G?��c�Y       �e�	�� l9�AI*L

Lossa�>

Adam/Loss/raw�d�>

Accuracy/__raw_  L?

Accuracy�&H?r��Y       �e�	�ś l9�AJ*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_  T?

Accuracy��H?�
\Y       �e�	C�!l9�AK*L

Loss�5�>

Adam/Loss/raw�?

Accuracy/__raw_  H?

Accuracy(�I?(�Y       �e�	���!l9�AL*L

Loss�>

Adam/Loss/raw�?

Accuracy/__raw_  8?

Accuracym�I?�lY       �e�	�%"l9�AM*L

Loss�V�>

Adam/Loss/raw:��>

Accuracy/__raw_  P?

Accuracy��G?Nw�Y       �e�	Iե"l9�AN*L

Loss�~�>

Adam/Loss/raw���>

Accuracy/__raw_  H?

AccuracyɝH?��Y       �e�	~7*#l9�AO*L

Loss���>

Adam/Loss/raw�P�>

Accuracy/__raw_  X?

Accuracyv�H?v�?�Y       �e�	"��#l9�AP*L

Loss��>

Adam/Loss/rawtM�>

Accuracy/__raw_  T?

Accuracy�!J?���[Y       �e�	'f,$l9�AQ*L

Loss!4�>

Adam/Loss/raw���>

Accuracy/__raw_  D?

AccuracyZ!K?W��AY       �e�	�.�$l9�AR*L

Lossb*�>

Adam/Loss/rawU%�>

Accuracy/__raw_  D?

Accuracy�jJ?K��<Y       �e�	�2%l9�AS*L

Loss�v�>

Adam/Loss/raw<|?

Accuracy/__raw_  8?

Accuracy��I?J�ǍY       �e�	�ڰ%l9�AT*L

Loss��>

Adam/Loss/rawd��>

Accuracy/__raw_  <?

Accuracy{�G?;z�Y       �e�	N7&l9�AU*L

Lossʒ�>

Adam/Loss/raw�O3?

Accuracy/__raw_  <?

AccuracyU�F?<rY       �e�	���&l9�AV*L

Loss�>

Adam/Loss/rawB{?

Accuracy/__raw_  D?

Accuracy�E?�?��Y       �e�	a4:'l9�AW*L

Loss�]�>

Adam/Loss/rawl�>

Accuracy/__raw_  4?

Accuracy�E?i.�Y       �e�	�O�'l9�AX*L

Loss��>

Adam/Loss/raw�?

Accuracy/__raw_  0?

Accuracy��C?�pT$Y       �e�	�"@(l9�AY*L

LossB��>

Adam/Loss/raw>�?

Accuracy/__raw_  @?

Accuracy�A?bF,�Y       �e�	���(l9�AZ*L

Loss��>

Adam/Loss/raw.y�>

Accuracy/__raw_  X?

Accuracy��A?�0��Y       �e�	ĴY)l9�A[*L

Lossd��>

Adam/Loss/raw���>

Accuracy/__raw_  `?

AccuracyG�C?�}�cY       �e�	���)l9�A\*L

Loss$��>

Adam/Loss/raw�h�>

Accuracy/__raw_  L?

Accuracys�F?#�;�Y       �e�	80u*l9�A]*L

Loss��>

Adam/Loss/rawq��>

Accuracy/__raw_  L?

Accuracy�6G?�I3eY       �e�	%�
+l9�A^*L

Loss���>

Adam/Loss/raw2A?

Accuracy/__raw_   ?

Accuracy%�G?ID�kY       �e�	�u�+l9�A_*L

LossP��>

Adam/Loss/raw���>

Accuracy/__raw_  T?

Accuracy�C?d���Y       �e�	1�0,l9�A`*L

Lossyx�>

Adam/Loss/raw�>

Accuracy/__raw_  <?

Accuracy�YE?��t#Y       �e�	���,l9�Aa*L

Loss:��>

Adam/Loss/raw�Z�>

Accuracy/__raw_  H?

Accuracy[jD?��	Y       �e�	�(8-l9�Ab*L

LossL,�>

Adam/Loss/rawd�>

Accuracy/__raw_  P?

Accuracy�D?T�Y       �e�	�(�-l9�Ac*L

LossF�>

Adam/Loss/raw�6�>

Accuracy/__raw_  D?

Accuracy��E?���~Y       �e�	2@.l9�Ad*L

Loss��>

Adam/Loss/raw�9?

Accuracy/__raw_  @?

Accuracy��E?x�2Y       �e�	<�.l9�Ae*L

Losso��>

Adam/Loss/raw���>

Accuracy/__raw_  P?

Accuracy�"E?��yY       �e�	2C/l9�Af*L

Loss.��>

Adam/Loss/raw}��>

Accuracy/__raw_  D?

Accuracy�8F?2�k`Y       �e�	��/l9�Ag*L

Loss6��>

Adam/Loss/raw�	�>

Accuracy/__raw_  L?

Accuracy F?�d�Y       �e�	�aF0l9�Ah*L

Loss�_�>

Adam/Loss/raw��?

Accuracy/__raw_  8?

Accuracy��F?�VY       �e�	�T�0l9�Ai*L

Loss�[�>

Adam/Loss/rawB��>

Accuracy/__raw_  L?

Accuracy�#E?��I�Y       �e�	��G1l9�Aj*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  H?

Accuracy��E?��{�Y       �e�	���1l9�Ak*L

Loss�!�>

Adam/Loss/raw��>

Accuracy/__raw_  <?

Accuracy)F?�X?Y       �e�	Y�K2l9�Al*L

Loss�G�>

Adam/Loss/raw:v�>

Accuracy/__raw_  @?

Accuracy
E?1�6+Y       �e�	e��2l9�Am*L

Losst��>

Adam/Loss/raw� ?

Accuracy/__raw_  <?

Accuracy
�D?��W�Y       �e�	-��3l9�An*L

Loss��>

Adam/Loss/raw�V�>

Accuracy/__raw_  D?

Accuracy��C?�ց�Y       �e�	�(4l9�Ao*L

Loss6��>

Adam/Loss/raw��
?

Accuracy/__raw_  ,?

Accuracy��C? ��Y       �e�	�ĵ4l9�Ap*L

Loss��>

Adam/Loss/rawa��>

Accuracy/__raw_  T?

Accuracy�WA?���Y       �e�	_75l9�Aq*L

Loss�p�>

Adam/Loss/rawl��>

Accuracy/__raw_  H?

AccuracyA5C?Y�� Y       �e�	\Y�5l9�Ar*L

Loss��>

Adam/Loss/raw�,�>

Accuracy/__raw_  L?

Accuracy�C?ԆY       �e�	�C6l9�As*L

Loss� �>

Adam/Loss/rawF�>

Accuracy/__raw_  8?

Accuracy��D?>0�IY       �e�	���6l9�At*L

Loss;�>

Adam/Loss/raw$��>

Accuracy/__raw_  <?

AccuracyDDC?LcpY       �e�	kօ<l9�Au*L

Loss���>

Adam/Loss/rawu{�>

Accuracy/__raw_�m[?

Accuracy=�B?~��A        �«	�؅<l9�Au*4

Loss/Validation^#f?

Accuracy/ValidationD�>Gw�Y       �e�	��<l9�Av*L

Loss+4�>

Adam/Loss/raw[��>

Accuracy/__raw_�m[?

AccuracycE?���Y       �e�	8I=l9�Aw*L

Loss�s�>

Adam/Loss/rawtS�>

Accuracy/__raw_  @?

Accuracy�DG?,#"vY       �e�	��=l9�Ax*L

Loss���>

Adam/Loss/raw.�>

Accuracy/__raw_  H?

Accuracy��F?����Y       �e�	c�O>l9�Ay*L

Loss<-�>

Adam/Loss/raw��?

Accuracy/__raw_  <?

Accuracy�F?��EY       �e�	��?l9�Az*L

Loss���>

Adam/Loss/rawf6�>

Accuracy/__raw_  @?

Accuracyv�E?�q��Y       �e�	���?l9�A{*L

Loss�A�>

Adam/Loss/raw��>

Accuracy/__raw_  L?

Accuracy�E?R6Z�Y       �e�	P�@l9�A|*L

Loss$��>

Adam/Loss/rawx�>

Accuracy/__raw_  @?

AccuracyZ�E?���`Y       �e�	A�@l9�A}*L

Loss@�>

Adam/Loss/rawD��>

Accuracy/__raw_  \?

Accuracy-E?{B�nY       �e�	��	Al9�A~*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_  L?

AccuracyhuG?7�Y       �e�	���Al9�A*L

Loss��>

Adam/Loss/raw@��>

Accuracy/__raw_  X?

Accuracy��G?��~�Z       o��	�tTBl9�A�*L

Lossn&�>

Adam/Loss/raw���>

Accuracy/__raw_  L?

Accuracy�I?��'�Z       o��	e��Bl9�A�*L

LossIm�>

Adam/Loss/raw�m�>

Accuracy/__raw_  D?

Accuracy��I?킕7Z       o��	�mCl9�A�*L

LossW��>

Adam/Loss/raw�׺>

Accuracy/__raw_  T?

Accuracy@1I?�A�Z       o��	6Z�Cl9�A�*L

Lossb��>

Adam/Loss/raw���>

Accuracy/__raw_  @?

Accuracy�EJ?La�Z       o��	���Dl9�A�*L

Loss�Q�>

Adam/Loss/raw���>

Accuracy/__raw_  H?

Accuracy�>I?�͠�Z       o��	��/El9�A�*L

Loss��>

Adam/Loss/raw3��>

Accuracy/__raw_  L?

Accuracy
I?	��Z       o��	���El9�A�*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  P?

Accuracy�hI?"���Z       o��	��<Fl9�A�*L

Loss�\�>

Adam/Loss/raw���>

Accuracy/__raw_  ,?

AccuracyvJ?._Z       o��	%A�Fl9�A�*L

Loss�5�>

Adam/Loss/rawX��>

Accuracy/__raw_  H?

Accuracy�G?�bIZ       o��	΅Gl9�A�*L

Loss�q�>

Adam/Loss/rawU��>

Accuracy/__raw_  4?

Accuracy�'G?ToZ       o��	��Hl9�A�*L

Loss��>

Adam/Loss/raw�D�>

Accuracy/__raw_  <?

Accuracy^=E?��+WZ       o��	B��Hl9�A�*L

Loss_��>

Adam/Loss/rawq�&?

Accuracy/__raw_  L?

Accuracy�PD?���Z       o��	��0Il9�A�*L

Loss���>

Adam/Loss/rawP�>

Accuracy/__raw_  0?

Accuracy�E?�i�Z       o��	�P�Il9�A�*L

LossE�>

Adam/Loss/raw"� ?

Accuracy/__raw_  @?

Accuracy��B?�R�[Z       o��	8��Jl9�A�*L

Lossb��>

Adam/Loss/raw&��>

Accuracy/__raw_  D?

Accuracy��B?��0�Z       o��	�,Kl9�A�*L

Loss�A�>

Adam/Loss/raw��>

Accuracy/__raw_  T?

Accuracyu�B?\�_gZ       o��	�)�Kl9�A�*L

Loss�#�>

Adam/Loss/rawЖ�>

Accuracy/__raw_  P?

Accuracy��D?�͖�Z       o��	�F<Ll9�A�*L

Lossi��>

Adam/Loss/rawC��>

Accuracy/__raw_  \?

Accuracy)�E?��tZ       o��	0f�Ll9�A�*L

Loss�I�>

Adam/Loss/raw'��>

Accuracy/__raw_  8?

Accuracy��G?eC�Z       o��	�BMl9�A�*L

Loss�>�>

Adam/Loss/rawq"�>

Accuracy/__raw_  <?

AccuracyaQF?�K�uZ       o��	���Ml9�A�*L

Loss�;�>

Adam/Loss/raw�+�>

Accuracy/__raw_  P?

Accuracy>IE?Y_�Z       o��	��JNl9�A�*L

LossX��>

Adam/Loss/rawa'�>

Accuracy/__raw_  @?

Accuracy�[F?|��Z       o��	�$�Nl9�A�*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  T?

AccuracyĸE?��ݎZ       o��	)#qOl9�A�*L

LossB��>

Adam/Loss/rawY�>

Accuracy/__raw_  P?

AccuracyJ&G?}� Z       o��	�^Pl9�A�*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  X?

Accuracy�H?�ˣ�Z       o��	���Pl9�A�*L

Loss$��>

Adam/Loss/rawT��>

Accuracy/__raw_  L?

Accuracy��I?=�̺Z       o��	��#Ql9�A�*L

Loss�>

Adam/Loss/raw��>

Accuracy/__raw_  <?

Accuracy8�I?��DmZ       o��	[��Ql9�A�*L

Loss��>

Adam/Loss/raw��?

Accuracy/__raw_  8?

Accuracy2{H?����Z       o��	` %Rl9�A�*L

Loss-��>

Adam/Loss/rawT��>

Accuracy/__raw_  `?

AccuracyG�F?�=�Z       o��	��Rl9�A�*L

Loss�&�>

Adam/Loss/raw�ݛ>

Accuracy/__raw_  \?

Accuracy�YI?F�nZ       o��	�J)Sl9�A�*L

Lossƅ�>

Adam/Loss/raw,��>

Accuracy/__raw_  P?

Accuracy�6K?�rwZ       o��	
,�Sl9�A�*L

LossP��>

Adam/Loss/raw^?

Accuracy/__raw_  8?

Accuracy�K?�!l�Z       o��	��ETl9�A�*L

Loss4��>

Adam/Loss/raw�B?

Accuracy/__raw_  4?

AccuracyY�I?-�zLZ       o��		S�Tl9�A�*L

Loss�>

Adam/Loss/raw���>

Accuracy/__raw_  @?

Accuracy6�G?�gV�Z       o��	�~AUl9�A�*L

Loss���>

Adam/Loss/raw<�>

Accuracy/__raw_  L?

Accuracy��F?>��/Z       o��	��Ul9�A�*L

Loss���>

Adam/Loss/rawd�>

Accuracy/__raw_  \?

AccuracyQG?U��UZ       o��	 ;@Vl9�A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  P?

Accuracy�bI?pKIZ       o��	�F�Vl9�A�*L

Loss՞�>

Adam/Loss/raw�`�>

Accuracy/__raw_  P?

Accuracy�J?&�BZ       o��	��BWl9�A�*L

Loss�K�>

Adam/Loss/rawV�>

Accuracy/__raw_  X?

AccuracyV�J?Z	��Z       o��	M�Wl9�A�*L

Losspf�>

Adam/Loss/rawS2�>

Accuracy/__raw_  P?

AccuracyM�K?�\Z       o��	��:Xl9�A�*L

Loss�z�>

Adam/Loss/raw� �>

Accuracy/__raw_  0?

AccuracyEaL?q�i�Z       o��	���Xl9�A�*L

Loss7X�>

Adam/Loss/rawo�>

Accuracy/__raw_  T?

Accuracy��I? �/^Z       o��	@AYl9�A�*L

Loss��>

Adam/Loss/raw4E�>

Accuracy/__raw_  <?

Accuracyx�J?=G"�Z       o��	!t�Yl9�A�*L

Loss�b�>

Adam/Loss/raw(ϝ>

Accuracy/__raw_  `?

Accuracy!I?�X�Z       o��	Z�:Zl9�A�*L

Loss���>

Adam/Loss/raw
��>

Accuracy/__raw_  T?

Accuracy�jK?�"!Z       o��	4g�Zl9�A�*L

LossN��>

Adam/Loss/raw���>

Accuracy/__raw_  H?

AccuracyEFL?�.�qZ       o��	~s=[l9�A�*L

Loss��>

Adam/Loss/raw��?

Accuracy/__raw_  4?

Accuracy��K?�h{	Z       o��	]Q�[l9�A�*L

Loss9��>

Adam/Loss/rawm�>

Accuracy/__raw_  @?

Accuracy\vI?�McZ       o��	�YG\l9�A�*L

Loss���>

Adam/Loss/raw#y�>

Accuracy/__raw_  <?

Accuracy �H?��&Z       o��	���\l9�A�*L

Loss�+�>

Adam/Loss/rawBQ?

Accuracy/__raw_  0?

Accuracy�CG?{�cZ       o��	��H]l9�A�*L

Loss8��>

Adam/Loss/rawQ�>

Accuracy/__raw_  X?

Accuracy$�D?ZL�|Z       o��	��]l9�A�*L

Loss��>

Adam/Loss/rawV0
?

Accuracy/__raw_  4?

Accuracy �F?@��GZ       o��	j�>^l9�A�*L

Loss���>

Adam/Loss/raw�5�>

Accuracy/__raw_  L?

Accuracy��D?����Z       o��	*�^l9�A�*L

Lossl{�>

Adam/Loss/raw`�>

Accuracy/__raw_  `?

Accuracy�E?k�_Z       o��	�=_l9�A�*L

Loss���>

Adam/Loss/raw�&�>

Accuracy/__raw_  @?

Accuracy&LH?�x�Z       o��	��_l9�A�*L

LossW��>

Adam/Loss/raw��>

Accuracy/__raw_  D?

Accuracy�wG?� ��Z       o��	c%E`l9�A�*L

LossuI�>

Adam/Loss/raw�0�>

Accuracy/__raw_  L?

Accuracy�G?sY��Z       o��	�E�`l9�A�*L

Loss���>

Adam/Loss/raw�O�>

Accuracy/__raw_  D?

AccuracyݛG?�R5�Z       o��	��Dal9�A�*L

Loss��>

Adam/Loss/raw|��>

Accuracy/__raw_  <?

Accuracyz?G?�8T�Z       o��	�1�al9�A�*L

Losss��>

Adam/Loss/raw��>

Accuracy/__raw_  H?

Accuracy�F?z��Z       o��	>�Rbl9�A�*L

Lossz�>

Adam/Loss/raw̹�>

Accuracy/__raw_  X?

Accuracy�OF?��*Z       o��	�a�bl9�A�*L

Loss��>

Adam/Loss/raw?m�>

Accuracy/__raw_  H?

AccuracykH?�+��Z       o��	��Ncl9�A�*L

Loss+��>

Adam/Loss/rawx��>

Accuracy/__raw_  T?

Accuracy`H?����Z       o��	t)�cl9�A�*L

Loss��>

Adam/Loss/raw��?

Accuracy/__raw_  8?

Accuracy�CI?��P�Z       o��	6ZNdl9�A�*L

Loss)�>

Adam/Loss/raws��>

Accuracy/__raw_  D?

AccuracyĉG?_��Z       o��	�~�dl9�A�*L

Loss0��>

Adam/Loss/raw0�>

Accuracy/__raw_  H?

Accuracy0/G?:f��Z       o��	��Hel9�A�*L

Loss0z�>

Adam/Loss/raww5�>

Accuracy/__raw_  4?

AccuracyDG?�0�Z       o��	���el9�A�*L

Loss���>

Adam/Loss/rawLK�>

Accuracy/__raw_  <?

Accuracy�VE?π�jZ       o��	�Cfl9�A�*L

Losse�>

Adam/Loss/raw;�>

Accuracy/__raw_  <?

Accuracy�gD?�ĩ�Z       o��	�>�fl9�A�*L

Loss�`�>

Adam/Loss/rawaf�>

Accuracy/__raw_  X?

Accuracy��C?l�z'Z       o��	��Agl9�A�*L

Loss�G�>

Adam/Loss/raw|��>

Accuracy/__raw_  P?

Accuracy��E?���Z       o��	?��gl9�A�*L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_  8?

AccuracyĥF?b;��Z       o��	&jhl9�A�*L

Loss�H�>

Adam/Loss/rawU��>

Accuracy/__raw_  4?

Accuracy�.E?XF��Z       o��	->il9�A�*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  4?

Accuracy�vC?�\�cZ       o��	{1�il9�A�*L

Loss���>

Adam/Loss/rawr�>

Accuracy/__raw_  H?

Accuracy�A?|��Z       o��	H;jl9�A�*L

Loss���>

Adam/Loss/raw��??

Accuracy/__raw_  L?

Accuracy��B?̱�Z       o��	3� kl9�A�*L

Loss���>

Adam/Loss/rawA��>

Accuracy/__raw_  D?

Accuracy?yC?p!kZ       o��	M,�kl9�A�*L

Loss�0�>

Adam/Loss/raw<��>

Accuracy/__raw_  H?

Accuracy��C?� ��Z       o��	�ll9�A�*L

Loss�9�>

Adam/Loss/raw,*�>

Accuracy/__raw_  D?

Accuracy@�C?�x�Z       o��	��ll9�A�*L

Loss���>

Adam/Loss/raw�G�>

Accuracy/__raw_  P?

Accuracy��C?!�V�Z       o��	�qml9�A�*L

Loss�]�>

Adam/Loss/raw�>

Accuracy/__raw_  D?

Accuracy�-E?� k|Z       o��	���ml9�A�*L

Losso�>

Adam/Loss/rawK��>

Accuracy/__raw_  d?

Accuracy�E?Z
=�Z       o��	��'nl9�A�*L

Loss#]�>

Adam/Loss/rawx�>

Accuracy/__raw_  4?

Accuracy�'H?��bZ       o��	F[�nl9�A�*L

LossEn�>

Adam/Loss/raw6� ?

Accuracy/__raw_  4?

Accuracy�#F?��xZ       o��	��/ol9�A�*L

Loss
�>

Adam/Loss/raw�?

Accuracy/__raw_  D?

AccuracyHSD?<|	vZ       o��	߈�ol9�A�*L

Loss��>

Adam/Loss/raw>�>

Accuracy/__raw_  \?

Accuracy�JD?��Z       o��	�Gpl9�A�*L

Loss ��>

Adam/Loss/raw���>

Accuracy/__raw_  @?

AccuracyܩF?�+H�Z       o��	�o�pl9�A�*L

Loss�W�>

Adam/Loss/raw�?�>

Accuracy/__raw_  H?

AccuracyF�E?Մ��Z       o��	�T_ql9�A�*L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_  D?

Accuracy�2F?�p��Z       o��	�_�ql9�A�*L

LossKm�>

Adam/Loss/raw��>

Accuracy/__raw_  <?

AccuracyK�E?���^Z       o��	JBurl9�A�*L

Loss�$�>

Adam/Loss/raw,0�>

Accuracy/__raw_  T?

Accuracy��D?�:��Z       o��	�x�rl9�A�*L

Loss�r�>

Adam/Loss/raw�>

Accuracy/__raw_  \?

Accuracya{F? &KXZ       o��	,(sl9�A�*L

Loss�P�>

Adam/Loss/raw8a�>

Accuracy/__raw_  8?

Accuracy>�H?S��EZ       o��	��tl9�A�*L

Loss�k�>

Adam/Loss/rawֿ�>

Accuracy/__raw_  P?

Accuracyk�F?-:}Z       o��	��tl9�A�*L

Lossn��>

Adam/Loss/raw�$�>

Accuracy/__raw_  D?

Accuracy��G?g�eZ       o��	�dul9�A�*L

LossĀ�>

Adam/Loss/raw�F�>

Accuracy/__raw_  H?

Accuracyl|G?Z���Z       o��	ȱ�ul9�A�*L

Loss�G�>

Adam/Loss/raw��>

Accuracy/__raw_  @?

Accuracy��G?,�oZ       o��	z0vl9�A�*L

Loss���>

Adam/Loss/raw
��>

Accuracy/__raw_  L?

Accuracy��F?
[��Z       o��	ܡ�vl9�A�*L

Lossn��>

Adam/Loss/rawo��>

Accuracy/__raw_  <?

Accuracy)NG?P��Z       o��	5bFwl9�A�*L

LossU�>

Adam/Loss/raw�K�>

Accuracy/__raw_  \?

Accuracy�,F?G,N�Z       o��	y�wl9�A�*L

Loss�<�>

Adam/Loss/raw]��>

Accuracy/__raw_  P?

Accuracyx[H?���Z       o��	��Uxl9�A�*L

Lossp6�>

Adam/Loss/rawa2�>

Accuracy/__raw_  P?

AccuracyI?ѳ��Z       o��	���xl9�A�*L

Lossn��>

Adam/Loss/raw"��>

Accuracy/__raw_  @?

Accuracy6�I?��a�Z       o��	R}uyl9�A�*L

Loss�p�>

Adam/Loss/raw Ǖ>

Accuracy/__raw_  T?

Accuracy�H?�FZ       o��	4�zl9�A�*L

Loss]��>

Adam/Loss/raw�c?

Accuracy/__raw_  (?

Accuracy�I?[��Z       o��	5��zl9�A�*L

Losss��>

Adam/Loss/raw�d�>

Accuracy/__raw_  P?

Accuracy�F?*Z       o��		���l9�A�*L

Loss�C�>

Adam/Loss/rawN��>

Accuracy/__raw_  P?

Accuracy�~G?\),�B       y�n�	\��l9�A�*4

Loss/ValidationԢ#?

Accuracy/ValidationC�>��Z       o��	��Ȁl9�A�*L

Loss?�>

Adam/Loss/raw�x�>

Accuracy/__raw_n�6?

Accuracy�XH?N��Z       o��	>��l9�A�*L

Loss���>

Adam/Loss/raw1��>

Accuracy/__raw_n�6?

Accuracy�F?���Z       o��	��l9�A�*L

Loss\t�>

Adam/Loss/raw���>

Accuracy/__raw_  <?

Accuracy�E?Tޠ#Z       o��	�*�l9�A�*L

Loss���>

Adam/Loss/raw�0�>

Accuracy/__raw_  \?

Accuracy�D?�n�Z       o��	��Âl9�A�*L

LossJp�>

Adam/Loss/rawp��>

Accuracy/__raw_  P?

AccuracyL�F?z�x�Z       o��	�XR�l9�A�*L

Loss���>

Adam/Loss/raw�r?

Accuracy/__raw_  8?

AccuracyDuG?\B��Z       o��	��փl9�A�*L

Loss�B�>

Adam/Loss/rawޘ�>

Accuracy/__raw_  4?

Accuracy��E?6��Z       o��	LS`�l9�A�*L

Loss���>

Adam/Loss/raw]�>

Accuracy/__raw_  <?

Accuracy�D?���$Z       o��	�&�l9�A�*L

Loss$��>

Adam/Loss/raw!�>

Accuracy/__raw_  d?

AccuracyOC?;�.rZ       o��	����l9�A�*L

Loss:z�>

Adam/Loss/raw��>

Accuracy/__raw_  8?

Accuracy��F?1H�Z       o��	��l9�A�*L

Losse��>

Adam/Loss/rawԇ�>

Accuracy/__raw_  X?

Accuracy�E?�g	�Z       o��	�J��l9�A�*L

Loss���>

Adam/Loss/raw�ۿ>

Accuracy/__raw_  P?

AccuracyG?MV�Z       o��	�-.�l9�A�*L

Lossњ�>

Adam/Loss/rawJ��>

Accuracy/__raw_  D?

AccuracyK�G?����Z       o��	�4��l9�A�*L

Loss�	�>

Adam/Loss/raw`��>

Accuracy/__raw_  l?

AccuracyC�G?����Z       o��	��9�l9�A�*L

Loss��>

Adam/Loss/rawzf�>

Accuracy/__raw_  d?

Accuracy<*K?�k�%Z       o��	�з�l9�A�*L

Loss#��>

Adam/Loss/raw���>

Accuracy/__raw_  D?

Accuracy�M?�/��Z       o��	=Q�l9�A�*L

Loss��>

Adam/Loss/raw�g�>

Accuracy/__raw_  X?

Accuracy�L?8&�GZ       o��	��Ήl9�A�*L

LossH��>

Adam/Loss/raw��>

Accuracy/__raw_  D?

Accuracy��M?�N.Z       o��	�&S�l9�A�*L

Loss�U�>

Adam/Loss/rawc��>

Accuracy/__raw_  \?

Accuracyq�L?���pZ       o��	��Њl9�A�*L

LossUD�>

Adam/Loss/raw���>

Accuracy/__raw_  h?

Accuracy�YN?��tZ       o��	��N�l9�A�*L

LossL�>

Adam/Loss/raw��>

Accuracy/__raw_  h?

AccuracyT�P?��Z       o��	=�͋l9�A�*L

LossT��>

Adam/Loss/rawH%�>

Accuracy/__raw_  \?

AccuracyL9S?���Z       o��	�zT�l9�A�*L

Lossָ>

Adam/Loss/raw2�>

Accuracy/__raw_  X?

Accuracy�T?˺|�Z       o��	-{׌l9�A�*L

Loss�\�>

Adam/Loss/raw��?

Accuracy/__raw_  $?

Accuracy�}T?mx��Z       o��	,�Y�l9�A�*L

Loss���>

Adam/Loss/raw$ݳ>

Accuracy/__raw_  `?

Accuracye�O?t��Z       o��	���l9�A�*L

Loss�e�>

Adam/Loss/raw
�>

Accuracy/__raw_  h?

Accuracy(GQ?��	|Z       o��	��g�l9�A�*L

Loss!ֺ>

Adam/Loss/raw���>

Accuracy/__raw_  D?

Accuracy׌S?S�Z       o��	l?�l9�A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy��Q?9�Z       o��	��k�l9�A�*L

Loss�u�>

Adam/Loss/raw�i�>

Accuracy/__raw_  h?

AccuracyGeS?8A��Z       o��	�K�l9�A�*L

Loss�ڸ>

Adam/Loss/rawE��>

Accuracy/__raw_  H?

Accuracy�tU?]���Z       o��	.��l9�A�*L

Loss>o�>

Adam/Loss/rawv�?

Accuracy/__raw_  8?

AccuracyFT?����Z       o��	T�+�l9�A�*L

Loss6��>

Adam/Loss/raw@ܽ>

Accuracy/__raw_  X?

Accuracy�LQ?�uZ�Z       o��	����l9�A�*L

Lossj��>

Adam/Loss/raw{?

Accuracy/__raw_  H?

Accuracy.�Q?����Z       o��	ug�l9�A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  P?

Accuracy��P?���Z       o��	X��l9�A�*L

Loss�1�>

Adam/Loss/raw* �>

Accuracy/__raw_  \?

Accuracy�P?>�;2Z       o��	�⢓l9�A�*L

Loss[��>

Adam/Loss/raw"��>

Accuracy/__raw_  \?

Accuracy��Q?[�8DZ       o��	��:�l9�A�*L

Loss�~�>

Adam/Loss/raw�ơ>

Accuracy/__raw_  X?

Accuracy,�R?Sf��Z       o��	^cÔl9�A�*L

Loss���>

Adam/Loss/rawӿ>

Accuracy/__raw_  P?

Accuracyt}S?i�@Z       o��	VO�l9�A�*L

LossĶ�>

Adam/Loss/raw��>

Accuracy/__raw_  P?

Accuracy$S?l-��Z       o��	�CΕl9�A�*L

Loss�@�>

Adam/Loss/raw�~�>

Accuracy/__raw_  X?

Accuracy��R?6'�Z       o��	qTn�l9�A�*L

Loss=-�>

Adam/Loss/raw�*�>

Accuracy/__raw_  P?

Accuracy!XS?�Ws�Z       o��	�_�l9�A�*L

Lossh��>

Adam/Loss/rawǚ>

Accuracy/__raw_  h?

Accuracy�S?�;H�Z       o��	F���l9�A�*L

Lossa�>

Adam/Loss/raw���>

Accuracy/__raw_  P?

Accuracy�U?����Z       o��	0J�l9�A�*L

Loss�y�>

Adam/Loss/raw�>

Accuracy/__raw_  `?

Accuracy�T?�H��Z       o��	���l9�A�*L

Loss��>

Adam/Loss/rawһ�>

Accuracy/__raw_  `?

Accuracy��U?���AZ       o��	b�#�l9�A�*L

Loss˔�>

Adam/Loss/raw�f�>

Accuracy/__raw_  X?

Accuracy��V?�A�Z       o��	%��l9�A�*L

LosscC�>

Adam/Loss/raw�&�>

Accuracy/__raw_  T?

AccuracyN�V?�tB�Z       o��	O�k�l9�A�*L

Loss�s�>

Adam/Loss/rawD��>

Accuracy/__raw_  P?

Accuracy`�V?�"ׇZ       o��	�!��l9�A�*L

Lossb��>

Adam/Loss/raw���>

Accuracy/__raw_  T?

Accuracyp�U?C<��Z       o��	�u�l9�A�*L

Loss���>

Adam/Loss/raw�_]>

Accuracy/__raw_  p?

Accuracy˾U?X#�Z       o��	���l9�A�*L

Loss���>

Adam/Loss/raw�`�>

Accuracy/__raw_  X?

Accuracy�^X?�uZ       o��	�z�l9�A�*L

Loss�N�>

Adam/Loss/raw2 �>

Accuracy/__raw_  X?

AccuracylUX?^�oZ       o��	�A �l9�A�*L

Loss4J�>

Adam/Loss/raw��{>

Accuracy/__raw_  p?

Accuracy�LX?|-�Z       o��	P���l9�A�*L

Loss5��>

Adam/Loss/raw�c�>

Accuracy/__raw_  X?

Accuracy��Z?@��1Z       o��	�Y�l9�A�*L

Loss|$�>

Adam/Loss/raw�R>

Accuracy/__raw_  x?

Accuracy;gZ?�+IZ       o��	M���l9�A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  \?

Accuracy�\]?��rPZ       o��	rm�l9�A�*L

LossE�>

Adam/Loss/raw(��>

Accuracy/__raw_  T?

Accuracy:]?�'��Z       o��	���l9�A�*L

Lossҡ>

Adam/Loss/raw��>

Accuracy/__raw_  \?

Accuracy�M\?�.�CZ       o��	�6B�l9�A�*L

Loss�r�>

Adam/Loss/rawp��>

Accuracy/__raw_  \?

AccuracyF\?�"�vZ       o��	�ݠl9�A�*L

Loss�*�>

Adam/Loss/raw��>

Accuracy/__raw_  d?

Accuracy?\?Pr��Z       o��	=�w�l9�A�*L

Lossܧ�>

Adam/Loss/raw��>

Accuracy/__raw_  T?

Accuracy�]?�Z       o��	���l9�A�*L

Loss�ٟ>

Adam/Loss/rawq�?

Accuracy/__raw_  ,?

Accuracy�\?�?�9Z       o��	Q��l9�A�*L

Loss��>

Adam/Loss/raw�x�>

Accuracy/__raw_  H?

Accuracy�NW?���Z       o��	�l�l9�A�*L

Loss���>

Adam/Loss/raw�)�>

Accuracy/__raw_  P?

Accuracy��U?2l��Z       o��	�-��l9�A�*L

Loss���>

Adam/Loss/rawΧ�>

Accuracy/__raw_  `?

Accuracy�2U?��	�Z       o��	�
�l9�A�*L

Loss�s�>

Adam/Loss/raw��}>

Accuracy/__raw_  h?

AccuracywGV?�h^�Z       o��	����l9�A�*L

Loss���>

Adam/Loss/raw�j%?

Accuracy/__raw_  D?

AccuracyX?�a�Z       o��	��#�l9�A�*L

Loss���>

Adam/Loss/raw��>

Accuracy/__raw_  T?

Accuracy�V?��w�Z       o��	�Z��l9�A�*L

Loss���>

Adam/Loss/raw�{�>

Accuracy/__raw_  T?

Accuracym�U?	/�Z       o��	ADD�l9�A�*L

Loss�@�>

Adam/Loss/raw�W�>

Accuracy/__raw_  \?

AccuracyH�U?=4��Z       o��	!x˦l9�A�*L

Loss���>

Adam/Loss/rawЅ�>

Accuracy/__raw_  \?

Accuracy�JV?<ԗ:Z       o��	I�[�l9�A�*L

Loss��>

Adam/Loss/raw]�>

Accuracy/__raw_  D?

Accuracy��V?���Z       o��	? ڧl9�A�*L

Loss���>

Adam/Loss/raw���>

Accuracy/__raw_  L?

Accuracy��T?M%�9Z       o��	�`\�l9�A�*L

Loss�`�>

Adam/Loss/raw��>

Accuracy/__raw_  X?

AccuracyT?+Q@Z       o��	�D�l9�A�*L

Loss�Գ>

Adam/Loss/raw�6t>

Accuracy/__raw_  l?

Accuracy�xT?�?aZ       o��	��g�l9�A�*L

Loss,�>

Adam/Loss/raw{)�>

Accuracy/__raw_  d?

Accuracy��V?�T�rZ       o��	�j�l9�A�*L

LossŪ>

Adam/Loss/raw���>

Accuracy/__raw_  D?

Accuracy,$X?���Z       o��	��l�l9�A�*L

Loss_`�>

Adam/Loss/rawNT�>

Accuracy/__raw_  D?

Accuracy� V?Bx�8Z       o��	���l9�A�*L

Loss*߶>

Adam/Loss/raw��>

Accuracy/__raw_  `?

Accuracy�PT?Hto�Z       o��	�n�l9�A�*L

Loss�ƴ>

Adam/Loss/raw� �>

Accuracy/__raw_  H?

Accuracy�{U?��}�Z       o��	T�l9�A�*L

Losst̴>

Adam/Loss/raw�^>

Accuracy/__raw_  l?

Accuracy|"T?.�GZ       o��	�Oi�l9�A�*L

Loss(٭>

Adam/Loss/rawHȅ>

Accuracy/__raw_  l?

Accuracyp�V?����Z       o��	��l9�A�*L

Lossxש>

Adam/Loss/raw=t�>

Accuracy/__raw_  X?

AccuracyK�X?,� Z       o��	b�l9�A�*L

Loss���>

Adam/Loss/rawp�>

Accuracy/__raw_  X?

Accuracy*�X?7�@mZ       o��	��l9�A�*L

Loss�K�>

Adam/Loss/raw��r>

Accuracy/__raw_  p?

Accuracy��X?
Z       o��	-�^�l9�A�*L

Loss��>

Adam/Loss/raw��>

Accuracy/__raw_  h?

AccuracyF�Z?��zfZ       o��	��ڮl9�A�*L

Loss�(�>

Adam/Loss/rawr�{?

Accuracy/__raw_  H?

Accuracy�2\?Hǣ{Z       o��	e�Y�l9�A�*L

Loss���>

Adam/Loss/raw��O?

Accuracy/__raw_  (?

Accuracy�-Z?<�1�Z       o��	 9ׯl9�A�*L

LossP��>

Adam/Loss/rawl��>

Accuracy/__raw_  H?

AccuracyD)U?GvrZ       o��	d[S�l9�A�*L

Loss���>

Adam/Loss/raw�θ>

Accuracy/__raw_  X?

AccuracyW�S?�B��Z       o��	�Ӱl9�A�*L

Loss��>

Adam/Loss/raw�=�>

Accuracy/__raw_  T?

Accuracy�BT?$���Z       o��	¥Q�l9�A�*L

Loss ��>

Adam/Loss/raw�>

Accuracy/__raw_  T?

Accuracy	<T?�FVZ       o��	��αl9�A�*L

Loss��>

Adam/Loss/raw���>

Accuracy/__raw_  D?

Accuracy6T?��oZ       o��	��Q�l9�A�*L

Loss���>

Adam/Loss/rawll�>

Accuracy/__raw_  T?

Accuracy�R?���Z       o��	�>Ӳl9�A�*L

Loss=��>

Adam/Loss/raw�ן>

Accuracy/__raw_  \?

Accuracy �R?Y�Z       o��	%vP�l9�A�*L

LosseL�>

Adam/Loss/raw�k>

Accuracy/__raw_  p?

Accuracyj�S?�Ψ6Z       o��	Z�ʳl9�A�*L

Loss�@�>

Adam/Loss/raw4��>

Accuracy/__raw_  d?

Accuracy�}V?.��Z       o��	� N�l9�A�*L

Loss���>

Adam/Loss/rawpG�>

Accuracy/__raw_  l?

Accuracy��W?(�uQZ       o��	���l9�A�*L

LossM�>

Adam/Loss/raw�+�>

Accuracy/__raw_  T?

Accuracy��Y?5�Z       o��	U��l9�A�*L

LossCc�>

Adam/Loss/raw���>

Accuracy/__raw_  H?

Accuracy�EY?-DQZ       o��	���l9�A�*L

LossN�>

Adam/Loss/raw�Bj>

Accuracy/__raw_  l?

Accuracy��W?~�Z       o��	W��l9�A�*L

Loss4!�>

Adam/Loss/rawPK�>

Accuracy/__raw_  T?

AccuracyF�Y?(��Z       o��	�Q"�l9�A�*L

Loss�X�>

Adam/Loss/rawI�>

Accuracy/__raw_  T?

Accuracy%Y?�FZ       o��	�>��l9�A�*L

Lossw=�>

Adam/Loss/raw`n�>

Accuracy/__raw_  T?

AccuracyT�X?X}�Z       o��	�/�l9�A�*L

Loss[B�>

Adam/Loss/raw"��>

Accuracy/__raw_  P?

AccuracyeX?y_Z       o��	���l9�A�*L

Losso̮>

Adam/Loss/raw�^>

Accuracy/__raw_  h?

Accuracy�DW?�Wc
Z       o��	O�P�l9�A�*L

Loss<r�>

Adam/Loss/raw ��>

Accuracy/__raw_  d?

Accuracy��X?�vu!Z       o��	��ѹl9�A�*L

LossШ�>

Adam/Loss/raw&��>

Accuracy/__raw_  \?

AccuracyZ?���RZ       o��	�x\�l9�A�*L

Loss���>

Adam/Loss/raw�0�>

Accuracy/__raw_  P?

Accuracy>Z?VQaZ       o��	�ۺl9�A�*L

Loss;}�>

Adam/Loss/rawY�[>

Accuracy/__raw_  l?

Accuracy�7Y?��Z       o��	�go�l9�A�*L

Loss�Ԡ>

Adam/Loss/raw�J[>

Accuracy/__raw_  p?

Accuracy�[?iO�Z       o��	���l9�A�*L

Loss���>

Adam/Loss/raw�:S>

Accuracy/__raw_  h?

Accuracy�/]?tX=�Z       o��	S��l9�A�*L

Loss��>

Adam/Loss/raw��b>

Accuracy/__raw_  h?

Accuracy�D^?=��Z       o��	�d�l9�A�*L

LossI��>

Adam/Loss/rawly�>

Accuracy/__raw_  `?

Accuracy�=_?�?�Z       o��	���l9�A�*L

Loss̞�>

Adam/Loss/raw(�b>

Accuracy/__raw_  h?

Accuracy3Q_?2���Z       o��	�H9�l9�A�*L

Loss�g�>

Adam/Loss/rawo΅>

Accuracy/__raw_  d?

Accuracy{/`?��dOZ       o��	k���l9�A�*L

Lossv��>

Adam/Loss/raw0r*>

Accuracy/__raw_  p?

Accuracy"�`?�VVB       y�n�	{���l9�A�*4

Loss/Validation���>

Accuracy/Validation�V?�J�p