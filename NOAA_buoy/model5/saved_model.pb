��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*
2.13.0-rc02v2.13.0-rc0-0-g525da8a93ec8��
�
Adam/dense_411/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_411/bias/v
{
)Adam/dense_411/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_411/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_411/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_411/kernel/v
�
+Adam/dense_411/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_411/kernel/v*
_output_shapes

:*
dtype0
�
Adam/dense_410/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_410/bias/v
{
)Adam/dense_410/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_410/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_410/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_nameAdam/dense_410/kernel/v
�
+Adam/dense_410/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_410/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/conv1d_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv1d_56/bias/v
{
)Adam/conv1d_56/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_56/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv1d_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv1d_56/kernel/v
�
+Adam/conv1d_56/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_56/kernel/v*"
_output_shapes
:@*
dtype0
�
Adam/dense_411/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_411/bias/m
{
)Adam/dense_411/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_411/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_411/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_411/kernel/m
�
+Adam/dense_411/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_411/kernel/m*
_output_shapes

:*
dtype0
�
Adam/dense_410/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_410/bias/m
{
)Adam/dense_410/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_410/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_410/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_nameAdam/dense_410/kernel/m
�
+Adam/dense_410/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_410/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/conv1d_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv1d_56/bias/m
{
)Adam/conv1d_56/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_56/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv1d_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv1d_56/kernel/m
�
+Adam/conv1d_56/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_56/kernel/m*"
_output_shapes
:@*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
t
dense_411/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_411/bias
m
"dense_411/bias/Read/ReadVariableOpReadVariableOpdense_411/bias*
_output_shapes
:*
dtype0
|
dense_411/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_411/kernel
u
$dense_411/kernel/Read/ReadVariableOpReadVariableOpdense_411/kernel*
_output_shapes

:*
dtype0
t
dense_410/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_410/bias
m
"dense_410/bias/Read/ReadVariableOpReadVariableOpdense_410/bias*
_output_shapes
:*
dtype0
}
dense_410/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*!
shared_namedense_410/kernel
v
$dense_410/kernel/Read/ReadVariableOpReadVariableOpdense_410/kernel*
_output_shapes
:	�*
dtype0
t
conv1d_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d_56/bias
m
"conv1d_56/bias/Read/ReadVariableOpReadVariableOpconv1d_56/bias*
_output_shapes
:@*
dtype0
�
conv1d_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv1d_56/kernel
y
$conv1d_56/kernel/Read/ReadVariableOpReadVariableOpconv1d_56/kernel*"
_output_shapes
:@*
dtype0
�
serving_default_input_207Placeholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_207conv1d_56/kernelconv1d_56/biasdense_410/kerneldense_410/biasdense_411/kerneldense_411/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_16123894

NoOpNoOp
�6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�5
value�5B�5 B�5
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#
activation

$kernel
%bias*
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias*
.
0
1
$2
%3
,4
-5*
.
0
1
$2
%3
,4
-5*
* 
�
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*

3trace_0
4trace_1* 

5trace_0
6trace_1* 
* 
�
7iter

8beta_1

9beta_2
	:decay
;learning_ratemnmo$mp%mq,mr-msvtvu$vv%vw,vx-vy*

<serving_default* 

0
1*

0
1*
* 
�
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Btrace_0* 

Ctrace_0* 
`Z
VARIABLE_VALUEconv1d_56/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_56/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Itrace_0* 

Jtrace_0* 

$0
%1*

$0
%1*
* 
�
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

Ptrace_0* 

Qtrace_0* 
�
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses* 
`Z
VARIABLE_VALUEdense_410/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_410/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

,0
-1*

,0
-1*
* 
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*

]trace_0* 

^trace_0* 
`Z
VARIABLE_VALUEdense_411/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_411/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

_0
`1*
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
#0* 
* 
* 
* 
* 
* 
* 
* 
* 
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
f	variables
g	keras_api
	htotal
	icount*
8
j	variables
k	keras_api
	ltotal
	mcount*
* 
* 
* 
* 
* 

h0
i1*

f	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

l0
m1*

