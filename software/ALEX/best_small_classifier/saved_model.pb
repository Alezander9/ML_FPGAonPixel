┴а
┴ћ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
ђ
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceѕ
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
0
Neg
x"T
y"T"
Ttype:
2
	
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
8
Pow
x"T
y"T
z"T"
Ttype:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
2
Round
x"T
y"T"
Ttype:
2
	
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeіьout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
┴
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
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.13.12v2.13.0-17-gf841394b1b78єН
z
dense_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namedense_output/bias
s
%dense_output/bias/Read/ReadVariableOpReadVariableOpdense_output/bias*
_output_shapes
:*
dtype0
ѓ
dense_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_namedense_output/kernel
{
'dense_output/kernel/Read/ReadVariableOpReadVariableOpdense_output/kernel*
_output_shapes

:*
dtype0
ї
BatchNorm2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameBatchNorm2/moving_variance
Ё
.BatchNorm2/moving_variance/Read/ReadVariableOpReadVariableOpBatchNorm2/moving_variance*
_output_shapes
:*
dtype0
ё
BatchNorm2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameBatchNorm2/moving_mean
}
*BatchNorm2/moving_mean/Read/ReadVariableOpReadVariableOpBatchNorm2/moving_mean*
_output_shapes
:*
dtype0
v
BatchNorm2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameBatchNorm2/beta
o
#BatchNorm2/beta/Read/ReadVariableOpReadVariableOpBatchNorm2/beta*
_output_shapes
:*
dtype0
x
BatchNorm2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameBatchNorm2/gamma
q
$BatchNorm2/gamma/Read/ReadVariableOpReadVariableOpBatchNorm2/gamma*
_output_shapes
:*
dtype0
n
dense2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense2/bias
g
dense2/bias/Read/ReadVariableOpReadVariableOpdense2/bias*
_output_shapes
:*
dtype0
v
dense2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense2/kernel
o
!dense2/kernel/Read/ReadVariableOpReadVariableOpdense2/kernel*
_output_shapes

:*
dtype0
ї
BatchNorm1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameBatchNorm1/moving_variance
Ё
.BatchNorm1/moving_variance/Read/ReadVariableOpReadVariableOpBatchNorm1/moving_variance*
_output_shapes
:*
dtype0
ё
BatchNorm1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameBatchNorm1/moving_mean
}
*BatchNorm1/moving_mean/Read/ReadVariableOpReadVariableOpBatchNorm1/moving_mean*
_output_shapes
:*
dtype0
v
BatchNorm1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameBatchNorm1/beta
o
#BatchNorm1/beta/Read/ReadVariableOpReadVariableOpBatchNorm1/beta*
_output_shapes
:*
dtype0
x
BatchNorm1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameBatchNorm1/gamma
q
$BatchNorm1/gamma/Read/ReadVariableOpReadVariableOpBatchNorm1/gamma*
_output_shapes
:*
dtype0
n
dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense1/bias
g
dense1/bias/Read/ReadVariableOpReadVariableOpdense1/bias*
_output_shapes
:*
dtype0
v
dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense1/kernel
o
!dense1/kernel/Read/ReadVariableOpReadVariableOpdense1/kernel*
_output_shapes

:*
dtype0
ђ
serving_default_y_timed_inputPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
с
StatefulPartitionedCallStatefulPartitionedCallserving_default_y_timed_inputdense1/kerneldense1/biasBatchNorm1/moving_varianceBatchNorm1/gammaBatchNorm1/moving_meanBatchNorm1/betadense2/kerneldense2/biasBatchNorm2/moving_varianceBatchNorm2/gammaBatchNorm2/moving_meanBatchNorm2/betadense_output/kerneldense_output/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *.
f)R'
%__inference_signature_wrapper_1796374

NoOpNoOp
ж7
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ц7
valueџ7BЌ7 Bљ7
Д
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
ю
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
kernel_quantizer
bias_quantizer
kernel_quantizer_internal
bias_quantizer_internal

quantizers

kernel
bias*
Н
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"axis
	#gamma
$beta
%moving_mean
&moving_variance*
Г
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-
activation
-	quantizer* 
ю
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses
4kernel_quantizer
5bias_quantizer
4kernel_quantizer_internal
5bias_quantizer_internal
6
quantizers

7kernel
8bias*
Н
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses
?axis
	@gamma
Abeta
Bmoving_mean
Cmoving_variance*
Г
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
J
activation
J	quantizer* 
ю
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses
Qkernel_quantizer
Rbias_quantizer
Qkernel_quantizer_internal
Rbias_quantizer_internal
S
quantizers

Tkernel
Ubias*
j
0
1
#2
$3
%4
&5
76
87
@8
A9
B10
C11
T12
U13*
J
0
1
#2
$3
74
85
@6
A7
T8
U9*
* 
░
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

[trace_0
\trace_1* 

]trace_0
^trace_1* 
* 

_serving_default* 

0
1*

0
1*
* 
Њ
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

etrace_0* 

ftrace_0* 
* 
* 

0
1* 
]W
VARIABLE_VALUEdense1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEdense1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
#0
$1
%2
&3*

#0
$1*
* 
Њ
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

ltrace_0
mtrace_1* 

ntrace_0
otrace_1* 
* 
_Y
VARIABLE_VALUEBatchNorm1/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEBatchNorm1/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEBatchNorm1/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEBatchNorm1/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Љ
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 

utrace_0* 

vtrace_0* 
* 

70
81*

70
81*
* 
Њ
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses*

|trace_0* 

}trace_0* 
* 
* 

40
51* 
]W
VARIABLE_VALUEdense2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEdense2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
@0
A1
B2
C3*

@0
A1*
* 
ќ
~non_trainable_variables

layers
ђmetrics
 Ђlayer_regularization_losses
ѓlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

Ѓtrace_0
ёtrace_1* 

Ёtrace_0
єtrace_1* 
* 
_Y
VARIABLE_VALUEBatchNorm2/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEBatchNorm2/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEBatchNorm2/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEBatchNorm2/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ќ
Єnon_trainable_variables
ѕlayers
Ѕmetrics
 іlayer_regularization_losses
Іlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 

їtrace_0* 

Їtrace_0* 
* 

T0
U1*

T0
U1*
* 
ў
јnon_trainable_variables
Јlayers
љmetrics
 Љlayer_regularization_losses
њlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

Њtrace_0* 

ћtrace_0* 
* 
* 

Q0
R1* 
c]
VARIABLE_VALUEdense_output/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEdense_output/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
%0
&1
B2
C3*
<
0
1
2
3
4
5
6
7*
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

%0
&1*
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
* 
* 
* 
* 
* 
* 

B0
C1*
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
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
И
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense1/kerneldense1/biasBatchNorm1/gammaBatchNorm1/betaBatchNorm1/moving_meanBatchNorm1/moving_variancedense2/kerneldense2/biasBatchNorm2/gammaBatchNorm2/betaBatchNorm2/moving_meanBatchNorm2/moving_variancedense_output/kerneldense_output/biasConst*
Tin
2*
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
GPU 2J 8ѓ *)
f$R"
 __inference__traced_save_1796979
│
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense1/kerneldense1/biasBatchNorm1/gammaBatchNorm1/betaBatchNorm1/moving_meanBatchNorm1/moving_variancedense2/kerneldense2/biasBatchNorm2/gammaBatchNorm2/betaBatchNorm2/moving_meanBatchNorm2/moving_variancedense_output/kerneldense_output/bias*
Tin
2*
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
GPU 2J 8ѓ *,
f'R%
#__inference__traced_restore_1797030щЫ

Е2
д
C__inference_dense1_layer_call_and_return_conditional_losses_1795927

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identityѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бReadVariableOp_4бReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: E
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: f
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я Dv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:         I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
Pow_1PowPow_1/x:output:0Pow_1/y:output:0*
T0*
_output_shapes
: I
Cast_1Cast	Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:P
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:K
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я Dv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:R
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   EZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         њ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╚
д
G__inference_BatchNorm1_layer_call_and_return_conditional_losses_1795751

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityѕбbatchnorm/ReadVariableOpбbatchnorm/ReadVariableOp_1бbatchnorm/ReadVariableOp_2бbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:         z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:         ќ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
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
resource:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Е2
д
C__inference_dense1_layer_call_and_return_conditional_losses_1796451

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identityѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бReadVariableOp_4бReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: E
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: f
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я Dv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:         I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
Pow_1PowPow_1/x:output:0Pow_1/y:output:0*
T0*
_output_shapes
: I
Cast_1Cast	Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:P
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:K
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я Dv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:R
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   EZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         њ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╚
д
G__inference_BatchNorm2_layer_call_and_return_conditional_losses_1796742

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityѕбbatchnorm/ReadVariableOpбbatchnorm/ReadVariableOp_1бbatchnorm/ReadVariableOp_2бbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:         z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:         ќ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
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
resource:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
»2
г
I__inference_dense_output_layer_call_and_return_conditional_losses_1796191

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identityѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бReadVariableOp_4бReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: E
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: f
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я Dv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:         I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
Pow_1PowPow_1/x:output:0Pow_1/y:output:0*
T0*
_output_shapes
: I
Cast_1Cast	Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:P
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:K
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я Dv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:R
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   EZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         њ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ў
C
'__inference_relu2_layer_call_fn_1796747

