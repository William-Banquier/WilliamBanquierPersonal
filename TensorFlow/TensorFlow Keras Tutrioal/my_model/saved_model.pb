��
��
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
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
executor_typestring �
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�"serve*2.0.02v2.0.0-rc2-26-g64c3d382ca8��
z
dense_19/kernelVarHandleOp* 
shared_namedense_19/kernel*
dtype0*
_output_shapes
: *
shape
: 

s
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
dtype0*
_output_shapes

: 

r
dense_19/biasVarHandleOp*
shape:
*
shared_namedense_19/bias*
dtype0*
_output_shapes
: 
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
dtype0*
_output_shapes
:

z
dense_20/kernelVarHandleOp* 
shared_namedense_20/kernel*
dtype0*
_output_shapes
: *
shape
:


s
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
dtype0*
_output_shapes

:


r
dense_20/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:
*
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
dtype0*
_output_shapes
:

l
RMSprop/iterVarHandleOp*
shape: *
shared_nameRMSprop/iter*
dtype0	*
_output_shapes
: 
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
dtype0	*
_output_shapes
: 
n
RMSprop/decayVarHandleOp*
dtype0*
_output_shapes
: *
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
dtype0*
_output_shapes
: 
~
RMSprop/learning_rateVarHandleOp*
shape: *&
shared_nameRMSprop/learning_rate*
dtype0*
_output_shapes
: 
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
dtype0*
_output_shapes
: 
t
RMSprop/momentumVarHandleOp*
dtype0*
_output_shapes
: *
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
dtype0*
_output_shapes
: 
j
RMSprop/rhoVarHandleOp*
dtype0*
_output_shapes
: *
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
^
totalVarHandleOp*
shared_nametotal*
dtype0*
_output_shapes
: *
shape: 
W
total/Read/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: 
^
countVarHandleOp*
shared_namecount*
dtype0*
_output_shapes
: *
shape: 
W
count/Read/ReadVariableOpReadVariableOpcount*
dtype0*
_output_shapes
: 
�
RMSprop/dense_19/kernel/rmsVarHandleOp*,
shared_nameRMSprop/dense_19/kernel/rms*
dtype0*
_output_shapes
: *
shape
: 

�
/RMSprop/dense_19/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_19/kernel/rms*
dtype0*
_output_shapes

: 

�
RMSprop/dense_19/bias/rmsVarHandleOp*
dtype0*
_output_shapes
: *
shape:
**
shared_nameRMSprop/dense_19/bias/rms
�
-RMSprop/dense_19/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_19/bias/rms*
dtype0*
_output_shapes
:

�
RMSprop/dense_20/kernel/rmsVarHandleOp*
shape
:

*,
shared_nameRMSprop/dense_20/kernel/rms*
dtype0*
_output_shapes
: 
�
/RMSprop/dense_20/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_20/kernel/rms*
dtype0*
_output_shapes

:


�
RMSprop/dense_20/bias/rmsVarHandleOp**
shared_nameRMSprop/dense_20/bias/rms*
dtype0*
_output_shapes
: *
shape:

�
-RMSprop/dense_20/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_20/bias/rms*
dtype0*
_output_shapes
:


NoOpNoOp
�
ConstConst"/device:CPU:0*�
value�B� B�
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api
	
signatures
R

trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
k
iter
	decay
learning_rate
momentum
rho	rms;	rms<	rms=	rms>

0
1
2
3

0
1
2
3
 
�
non_trainable_variables
trainable_variables
 layer_regularization_losses
	variables
regularization_losses

!layers
"metrics
 
 
 
 
�
#non_trainable_variables

trainable_variables
$layer_regularization_losses
	variables
regularization_losses