j	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv1d_56/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv1d_56/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_410/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_410/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_411/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_411/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv1d_56/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv1d_56/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_410/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_410/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_411/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_411/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv1d_56/kernelconv1d_56/biasdense_410/kerneldense_410/biasdense_411/kerneldense_411/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv1d_56/kernel/mAdam/conv1d_56/bias/mAdam/dense_410/kernel/mAdam/dense_410/bias/mAdam/dense_411/kernel/mAdam/dense_411/bias/mAdam/conv1d_56/kernel/vAdam/conv1d_56/bias/vAdam/dense_410/kernel/vAdam/dense_410/bias/vAdam/dense_411/kernel/vAdam/dense_411/bias/vConst*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_save_16124153
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_56/kernelconv1d_56/biasdense_410/kerneldense_410/biasdense_411/kerneldense_411/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv1d_56/kernel/mAdam/conv1d_56/bias/mAdam/dense_410/kernel/mAdam/dense_410/bias/mAdam/dense_411/kernel/mAdam/dense_411/bias/mAdam/conv1d_56/kernel/vAdam/conv1d_56/bias/vAdam/dense_410/kernel/vAdam/dense_410/bias/vAdam/dense_411/kernel/vAdam/dense_411/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference__traced_restore_16124243��
�
�
,__inference_dense_410_layer_call_fn_16123939

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_410_layer_call_and_return_conditional_losses_16123762o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
16123935:($
"
_user_specified_name
16123933:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
H__inference_flatten_99_layer_call_and_return_conditional_losses_16123930

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
,__inference_conv1d_56_layer_call_fn_16123903

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_56_layer_call_and_return_conditional_losses_16123739s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
16123899:($
"
_user_specified_name
16123897:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
&__inference_signature_wrapper_16123894
	input_207
unknown:@
	unknown_0:@
	unknown_1:	�
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_207unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__wrapped_model_16123721o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
16123890:($
"
_user_specified_name
16123888:($
"
_user_specified_name
16123886:($
"
_user_specified_name
16123884:($
"
_user_specified_name
16123882:($
"
_user_specified_name
16123880:V R
+
_output_shapes
:���������
#
_user_specified_name	input_207
��
�
$__inference__traced_restore_16124243
file_prefix7
!assignvariableop_conv1d_56_kernel:@/
!assignvariableop_1_conv1d_56_bias:@6
#assignvariableop_2_dense_410_kernel:	�/
!assignvariableop_3_dense_410_bias:5
#assignvariableop_4_dense_411_kernel:/
!assignvariableop_5_dense_411_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: #
assignvariableop_13_total: #
assignvariableop_14_count: A
+assignvariableop_15_adam_conv1d_56_kernel_m:@7
)assignvariableop_16_adam_conv1d_56_bias_m:@>
+assignvariableop_17_adam_dense_410_kernel_m:	�7
)assignvariableop_18_adam_dense_410_bias_m:=
+assignvariableop_19_adam_dense_411_kernel_m:7
)assignvariableop_20_adam_dense_411_bias_m:A
+assignvariableop_21_adam_conv1d_56_kernel_v:@7
)assignvariableop_22_adam_conv1d_56_bias_v:@>
+assignvariableop_23_adam_dense_410_kernel_v:	�7
)assignvariableop_24_adam_dense_410_bias_v:=
+assignvariableop_25_adam_dense_411_kernel_v:7
)assignvariableop_26_adam_dense_411_bias_v:
identity_28��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv1d_56_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv1d_56_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_410_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_410_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_411_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_411_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp+assignvariableop_15_adam_conv1d_56_kernel_mIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_conv1d_56_bias_mIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_dense_410_kernel_mIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_410_bias_mIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_dense_411_kernel_mIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_411_bias_mIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_conv1d_56_kernel_vIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_conv1d_56_bias_vIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_410_kernel_vIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_410_bias_vIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_dense_411_kernel_vIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_411_bias_vIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_28Identity_28:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:51
/
_user_specified_nameAdam/dense_411/bias/v:73
1
_user_specified_nameAdam/dense_411/kernel/v:51
/
_user_specified_nameAdam/dense_410/bias/v:73
1
_user_specified_nameAdam/dense_410/kernel/v:51
/
_user_specified_nameAdam/conv1d_56/bias/v:73
1
_user_specified_nameAdam/conv1d_56/kernel/v:51
/
_user_specified_nameAdam/dense_411/bias/m:73
1
_user_specified_nameAdam/dense_411/kernel/m:51
/
_user_specified_nameAdam/dense_410/bias/m:73
1
_user_specified_nameAdam/dense_410/kernel/m:51
/
_user_specified_nameAdam/conv1d_56/bias/m:73
1
_user_specified_nameAdam/conv1d_56/kernel/m:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:2.
,
_user_specified_nameAdam/learning_rate:*
&
$
_user_specified_name
Adam/decay:+	'
%
_user_specified_nameAdam/beta_2:+'
%
_user_specified_nameAdam/beta_1:)%
#
_user_specified_name	Adam/iter:.*
(
_user_specified_namedense_411/bias:0,
*
_user_specified_namedense_411/kernel:.*
(
_user_specified_namedense_410/bias:0,
*
_user_specified_namedense_410/kernel:.*
(
_user_specified_nameconv1d_56/bias:0,
*
_user_specified_nameconv1d_56/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

�
G__inference_dense_410_layer_call_and_return_conditional_losses_16123762

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Z
re_lu_205/ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������k
IdentityIdentityre_lu_205/Relu:activations:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
L__inference_sequential_206_layer_call_and_return_conditional_losses_16123784
	input_207(
conv1d_56_16123740:@ 
conv1d_56_16123742:@%
dense_410_16123763:	� 
dense_410_16123765:$
dense_411_16123778: 
dense_411_16123780:
identity��!conv1d_56/StatefulPartitionedCall�!dense_410/StatefulPartitionedCall�!dense_411/StatefulPartitionedCall�
!conv1d_56/StatefulPartitionedCallStatefulPartitionedCall	input_207conv1d_56_16123740conv1d_56_16123742*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_56_layer_call_and_return_conditional_losses_16123739�
flatten_99/PartitionedCallPartitionedCall*conv1d_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_flatten_99_layer_call_and_return_conditional_losses_16123750�
!dense_410/StatefulPartitionedCallStatefulPartitionedCall#flatten_99/PartitionedCall:output:0dense_410_16123763dense_410_16123765*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_410_layer_call_and_return_conditional_losses_16123762�
!dense_411/StatefulPartitionedCallStatefulPartitionedCall*dense_410/StatefulPartitionedCall:output:0dense_411_16123778dense_411_16123780*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_411_layer_call_and_return_conditional_losses_16123777y
IdentityIdentity*dense_411/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv1d_56/StatefulPartitionedCall"^dense_410/StatefulPartitionedCall"^dense_411/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2F
!conv1d_56/StatefulPartitionedCall!conv1d_56/StatefulPartitionedCall2F
!dense_410/StatefulPartitionedCall!dense_410/StatefulPartitionedCall2F
!dense_411/StatefulPartitionedCall!dense_411/StatefulPartitionedCall:($
"
_user_specified_name
16123780:($
"
_user_specified_name
16123778:($
"
_user_specified_name
16123765:($
"
_user_specified_name
16123763:($
"
_user_specified_name
16123742:($
"
_user_specified_name
16123740:V R
+
_output_shapes
:���������
#
_user_specified_name	input_207
�	
�
G__inference_dense_411_layer_call_and_return_conditional_losses_16123969

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
G__inference_dense_410_layer_call_and_return_conditional_losses_16123950

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Z
re_lu_205/ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������k
IdentityIdentityre_lu_205/Relu:activations:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__inference_conv1d_56_layer_call_and_return_conditional_losses_16123919

inputsA
+conv1d_expanddims_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������@*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������@`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
H__inference_flatten_99_layer_call_and_return_conditional_losses_16123750

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
L__inference_sequential_206_layer_call_and_return_conditional_losses_16123804
	input_207(
conv1d_56_16123787:@ 
conv1d_56_16123789:@%
dense_410_16123793:	� 
dense_410_16123795:$
dense_411_16123798: 
dense_411_16123800:
identity��!conv1d_56/StatefulPartitionedCall�!dense_410/StatefulPartitionedCall�!dense_411/StatefulPartitionedCall�
!conv1d_56/StatefulPartitionedCallStatefulPartitionedCall	input_207conv1d_56_16123787conv1d_56_16123789*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_56_layer_call_and_return_conditional_losses_16123739�
flatten_99/PartitionedCallPartitionedCall*conv1d_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_flatten_99_layer_call_and_return_conditional_losses_16123750�
!dense_410/StatefulPartitionedCallStatefulPartitionedCall#flatten_99/PartitionedCall:output:0dense_410_16123793dense_410_16123795*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_410_layer_call_and_return_conditional_losses_16123762�
!dense_411/StatefulPartitionedCallStatefulPartitionedCall*dense_410/StatefulPartitionedCall:output:0dense_411_16123798dense_411_16123800*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_411_layer_call_and_return_conditional_losses_16123777y
IdentityIdentity*dense_411/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv1d_56/StatefulPartitionedCall"^dense_410/StatefulPartitionedCall"^dense_411/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2F
!conv1d_56/StatefulPartitionedCall!conv1d_56/StatefulPartitionedCall2F
!dense_410/StatefulPartitionedCall!dense_410/StatefulPartitionedCall2F
!dense_411/StatefulPartitionedCall!dense_411/StatefulPartitionedCall:($
"
_user_specified_name
16123800:($
"
_user_specified_name
16123798:($
"
_user_specified_name
16123795:($
"
_user_specified_name
16123793:($
"
_user_specified_name
16123789:($
"
_user_specified_name
16123787:V R
+
_output_shapes
:���������
#
_user_specified_name	input_207
�

�
1__inference_sequential_206_layer_call_fn_16123838
	input_207
unknown:@
	unknown_0:@
	unknown_1:	�
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_207unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_206_layer_call_and_return_conditional_losses_16123804o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
16123834:($
"
_user_specified_name
16123832:($
"
_user_specified_name
16123830:($
"
_user_specified_name
16123828:($
"
_user_specified_name
16123826:($
"
_user_specified_name
16123824:V R
+
_output_shapes
:���������
#
_user_specified_name	input_207
�
�
G__inference_conv1d_56_layer_call_and_return_conditional_losses_16123739

inputsA
+conv1d_expanddims_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������@*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������@`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
1__inference_sequential_206_layer_call_fn_16123821
	input_207
unknown:@
	unknown_0:@
	unknown_1:	�
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_207unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_206_layer_call_and_return_conditional_losses_16123784o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
16123817:($
"
_user_specified_name
16123815:($
"
_user_specified_name
16123813:($
"
_user_specified_name
16123811:($
"
_user_specified_name
16123809:($
"
_user_specified_name
16123807:V R
+
_output_shapes
:���������
#
_user_specified_name	input_207
�	
�
G__inference_dense_411_layer_call_and_return_conditional_losses_16123777

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
I
-__inference_flatten_99_layer_call_fn_16123924

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_flatten_99_layer_call_and_return_conditional_losses_16123750a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
,__inference_dense_411_layer_call_fn_16123959

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_411_layer_call_and_return_conditional_losses_16123777o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
16123955:($
"
_user_specified_name
16123953:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
!__inference__traced_save_16124153
file_prefix=
'read_disablecopyonread_conv1d_56_kernel:@5
'read_1_disablecopyonread_conv1d_56_bias:@<
)read_2_disablecopyonread_dense_410_kernel:	�5
'read_3_disablecopyonread_dense_410_bias:;
)read_4_disablecopyonread_dense_411_kernel:5
'read_5_disablecopyonread_dense_411_bias:,
"read_6_disablecopyonread_adam_iter:	 .
$read_7_disablecopyonread_adam_beta_1: .
$read_8_disablecopyonread_adam_beta_2: -
#read_9_disablecopyonread_adam_decay: 6
,read_10_disablecopyonread_adam_learning_rate: +
!read_11_disablecopyonread_total_1: +
!read_12_disablecopyonread_count_1: )
read_13_disablecopyonread_total: )
read_14_disablecopyonread_count: G
1read_15_disablecopyonread_adam_conv1d_56_kernel_m:@=
/read_16_disablecopyonread_adam_conv1d_56_bias_m:@D
1read_17_disablecopyonread_adam_dense_410_kernel_m:	�=
/read_18_disablecopyonread_adam_dense_410_bias_m:C
1read_19_disablecopyonread_adam_dense_411_kernel_m:=
/read_20_disablecopyonread_adam_dense_411_bias_m:G
1read_21_disablecopyonread_adam_conv1d_56_kernel_v:@=
/read_22_disablecopyonread_adam_conv1d_56_bias_v:@D
1read_23_disablecopyonread_adam_dense_410_kernel_v:	�=
/read_24_disablecopyonread_adam_dense_410_bias_v:C
1read_25_disablecopyonread_adam_dense_411_kernel_v:=
/read_26_disablecopyonread_adam_dense_411_bias_v:
savev2_const
identity_55��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv1d_56_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv1d_56_kernel^Read/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@*
dtype0m
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@e

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*"
_output_shapes
:@{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv1d_56_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv1d_56_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_dense_410_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_dense_410_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	�{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_dense_410_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_dense_410_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_dense_411_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_dense_411_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_dense_411_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_dense_411_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_6/DisableCopyOnReadDisableCopyOnRead"read_6_disablecopyonread_adam_iter"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp"read_6_disablecopyonread_adam_iter^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0	*
_output_shapes
: x
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_adam_beta_1"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_adam_beta_1^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_adam_beta_2"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_adam_beta_2^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: w
Read_9/DisableCopyOnReadDisableCopyOnRead#read_9_disablecopyonread_adam_decay"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp#read_9_disablecopyonread_adam_decay^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_10/DisableCopyOnReadDisableCopyOnRead,read_10_disablecopyonread_adam_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp,read_10_disablecopyonread_adam_learning_rate^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_11/DisableCopyOnReadDisableCopyOnRead!read_11_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp!read_11_disablecopyonread_total_1^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_12/DisableCopyOnReadDisableCopyOnRead!read_12_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp!read_12_disablecopyonread_count_1^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_13/DisableCopyOnReadDisableCopyOnReadread_13_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOpread_13_disablecopyonread_total^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_14/DisableCopyOnReadDisableCopyOnReadread_14_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOpread_14_disablecopyonread_count^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_15/DisableCopyOnReadDisableCopyOnRead1read_15_disablecopyonread_adam_conv1d_56_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp1read_15_disablecopyonread_adam_conv1d_56_kernel_m^Read_15/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@*
dtype0s
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@i
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*"
_output_shapes
:@�
Read_16/DisableCopyOnReadDisableCopyOnRead/read_16_disablecopyonread_adam_conv1d_56_bias_m"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp/read_16_disablecopyonread_adam_conv1d_56_bias_m^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_17/DisableCopyOnReadDisableCopyOnRead1read_17_disablecopyonread_adam_dense_410_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp1read_17_disablecopyonread_adam_dense_410_kernel_m^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_18/DisableCopyOnReadDisableCopyOnRead/read_18_disablecopyonread_adam_dense_410_bias_m"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp/read_18_disablecopyonread_adam_dense_410_bias_m^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_19/DisableCopyOnReadDisableCopyOnRead1read_19_disablecopyonread_adam_dense_411_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp1read_19_disablecopyonread_adam_dense_411_kernel_m^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_20/DisableCopyOnReadDisableCopyOnRead/read_20_disablecopyonread_adam_dense_411_bias_m"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp/read_20_disablecopyonread_adam_dense_411_bias_m^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_21/DisableCopyOnReadDisableCopyOnRead1read_21_disablecopyonread_adam_conv1d_56_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp1read_21_disablecopyonread_adam_conv1d_56_kernel_v^Read_21/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@*
dtype0s
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@i
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*"
_output_shapes
:@�
Read_22/DisableCopyOnReadDisableCopyOnRead/read_22_disablecopyonread_adam_conv1d_56_bias_v"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp/read_22_disablecopyonread_adam_conv1d_56_bias_v^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_23/DisableCopyOnReadDisableCopyOnRead1read_23_disablecopyonread_adam_dense_410_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp1read_23_disablecopyonread_adam_dense_410_kernel_v^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_24/DisableCopyOnReadDisableCopyOnRead/read_24_disablecopyonread_adam_dense_410_bias_v"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp/read_24_disablecopyonread_adam_dense_410_bias_v^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_25/DisableCopyOnReadDisableCopyOnRead1read_25_disablecopyonread_adam_dense_411_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp1read_25_disablecopyonread_adam_dense_411_kernel_v^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_26/DisableCopyOnReadDisableCopyOnRead/read_26_disablecopyonread_adam_dense_411_bias_v"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp/read_26_disablecopyonread_adam_dense_411_bias_v^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 **
dtypes 
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_54Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_55IdentityIdentity_54:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_55Identity_55:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:51
/
_user_specified_nameAdam/dense_411/bias/v:73
1
_user_specified_nameAdam/dense_411/kernel/v:51
/
_user_specified_nameAdam/dense_410/bias/v:73
1
_user_specified_nameAdam/dense_410/kernel/v:51
/
_user_specified_nameAdam/conv1d_56/bias/v:73
1
_user_specified_nameAdam/conv1d_56/kernel/v:51
/
_user_specified_nameAdam/dense_411/bias/m:73
1
_user_specified_nameAdam/dense_411/kernel/m:51
/
_user_specified_nameAdam/dense_410/bias/m:73
1
_user_specified_nameAdam/dense_410/kernel/m:51
/
_user_specified_nameAdam/conv1d_56/bias/m:73
1
_user_specified_nameAdam/conv1d_56/kernel/m:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:2.
,
_user_specified_nameAdam/learning_rate:*
&
$
_user_specified_name
Adam/decay:+	'
%
_user_specified_nameAdam/beta_2:+'
%
_user_specified_nameAdam/beta_1:)%
#
_user_specified_name	Adam/iter:.*
(
_user_specified_namedense_411/bias:0,
*
_user_specified_namedense_411/kernel:.*
(
_user_specified_namedense_410/bias:0,
*
_user_specified_namedense_410/kernel:.*
(
_user_specified_nameconv1d_56/bias:0,
*
_user_specified_nameconv1d_56/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�/
�
#__inference__wrapped_model_16123721
	input_207Z
Dsequential_206_conv1d_56_conv1d_expanddims_1_readvariableop_resource:@F
8sequential_206_conv1d_56_biasadd_readvariableop_resource:@J
7sequential_206_dense_410_matmul_readvariableop_resource:	�F
8sequential_206_dense_410_biasadd_readvariableop_resource:I
7sequential_206_dense_411_matmul_readvariableop_resource:F
8sequential_206_dense_411_biasadd_readvariableop_resource:
identity��/sequential_206/conv1d_56/BiasAdd/ReadVariableOp�;sequential_206/conv1d_56/Conv1D/ExpandDims_1/ReadVariableOp�/sequential_206/dense_410/BiasAdd/ReadVariableOp�.sequential_206/dense_410/MatMul/ReadVariableOp�/sequential_206/dense_411/BiasAdd/ReadVariableOp�.sequential_206/dense_411/MatMul/ReadVariableOpy
.sequential_206/conv1d_56/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
*sequential_206/conv1d_56/Conv1D/ExpandDims
ExpandDims	input_2077sequential_206/conv1d_56/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
;sequential_206/conv1d_56/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpDsequential_206_conv1d_56_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0r
0sequential_206/conv1d_56/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
,sequential_206/conv1d_56/Conv1D/ExpandDims_1
ExpandDimsCsequential_206/conv1d_56/Conv1D/ExpandDims_1/ReadVariableOp:value:09sequential_206/conv1d_56/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@�
sequential_206/conv1d_56/Conv1DConv2D3sequential_206/conv1d_56/Conv1D/ExpandDims:output:05sequential_206/conv1d_56/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
'sequential_206/conv1d_56/Conv1D/SqueezeSqueeze(sequential_206/conv1d_56/Conv1D:output:0*
T0*+
_output_shapes
:���������@*
squeeze_dims

����������
/sequential_206/conv1d_56/BiasAdd/ReadVariableOpReadVariableOp8sequential_206_conv1d_56_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
 sequential_206/conv1d_56/BiasAddBiasAdd0sequential_206/conv1d_56/Conv1D/Squeeze:output:07sequential_206/conv1d_56/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@�
sequential_206/conv1d_56/ReluRelu)sequential_206/conv1d_56/BiasAdd:output:0*
T0*+
_output_shapes
:���������@p
sequential_206/flatten_99/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
!sequential_206/flatten_99/ReshapeReshape+sequential_206/conv1d_56/Relu:activations:0(sequential_206/flatten_99/Const:output:0*
T0*(
_output_shapes
:�����������
.sequential_206/dense_410/MatMul/ReadVariableOpReadVariableOp7sequential_206_dense_410_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
sequential_206/dense_410/MatMulMatMul*sequential_206/flatten_99/Reshape:output:06sequential_206/dense_410/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/sequential_206/dense_410/BiasAdd/ReadVariableOpReadVariableOp8sequential_206_dense_410_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 sequential_206/dense_410/BiasAddBiasAdd)sequential_206/dense_410/MatMul:product:07sequential_206/dense_410/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'sequential_206/dense_410/re_lu_205/ReluRelu)sequential_206/dense_410/BiasAdd:output:0*
T0*'
_output_shapes
:����������
.sequential_206/dense_411/MatMul/ReadVariableOpReadVariableOp7sequential_206_dense_411_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_206/dense_411/MatMulMatMul5sequential_206/dense_410/re_lu_205/Relu:activations:06sequential_206/dense_411/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/sequential_206/dense_411/BiasAdd/ReadVariableOpReadVariableOp8sequential_206_dense_411_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 sequential_206/dense_411/BiasAddBiasAdd)sequential_206/dense_411/MatMul:product:07sequential_206/dense_411/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
IdentityIdentity)sequential_206/dense_411/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^sequential_206/conv1d_56/BiasAdd/ReadVariableOp<^sequential_206/conv1d_56/Conv1D/ExpandDims_1/ReadVariableOp0^sequential_206/dense_410/BiasAdd/ReadVariableOp/^sequential_206/dense_410/MatMul/ReadVariableOp0^sequential_206/dense_411/BiasAdd/ReadVariableOp/^sequential_206/dense_411/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2b
/sequential_206/conv1d_56/BiasAdd/ReadVariableOp/sequential_206/conv1d_56/BiasAdd/ReadVariableOp2z
;sequential_206/conv1d_56/Conv1D/ExpandDims_1/ReadVariableOp;sequential_206/conv1d_56/Conv1D/ExpandDims_1/ReadVariableOp2b
/sequential_206/dense_410/BiasAdd/ReadVariableOp/sequential_206/dense_410/BiasAdd/ReadVariableOp2`
.sequential_206/dense_410/MatMul/ReadVariableOp.sequential_206/dense_410/MatMul/ReadVariableOp2b
/sequential_206/dense_411/BiasAdd/ReadVariableOp/sequential_206/dense_411/BiasAdd/ReadVariableOp2`
.sequential_206/dense_411/MatMul/ReadVariableOp.sequential_206/dense_411/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:V R
+
_output_shapes
:���������
#
_user_specified_name	input_207"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
	input_2076
serving_default_input_207:0���������=
	dense_4110
StatefulPartitionedCall:0���������tensorflow/serving/predict:�x
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#
activation

$kernel
%bias"
_tf_keras_layer
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias"
_tf_keras_layer
J
0
1
$2
%3
,4
-5"
trackable_list_wrapper
J
0
1
$2
%3
,4
-5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
�
3trace_0
4trace_12�
1__inference_sequential_206_layer_call_fn_16123821
1__inference_sequential_206_layer_call_fn_16123838�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z3trace_0z4trace_1
�
5trace_0
6trace_12�
L__inference_sequential_206_layer_call_and_return_conditional_losses_16123784
L__inference_sequential_206_layer_call_and_return_conditional_losses_16123804�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z5trace_0z6trace_1
�B�
#__inference__wrapped_model_16123721	input_207"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
7iter

8beta_1

9beta_2
	:decay
;learning_ratemnmo$mp%mq,mr-msvtvu$vv%vw,vx-vy"
	optimizer
,
<serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Btrace_02�
,__inference_conv1d_56_layer_call_fn_16123903�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zBtrace_0
�
Ctrace_02�
G__inference_conv1d_56_layer_call_and_return_conditional_losses_16123919�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zCtrace_0
&:$@2conv1d_56/kernel
:@2conv1d_56/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Itrace_02�
-__inference_flatten_99_layer_call_fn_16123924�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zItrace_0
�
Jtrace_02�
H__inference_flatten_99_layer_call_and_return_conditional_losses_16123930�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zJtrace_0
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�
Ptrace_02�
,__inference_dense_410_layer_call_fn_16123939�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zPtrace_0
�
Qtrace_02�
G__inference_dense_410_layer_call_and_return_conditional_losses_16123950�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zQtrace_0
�
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
#:!	�2dense_410/kernel
:2dense_410/bias
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�
]trace_02�
,__inference_dense_411_layer_call_fn_16123959�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z]trace_0
�
^trace_02�
G__inference_dense_411_layer_call_and_return_conditional_losses_16123969�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z^trace_0
": 2dense_411/kernel
:2dense_411/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_sequential_206_layer_call_fn_16123821	input_207"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
1__inference_sequential_206_layer_call_fn_16123838	input_207"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_sequential_206_layer_call_and_return_conditional_losses_16123784	input_207"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_sequential_206_layer_call_and_return_conditional_losses_16123804	input_207"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
&__inference_signature_wrapper_16123894	input_207"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_conv1d_56_layer_call_fn_16123903inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_conv1d_56_layer_call_and_return_conditional_losses_16123919inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_flatten_99_layer_call_fn_16123924inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_flatten_99_layer_call_and_return_conditional_losses_16123930inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
'
#0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_dense_410_layer_call_fn_16123939inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dense_410_layer_call_and_return_conditional_losses_16123950inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_dense_411_layer_call_fn_16123959inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dense_411_layer_call_and_return_conditional_losses_16123969inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
N
f	variables
g	keras_api
	htotal
	icount"
_tf_keras_metric
N
j	variables
k	keras_api
	ltotal
	mcount"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
h0
i1"
trackable_list_wrapper
-
f	variables"
_generic_user_object
:  (2total
:  (2count
.
l0
m1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
:  (2total
:  (2count
+:)@2Adam/conv1d_56/kernel/m
!:@2Adam/conv1d_56/bias/m
(:&	�2Adam/dense_410/kernel/m
!:2Adam/dense_410/bias/m
':%2Adam/dense_411/kernel/m
!:2Adam/dense_411/bias/m
+:)@2Adam/conv1d_56/kernel/v
!:@2Adam/conv1d_56/bias/v
(:&	�2Adam/dense_410/kernel/v
!:2Adam/dense_410/bias/v
':%2Adam/dense_411/kernel/v
!:2Adam/dense_411/bias/v�
#__inference__wrapped_model_16123721w$%,-6�3
,�)
'�$
	input_207���������
� "5�2
0
	dense_411#� 
	dense_411����������
G__inference_conv1d_56_layer_call_and_return_conditional_losses_16123919k3�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������@
� �
,__inference_conv1d_56_layer_call_fn_16123903`3�0
)�&
$�!
inputs���������
� "%�"
unknown���������@�
G__inference_dense_410_layer_call_and_return_conditional_losses_16123950d$%0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
,__inference_dense_410_layer_call_fn_16123939Y$%0�-
&�#
!�
inputs����������
� "!�
unknown����������
G__inference_dense_411_layer_call_and_return_conditional_losses_16123969c,-/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
,__inference_dense_411_layer_call_fn_16123959X,-/�,
%�"
 �
inputs���������
� "!�
unknown����������
H__inference_flatten_99_layer_call_and_return_conditional_losses_16123930d3�0
)�&
$�!
inputs���������@
� "-�*
#� 
tensor_0����������
� �
-__inference_flatten_99_layer_call_fn_16123924Y3�0
)�&
$�!
inputs���������@
� ""�
unknown�����������
L__inference_sequential_206_layer_call_and_return_conditional_losses_16123784v$%,->�;
4�1
'�$
	input_207���������
p

 
� ",�)
"�
tensor_0���������
� �
L__inference_sequential_206_layer_call_and_return_conditional_losses_16123804v$%,->�;
4�1
'�$
	input_207���������
p 

 
� ",�)
"�
tensor_0���������
� �
1__inference_sequential_206_layer_call_fn_16123821k$%,->�;
4�1
'�$
	input_207���������
p

 
� "!�
unknown����������
1__inference_sequential_206_layer_call_fn_16123838k$%,->�;
4�1
'�$
	input_207���������
p 

 
� "!�
unknown����������
&__inference_signature_wrapper_16123894�$%,-C�@
� 
9�6
4
	input_207'�$
	input_207���������"5�2
0
	dense_411#� 
	dense_411���������