inputs
identityГ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_relu2_layer_call_and_return_conditional_losses_1796122`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ї&
Я
G__inference_BatchNorm1_layer_call_and_return_conditional_losses_1796511

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбbatchnorm/ReadVariableOpбbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:Є
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:         l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ъ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<ѓ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Ђ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:г
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<є
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Є
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:         h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:         к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
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
resource:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Е2
д
C__inference_dense2_layer_call_and_return_conditional_losses_1796662

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identityѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бReadVariableOp_4бReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: E
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: f
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я Dv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:         I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
Pow_1PowPow_1/x:output:0Pow_1/y:output:0*
T0*
_output_shapes
: I
Cast_1Cast	Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:P
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:K
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я Dv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:R
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   EZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         њ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╣
л
%__inference_signature_wrapper_1796374
y_timed_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCally_timed_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference__wrapped_model_1795697o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1796370:'#
!
_user_specified_name	1796368:'#
!
_user_specified_name	1796366:'#
!
_user_specified_name	1796364:'
#
!
_user_specified_name	1796362:'	#
!
_user_specified_name	1796360:'#
!
_user_specified_name	1796358:'#
!
_user_specified_name	1796356:'#
!
_user_specified_name	1796354:'#
!
_user_specified_name	1796352:'#
!
_user_specified_name	1796350:'#
!
_user_specified_name	1796348:'#
!
_user_specified_name	1796346:'#
!
_user_specified_name	1796344:V R
'
_output_shapes
:         
'
_user_specified_namey_timed_input
фu
Щ
 __inference__traced_save_1796979
file_prefix6
$read_disablecopyonread_dense1_kernel:2
$read_1_disablecopyonread_dense1_bias:7
)read_2_disablecopyonread_batchnorm1_gamma:6
(read_3_disablecopyonread_batchnorm1_beta:=
/read_4_disablecopyonread_batchnorm1_moving_mean:A
3read_5_disablecopyonread_batchnorm1_moving_variance:8
&read_6_disablecopyonread_dense2_kernel:2
$read_7_disablecopyonread_dense2_bias:7
)read_8_disablecopyonread_batchnorm2_gamma:6
(read_9_disablecopyonread_batchnorm2_beta:>
0read_10_disablecopyonread_batchnorm2_moving_mean:B
4read_11_disablecopyonread_batchnorm2_moving_variance:?
-read_12_disablecopyonread_dense_output_kernel:9
+read_13_disablecopyonread_dense_output_bias:
savev2_const
identity_29ѕбMergeV2CheckpointsбRead/DisableCopyOnReadбRead/ReadVariableOpбRead_1/DisableCopyOnReadбRead_1/ReadVariableOpбRead_10/DisableCopyOnReadбRead_10/ReadVariableOpбRead_11/DisableCopyOnReadбRead_11/ReadVariableOpбRead_12/DisableCopyOnReadбRead_12/ReadVariableOpбRead_13/DisableCopyOnReadбRead_13/ReadVariableOpбRead_2/DisableCopyOnReadбRead_2/ReadVariableOpбRead_3/DisableCopyOnReadбRead_3/ReadVariableOpбRead_4/DisableCopyOnReadбRead_4/ReadVariableOpбRead_5/DisableCopyOnReadбRead_5/ReadVariableOpбRead_6/DisableCopyOnReadбRead_6/ReadVariableOpбRead_7/DisableCopyOnReadбRead_7/ReadVariableOpбRead_8/DisableCopyOnReadбRead_8/ReadVariableOpбRead_9/DisableCopyOnReadбRead_9/ReadVariableOpw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_dense1_kernel"/device:CPU:0*
_output_shapes
 а
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_dense1_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_dense1_bias"/device:CPU:0*
_output_shapes
 а
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_dense1_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_batchnorm1_gamma"/device:CPU:0*
_output_shapes
 Ц
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_batchnorm1_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_3/DisableCopyOnReadDisableCopyOnRead(read_3_disablecopyonread_batchnorm1_beta"/device:CPU:0*
_output_shapes
 ц
Read_3/ReadVariableOpReadVariableOp(read_3_disablecopyonread_batchnorm1_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:Ѓ
Read_4/DisableCopyOnReadDisableCopyOnRead/read_4_disablecopyonread_batchnorm1_moving_mean"/device:CPU:0*
_output_shapes
 Ф
Read_4/ReadVariableOpReadVariableOp/read_4_disablecopyonread_batchnorm1_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:Є
Read_5/DisableCopyOnReadDisableCopyOnRead3read_5_disablecopyonread_batchnorm1_moving_variance"/device:CPU:0*
_output_shapes
 »
Read_5/ReadVariableOpReadVariableOp3read_5_disablecopyonread_batchnorm1_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:z
Read_6/DisableCopyOnReadDisableCopyOnRead&read_6_disablecopyonread_dense2_kernel"/device:CPU:0*
_output_shapes
 д
Read_6/ReadVariableOpReadVariableOp&read_6_disablecopyonread_dense2_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:x
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_dense2_bias"/device:CPU:0*
_output_shapes
 а
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_dense2_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_8/DisableCopyOnReadDisableCopyOnRead)read_8_disablecopyonread_batchnorm2_gamma"/device:CPU:0*
_output_shapes
 Ц
Read_8/ReadVariableOpReadVariableOp)read_8_disablecopyonread_batchnorm2_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_9/DisableCopyOnReadDisableCopyOnRead(read_9_disablecopyonread_batchnorm2_beta"/device:CPU:0*
_output_shapes
 ц
Read_9/ReadVariableOpReadVariableOp(read_9_disablecopyonread_batchnorm2_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:Ё
Read_10/DisableCopyOnReadDisableCopyOnRead0read_10_disablecopyonread_batchnorm2_moving_mean"/device:CPU:0*
_output_shapes
 «
Read_10/ReadVariableOpReadVariableOp0read_10_disablecopyonread_batchnorm2_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:Ѕ
Read_11/DisableCopyOnReadDisableCopyOnRead4read_11_disablecopyonread_batchnorm2_moving_variance"/device:CPU:0*
_output_shapes
 ▓
Read_11/ReadVariableOpReadVariableOp4read_11_disablecopyonread_batchnorm2_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:ѓ
Read_12/DisableCopyOnReadDisableCopyOnRead-read_12_disablecopyonread_dense_output_kernel"/device:CPU:0*
_output_shapes
 »
Read_12/ReadVariableOpReadVariableOp-read_12_disablecopyonread_dense_output_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:ђ
Read_13/DisableCopyOnReadDisableCopyOnRead+read_13_disablecopyonread_dense_output_bias"/device:CPU:0*
_output_shapes
 Е
Read_13/ReadVariableOpReadVariableOp+read_13_disablecopyonread_dense_output_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:ф
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*М
value╔BкB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHІ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B Ћ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_28Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_29IdentityIdentity_28:output:0^NoOp*
T0*
_output_shapes
: Ё
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_29Identity_29:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2(
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
Read_13/ReadVariableOpRead_13/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
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
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:1-
+
_user_specified_namedense_output/bias:3/
-
_user_specified_namedense_output/kernel::6
4
_user_specified_nameBatchNorm2/moving_variance:62
0
_user_specified_nameBatchNorm2/moving_mean:/
+
)
_user_specified_nameBatchNorm2/beta:0	,
*
_user_specified_nameBatchNorm2/gamma:+'
%
_user_specified_namedense2/bias:-)
'
_user_specified_namedense2/kernel::6
4
_user_specified_nameBatchNorm1/moving_variance:62
0
_user_specified_nameBatchNorm1/moving_mean:/+
)
_user_specified_nameBatchNorm1/beta:0,
*
_user_specified_nameBatchNorm1/gamma:+'
%
_user_specified_namedense1/bias:-)
'
_user_specified_namedense1/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ћ	
К
,__inference_BatchNorm1_layer_call_fn_1796477

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_BatchNorm1_layer_call_and_return_conditional_losses_1795751o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1796473:'#
!
_user_specified_name	1796471:'#
!
_user_specified_name	1796469:'#
!
_user_specified_name	1796467:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╝'
щ
D__inference_model_6_layer_call_and_return_conditional_losses_1796198
y_timed_input 
dense1_1795928:
dense1_1795930: 
batchnorm1_1795933: 
batchnorm1_1795935: 
batchnorm1_1795937: 
batchnorm1_1795939: 
dense2_1796060:
dense2_1796062: 
batchnorm2_1796065: 
batchnorm2_1796067: 
batchnorm2_1796069: 
batchnorm2_1796071:&
dense_output_1796192:"
dense_output_1796194:
identityѕб"BatchNorm1/StatefulPartitionedCallб"BatchNorm2/StatefulPartitionedCallбdense1/StatefulPartitionedCallбdense2/StatefulPartitionedCallб$dense_output/StatefulPartitionedCallЫ
dense1/StatefulPartitionedCallStatefulPartitionedCally_timed_inputdense1_1795928dense1_1795930*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense1_layer_call_and_return_conditional_losses_1795927к
"BatchNorm1/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0batchnorm1_1795933batchnorm1_1795935batchnorm1_1795937batchnorm1_1795939*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_BatchNorm1_layer_call_and_return_conditional_losses_1795731п
relu1/PartitionedCallPartitionedCall+BatchNorm1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_relu1_layer_call_and_return_conditional_losses_1795990Ѓ
dense2/StatefulPartitionedCallStatefulPartitionedCallrelu1/PartitionedCall:output:0dense2_1796060dense2_1796062*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense2_layer_call_and_return_conditional_losses_1796059к
"BatchNorm2/StatefulPartitionedCallStatefulPartitionedCall'dense2/StatefulPartitionedCall:output:0batchnorm2_1796065batchnorm2_1796067batchnorm2_1796069batchnorm2_1796071*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_BatchNorm2_layer_call_and_return_conditional_losses_1795811п
relu2/PartitionedCallPartitionedCall+BatchNorm2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_relu2_layer_call_and_return_conditional_losses_1796122Џ
$dense_output/StatefulPartitionedCallStatefulPartitionedCallrelu2/PartitionedCall:output:0dense_output_1796192dense_output_1796194*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_dense_output_layer_call_and_return_conditional_losses_1796191|
IdentityIdentity-dense_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Н
NoOpNoOp#^BatchNorm1/StatefulPartitionedCall#^BatchNorm2/StatefulPartitionedCall^dense1/StatefulPartitionedCall^dense2/StatefulPartitionedCall%^dense_output/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : : : : : : : 2H
"BatchNorm1/StatefulPartitionedCall"BatchNorm1/StatefulPartitionedCall2H
"BatchNorm2/StatefulPartitionedCall"BatchNorm2/StatefulPartitionedCall2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2@
dense2/StatefulPartitionedCalldense2/StatefulPartitionedCall2L
$dense_output/StatefulPartitionedCall$dense_output/StatefulPartitionedCall:'#
!
_user_specified_name	1796194:'#
!
_user_specified_name	1796192:'#
!
_user_specified_name	1796071:'#
!
_user_specified_name	1796069:'
#
!
_user_specified_name	1796067:'	#
!
_user_specified_name	1796065:'#
!
_user_specified_name	1796062:'#
!
_user_specified_name	1796060:'#
!
_user_specified_name	1795939:'#
!
_user_specified_name	1795937:'#
!
_user_specified_name	1795935:'#
!
_user_specified_name	1795933:'#
!
_user_specified_name	1795930:'#
!
_user_specified_name	1795928:V R
'
_output_shapes
:         
'
_user_specified_namey_timed_input
Ў
C
'__inference_relu1_layer_call_fn_1796536

inputs
identityГ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_relu1_layer_call_and_return_conditional_losses_1795990`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ѓ!
^
B__inference_relu1_layer_call_and_return_conditional_losses_1796585

inputs
identityG
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: E
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B : Q
Pow_1PowPow_1/x:output:0Pow_1/y:output:0*
T0*
_output_shapes
: I
Cast_1Cast	Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B : Q
Cast_2CastCast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @AG
subSub
Cast_2:y:0sub/y:output:0*
T0*
_output_shapes
: F
Pow_2PowConst:output:0sub:z:0*
T0*
_output_shapes
: D
sub_1Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
	LessEqual	LessEqualinputs	sub_1:z:0*