%layers
&metrics
[Y
VARIABLE_VALUEdense_19/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_19/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
'non_trainable_variables
trainable_variables
(layer_regularization_losses
	variables
regularization_losses

)layers
*metrics
[Y
VARIABLE_VALUEdense_20/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_20/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
+non_trainable_variables
trainable_variables
,layer_regularization_losses
	variables
regularization_losses

-layers
.metrics
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1

/0
 
 
 
 
 
 
 
 
 
 
 
 
x
	0total
	1count
2
_fn_kwargs
3trainable_variables
4	variables
5regularization_losses
6	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE
 
 

00
11
 
�
7non_trainable_variables
3trainable_variables
8layer_regularization_losses
4	variables
5regularization_losses

9layers
:metrics

00
11
 
 
 
��
VARIABLE_VALUERMSprop/dense_19/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUERMSprop/dense_19/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/dense_20/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUERMSprop/dense_20/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
: 
�
serving_default_dense_19_inputPlaceholder*
shape:��������� *
dtype0*'
_output_shapes
:��������� 
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_19_inputdense_19/kerneldense_19/biasdense_20/kerneldense_20/bias*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin	
2*'
_output_shapes
:���������
*,
_gradient_op_typePartitionedCall-12346*,
f'R%
#__inference_signature_wrapper_12223
O
saver_filenamePlaceholder*
dtype0*
_output_shapes
: *
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_19/kernel/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOp#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp/RMSprop/dense_19/kernel/rms/Read/ReadVariableOp-RMSprop/dense_19/bias/rms/Read/ReadVariableOp/RMSprop/dense_20/kernel/rms/Read/ReadVariableOp-RMSprop/dense_20/bias/rms/Read/ReadVariableOpConst*'
f"R 
__inference__traced_save_12382*
Tout
2**
config_proto

CPU

GPU 2J 8*
_output_shapes
: *
Tin
2	*,
_gradient_op_typePartitionedCall-12383
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_19/kerneldense_19/biasdense_20/kerneldense_20/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcountRMSprop/dense_19/kernel/rmsRMSprop/dense_19/bias/rmsRMSprop/dense_20/kernel/rmsRMSprop/dense_20/bias/rms**
f%R#
!__inference__traced_restore_12440*
Tout
2**
config_proto

CPU

GPU 2J 8*
_output_shapes
: *
Tin
2*,
_gradient_op_typePartitionedCall-12441�
�
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_12165
dense_19_input+
'dense_19_statefulpartitionedcall_args_1+
'dense_19_statefulpartitionedcall_args_2+
'dense_20_statefulpartitionedcall_args_1+
'dense_20_statefulpartitionedcall_args_2
identity�� dense_19/StatefulPartitionedCall� dense_20/StatefulPartitionedCall�
 dense_19/StatefulPartitionedCallStatefulPartitionedCalldense_19_input'dense_19_statefulpartitionedcall_args_1'dense_19_statefulpartitionedcall_args_2*,
_gradient_op_typePartitionedCall-12114*L
fGRE
C__inference_dense_19_layer_call_and_return_conditional_losses_12108*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin
2*'
_output_shapes
:���������
�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0'dense_20_statefulpartitionedcall_args_1'dense_20_statefulpartitionedcall_args_2*'
_output_shapes
:���������
*
Tin
2*,
_gradient_op_typePartitionedCall-12141*L
fGRE
C__inference_dense_20_layer_call_and_return_conditional_losses_12135*
Tout
2**
config_proto

CPU

GPU 2J 8�
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*6
_input_shapes%
#:��������� ::::2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall:. *
(
_user_specified_namedense_19_input: : : : 
�	
�
C__inference_dense_19_layer_call_and_return_conditional_losses_12288

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

: 
i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:
v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*.
_input_shapes
:��������� ::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
�
�
(__inference_dense_19_layer_call_fn_12295

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*'
_output_shapes
:���������
*
Tin
2*,
_gradient_op_typePartitionedCall-12114*L
fGRE
C__inference_dense_19_layer_call_and_return_conditional_losses_12108*
Tout
2**
config_proto

CPU

GPU 2J 8�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*.
_input_shapes
:��������� ::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : 
�
�
C__inference_dense_20_layer_call_and_return_conditional_losses_12135

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:

i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:
v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*.
_input_shapes
:���������
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
�
�
#__inference_signature_wrapper_12223
dense_19_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_19_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*)
f$R"
 __inference__wrapped_model_12091*
Tout
2**
config_proto

CPU

GPU 2J 8*'
_output_shapes
:���������
*
Tin	
2*,
_gradient_op_typePartitionedCall-12216�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:���������
*
T0"
identityIdentity:output:0*6
_input_shapes%
#:��������� ::::22
StatefulPartitionedCallStatefulPartitionedCall:. *
(
_user_specified_namedense_19_input: : : : 
�	
�
C__inference_dense_19_layer_call_and_return_conditional_losses_12108

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

: 
i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:
v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*.
_input_shapes
:��������� ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
�
�
(__inference_dense_20_layer_call_fn_12312

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2**
config_proto

CPU

GPU 2J 8*'
_output_shapes
:���������
*
Tin
2*,
_gradient_op_typePartitionedCall-12141*L
fGRE
C__inference_dense_20_layer_call_and_return_conditional_losses_12135*
Tout
2�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*.
_input_shapes
:���������
::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
�
�
 __inference__wrapped_model_12091
dense_19_input8
4sequential_4_dense_19_matmul_readvariableop_resource9
5sequential_4_dense_19_biasadd_readvariableop_resource8
4sequential_4_dense_20_matmul_readvariableop_resource9
5sequential_4_dense_20_biasadd_readvariableop_resource
identity��,sequential_4/dense_19/BiasAdd/ReadVariableOp�+sequential_4/dense_19/MatMul/ReadVariableOp�,sequential_4/dense_20/BiasAdd/ReadVariableOp�+sequential_4/dense_20/MatMul/ReadVariableOp�
+sequential_4/dense_19/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_19_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

: 
�
sequential_4/dense_19/MatMulMatMuldense_19_input3sequential_4/dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
,sequential_4/dense_19/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_19_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:
�
sequential_4/dense_19/BiasAddBiasAdd&sequential_4/dense_19/MatMul:product:04sequential_4/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
|
sequential_4/dense_19/ReluRelu&sequential_4/dense_19/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
+sequential_4/dense_20/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_20_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:

�
sequential_4/dense_20/MatMulMatMul(sequential_4/dense_19/Relu:activations:03sequential_4/dense_20/MatMul/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0�
,sequential_4/dense_20/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_20_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:
�
sequential_4/dense_20/BiasAddBiasAdd&sequential_4/dense_20/MatMul:product:04sequential_4/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
IdentityIdentity&sequential_4/dense_20/BiasAdd:output:0-^sequential_4/dense_19/BiasAdd/ReadVariableOp,^sequential_4/dense_19/MatMul/ReadVariableOp-^sequential_4/dense_20/BiasAdd/ReadVariableOp,^sequential_4/dense_20/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*6
_input_shapes%
#:��������� ::::2\
,sequential_4/dense_20/BiasAdd/ReadVariableOp,sequential_4/dense_20/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_20/MatMul/ReadVariableOp+sequential_4/dense_20/MatMul/ReadVariableOp2Z
+sequential_4/dense_19/MatMul/ReadVariableOp+sequential_4/dense_19/MatMul/ReadVariableOp2\
,sequential_4/dense_19/BiasAdd/ReadVariableOp,sequential_4/dense_19/BiasAdd/ReadVariableOp:. *
(
_user_specified_namedense_19_input: : : : 
�
�
,__inference_sequential_4_layer_call_fn_12277

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*,
_gradient_op_typePartitionedCall-12201*P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_12200*
Tout
2**
config_proto

CPU

GPU 2J 8*'
_output_shapes
:���������
*
Tin	
2�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*6
_input_shapes%
#:��������� ::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : : : 
�
�
,__inference_sequential_4_layer_call_fn_12208
dense_19_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_19_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin	
2*'
_output_shapes
:���������
*,
_gradient_op_typePartitionedCall-12201*P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_12200�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*6
_input_shapes%
#:��������� ::::22
StatefulPartitionedCallStatefulPartitionedCall:. *
(
_user_specified_namedense_19_input: : : : 
�
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_12153
dense_19_input+
'dense_19_statefulpartitionedcall_args_1+
'dense_19_statefulpartitionedcall_args_2+
'dense_20_statefulpartitionedcall_args_1+
'dense_20_statefulpartitionedcall_args_2
identity�� dense_19/StatefulPartitionedCall� dense_20/StatefulPartitionedCall�
 dense_19/StatefulPartitionedCallStatefulPartitionedCalldense_19_input'dense_19_statefulpartitionedcall_args_1'dense_19_statefulpartitionedcall_args_2*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin
2*'
_output_shapes
:���������
*,
_gradient_op_typePartitionedCall-12114*L
fGRE
C__inference_dense_19_layer_call_and_return_conditional_losses_12108�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0'dense_20_statefulpartitionedcall_args_1'dense_20_statefulpartitionedcall_args_2*,
_gradient_op_typePartitionedCall-12141*L
fGRE
C__inference_dense_20_layer_call_and_return_conditional_losses_12135*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin
2*'
_output_shapes
:���������
�
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*6
_input_shapes%
#:��������� ::::2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall: :. *
(
_user_specified_namedense_19_input: : : 
�=
�
!__inference__traced_restore_12440
file_prefix$
 assignvariableop_dense_19_kernel$
 assignvariableop_1_dense_19_bias&
"assignvariableop_2_dense_20_kernel$
 assignvariableop_3_dense_20_bias#
assignvariableop_4_rmsprop_iter$
 assignvariableop_5_rmsprop_decay,
(assignvariableop_6_rmsprop_learning_rate'
#assignvariableop_7_rmsprop_momentum"
assignvariableop_8_rmsprop_rho
assignvariableop_9_total
assignvariableop_10_count3
/assignvariableop_11_rmsprop_dense_19_kernel_rms1
-assignvariableop_12_rmsprop_dense_19_bias_rms3
/assignvariableop_13_rmsprop_dense_20_kernel_rms1
-assignvariableop_14_rmsprop_dense_20_bias_rms
identity_16��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�	RestoreV2�RestoreV2_1�
RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:�
RestoreV2/shape_and_slicesConst"/device:CPU:0*1
value(B&B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2	L
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:|
AssignVariableOpAssignVariableOp assignvariableop_dense_19_kernelIdentity:output:0*
dtype0*
_output_shapes
 N

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_19_biasIdentity_1:output:0*
dtype0*
_output_shapes
 N

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_20_kernelIdentity_2:output:0*
dtype0*
_output_shapes
 N

Identity_3IdentityRestoreV2:tensors:3*
_output_shapes
:*
T0�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_20_biasIdentity_3:output:0*
dtype0*
_output_shapes
 N

Identity_4IdentityRestoreV2:tensors:4*
T0	*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_rmsprop_iterIdentity_4:output:0*
dtype0	*
_output_shapes
 N

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_rmsprop_decayIdentity_5:output:0*
dtype0*
_output_shapes
 N

Identity_6IdentityRestoreV2:tensors:6*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp(assignvariableop_6_rmsprop_learning_rateIdentity_6:output:0*
dtype0*
_output_shapes
 N

Identity_7IdentityRestoreV2:tensors:7*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp#assignvariableop_7_rmsprop_momentumIdentity_7:output:0*
dtype0*
_output_shapes
 N

Identity_8IdentityRestoreV2:tensors:8*
T0*
_output_shapes
:~
AssignVariableOp_8AssignVariableOpassignvariableop_8_rmsprop_rhoIdentity_8:output:0*
dtype0*
_output_shapes
 N

Identity_9IdentityRestoreV2:tensors:9*
_output_shapes
:*
T0x
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0*
dtype0*
_output_shapes
 P
Identity_10IdentityRestoreV2:tensors:10*
_output_shapes
:*
T0{
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0*
dtype0*
_output_shapes
 P
Identity_11IdentityRestoreV2:tensors:11*
_output_shapes
:*
T0�
AssignVariableOp_11AssignVariableOp/assignvariableop_11_rmsprop_dense_19_kernel_rmsIdentity_11:output:0*
dtype0*
_output_shapes
 P
Identity_12IdentityRestoreV2:tensors:12*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp-assignvariableop_12_rmsprop_dense_19_bias_rmsIdentity_12:output:0*
dtype0*
_output_shapes
 P
Identity_13IdentityRestoreV2:tensors:13*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp/assignvariableop_13_rmsprop_dense_20_kernel_rmsIdentity_13:output:0*
dtype0*
_output_shapes
 P
Identity_14IdentityRestoreV2:tensors:14*
_output_shapes
:*
T0�
AssignVariableOp_14AssignVariableOp-assignvariableop_14_rmsprop_dense_20_bias_rmsIdentity_14:output:0*
dtype0*
_output_shapes
 �
RestoreV2_1/tensor_namesConst"/device:CPU:0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0*
_output_shapes
:t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:�
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
21
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: �
Identity_16IdentityIdentity_15:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: "#
identity_16Identity_16:output:0*Q
_input_shapes@
>: :::::::::::::::2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122
RestoreV2_1RestoreV2_12*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92
	RestoreV2	RestoreV2:+ '
%
_user_specified_namefile_prefix: : : : : : : : :	 :
 : : : : : 
�
�
,__inference_sequential_4_layer_call_fn_12268

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*,
_gradient_op_typePartitionedCall-12179*P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_12178*
Tout
2**
config_proto

CPU

GPU 2J 8*'
_output_shapes
:���������
*
Tin	
2�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*6
_input_shapes%
#:��������� ::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : : : 
�
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_12200

inputs+
'dense_19_statefulpartitionedcall_args_1+
'dense_19_statefulpartitionedcall_args_2+
'dense_20_statefulpartitionedcall_args_1+
'dense_20_statefulpartitionedcall_args_2
identity�� dense_19/StatefulPartitionedCall� dense_20/StatefulPartitionedCall�
 dense_19/StatefulPartitionedCallStatefulPartitionedCallinputs'dense_19_statefulpartitionedcall_args_1'dense_19_statefulpartitionedcall_args_2*,
_gradient_op_typePartitionedCall-12114*L
fGRE
C__inference_dense_19_layer_call_and_return_conditional_losses_12108*
Tout
2**
config_proto

CPU

GPU 2J 8*'
_output_shapes
:���������
*
Tin
2�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0'dense_20_statefulpartitionedcall_args_1'dense_20_statefulpartitionedcall_args_2*,
_gradient_op_typePartitionedCall-12141*L
fGRE
C__inference_dense_20_layer_call_and_return_conditional_losses_12135*
Tout
2**
config_proto

CPU

GPU 2J 8*'
_output_shapes
:���������
*
Tin
2�
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*6
_input_shapes%
#:��������� ::::2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall:& "
 
_user_specified_nameinputs: : : : 
�
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_12259

inputs+
'dense_19_matmul_readvariableop_resource,
(dense_19_biasadd_readvariableop_resource+
'dense_20_matmul_readvariableop_resource,
(dense_20_biasadd_readvariableop_resource
identity��dense_19/BiasAdd/ReadVariableOp�dense_19/MatMul/ReadVariableOp�dense_20/BiasAdd/ReadVariableOp�dense_20/MatMul/ReadVariableOp�
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

: 
{
dense_19/MatMulMatMulinputs&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:
�
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
b
dense_19/ReluReludense_19/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:

�
dense_20/MatMulMatMuldense_19/Relu:activations:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:
�
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
IdentityIdentitydense_20/BiasAdd:output:0 ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*6
_input_shapes%
#:��������� ::::2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp: :& "
 
_user_specified_nameinputs: : : 
�
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_12242

inputs+
'dense_19_matmul_readvariableop_resource,
(dense_19_biasadd_readvariableop_resource+
'dense_20_matmul_readvariableop_resource,
(dense_20_biasadd_readvariableop_resource
identity��dense_19/BiasAdd/ReadVariableOp�dense_19/MatMul/ReadVariableOp�dense_20/BiasAdd/ReadVariableOp�dense_20/MatMul/ReadVariableOp�
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

: 
{
dense_19/MatMulMatMulinputs&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:
�
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0b
dense_19/ReluReludense_19/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:

�
dense_20/MatMulMatMuldense_19/Relu:activations:0&dense_20/MatMul/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0�
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:
�
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0�
IdentityIdentitydense_20/BiasAdd:output:0 ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*6
_input_shapes%
#:��������� ::::2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp:& "
 
_user_specified_nameinputs: : : : 
�
�
C__inference_dense_20_layer_call_and_return_conditional_losses_12305

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:

i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:
v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*.
_input_shapes
:���������
::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
�'
�
__inference__traced_save_12382
file_prefix.
*savev2_dense_19_kernel_read_readvariableop,
(savev2_dense_19_bias_read_readvariableop.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop:
6savev2_rmsprop_dense_19_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_19_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_20_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_20_bias_rms_read_readvariableop
savev2_1_const

identity_1��MergeV2Checkpoints�SaveV2�SaveV2_1�
StringJoin/inputs_1Const"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_4847053e5a1a443fb72bc298f15ddb93/parts

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
N*
_output_shapes
: L

num_shardsConst*
value	B :*
dtype0*
_output_shapes
: f
ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:�
SaveV2/shape_and_slicesConst"/device:CPU:0*1
value(B&B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_19_kernel_read_readvariableop(savev2_dense_19_bias_read_readvariableop*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop6savev2_rmsprop_dense_19_kernel_rms_read_readvariableop4savev2_rmsprop_dense_19_bias_rms_read_readvariableop6savev2_rmsprop_dense_20_kernel_rms_read_readvariableop4savev2_rmsprop_dense_20_bias_rms_read_readvariableop"/device:CPU:0*
_output_shapes
 *
dtypes
2	h
ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: �
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2_1/tensor_namesConst"/device:CPU:0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0*
_output_shapes
:q
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B �
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
T0*
N*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: s

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*e
_input_shapesT
R: : 
:
:

:
: : : : : : : : 
:
:

:
: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1: : : : : :	 :
 : : : : : : :+ '
%
_user_specified_namefile_prefix: : : 
�
�
,__inference_sequential_4_layer_call_fn_12186
dense_19_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_19_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_12178*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin	
2*'
_output_shapes
:���������
*,
_gradient_op_typePartitionedCall-12179�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*6
_input_shapes%
#:��������� ::::22
StatefulPartitionedCallStatefulPartitionedCall:. *
(
_user_specified_namedense_19_input: : : : 
�
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_12178

inputs+
'dense_19_statefulpartitionedcall_args_1+
'dense_19_statefulpartitionedcall_args_2+
'dense_20_statefulpartitionedcall_args_1+
'dense_20_statefulpartitionedcall_args_2
identity�� dense_19/StatefulPartitionedCall� dense_20/StatefulPartitionedCall�
 dense_19/StatefulPartitionedCallStatefulPartitionedCallinputs'dense_19_statefulpartitionedcall_args_1'dense_19_statefulpartitionedcall_args_2*'
_output_shapes
:���������
*
Tin
2*,
_gradient_op_typePartitionedCall-12114*L
fGRE
C__inference_dense_19_layer_call_and_return_conditional_losses_12108*
Tout
2**
config_proto

CPU

GPU 2J 8�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0'dense_20_statefulpartitionedcall_args_1'dense_20_statefulpartitionedcall_args_2*,
_gradient_op_typePartitionedCall-12141*L
fGRE
C__inference_dense_20_layer_call_and_return_conditional_losses_12135*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin
2*'
_output_shapes
:���������
�
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*6
_input_shapes%
#:��������� ::::2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall: : : :& "
 
_user_specified_nameinputs: "wL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*�
serving_default�
I
dense_19_input7
 serving_default_dense_19_input:0��������� <
dense_200
StatefulPartitionedCall:0���������
tensorflow/serving/predict*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:�p
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api
	
signatures
*?&call_and_return_all_conditional_losses
@__call__
A_default_save_signature"�
_tf_keras_sequential�{"class_name": "Sequential", "name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "sequential_4", "layers": [{"class_name": "Dense", "config": {"name": "dense_19", "trainable": true, "batch_input_shape": [null, 32], "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "keras_version": "2.2.4-tf", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "Dense", "config": {"name": "dense_19", "trainable": true, "batch_input_shape": [null, 32], "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": {"class_name": "CategoricalCrossentropy", "config": {"reduction": "auto", "name": "categorical_crossentropy", "from_logits": true, "label_smoothing": 0}}, "metrics": ["accuracy"], "weighted_metrics": null, "sample_weight_mode": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
�

trainable_variables
	variables
regularization_losses
	keras_api
*B&call_and_return_all_conditional_losses
C__call__"�
_tf_keras_layer�{"class_name": "InputLayer", "name": "dense_19_input", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": [null, 32], "config": {"batch_input_shape": [null, 32], "dtype": "float32", "sparse": false, "name": "dense_19_input"}}
�

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*D&call_and_return_all_conditional_losses
E__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": [null, 32], "config": {"name": "dense_19", "trainable": true, "batch_input_shape": [null, 32], "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}}
�

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*F&call_and_return_all_conditional_losses
G__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}}
~
iter
	decay
learning_rate
momentum
rho	rms;	rms<	rms=	rms>"
	optimizer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables
trainable_variables
 layer_regularization_losses
	variables
regularization_losses

!layers
"metrics
@__call__
A_default_save_signature
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
,
Hserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
#non_trainable_variables

trainable_variables
$layer_regularization_losses
	variables
regularization_losses

%layers
&metrics
C__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
!: 
2dense_19/kernel
:
2dense_19/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
'non_trainable_variables
trainable_variables
(layer_regularization_losses
	variables
regularization_losses

)layers
*metrics
E__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
!:

2dense_20/kernel
:
2dense_20/bias
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
+non_trainable_variables
trainable_variables
,layer_regularization_losses
	variables
regularization_losses

-layers
.metrics
G__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
/0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
	0total
	1count
2
_fn_kwargs
3trainable_variables
4	variables
5regularization_losses
6	keras_api
*I&call_and_return_all_conditional_losses
J__call__"�
_tf_keras_layer�{"class_name": "MeanMetricWrapper", "name": "accuracy", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "accuracy", "dtype": "float32"}}
:  (2total
:  (2count
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
7non_trainable_variables
3trainable_variables
8layer_regularization_losses
4	variables
5regularization_losses

9layers
:metrics
J__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
+:) 
2RMSprop/dense_19/kernel/rms
%:#
2RMSprop/dense_19/bias/rms
+:)

2RMSprop/dense_20/kernel/rms
%:#
2RMSprop/dense_20/bias/rms
�2�
G__inference_sequential_4_layer_call_and_return_conditional_losses_12242
G__inference_sequential_4_layer_call_and_return_conditional_losses_12259
G__inference_sequential_4_layer_call_and_return_conditional_losses_12165
G__inference_sequential_4_layer_call_and_return_conditional_losses_12153�
���
FullArgSpec1
args)�&
jself
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_sequential_4_layer_call_fn_12208
,__inference_sequential_4_layer_call_fn_12268
,__inference_sequential_4_layer_call_fn_12186
,__inference_sequential_4_layer_call_fn_12277�
���
FullArgSpec1
args)�&
jself
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
 __inference__wrapped_model_12091�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *-�*
(�%
dense_19_input��������� 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkwjkwargs
defaults� 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkwjkwargs
defaults� 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�2�
C__inference_dense_19_layer_call_and_return_conditional_losses_12288�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
(__inference_dense_19_layer_call_fn_12295�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
C__inference_dense_20_layer_call_and_return_conditional_losses_12305�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
(__inference_dense_20_layer_call_fn_12312�
���
FullArgSpec
args�
jself
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
annotations� *
 
9B7
#__inference_signature_wrapper_12223dense_19_input
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkwjkwargs
defaults� 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkwjkwargs
defaults� 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 �
,__inference_sequential_4_layer_call_fn_12186a?�<
5�2
(�%
dense_19_input��������� 
p

 
� "����������
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_12242f7�4
-�*
 �
inputs��������� 
p

 
� "%�"
�
0���������

� {
(__inference_dense_19_layer_call_fn_12295O/�,
%�"
 �
inputs��������� 
� "����������
�
#__inference_signature_wrapper_12223�I�F
� 
?�<
:
dense_19_input(�%
dense_19_input��������� "3�0
.
dense_20"�
dense_20���������
�
,__inference_sequential_4_layer_call_fn_12268Y7�4
-�*
 �
inputs��������� 
p

 
� "����������
�
,__inference_sequential_4_layer_call_fn_12208a?�<
5�2
(�%
dense_19_input��������� 
p 

 
� "����������
�
C__inference_dense_20_layer_call_and_return_conditional_losses_12305\/�,
%�"
 �
inputs���������

� "%�"
�
0���������

� {
(__inference_dense_20_layer_call_fn_12312O/�,
%�"
 �
inputs���������

� "����������
�
,__inference_sequential_4_layer_call_fn_12277Y7�4
-�*
 �
inputs��������� 
p 

 
� "����������
�
 __inference__wrapped_model_12091t7�4
-�*
(�%
dense_19_input��������� 
� "3�0
.
dense_20"�
dense_20���������
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_12259f7�4
-�*
 �
inputs��������� 
p 

 
� "%�"
�
0���������

� �
G__inference_sequential_4_layer_call_and_return_conditional_losses_12153n?�<
5�2
(�%
dense_19_input��������� 
p

 
� "%�"
�
0���������

� �
C__inference_dense_19_layer_call_and_return_conditional_losses_12288\/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������

� �
G__inference_sequential_4_layer_call_and_return_conditional_losses_12165n?�<
5�2
(�%
dense_19_input��������� 
p 

 
� "%�"
�
0���������

� 