T0*'
_output_shapes
:         F
ReluReluinputs*
T0*'
_output_shapes
:         S
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::ь¤T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:         D
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:         r
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:         P
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:         [
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:         I
NegNegtruediv:z:0*
T0*'
_output_shapes
:         M
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:         R
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:         W
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:         d
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:         [
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:         P
truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?U
	truediv_2RealDivtruediv_2/x:output:0Cast:y:0*
T0*
_output_shapes
: L
sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?N
sub_3Subsub_3/x:output:0truediv_2:z:0*
T0*
_output_shapes
: l
clip_by_value/MinimumMinimumtruediv_1:z:0	sub_3:z:0*
T0*'
_output_shapes
:         T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:         ]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:         Q
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:         V
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:         L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:         [
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:         l
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:         Q
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ео
▄
"__inference__wrapped_model_1795697
y_timed_input8
&model_6_dense1_readvariableop_resource:6
(model_6_dense1_readvariableop_3_resource:B
4model_6_batchnorm1_batchnorm_readvariableop_resource:F
8model_6_batchnorm1_batchnorm_mul_readvariableop_resource:D
6model_6_batchnorm1_batchnorm_readvariableop_1_resource:D
6model_6_batchnorm1_batchnorm_readvariableop_2_resource:8
&model_6_dense2_readvariableop_resource:6
(model_6_dense2_readvariableop_3_resource:B
4model_6_batchnorm2_batchnorm_readvariableop_resource:F
8model_6_batchnorm2_batchnorm_mul_readvariableop_resource:D
6model_6_batchnorm2_batchnorm_readvariableop_1_resource:D
6model_6_batchnorm2_batchnorm_readvariableop_2_resource:>
,model_6_dense_output_readvariableop_resource:<
.model_6_dense_output_readvariableop_3_resource:
identityѕб+model_6/BatchNorm1/batchnorm/ReadVariableOpб-model_6/BatchNorm1/batchnorm/ReadVariableOp_1б-model_6/BatchNorm1/batchnorm/ReadVariableOp_2б/model_6/BatchNorm1/batchnorm/mul/ReadVariableOpб+model_6/BatchNorm2/batchnorm/ReadVariableOpб-model_6/BatchNorm2/batchnorm/ReadVariableOp_1б-model_6/BatchNorm2/batchnorm/ReadVariableOp_2б/model_6/BatchNorm2/batchnorm/mul/ReadVariableOpбmodel_6/dense1/ReadVariableOpбmodel_6/dense1/ReadVariableOp_1бmodel_6/dense1/ReadVariableOp_2бmodel_6/dense1/ReadVariableOp_3бmodel_6/dense1/ReadVariableOp_4бmodel_6/dense1/ReadVariableOp_5бmodel_6/dense2/ReadVariableOpбmodel_6/dense2/ReadVariableOp_1бmodel_6/dense2/ReadVariableOp_2бmodel_6/dense2/ReadVariableOp_3бmodel_6/dense2/ReadVariableOp_4бmodel_6/dense2/ReadVariableOp_5б#model_6/dense_output/ReadVariableOpб%model_6/dense_output/ReadVariableOp_1б%model_6/dense_output/ReadVariableOp_2б%model_6/dense_output/ReadVariableOp_3б%model_6/dense_output/ReadVariableOp_4б%model_6/dense_output/ReadVariableOp_5V
model_6/dense1/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :V
model_6/dense1/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :x
model_6/dense1/PowPowmodel_6/dense1/Pow/x:output:0model_6/dense1/Pow/y:output:0*
T0*
_output_shapes
: c
model_6/dense1/CastCastmodel_6/dense1/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: ё
model_6/dense1/ReadVariableOpReadVariableOp&model_6_dense1_readvariableop_resource*
_output_shapes

:*
dtype0Y
model_6/dense1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Eѕ
model_6/dense1/mulMul%model_6/dense1/ReadVariableOp:value:0model_6/dense1/mul/y:output:0*
T0*
_output_shapes

:{
model_6/dense1/truedivRealDivmodel_6/dense1/mul:z:0model_6/dense1/Cast:y:0*
T0*
_output_shapes

:^
model_6/dense1/NegNegmodel_6/dense1/truediv:z:0*
T0*
_output_shapes

:b
model_6/dense1/RoundRoundmodel_6/dense1/truediv:z:0*
T0*
_output_shapes

:v
model_6/dense1/addAddV2model_6/dense1/Neg:y:0model_6/dense1/Round:y:0*
T0*
_output_shapes

:l
model_6/dense1/StopGradientStopGradientmodel_6/dense1/add:z:0*
T0*
_output_shapes

:ѕ
model_6/dense1/add_1AddV2model_6/dense1/truediv:z:0$model_6/dense1/StopGradient:output:0*
T0*
_output_shapes

:k
&model_6/dense1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я DБ
$model_6/dense1/clip_by_value/MinimumMinimummodel_6/dense1/add_1:z:0/model_6/dense1/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:c
model_6/dense1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼Б
model_6/dense1/clip_by_valueMaximum(model_6/dense1/clip_by_value/Minimum:z:0'model_6/dense1/clip_by_value/y:output:0*
T0*
_output_shapes

:
model_6/dense1/mul_1Mulmodel_6/dense1/Cast:y:0 model_6/dense1/clip_by_value:z:0*
T0*
_output_shapes

:_
model_6/dense1/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   EІ
model_6/dense1/truediv_1RealDivmodel_6/dense1/mul_1:z:0#model_6/dense1/truediv_1/y:output:0*
T0*
_output_shapes

:[
model_6/dense1/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ѓ
model_6/dense1/mul_2Mulmodel_6/dense1/mul_2/x:output:0model_6/dense1/truediv_1:z:0*
T0*
_output_shapes

:є
model_6/dense1/ReadVariableOp_1ReadVariableOp&model_6_dense1_readvariableop_resource*
_output_shapes

:*
dtype0m
model_6/dense1/Neg_1Neg'model_6/dense1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:z
model_6/dense1/add_2AddV2model_6/dense1/Neg_1:y:0model_6/dense1/mul_2:z:0*
T0*
_output_shapes

:[
model_6/dense1/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?
model_6/dense1/mul_3Mulmodel_6/dense1/mul_3/x:output:0model_6/dense1/add_2:z:0*
T0*
_output_shapes

:p
model_6/dense1/StopGradient_1StopGradientmodel_6/dense1/mul_3:z:0*
T0*
_output_shapes

:є
model_6/dense1/ReadVariableOp_2ReadVariableOp&model_6_dense1_readvariableop_resource*
_output_shapes

:*
dtype0Ќ
model_6/dense1/add_3AddV2'model_6/dense1/ReadVariableOp_2:value:0&model_6/dense1/StopGradient_1:output:0*
T0*
_output_shapes

:z
model_6/dense1/MatMulMatMuly_timed_inputmodel_6/dense1/add_3:z:0*
T0*'
_output_shapes
:         X
model_6/dense1/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :X
model_6/dense1/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :~
model_6/dense1/Pow_1Powmodel_6/dense1/Pow_1/x:output:0model_6/dense1/Pow_1/y:output:0*
T0*
_output_shapes
: g
model_6/dense1/Cast_1Castmodel_6/dense1/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: ё
model_6/dense1/ReadVariableOp_3ReadVariableOp(model_6_dense1_readvariableop_3_resource*
_output_shapes
:*
dtype0[
model_6/dense1/mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Eі
model_6/dense1/mul_4Mul'model_6/dense1/ReadVariableOp_3:value:0model_6/dense1/mul_4/y:output:0*
T0*
_output_shapes
:}
model_6/dense1/truediv_2RealDivmodel_6/dense1/mul_4:z:0model_6/dense1/Cast_1:y:0*
T0*
_output_shapes
:^
model_6/dense1/Neg_2Negmodel_6/dense1/truediv_2:z:0*
T0*
_output_shapes
:b
model_6/dense1/Round_1Roundmodel_6/dense1/truediv_2:z:0*
T0*
_output_shapes
:x
model_6/dense1/add_4AddV2model_6/dense1/Neg_2:y:0model_6/dense1/Round_1:y:0*
T0*
_output_shapes
:l
model_6/dense1/StopGradient_2StopGradientmodel_6/dense1/add_4:z:0*
T0*
_output_shapes
:ѕ
model_6/dense1/add_5AddV2model_6/dense1/truediv_2:z:0&model_6/dense1/StopGradient_2:output:0*
T0*
_output_shapes
:m
(model_6/dense1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я DБ
&model_6/dense1/clip_by_value_1/MinimumMinimummodel_6/dense1/add_5:z:01model_6/dense1/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:e
 model_6/dense1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼Ц
model_6/dense1/clip_by_value_1Maximum*model_6/dense1/clip_by_value_1/Minimum:z:0)model_6/dense1/clip_by_value_1/y:output:0*
T0*
_output_shapes
:
model_6/dense1/mul_5Mulmodel_6/dense1/Cast_1:y:0"model_6/dense1/clip_by_value_1:z:0*
T0*
_output_shapes
:_
model_6/dense1/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   EЄ
model_6/dense1/truediv_3RealDivmodel_6/dense1/mul_5:z:0#model_6/dense1/truediv_3/y:output:0*
T0*
_output_shapes
:[
model_6/dense1/mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?
model_6/dense1/mul_6Mulmodel_6/dense1/mul_6/x:output:0model_6/dense1/truediv_3:z:0*
T0*
_output_shapes
:ё
model_6/dense1/ReadVariableOp_4ReadVariableOp(model_6_dense1_readvariableop_3_resource*
_output_shapes
:*
dtype0i
model_6/dense1/Neg_3Neg'model_6/dense1/ReadVariableOp_4:value:0*
T0*
_output_shapes
:v
model_6/dense1/add_6AddV2model_6/dense1/Neg_3:y:0model_6/dense1/mul_6:z:0*
T0*
_output_shapes
:[
model_6/dense1/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?{
model_6/dense1/mul_7Mulmodel_6/dense1/mul_7/x:output:0model_6/dense1/add_6:z:0*
T0*
_output_shapes
:l
model_6/dense1/StopGradient_3StopGradientmodel_6/dense1/mul_7:z:0*
T0*
_output_shapes
:ё
model_6/dense1/ReadVariableOp_5ReadVariableOp(model_6_dense1_readvariableop_3_resource*
_output_shapes
:*
dtype0Њ
model_6/dense1/add_7AddV2'model_6/dense1/ReadVariableOp_5:value:0&model_6/dense1/StopGradient_3:output:0*
T0*
_output_shapes
:ј
model_6/dense1/BiasAddBiasAddmodel_6/dense1/MatMul:product:0model_6/dense1/add_7:z:0*
T0*'
_output_shapes
:         ю
+model_6/BatchNorm1/batchnorm/ReadVariableOpReadVariableOp4model_6_batchnorm1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0g
"model_6/BatchNorm1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:░
 model_6/BatchNorm1/batchnorm/addAddV23model_6/BatchNorm1/batchnorm/ReadVariableOp:value:0+model_6/BatchNorm1/batchnorm/add/y:output:0*
T0*
_output_shapes
:v
"model_6/BatchNorm1/batchnorm/RsqrtRsqrt$model_6/BatchNorm1/batchnorm/add:z:0*
T0*
_output_shapes
:ц
/model_6/BatchNorm1/batchnorm/mul/ReadVariableOpReadVariableOp8model_6_batchnorm1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Г
 model_6/BatchNorm1/batchnorm/mulMul&model_6/BatchNorm1/batchnorm/Rsqrt:y:07model_6/BatchNorm1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:б
"model_6/BatchNorm1/batchnorm/mul_1Mulmodel_6/dense1/BiasAdd:output:0$model_6/BatchNorm1/batchnorm/mul:z:0*
T0*'
_output_shapes
:         а
-model_6/BatchNorm1/batchnorm/ReadVariableOp_1ReadVariableOp6model_6_batchnorm1_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0Ф
"model_6/BatchNorm1/batchnorm/mul_2Mul5model_6/BatchNorm1/batchnorm/ReadVariableOp_1:value:0$model_6/BatchNorm1/batchnorm/mul:z:0*
T0*
_output_shapes
:а
-model_6/BatchNorm1/batchnorm/ReadVariableOp_2ReadVariableOp6model_6_batchnorm1_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0Ф
 model_6/BatchNorm1/batchnorm/subSub5model_6/BatchNorm1/batchnorm/ReadVariableOp_2:value:0&model_6/BatchNorm1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Ф
"model_6/BatchNorm1/batchnorm/add_1AddV2&model_6/BatchNorm1/batchnorm/mul_1:z:0$model_6/BatchNorm1/batchnorm/sub:z:0*
T0*'
_output_shapes
:         U
model_6/relu1/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :U
model_6/relu1/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :u
model_6/relu1/PowPowmodel_6/relu1/Pow/x:output:0model_6/relu1/Pow/y:output:0*
T0*
_output_shapes
: a
model_6/relu1/CastCastmodel_6/relu1/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: W
model_6/relu1/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :W
model_6/relu1/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B : {
model_6/relu1/Pow_1Powmodel_6/relu1/Pow_1/x:output:0model_6/relu1/Pow_1/y:output:0*
T0*
_output_shapes
: e
model_6/relu1/Cast_1Castmodel_6/relu1/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: X
model_6/relu1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
model_6/relu1/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B : m
model_6/relu1/Cast_2Castmodel_6/relu1/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: X
model_6/relu1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @Aq
model_6/relu1/subSubmodel_6/relu1/Cast_2:y:0model_6/relu1/sub/y:output:0*
T0*
_output_shapes
: p
model_6/relu1/Pow_2Powmodel_6/relu1/Const:output:0model_6/relu1/sub:z:0*
T0*
_output_shapes
: n
model_6/relu1/sub_1Submodel_6/relu1/Cast_1:y:0model_6/relu1/Pow_2:z:0*
T0*
_output_shapes
: Ќ
model_6/relu1/LessEqual	LessEqual&model_6/BatchNorm1/batchnorm/add_1:z:0model_6/relu1/sub_1:z:0*
T0*'
_output_shapes
:         t
model_6/relu1/ReluRelu&model_6/BatchNorm1/batchnorm/add_1:z:0*
T0*'
_output_shapes
:         Ђ
model_6/relu1/ones_like/ShapeShape&model_6/BatchNorm1/batchnorm/add_1:z:0*
T0*
_output_shapes
::ь¤b
model_6/relu1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?А
model_6/relu1/ones_likeFill&model_6/relu1/ones_like/Shape:output:0&model_6/relu1/ones_like/Const:output:0*
T0*'
_output_shapes
:         n
model_6/relu1/sub_2Submodel_6/relu1/Cast_1:y:0model_6/relu1/Pow_2:z:0*
T0*
_output_shapes
: Ё
model_6/relu1/mulMul model_6/relu1/ones_like:output:0model_6/relu1/sub_2:z:0*
T0*'
_output_shapes
:         ф
model_6/relu1/SelectV2SelectV2model_6/relu1/LessEqual:z:0 model_6/relu1/Relu:activations:0model_6/relu1/mul:z:0*
T0*'
_output_shapes
:         ї
model_6/relu1/mul_1Mul&model_6/BatchNorm1/batchnorm/add_1:z:0model_6/relu1/Cast:y:0*
T0*'
_output_shapes
:         Ё
model_6/relu1/truedivRealDivmodel_6/relu1/mul_1:z:0model_6/relu1/Cast_1:y:0*
T0*'
_output_shapes
:         e
model_6/relu1/NegNegmodel_6/relu1/truediv:z:0*
T0*'
_output_shapes
:         i
model_6/relu1/RoundRoundmodel_6/relu1/truediv:z:0*
T0*'
_output_shapes
:         |
model_6/relu1/addAddV2model_6/relu1/Neg:y:0model_6/relu1/Round:y:0*
T0*'
_output_shapes
:         s
model_6/relu1/StopGradientStopGradientmodel_6/relu1/add:z:0*
T0*'
_output_shapes
:         ј
model_6/relu1/add_1AddV2model_6/relu1/truediv:z:0#model_6/relu1/StopGradient:output:0*
T0*'
_output_shapes
:         Ё
model_6/relu1/truediv_1RealDivmodel_6/relu1/add_1:z:0model_6/relu1/Cast:y:0*
T0*'
_output_shapes
:         ^
model_6/relu1/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?
model_6/relu1/truediv_2RealDiv"model_6/relu1/truediv_2/x:output:0model_6/relu1/Cast:y:0*
T0*
_output_shapes
: Z
model_6/relu1/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?x
model_6/relu1/sub_3Submodel_6/relu1/sub_3/x:output:0model_6/relu1/truediv_2:z:0*
T0*
_output_shapes
: ќ
#model_6/relu1/clip_by_value/MinimumMinimummodel_6/relu1/truediv_1:z:0model_6/relu1/sub_3:z:0*
T0*'
_output_shapes
:         b
model_6/relu1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
model_6/relu1/clip_by_valueMaximum'model_6/relu1/clip_by_value/Minimum:z:0&model_6/relu1/clip_by_value/y:output:0*
T0*'
_output_shapes
:         Є
model_6/relu1/mul_2Mulmodel_6/relu1/Cast_1:y:0model_6/relu1/clip_by_value:z:0*
T0*'
_output_shapes
:         m
model_6/relu1/Neg_1Negmodel_6/relu1/SelectV2:output:0*
T0*'
_output_shapes
:         ђ
model_6/relu1/add_2AddV2model_6/relu1/Neg_1:y:0model_6/relu1/mul_2:z:0*
T0*'
_output_shapes
:         Z
model_6/relu1/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ё
model_6/relu1/mul_3Mulmodel_6/relu1/mul_3/x:output:0model_6/relu1/add_2:z:0*
T0*'
_output_shapes
:         w
model_6/relu1/StopGradient_1StopGradientmodel_6/relu1/mul_3:z:0*
T0*'
_output_shapes
:         ќ
model_6/relu1/add_3AddV2model_6/relu1/SelectV2:output:0%model_6/relu1/StopGradient_1:output:0*
T0*'
_output_shapes
:         V
model_6/dense2/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :V
model_6/dense2/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :x
model_6/dense2/PowPowmodel_6/dense2/Pow/x:output:0model_6/dense2/Pow/y:output:0*
T0*
_output_shapes
: c
model_6/dense2/CastCastmodel_6/dense2/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: ё
model_6/dense2/ReadVariableOpReadVariableOp&model_6_dense2_readvariableop_resource*
_output_shapes

:*
dtype0Y
model_6/dense2/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Eѕ
model_6/dense2/mulMul%model_6/dense2/ReadVariableOp:value:0model_6/dense2/mul/y:output:0*
T0*
_output_shapes

:{
model_6/dense2/truedivRealDivmodel_6/dense2/mul:z:0model_6/dense2/Cast:y:0*
T0*
_output_shapes

:^
model_6/dense2/NegNegmodel_6/dense2/truediv:z:0*
T0*
_output_shapes

:b
model_6/dense2/RoundRoundmodel_6/dense2/truediv:z:0*
T0*
_output_shapes

:v
model_6/dense2/addAddV2model_6/dense2/Neg:y:0model_6/dense2/Round:y:0*
T0*
_output_shapes

:l
model_6/dense2/StopGradientStopGradientmodel_6/dense2/add:z:0*
T0*
_output_shapes

:ѕ
model_6/dense2/add_1AddV2model_6/dense2/truediv:z:0$model_6/dense2/StopGradient:output:0*
T0*
_output_shapes

:k
&model_6/dense2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я DБ
$model_6/dense2/clip_by_value/MinimumMinimummodel_6/dense2/add_1:z:0/model_6/dense2/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:c
model_6/dense2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼Б
model_6/dense2/clip_by_valueMaximum(model_6/dense2/clip_by_value/Minimum:z:0'model_6/dense2/clip_by_value/y:output:0*
T0*
_output_shapes

:
model_6/dense2/mul_1Mulmodel_6/dense2/Cast:y:0 model_6/dense2/clip_by_value:z:0*
T0*
_output_shapes

:_
model_6/dense2/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   EІ
model_6/dense2/truediv_1RealDivmodel_6/dense2/mul_1:z:0#model_6/dense2/truediv_1/y:output:0*
T0*
_output_shapes

:[
model_6/dense2/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ѓ
model_6/dense2/mul_2Mulmodel_6/dense2/mul_2/x:output:0model_6/dense2/truediv_1:z:0*
T0*
_output_shapes

:є
model_6/dense2/ReadVariableOp_1ReadVariableOp&model_6_dense2_readvariableop_resource*
_output_shapes

:*
dtype0m
model_6/dense2/Neg_1Neg'model_6/dense2/ReadVariableOp_1:value:0*
T0*
_output_shapes

:z
model_6/dense2/add_2AddV2model_6/dense2/Neg_1:y:0model_6/dense2/mul_2:z:0*
T0*
_output_shapes

:[
model_6/dense2/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?
model_6/dense2/mul_3Mulmodel_6/dense2/mul_3/x:output:0model_6/dense2/add_2:z:0*
T0*
_output_shapes

:p
model_6/dense2/StopGradient_1StopGradientmodel_6/dense2/mul_3:z:0*
T0*
_output_shapes

:є
model_6/dense2/ReadVariableOp_2ReadVariableOp&model_6_dense2_readvariableop_resource*
_output_shapes

:*
dtype0Ќ
model_6/dense2/add_3AddV2'model_6/dense2/ReadVariableOp_2:value:0&model_6/dense2/StopGradient_1:output:0*
T0*
_output_shapes

:ё
model_6/dense2/MatMulMatMulmodel_6/relu1/add_3:z:0model_6/dense2/add_3:z:0*
T0*'
_output_shapes
:         X
model_6/dense2/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :X
model_6/dense2/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :~
model_6/dense2/Pow_1Powmodel_6/dense2/Pow_1/x:output:0model_6/dense2/Pow_1/y:output:0*
T0*
_output_shapes
: g
model_6/dense2/Cast_1Castmodel_6/dense2/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: ё
model_6/dense2/ReadVariableOp_3ReadVariableOp(model_6_dense2_readvariableop_3_resource*
_output_shapes
:*
dtype0[
model_6/dense2/mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Eі
model_6/dense2/mul_4Mul'model_6/dense2/ReadVariableOp_3:value:0model_6/dense2/mul_4/y:output:0*
T0*
_output_shapes
:}
model_6/dense2/truediv_2RealDivmodel_6/dense2/mul_4:z:0model_6/dense2/Cast_1:y:0*
T0*
_output_shapes
:^
model_6/dense2/Neg_2Negmodel_6/dense2/truediv_2:z:0*
T0*
_output_shapes
:b
model_6/dense2/Round_1Roundmodel_6/dense2/truediv_2:z:0*
T0*
_output_shapes
:x
model_6/dense2/add_4AddV2model_6/dense2/Neg_2:y:0model_6/dense2/Round_1:y:0*
T0*
_output_shapes
:l
model_6/dense2/StopGradient_2StopGradientmodel_6/dense2/add_4:z:0*
T0*
_output_shapes
:ѕ
model_6/dense2/add_5AddV2model_6/dense2/truediv_2:z:0&model_6/dense2/StopGradient_2:output:0*
T0*
_output_shapes
:m
(model_6/dense2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я DБ
&model_6/dense2/clip_by_value_1/MinimumMinimummodel_6/dense2/add_5:z:01model_6/dense2/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:e
 model_6/dense2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼Ц
model_6/dense2/clip_by_value_1Maximum*model_6/dense2/clip_by_value_1/Minimum:z:0)model_6/dense2/clip_by_value_1/y:output:0*
T0*
_output_shapes
:
model_6/dense2/mul_5Mulmodel_6/dense2/Cast_1:y:0"model_6/dense2/clip_by_value_1:z:0*
T0*
_output_shapes
:_
model_6/dense2/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   EЄ
model_6/dense2/truediv_3RealDivmodel_6/dense2/mul_5:z:0#model_6/dense2/truediv_3/y:output:0*
T0*
_output_shapes
:[
model_6/dense2/mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?
model_6/dense2/mul_6Mulmodel_6/dense2/mul_6/x:output:0model_6/dense2/truediv_3:z:0*
T0*
_output_shapes
:ё
model_6/dense2/ReadVariableOp_4ReadVariableOp(model_6_dense2_readvariableop_3_resource*
_output_shapes
:*
dtype0i
model_6/dense2/Neg_3Neg'model_6/dense2/ReadVariableOp_4:value:0*
T0*
_output_shapes
:v
model_6/dense2/add_6AddV2model_6/dense2/Neg_3:y:0model_6/dense2/mul_6:z:0*
T0*
_output_shapes
:[
model_6/dense2/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?{
model_6/dense2/mul_7Mulmodel_6/dense2/mul_7/x:output:0model_6/dense2/add_6:z:0*
T0*
_output_shapes
:l
model_6/dense2/StopGradient_3StopGradientmodel_6/dense2/mul_7:z:0*
T0*
_output_shapes
:ё
model_6/dense2/ReadVariableOp_5ReadVariableOp(model_6_dense2_readvariableop_3_resource*
_output_shapes
:*
dtype0Њ
model_6/dense2/add_7AddV2'model_6/dense2/ReadVariableOp_5:value:0&model_6/dense2/StopGradient_3:output:0*
T0*
_output_shapes
:ј
model_6/dense2/BiasAddBiasAddmodel_6/dense2/MatMul:product:0model_6/dense2/add_7:z:0*
T0*'
_output_shapes
:         ю
+model_6/BatchNorm2/batchnorm/ReadVariableOpReadVariableOp4model_6_batchnorm2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0g
"model_6/BatchNorm2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:░
 model_6/BatchNorm2/batchnorm/addAddV23model_6/BatchNorm2/batchnorm/ReadVariableOp:value:0+model_6/BatchNorm2/batchnorm/add/y:output:0*
T0*
_output_shapes
:v
"model_6/BatchNorm2/batchnorm/RsqrtRsqrt$model_6/BatchNorm2/batchnorm/add:z:0*
T0*
_output_shapes
:ц
/model_6/BatchNorm2/batchnorm/mul/ReadVariableOpReadVariableOp8model_6_batchnorm2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Г
 model_6/BatchNorm2/batchnorm/mulMul&model_6/BatchNorm2/batchnorm/Rsqrt:y:07model_6/BatchNorm2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:б
"model_6/BatchNorm2/batchnorm/mul_1Mulmodel_6/dense2/BiasAdd:output:0$model_6/BatchNorm2/batchnorm/mul:z:0*
T0*'
_output_shapes
:         а
-model_6/BatchNorm2/batchnorm/ReadVariableOp_1ReadVariableOp6model_6_batchnorm2_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0Ф
"model_6/BatchNorm2/batchnorm/mul_2Mul5model_6/BatchNorm2/batchnorm/ReadVariableOp_1:value:0$model_6/BatchNorm2/batchnorm/mul:z:0*
T0*
_output_shapes
:а
-model_6/BatchNorm2/batchnorm/ReadVariableOp_2ReadVariableOp6model_6_batchnorm2_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0Ф
 model_6/BatchNorm2/batchnorm/subSub5model_6/BatchNorm2/batchnorm/ReadVariableOp_2:value:0&model_6/BatchNorm2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Ф
"model_6/BatchNorm2/batchnorm/add_1AddV2&model_6/BatchNorm2/batchnorm/mul_1:z:0$model_6/BatchNorm2/batchnorm/sub:z:0*
T0*'
_output_shapes
:         U
model_6/relu2/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :U
model_6/relu2/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :u
model_6/relu2/PowPowmodel_6/relu2/Pow/x:output:0model_6/relu2/Pow/y:output:0*
T0*
_output_shapes
: a
model_6/relu2/CastCastmodel_6/relu2/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: W
model_6/relu2/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :W
model_6/relu2/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B : {
model_6/relu2/Pow_1Powmodel_6/relu2/Pow_1/x:output:0model_6/relu2/Pow_1/y:output:0*
T0*
_output_shapes
: e
model_6/relu2/Cast_1Castmodel_6/relu2/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: X
model_6/relu2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
model_6/relu2/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B : m
model_6/relu2/Cast_2Castmodel_6/relu2/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: X
model_6/relu2/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @Aq
model_6/relu2/subSubmodel_6/relu2/Cast_2:y:0model_6/relu2/sub/y:output:0*
T0*
_output_shapes
: p
model_6/relu2/Pow_2Powmodel_6/relu2/Const:output:0model_6/relu2/sub:z:0*
T0*
_output_shapes
: n
model_6/relu2/sub_1Submodel_6/relu2/Cast_1:y:0model_6/relu2/Pow_2:z:0*
T0*
_output_shapes
: Ќ
model_6/relu2/LessEqual	LessEqual&model_6/BatchNorm2/batchnorm/add_1:z:0model_6/relu2/sub_1:z:0*
T0*'
_output_shapes
:         t
model_6/relu2/ReluRelu&model_6/BatchNorm2/batchnorm/add_1:z:0*
T0*'
_output_shapes
:         Ђ
model_6/relu2/ones_like/ShapeShape&model_6/BatchNorm2/batchnorm/add_1:z:0*
T0*
_output_shapes
::ь¤b
model_6/relu2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?А
model_6/relu2/ones_likeFill&model_6/relu2/ones_like/Shape:output:0&model_6/relu2/ones_like/Const:output:0*
T0*'
_output_shapes
:         n
model_6/relu2/sub_2Submodel_6/relu2/Cast_1:y:0model_6/relu2/Pow_2:z:0*
T0*
_output_shapes
: Ё
model_6/relu2/mulMul model_6/relu2/ones_like:output:0model_6/relu2/sub_2:z:0*
T0*'
_output_shapes
:         ф
model_6/relu2/SelectV2SelectV2model_6/relu2/LessEqual:z:0 model_6/relu2/Relu:activations:0model_6/relu2/mul:z:0*
T0*'
_output_shapes
:         ї
model_6/relu2/mul_1Mul&model_6/BatchNorm2/batchnorm/add_1:z:0model_6/relu2/Cast:y:0*
T0*'
_output_shapes
:         Ё
model_6/relu2/truedivRealDivmodel_6/relu2/mul_1:z:0model_6/relu2/Cast_1:y:0*
T0*'
_output_shapes
:         e
model_6/relu2/NegNegmodel_6/relu2/truediv:z:0*
T0*'
_output_shapes
:         i
model_6/relu2/RoundRoundmodel_6/relu2/truediv:z:0*
T0*'
_output_shapes
:         |
model_6/relu2/addAddV2model_6/relu2/Neg:y:0model_6/relu2/Round:y:0*
T0*'
_output_shapes
:         s
model_6/relu2/StopGradientStopGradientmodel_6/relu2/add:z:0*
T0*'
_output_shapes
:         ј
model_6/relu2/add_1AddV2model_6/relu2/truediv:z:0#model_6/relu2/StopGradient:output:0*
T0*'
_output_shapes
:         Ё
model_6/relu2/truediv_1RealDivmodel_6/relu2/add_1:z:0model_6/relu2/Cast:y:0*
T0*'
_output_shapes
:         ^
model_6/relu2/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?
model_6/relu2/truediv_2RealDiv"model_6/relu2/truediv_2/x:output:0model_6/relu2/Cast:y:0*
T0*
_output_shapes
: Z
model_6/relu2/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?x
model_6/relu2/sub_3Submodel_6/relu2/sub_3/x:output:0model_6/relu2/truediv_2:z:0*
T0*
_output_shapes
: ќ
#model_6/relu2/clip_by_value/MinimumMinimummodel_6/relu2/truediv_1:z:0model_6/relu2/sub_3:z:0*
T0*'
_output_shapes
:         b
model_6/relu2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
model_6/relu2/clip_by_valueMaximum'model_6/relu2/clip_by_value/Minimum:z:0&model_6/relu2/clip_by_value/y:output:0*
T0*'
_output_shapes
:         Є
model_6/relu2/mul_2Mulmodel_6/relu2/Cast_1:y:0model_6/relu2/clip_by_value:z:0*
T0*'
_output_shapes
:         m
model_6/relu2/Neg_1Negmodel_6/relu2/SelectV2:output:0*
T0*'
_output_shapes
:         ђ
model_6/relu2/add_2AddV2model_6/relu2/Neg_1:y:0model_6/relu2/mul_2:z:0*
T0*'
_output_shapes
:         Z
model_6/relu2/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ё
model_6/relu2/mul_3Mulmodel_6/relu2/mul_3/x:output:0model_6/relu2/add_2:z:0*
T0*'
_output_shapes
:         w
model_6/relu2/StopGradient_1StopGradientmodel_6/relu2/mul_3:z:0*
T0*'
_output_shapes
:         ќ
model_6/relu2/add_3AddV2model_6/relu2/SelectV2:output:0%model_6/relu2/StopGradient_1:output:0*
T0*'
_output_shapes
:         \
model_6/dense_output/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :\
model_6/dense_output/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :і
model_6/dense_output/PowPow#model_6/dense_output/Pow/x:output:0#model_6/dense_output/Pow/y:output:0*
T0*
_output_shapes
: o
model_6/dense_output/CastCastmodel_6/dense_output/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: љ
#model_6/dense_output/ReadVariableOpReadVariableOp,model_6_dense_output_readvariableop_resource*
_output_shapes

:*
dtype0_
model_6/dense_output/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Eџ
model_6/dense_output/mulMul+model_6/dense_output/ReadVariableOp:value:0#model_6/dense_output/mul/y:output:0*
T0*
_output_shapes

:Ї
model_6/dense_output/truedivRealDivmodel_6/dense_output/mul:z:0model_6/dense_output/Cast:y:0*
T0*
_output_shapes

:j
model_6/dense_output/NegNeg model_6/dense_output/truediv:z:0*
T0*
_output_shapes

:n
model_6/dense_output/RoundRound model_6/dense_output/truediv:z:0*
T0*
_output_shapes

:ѕ
model_6/dense_output/addAddV2model_6/dense_output/Neg:y:0model_6/dense_output/Round:y:0*
T0*
_output_shapes

:x
!model_6/dense_output/StopGradientStopGradientmodel_6/dense_output/add:z:0*
T0*
_output_shapes

:џ
model_6/dense_output/add_1AddV2 model_6/dense_output/truediv:z:0*model_6/dense_output/StopGradient:output:0*
T0*
_output_shapes

:q
,model_6/dense_output/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я Dх
*model_6/dense_output/clip_by_value/MinimumMinimummodel_6/dense_output/add_1:z:05model_6/dense_output/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:i
$model_6/dense_output/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼х
"model_6/dense_output/clip_by_valueMaximum.model_6/dense_output/clip_by_value/Minimum:z:0-model_6/dense_output/clip_by_value/y:output:0*
T0*
_output_shapes

:Љ
model_6/dense_output/mul_1Mulmodel_6/dense_output/Cast:y:0&model_6/dense_output/clip_by_value:z:0*
T0*
_output_shapes

:e
 model_6/dense_output/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   EЮ
model_6/dense_output/truediv_1RealDivmodel_6/dense_output/mul_1:z:0)model_6/dense_output/truediv_1/y:output:0*
T0*
_output_shapes

:a
model_6/dense_output/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ћ
model_6/dense_output/mul_2Mul%model_6/dense_output/mul_2/x:output:0"model_6/dense_output/truediv_1:z:0*
T0*
_output_shapes

:њ
%model_6/dense_output/ReadVariableOp_1ReadVariableOp,model_6_dense_output_readvariableop_resource*
_output_shapes

:*
dtype0y
model_6/dense_output/Neg_1Neg-model_6/dense_output/ReadVariableOp_1:value:0*
T0*
_output_shapes

:ї
model_6/dense_output/add_2AddV2model_6/dense_output/Neg_1:y:0model_6/dense_output/mul_2:z:0*
T0*
_output_shapes

:a
model_6/dense_output/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Љ
model_6/dense_output/mul_3Mul%model_6/dense_output/mul_3/x:output:0model_6/dense_output/add_2:z:0*
T0*
_output_shapes

:|
#model_6/dense_output/StopGradient_1StopGradientmodel_6/dense_output/mul_3:z:0*
T0*
_output_shapes

:њ
%model_6/dense_output/ReadVariableOp_2ReadVariableOp,model_6_dense_output_readvariableop_resource*
_output_shapes

:*
dtype0Е
model_6/dense_output/add_3AddV2-model_6/dense_output/ReadVariableOp_2:value:0,model_6/dense_output/StopGradient_1:output:0*
T0*
_output_shapes

:љ
model_6/dense_output/MatMulMatMulmodel_6/relu2/add_3:z:0model_6/dense_output/add_3:z:0*
T0*'
_output_shapes
:         ^
model_6/dense_output/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :^
model_6/dense_output/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :љ
model_6/dense_output/Pow_1Pow%model_6/dense_output/Pow_1/x:output:0%model_6/dense_output/Pow_1/y:output:0*
T0*
_output_shapes
: s
model_6/dense_output/Cast_1Castmodel_6/dense_output/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: љ
%model_6/dense_output/ReadVariableOp_3ReadVariableOp.model_6_dense_output_readvariableop_3_resource*
_output_shapes
:*
dtype0a
model_6/dense_output/mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Eю
model_6/dense_output/mul_4Mul-model_6/dense_output/ReadVariableOp_3:value:0%model_6/dense_output/mul_4/y:output:0*
T0*
_output_shapes
:Ј
model_6/dense_output/truediv_2RealDivmodel_6/dense_output/mul_4:z:0model_6/dense_output/Cast_1:y:0*
T0*
_output_shapes
:j
model_6/dense_output/Neg_2Neg"model_6/dense_output/truediv_2:z:0*
T0*
_output_shapes
:n
model_6/dense_output/Round_1Round"model_6/dense_output/truediv_2:z:0*
T0*
_output_shapes
:і
model_6/dense_output/add_4AddV2model_6/dense_output/Neg_2:y:0 model_6/dense_output/Round_1:y:0*
T0*
_output_shapes
:x
#model_6/dense_output/StopGradient_2StopGradientmodel_6/dense_output/add_4:z:0*
T0*
_output_shapes
:џ
model_6/dense_output/add_5AddV2"model_6/dense_output/truediv_2:z:0,model_6/dense_output/StopGradient_2:output:0*
T0*
_output_shapes
:s
.model_6/dense_output/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я Dх
,model_6/dense_output/clip_by_value_1/MinimumMinimummodel_6/dense_output/add_5:z:07model_6/dense_output/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:k
&model_6/dense_output/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼и
$model_6/dense_output/clip_by_value_1Maximum0model_6/dense_output/clip_by_value_1/Minimum:z:0/model_6/dense_output/clip_by_value_1/y:output:0*
T0*
_output_shapes
:Љ
model_6/dense_output/mul_5Mulmodel_6/dense_output/Cast_1:y:0(model_6/dense_output/clip_by_value_1:z:0*
T0*
_output_shapes
:e
 model_6/dense_output/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   EЎ
model_6/dense_output/truediv_3RealDivmodel_6/dense_output/mul_5:z:0)model_6/dense_output/truediv_3/y:output:0*
T0*
_output_shapes
:a
model_6/dense_output/mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Љ
model_6/dense_output/mul_6Mul%model_6/dense_output/mul_6/x:output:0"model_6/dense_output/truediv_3:z:0*
T0*
_output_shapes
:љ
%model_6/dense_output/ReadVariableOp_4ReadVariableOp.model_6_dense_output_readvariableop_3_resource*
_output_shapes
:*
dtype0u
model_6/dense_output/Neg_3Neg-model_6/dense_output/ReadVariableOp_4:value:0*
T0*
_output_shapes
:ѕ
model_6/dense_output/add_6AddV2model_6/dense_output/Neg_3:y:0model_6/dense_output/mul_6:z:0*
T0*
_output_shapes
:a
model_6/dense_output/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ї
model_6/dense_output/mul_7Mul%model_6/dense_output/mul_7/x:output:0model_6/dense_output/add_6:z:0*
T0*
_output_shapes
:x
#model_6/dense_output/StopGradient_3StopGradientmodel_6/dense_output/mul_7:z:0*
T0*
_output_shapes
:љ
%model_6/dense_output/ReadVariableOp_5ReadVariableOp.model_6_dense_output_readvariableop_3_resource*
_output_shapes
:*
dtype0Ц
model_6/dense_output/add_7AddV2-model_6/dense_output/ReadVariableOp_5:value:0,model_6/dense_output/StopGradient_3:output:0*
T0*
_output_shapes
:а
model_6/dense_output/BiasAddBiasAdd%model_6/dense_output/MatMul:product:0model_6/dense_output/add_7:z:0*
T0*'
_output_shapes
:         t
IdentityIdentity%model_6/dense_output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ц
NoOpNoOp,^model_6/BatchNorm1/batchnorm/ReadVariableOp.^model_6/BatchNorm1/batchnorm/ReadVariableOp_1.^model_6/BatchNorm1/batchnorm/ReadVariableOp_20^model_6/BatchNorm1/batchnorm/mul/ReadVariableOp,^model_6/BatchNorm2/batchnorm/ReadVariableOp.^model_6/BatchNorm2/batchnorm/ReadVariableOp_1.^model_6/BatchNorm2/batchnorm/ReadVariableOp_20^model_6/BatchNorm2/batchnorm/mul/ReadVariableOp^model_6/dense1/ReadVariableOp ^model_6/dense1/ReadVariableOp_1 ^model_6/dense1/ReadVariableOp_2 ^model_6/dense1/ReadVariableOp_3 ^model_6/dense1/ReadVariableOp_4 ^model_6/dense1/ReadVariableOp_5^model_6/dense2/ReadVariableOp ^model_6/dense2/ReadVariableOp_1 ^model_6/dense2/ReadVariableOp_2 ^model_6/dense2/ReadVariableOp_3 ^model_6/dense2/ReadVariableOp_4 ^model_6/dense2/ReadVariableOp_5$^model_6/dense_output/ReadVariableOp&^model_6/dense_output/ReadVariableOp_1&^model_6/dense_output/ReadVariableOp_2&^model_6/dense_output/ReadVariableOp_3&^model_6/dense_output/ReadVariableOp_4&^model_6/dense_output/ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : : : : : : : 2^
-model_6/BatchNorm1/batchnorm/ReadVariableOp_1-model_6/BatchNorm1/batchnorm/ReadVariableOp_12^
-model_6/BatchNorm1/batchnorm/ReadVariableOp_2-model_6/BatchNorm1/batchnorm/ReadVariableOp_22Z
+model_6/BatchNorm1/batchnorm/ReadVariableOp+model_6/BatchNorm1/batchnorm/ReadVariableOp2b
/model_6/BatchNorm1/batchnorm/mul/ReadVariableOp/model_6/BatchNorm1/batchnorm/mul/ReadVariableOp2^
-model_6/BatchNorm2/batchnorm/ReadVariableOp_1-model_6/BatchNorm2/batchnorm/ReadVariableOp_12^
-model_6/BatchNorm2/batchnorm/ReadVariableOp_2-model_6/BatchNorm2/batchnorm/ReadVariableOp_22Z
+model_6/BatchNorm2/batchnorm/ReadVariableOp+model_6/BatchNorm2/batchnorm/ReadVariableOp2b
/model_6/BatchNorm2/batchnorm/mul/ReadVariableOp/model_6/BatchNorm2/batchnorm/mul/ReadVariableOp2B
model_6/dense1/ReadVariableOp_1model_6/dense1/ReadVariableOp_12B
model_6/dense1/ReadVariableOp_2model_6/dense1/ReadVariableOp_22B
model_6/dense1/ReadVariableOp_3model_6/dense1/ReadVariableOp_32B
model_6/dense1/ReadVariableOp_4model_6/dense1/ReadVariableOp_42B
model_6/dense1/ReadVariableOp_5model_6/dense1/ReadVariableOp_52>
model_6/dense1/ReadVariableOpmodel_6/dense1/ReadVariableOp2B
model_6/dense2/ReadVariableOp_1model_6/dense2/ReadVariableOp_12B
model_6/dense2/ReadVariableOp_2model_6/dense2/ReadVariableOp_22B
model_6/dense2/ReadVariableOp_3model_6/dense2/ReadVariableOp_32B
model_6/dense2/ReadVariableOp_4model_6/dense2/ReadVariableOp_42B
model_6/dense2/ReadVariableOp_5model_6/dense2/ReadVariableOp_52>
model_6/dense2/ReadVariableOpmodel_6/dense2/ReadVariableOp2N
%model_6/dense_output/ReadVariableOp_1%model_6/dense_output/ReadVariableOp_12N
%model_6/dense_output/ReadVariableOp_2%model_6/dense_output/ReadVariableOp_22N
%model_6/dense_output/ReadVariableOp_3%model_6/dense_output/ReadVariableOp_32N
%model_6/dense_output/ReadVariableOp_4%model_6/dense_output/ReadVariableOp_42N
%model_6/dense_output/ReadVariableOp_5%model_6/dense_output/ReadVariableOp_52J
#model_6/dense_output/ReadVariableOp#model_6/dense_output/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
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
'
_output_shapes
:         
'
_user_specified_namey_timed_input
Ь
Ћ
(__inference_dense2_layer_call_fn_1796594

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense2_layer_call_and_return_conditional_losses_1796059o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1796590:'#
!
_user_specified_name	1796588:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ї&
Я
G__inference_BatchNorm2_layer_call_and_return_conditional_losses_1795811

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбbatchnorm/ReadVariableOpбbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:Є
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:         l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ъ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<ѓ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Ђ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:г
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<є
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Є
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:         h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:         к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
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
resource:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Е2
д
C__inference_dense2_layer_call_and_return_conditional_losses_1796059

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identityѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бReadVariableOp_4бReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: E
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: f
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я Dv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:         I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
Pow_1PowPow_1/x:output:0Pow_1/y:output:0*
T0*
_output_shapes
: I
Cast_1Cast	Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:P
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:K
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я Dv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:R
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   EZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         њ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ї&
Я
G__inference_BatchNorm1_layer_call_and_return_conditional_losses_1795731

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбbatchnorm/ReadVariableOpбbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:Є
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:         l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ъ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<ѓ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Ђ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:г
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<є
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Є
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:         h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:         к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
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
resource:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
▀
н
)__inference_model_6_layer_call_fn_1796303
y_timed_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identityѕбStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCally_timed_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1796237o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1796299:'#
!
_user_specified_name	1796297:'#
!
_user_specified_name	1796295:'#
!
_user_specified_name	1796293:'
#
!
_user_specified_name	1796291:'	#
!
_user_specified_name	1796289:'#
!
_user_specified_name	1796287:'#
!
_user_specified_name	1796285:'#
!
_user_specified_name	1796283:'#
!
_user_specified_name	1796281:'#
!
_user_specified_name	1796279:'#
!
_user_specified_name	1796277:'#
!
_user_specified_name	1796275:'#
!
_user_specified_name	1796273:V R
'
_output_shapes
:         
'
_user_specified_namey_timed_input
ѓ!
^
B__inference_relu2_layer_call_and_return_conditional_losses_1796122

inputs
identityG
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: E
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B : Q
Pow_1PowPow_1/x:output:0Pow_1/y:output:0*
T0*
_output_shapes
: I
Cast_1Cast	Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B : Q
Cast_2CastCast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @AG
subSub
Cast_2:y:0sub/y:output:0*
T0*
_output_shapes
: F
Pow_2PowConst:output:0sub:z:0*
T0*
_output_shapes
: D
sub_1Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
	LessEqual	LessEqualinputs	sub_1:z:0*
T0*'
_output_shapes
:         F
ReluReluinputs*
T0*'
_output_shapes
:         S
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::ь¤T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:         D
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:         r
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:         P
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:         [
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:         I
NegNegtruediv:z:0*
T0*'
_output_shapes
:         M
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:         R
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:         W
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:         d
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:         [
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:         P
truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?U
	truediv_2RealDivtruediv_2/x:output:0Cast:y:0*
T0*
_output_shapes
: L
sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?N
sub_3Subsub_3/x:output:0truediv_2:z:0*
T0*
_output_shapes
: l
clip_by_value/MinimumMinimumtruediv_1:z:0	sub_3:z:0*
T0*'
_output_shapes
:         T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:         ]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:         Q
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:         V
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:         L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:         [
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:         l
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:         Q
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
њ	
К
,__inference_BatchNorm1_layer_call_fn_1796464

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_BatchNorm1_layer_call_and_return_conditional_losses_1795731o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1796460:'#
!
_user_specified_name	1796458:'#
!
_user_specified_name	1796456:'#
!
_user_specified_name	1796454:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ѓ!
^
B__inference_relu1_layer_call_and_return_conditional_losses_1795990

inputs
identityG
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: E
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B : Q
Pow_1PowPow_1/x:output:0Pow_1/y:output:0*
T0*
_output_shapes
: I
Cast_1Cast	Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B : Q
Cast_2CastCast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @AG
subSub
Cast_2:y:0sub/y:output:0*
T0*
_output_shapes
: F
Pow_2PowConst:output:0sub:z:0*
T0*
_output_shapes
: D
sub_1Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
	LessEqual	LessEqualinputs	sub_1:z:0*
T0*'
_output_shapes
:         F
ReluReluinputs*
T0*'
_output_shapes
:         S
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::ь¤T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:         D
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:         r
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:         P
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:         [
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:         I
NegNegtruediv:z:0*
T0*'
_output_shapes
:         M
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:         R
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:         W
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:         d
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:         [
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:         P
truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?U
	truediv_2RealDivtruediv_2/x:output:0Cast:y:0*
T0*
_output_shapes
: L
sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?N
sub_3Subsub_3/x:output:0truediv_2:z:0*
T0*
_output_shapes
: l
clip_by_value/MinimumMinimumtruediv_1:z:0	sub_3:z:0*
T0*'
_output_shapes
:         T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:         ]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:         Q
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:         V
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:         L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:         [
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:         l
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:         Q
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╚
д
G__inference_BatchNorm1_layer_call_and_return_conditional_losses_1796531

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityѕбbatchnorm/ReadVariableOpбbatchnorm/ReadVariableOp_1бbatchnorm/ReadVariableOp_2бbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:         z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:         ќ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
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
resource:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╚
д
G__inference_BatchNorm2_layer_call_and_return_conditional_losses_1795831

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityѕбbatchnorm/ReadVariableOpбbatchnorm/ReadVariableOp_1бbatchnorm/ReadVariableOp_2бbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:         z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:         ќ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
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
resource:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
њ	
К
,__inference_BatchNorm2_layer_call_fn_1796675

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_BatchNorm2_layer_call_and_return_conditional_losses_1795811o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1796671:'#
!
_user_specified_name	1796669:'#
!
_user_specified_name	1796667:'#
!
_user_specified_name	1796665:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ѓ!
^
B__inference_relu2_layer_call_and_return_conditional_losses_1796796

inputs
identityG
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: E
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B : Q
Pow_1PowPow_1/x:output:0Pow_1/y:output:0*
T0*
_output_shapes
: I
Cast_1Cast	Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B : Q
Cast_2CastCast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @AG
subSub
Cast_2:y:0sub/y:output:0*
T0*
_output_shapes
: F
Pow_2PowConst:output:0sub:z:0*
T0*
_output_shapes
: D
sub_1Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
	LessEqual	LessEqualinputs	sub_1:z:0*
T0*'
_output_shapes
:         F
ReluReluinputs*
T0*'
_output_shapes
:         S
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::ь¤T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:         D
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:         r
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:         P
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:         [
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:         I
NegNegtruediv:z:0*
T0*'
_output_shapes
:         M
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:         R
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:         W
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:         d
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:         [
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:         P
truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?U
	truediv_2RealDivtruediv_2/x:output:0Cast:y:0*
T0*
_output_shapes
: L
sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?N
sub_3Subsub_3/x:output:0truediv_2:z:0*
T0*
_output_shapes
: l
clip_by_value/MinimumMinimumtruediv_1:z:0	sub_3:z:0*
T0*'
_output_shapes
:         T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:         ]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:         Q
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:         V
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:         L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:         [
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:         l
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:         Q
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
»2
г
I__inference_dense_output_layer_call_and_return_conditional_losses_1796873

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identityѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бReadVariableOp_4бReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: E
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: f
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я Dv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:         I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
Pow_1PowPow_1/x:output:0Pow_1/y:output:0*
T0*
_output_shapes
: I
Cast_1Cast	Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   E]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:P
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:K
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * Я Dv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ┼x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:R
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   EZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         њ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ї&
Я
G__inference_BatchNorm2_layer_call_and_return_conditional_losses_1796722

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбbatchnorm/ReadVariableOpбbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:Є
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:         l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ъ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<ѓ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Ђ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:г
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<є
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Є
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:         h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:         к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
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
resource:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Щ
Џ
.__inference_dense_output_layer_call_fn_1796805

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_dense_output_layer_call_and_return_conditional_losses_1796191o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1796801:'#
!
_user_specified_name	1796799:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
█
н
)__inference_model_6_layer_call_fn_1796270
y_timed_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identityѕбStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCally_timed_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1796198o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1796266:'#
!
_user_specified_name	1796264:'#
!
_user_specified_name	1796262:'#
!
_user_specified_name	1796260:'
#
!
_user_specified_name	1796258:'	#
!
_user_specified_name	1796256:'#
!
_user_specified_name	1796254:'#
!
_user_specified_name	1796252:'#
!
_user_specified_name	1796250:'#
!
_user_specified_name	1796248:'#
!
_user_specified_name	1796246:'#
!
_user_specified_name	1796244:'#
!
_user_specified_name	1796242:'#
!
_user_specified_name	1796240:V R
'
_output_shapes
:         
'
_user_specified_namey_timed_input
аE
▄
#__inference__traced_restore_1797030
file_prefix0
assignvariableop_dense1_kernel:,
assignvariableop_1_dense1_bias:1
#assignvariableop_2_batchnorm1_gamma:0
"assignvariableop_3_batchnorm1_beta:7
)assignvariableop_4_batchnorm1_moving_mean:;
-assignvariableop_5_batchnorm1_moving_variance:2
 assignvariableop_6_dense2_kernel:,
assignvariableop_7_dense2_bias:1
#assignvariableop_8_batchnorm2_gamma:0
"assignvariableop_9_batchnorm2_beta:8
*assignvariableop_10_batchnorm2_moving_mean:<
.assignvariableop_11_batchnorm2_moving_variance:9
'assignvariableop_12_dense_output_kernel:3
%assignvariableop_13_dense_output_bias:
identity_15ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_2бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9Г
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*М
value╔BкB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHј
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B ж
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOpAssignVariableOpassignvariableop_dense1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:х
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_2AssignVariableOp#assignvariableop_2_batchnorm1_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_3AssignVariableOp"assignvariableop_3_batchnorm1_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_4AssignVariableOp)assignvariableop_4_batchnorm1_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_5AssignVariableOp-assignvariableop_5_batchnorm1_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense2_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:х
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense2_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_8AssignVariableOp#assignvariableop_8_batchnorm2_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_9AssignVariableOp"assignvariableop_9_batchnorm2_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_10AssignVariableOp*assignvariableop_10_batchnorm2_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_11AssignVariableOp.assignvariableop_11_batchnorm2_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_12AssignVariableOp'assignvariableop_12_dense_output_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_13AssignVariableOp%assignvariableop_13_dense_output_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Ѓ
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: ╠
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_15Identity_15:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:1-
+
_user_specified_namedense_output/bias:3/
-
_user_specified_namedense_output/kernel::6
4
_user_specified_nameBatchNorm2/moving_variance:62
0
_user_specified_nameBatchNorm2/moving_mean:/
+
)
_user_specified_nameBatchNorm2/beta:0	,
*
_user_specified_nameBatchNorm2/gamma:+'
%
_user_specified_namedense2/bias:-)
'
_user_specified_namedense2/kernel::6
4
_user_specified_nameBatchNorm1/moving_variance:62
0
_user_specified_nameBatchNorm1/moving_mean:/+
)
_user_specified_nameBatchNorm1/beta:0,
*
_user_specified_nameBatchNorm1/gamma:+'
%
_user_specified_namedense1/bias:-)
'
_user_specified_namedense1/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
└'
щ
D__inference_model_6_layer_call_and_return_conditional_losses_1796237
y_timed_input 
dense1_1796201:
dense1_1796203: 
batchnorm1_1796206: 
batchnorm1_1796208: 
batchnorm1_1796210: 
batchnorm1_1796212: 
dense2_1796216:
dense2_1796218: 
batchnorm2_1796221: 
batchnorm2_1796223: 
batchnorm2_1796225: 
batchnorm2_1796227:&
dense_output_1796231:"
dense_output_1796233:
identityѕб"BatchNorm1/StatefulPartitionedCallб"BatchNorm2/StatefulPartitionedCallбdense1/StatefulPartitionedCallбdense2/StatefulPartitionedCallб$dense_output/StatefulPartitionedCallЫ
dense1/StatefulPartitionedCallStatefulPartitionedCally_timed_inputdense1_1796201dense1_1796203*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense1_layer_call_and_return_conditional_losses_1795927╚
"BatchNorm1/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0batchnorm1_1796206batchnorm1_1796208batchnorm1_1796210batchnorm1_1796212*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_BatchNorm1_layer_call_and_return_conditional_losses_1795751п
relu1/PartitionedCallPartitionedCall+BatchNorm1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_relu1_layer_call_and_return_conditional_losses_1795990Ѓ
dense2/StatefulPartitionedCallStatefulPartitionedCallrelu1/PartitionedCall:output:0dense2_1796216dense2_1796218*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense2_layer_call_and_return_conditional_losses_1796059╚
"BatchNorm2/StatefulPartitionedCallStatefulPartitionedCall'dense2/StatefulPartitionedCall:output:0batchnorm2_1796221batchnorm2_1796223batchnorm2_1796225batchnorm2_1796227*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_BatchNorm2_layer_call_and_return_conditional_losses_1795831п
relu2/PartitionedCallPartitionedCall+BatchNorm2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_relu2_layer_call_and_return_conditional_losses_1796122Џ
$dense_output/StatefulPartitionedCallStatefulPartitionedCallrelu2/PartitionedCall:output:0dense_output_1796231dense_output_1796233*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_dense_output_layer_call_and_return_conditional_losses_1796191|
IdentityIdentity-dense_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Н
NoOpNoOp#^BatchNorm1/StatefulPartitionedCall#^BatchNorm2/StatefulPartitionedCall^dense1/StatefulPartitionedCall^dense2/StatefulPartitionedCall%^dense_output/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : : : : : : : 2H
"BatchNorm1/StatefulPartitionedCall"BatchNorm1/StatefulPartitionedCall2H
"BatchNorm2/StatefulPartitionedCall"BatchNorm2/StatefulPartitionedCall2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2@
dense2/StatefulPartitionedCalldense2/StatefulPartitionedCall2L
$dense_output/StatefulPartitionedCall$dense_output/StatefulPartitionedCall:'#
!
_user_specified_name	1796233:'#
!
_user_specified_name	1796231:'#
!
_user_specified_name	1796227:'#
!
_user_specified_name	1796225:'
#
!
_user_specified_name	1796223:'	#
!
_user_specified_name	1796221:'#
!
_user_specified_name	1796218:'#
!
_user_specified_name	1796216:'#
!
_user_specified_name	1796212:'#
!
_user_specified_name	1796210:'#
!
_user_specified_name	1796208:'#
!
_user_specified_name	1796206:'#
!
_user_specified_name	1796203:'#
!
_user_specified_name	1796201:V R
'
_output_shapes
:         
'
_user_specified_namey_timed_input
ћ	
К
,__inference_BatchNorm2_layer_call_fn_1796688

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_BatchNorm2_layer_call_and_return_conditional_losses_1795831o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1796684:'#
!
_user_specified_name	1796682:'#
!
_user_specified_name	1796680:'#
!
_user_specified_name	1796678:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ь
Ћ
(__inference_dense1_layer_call_fn_1796383

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense1_layer_call_and_return_conditional_losses_1795927o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1796379:'#
!
_user_specified_name	1796377:O K
'
_output_shapes
:         
 
_user_specified_nameinputs"╩L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╗
serving_defaultД
G
y_timed_input6
serving_default_y_timed_input:0         @
dense_output0
StatefulPartitionedCall:0         tensorflow/serving/predict:ѓ▓
Й
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
▒
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
kernel_quantizer
bias_quantizer
kernel_quantizer_internal
bias_quantizer_internal

quantizers

kernel
bias"
_tf_keras_layer
Ж
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"axis
	#gamma
$beta
%moving_mean
&moving_variance"
_tf_keras_layer
─
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-
activation
-	quantizer"
_tf_keras_layer
▒
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses
4kernel_quantizer
5bias_quantizer
4kernel_quantizer_internal
5bias_quantizer_internal
6
quantizers

7kernel
8bias"
_tf_keras_layer
Ж
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses
?axis
	@gamma
Abeta
Bmoving_mean
Cmoving_variance"
_tf_keras_layer
─
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
J
activation
J	quantizer"
_tf_keras_layer
▒
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses
Qkernel_quantizer
Rbias_quantizer
Qkernel_quantizer_internal
Rbias_quantizer_internal
S
quantizers

Tkernel
Ubias"
_tf_keras_layer
є
0
1
#2
$3
%4
&5
76
87
@8
A9
B10
C11
T12
U13"
trackable_list_wrapper
f
0
1
#2
$3
74
85
@6
A7
T8
U9"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
┼
[trace_0
\trace_12ј
)__inference_model_6_layer_call_fn_1796270
)__inference_model_6_layer_call_fn_1796303х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z[trace_0z\trace_1
ч
]trace_0
^trace_12─
D__inference_model_6_layer_call_and_return_conditional_losses_1796198
D__inference_model_6_layer_call_and_return_conditional_losses_1796237х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z]trace_0z^trace_1
МBл
"__inference__wrapped_model_1795697y_timed_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
,
_serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Р
etrace_02┼
(__inference_dense1_layer_call_fn_1796383ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zetrace_0
§
ftrace_02Я
C__inference_dense1_layer_call_and_return_conditional_losses_1796451ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zftrace_0
"
_generic_user_object
"
_generic_user_object
.
0
1"
trackable_list_wrapper
:2dense1/kernel
:2dense1/bias
<
#0
$1
%2
&3"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
╦
ltrace_0
mtrace_12ћ
,__inference_BatchNorm1_layer_call_fn_1796464
,__inference_BatchNorm1_layer_call_fn_1796477х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zltrace_0zmtrace_1
Ђ
ntrace_0
otrace_12╩
G__inference_BatchNorm1_layer_call_and_return_conditional_losses_1796511
G__inference_BatchNorm1_layer_call_and_return_conditional_losses_1796531х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zntrace_0zotrace_1
 "
trackable_list_wrapper
:2BatchNorm1/gamma
:2BatchNorm1/beta
&:$ (2BatchNorm1/moving_mean
*:( (2BatchNorm1/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
р
utrace_02─
'__inference_relu1_layer_call_fn_1796536ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zutrace_0
Ч
vtrace_02▀
B__inference_relu1_layer_call_and_return_conditional_losses_1796585ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zvtrace_0
"
_generic_user_object
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
Р
|trace_02┼
(__inference_dense2_layer_call_fn_1796594ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z|trace_0
§
}trace_02Я
C__inference_dense2_layer_call_and_return_conditional_losses_1796662ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z}trace_0
"
_generic_user_object
"
_generic_user_object
.
40
51"
trackable_list_wrapper
:2dense2/kernel
:2dense2/bias
<
@0
A1
B2
C3"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
~non_trainable_variables

layers
ђmetrics
 Ђlayer_regularization_losses
ѓlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
¤
Ѓtrace_0
ёtrace_12ћ
,__inference_BatchNorm2_layer_call_fn_1796675
,__inference_BatchNorm2_layer_call_fn_1796688х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЃtrace_0zёtrace_1
Ё
Ёtrace_0
єtrace_12╩
G__inference_BatchNorm2_layer_call_and_return_conditional_losses_1796722
G__inference_BatchNorm2_layer_call_and_return_conditional_losses_1796742х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЁtrace_0zєtrace_1
 "
trackable_list_wrapper
:2BatchNorm2/gamma
:2BatchNorm2/beta
&:$ (2BatchNorm2/moving_mean
*:( (2BatchNorm2/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Єnon_trainable_variables
ѕlayers
Ѕmetrics
 іlayer_regularization_losses
Іlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
с
їtrace_02─
'__inference_relu2_layer_call_fn_1796747ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zїtrace_0
■
Їtrace_02▀
B__inference_relu2_layer_call_and_return_conditional_losses_1796796ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЇtrace_0
"
_generic_user_object
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
јnon_trainable_variables
Јlayers
љmetrics
 Љlayer_regularization_losses
њlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
Ж
Њtrace_02╦
.__inference_dense_output_layer_call_fn_1796805ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЊtrace_0
Ё
ћtrace_02Т
I__inference_dense_output_layer_call_and_return_conditional_losses_1796873ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zћtrace_0
"
_generic_user_object
"
_generic_user_object
.
Q0
R1"
trackable_list_wrapper
%:#2dense_output/kernel
:2dense_output/bias
<
%0
&1
B2
C3"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
эBЗ
)__inference_model_6_layer_call_fn_1796270y_timed_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
эBЗ
)__inference_model_6_layer_call_fn_1796303y_timed_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
њBЈ
D__inference_model_6_layer_call_and_return_conditional_losses_1796198y_timed_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
њBЈ
D__inference_model_6_layer_call_and_return_conditional_losses_1796237y_timed_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
мB¤
%__inference_signature_wrapper_1796374y_timed_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
мB¤
(__inference_dense1_layer_call_fn_1796383inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ьBЖ
C__inference_dense1_layer_call_and_return_conditional_losses_1796451inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
зB­
,__inference_BatchNorm1_layer_call_fn_1796464inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
зB­
,__inference_BatchNorm1_layer_call_fn_1796477inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
јBІ
G__inference_BatchNorm1_layer_call_and_return_conditional_losses_1796511inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
јBІ
G__inference_BatchNorm1_layer_call_and_return_conditional_losses_1796531inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
ЛB╬
'__inference_relu1_layer_call_fn_1796536inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ВBж
B__inference_relu1_layer_call_and_return_conditional_losses_1796585inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
мB¤
(__inference_dense2_layer_call_fn_1796594inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ьBЖ
C__inference_dense2_layer_call_and_return_conditional_losses_1796662inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
зB­
,__inference_BatchNorm2_layer_call_fn_1796675inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
зB­
,__inference_BatchNorm2_layer_call_fn_1796688inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
јBІ
G__inference_BatchNorm2_layer_call_and_return_conditional_losses_1796722inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
јBІ
G__inference_BatchNorm2_layer_call_and_return_conditional_losses_1796742inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
ЛB╬
'__inference_relu2_layer_call_fn_1796747inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ВBж
B__inference_relu2_layer_call_and_return_conditional_losses_1796796inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
пBН
.__inference_dense_output_layer_call_fn_1796805inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
зB­
I__inference_dense_output_layer_call_and_return_conditional_losses_1796873inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 И
G__inference_BatchNorm1_layer_call_and_return_conditional_losses_1796511m%&#$7б4
-б*
 і
inputs         
p

 
ф ",б)
"і
tensor_0         
џ И
G__inference_BatchNorm1_layer_call_and_return_conditional_losses_1796531m&#%$7б4
-б*
 і
inputs         
p 

 
ф ",б)
"і
tensor_0         
џ њ
,__inference_BatchNorm1_layer_call_fn_1796464b%&#$7б4
-б*
 і
inputs         
p

 
ф "!і
unknown         њ
,__inference_BatchNorm1_layer_call_fn_1796477b&#%$7б4
-б*
 і
inputs         
p 

 
ф "!і
unknown         И
G__inference_BatchNorm2_layer_call_and_return_conditional_losses_1796722mBC@A7б4
-б*
 і
inputs         
p

 
ф ",б)
"і
tensor_0         
џ И
G__inference_BatchNorm2_layer_call_and_return_conditional_losses_1796742mC@BA7б4
-б*
 і
inputs         
p 

 
ф ",б)
"і
tensor_0         
џ њ
,__inference_BatchNorm2_layer_call_fn_1796675bBC@A7б4
-б*
 і
inputs         
p

 
ф "!і
unknown         њ
,__inference_BatchNorm2_layer_call_fn_1796688bC@BA7б4
-б*
 і
inputs         
p 

 
ф "!і
unknown         г
"__inference__wrapped_model_1795697Ё&#%$78C@BATU6б3
,б)
'і$
y_timed_input         
ф ";ф8
6
dense_output&і#
dense_output         ф
C__inference_dense1_layer_call_and_return_conditional_losses_1796451c/б,
%б"
 і
inputs         
ф ",б)
"і
tensor_0         
џ ё
(__inference_dense1_layer_call_fn_1796383X/б,
%б"
 і
inputs         
ф "!і
unknown         ф
C__inference_dense2_layer_call_and_return_conditional_losses_1796662c78/б,
%б"
 і
inputs         
ф ",б)
"і
tensor_0         
џ ё
(__inference_dense2_layer_call_fn_1796594X78/б,
%б"
 і
inputs         
ф "!і
unknown         ░
I__inference_dense_output_layer_call_and_return_conditional_losses_1796873cTU/б,
%б"
 і
inputs         
ф ",б)
"і
tensor_0         
џ і
.__inference_dense_output_layer_call_fn_1796805XTU/б,
%б"
 і
inputs         
ф "!і
unknown         к
D__inference_model_6_layer_call_and_return_conditional_losses_1796198~%&#$78BC@ATU>б;
4б1
'і$
y_timed_input         
p

 
ф ",б)
"і
tensor_0         
џ к
D__inference_model_6_layer_call_and_return_conditional_losses_1796237~&#%$78C@BATU>б;
4б1
'і$
y_timed_input         
p 

 
ф ",б)
"і
tensor_0         
џ а
)__inference_model_6_layer_call_fn_1796270s%&#$78BC@ATU>б;
4б1
'і$
y_timed_input         
p

 
ф "!і
unknown         а
)__inference_model_6_layer_call_fn_1796303s&#%$78C@BATU>б;
4б1
'і$
y_timed_input         
p 

 
ф "!і
unknown         Ц
B__inference_relu1_layer_call_and_return_conditional_losses_1796585_/б,
%б"
 і
inputs         
ф ",б)
"і
tensor_0         
џ 
'__inference_relu1_layer_call_fn_1796536T/б,
%б"
 і
inputs         
ф "!і
unknown         Ц
B__inference_relu2_layer_call_and_return_conditional_losses_1796796_/б,
%б"
 і
inputs         
ф ",б)
"і
tensor_0         
џ 
'__inference_relu2_layer_call_fn_1796747T/б,
%б"
 і
inputs         
ф "!і
unknown         └
%__inference_signature_wrapper_1796374ќ&#%$78C@BATUGбD
б 
=ф:
8
y_timed_input'і$
y_timed_input         ";ф8
6
dense_output&і#
dense_output         