┬л
╬б
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
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
resourceИ
,
Exp
x"T
y"T"
Ttype:

2
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
2	Р
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
Е
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
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
list(type)(0И
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
list(type)(0И
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
output"out_typeКэout_type"	
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
executor_typestring Ии
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
ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.13.12v2.13.0-17-gf841394b1b78щт	
t
z_log_var/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namez_log_var/bias
m
"z_log_var/bias/Read/ReadVariableOpReadVariableOpz_log_var/bias*
_output_shapes
:*
dtype0
|
z_log_var/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namez_log_var/kernel
u
$z_log_var/kernel/Read/ReadVariableOpReadVariableOpz_log_var/kernel*
_output_shapes

:*
dtype0
n
z_mean/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namez_mean/bias
g
z_mean/bias/Read/ReadVariableOpReadVariableOpz_mean/bias*
_output_shapes
:*
dtype0
v
z_mean/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namez_mean/kernel
o
!z_mean/kernel/Read/ReadVariableOpReadVariableOpz_mean/kernel*
_output_shapes

:*
dtype0
О
batch_norm1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_norm1/moving_variance
З
/batch_norm1/moving_variance/Read/ReadVariableOpReadVariableOpbatch_norm1/moving_variance*
_output_shapes
:*
dtype0
Ж
batch_norm1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namebatch_norm1/moving_mean

+batch_norm1/moving_mean/Read/ReadVariableOpReadVariableOpbatch_norm1/moving_mean*
_output_shapes
:*
dtype0
x
batch_norm1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namebatch_norm1/beta
q
$batch_norm1/beta/Read/ReadVariableOpReadVariableOpbatch_norm1/beta*
_output_shapes
:*
dtype0
z
batch_norm1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namebatch_norm1/gamma
s
%batch_norm1/gamma/Read/ReadVariableOpReadVariableOpbatch_norm1/gamma*
_output_shapes
:*
dtype0
n
dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense1/bias
g
dense1/bias/Read/ReadVariableOpReadVariableOpdense1/bias*
_output_shapes
:*
dtype0
v
dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:5*
shared_namedense1/kernel
o
!dense1/kernel/Read/ReadVariableOpReadVariableOpdense1/kernel*
_output_shapes

:5*
dtype0
А
serving_default_partial_inputPlaceholder*'
_output_shapes
:         5*
dtype0*
shape:         5
к
StatefulPartitionedCallStatefulPartitionedCallserving_default_partial_inputdense1/kerneldense1/biasbatch_norm1/moving_variancebatch_norm1/gammabatch_norm1/moving_meanbatch_norm1/betaz_mean/kernelz_mean/biasz_log_var/kernelz_log_var/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *.
f)R'
%__inference_signature_wrapper_6773347

NoOpNoOp
Ч2
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╥1
value╚1B┼1 B╛1
Н
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
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
О
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
Ь
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
kernel_quantizer
bias_quantizer
kernel_quantizer_internal
bias_quantizer_internal

quantizers

 kernel
!bias*
н
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(
activation
(	quantizer* 
╒
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
/axis
	0gamma
1beta
2moving_mean
3moving_variance*
Ь
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:kernel_quantizer
;bias_quantizer
:kernel_quantizer_internal
;bias_quantizer_internal
<
quantizers

=kernel
>bias*
Ь
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
Ekernel_quantizer
Fbias_quantizer
Ekernel_quantizer_internal
Fbias_quantizer_internal
G
quantizers

Hkernel
Ibias*
О
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses* 
J
 0
!1
02
13
24
35
=6
>7
H8
I9*
<
 0
!1
02
13
=4
>5
H6
I7*
* 
░
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Utrace_0
Vtrace_1* 

Wtrace_0
Xtrace_1* 
* 

Yserving_default* 
* 
* 
* 
С
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

_trace_0* 

`trace_0* 

 0
!1*

 0
!1*
* 
У
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ftrace_0* 

gtrace_0* 
* 
* 

0
1* 
]W
VARIABLE_VALUEdense1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEdense1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
С
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses* 

mtrace_0* 

ntrace_0* 
* 
 
00
11
22
33*

00
11*
* 
У
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

ttrace_0
utrace_1* 

vtrace_0
wtrace_1* 
* 
`Z
VARIABLE_VALUEbatch_norm1/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEbatch_norm1/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbatch_norm1/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_norm1/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

=0
>1*

=0
>1*
* 
У
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

}trace_0* 

~trace_0* 
* 
* 

:0
;1* 
]W
VARIABLE_VALUEz_mean/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEz_mean/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

H0
I1*

H0
I1*
* 
Ч
non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

Дtrace_0* 

Еtrace_0* 
* 
* 

E0
F1* 
`Z
VARIABLE_VALUEz_log_var/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEz_log_var/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses* 

Лtrace_0* 

Мtrace_0* 

20
31*
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
20
31*
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
█
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense1/kerneldense1/biasbatch_norm1/gammabatch_norm1/betabatch_norm1/moving_meanbatch_norm1/moving_variancez_mean/kernelz_mean/biasz_log_var/kernelz_log_var/biasConst*
Tin
2*
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
GPU 2J 8В *)
f$R"
 __inference__traced_save_6773839
╓
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense1/kerneldense1/biasbatch_norm1/gammabatch_norm1/betabatch_norm1/moving_meanbatch_norm1/moving_variancez_mean/kernelz_mean/biasz_log_var/kernelz_log_var/bias*
Tin
2*
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
GPU 2J 8В *,
f'R%
#__inference__traced_restore_6773878ЭР	
┬'
Н
D__inference_encoder_layer_call_and_return_conditional_losses_6773183
partial_input 
dense1_6772943:5
dense1_6772945:!
batch_norm1_6772998:!
batch_norm1_6773000:!
batch_norm1_6773002:!
batch_norm1_6773004: 
z_mean_6773075:
z_mean_6773077:#
z_log_var_6773148:
z_log_var_6773150:
identity

identity_1

identity_2Ив#batch_norm1/StatefulPartitionedCallвdense1/StatefulPartitionedCallв"sampling_8/StatefulPartitionedCallв!z_log_var/StatefulPartitionedCallвz_mean/StatefulPartitionedCall╩
flatten_input/PartitionedCallPartitionedCallpartial_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         5* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_flatten_input_layer_call_and_return_conditional_losses_6772873Л
dense1/StatefulPartitionedCallStatefulPartitionedCall&flatten_input/PartitionedCall:output:0dense1_6772943dense1_6772945*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense1_layer_call_and_return_conditional_losses_6772942╘
relu1/PartitionedCallPartitionedCall'dense1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_relu1_layer_call_and_return_conditional_losses_6772996├
#batch_norm1/StatefulPartitionedCallStatefulPartitionedCallrelu1/PartitionedCall:output:0batch_norm1_6772998batch_norm1_6773000batch_norm1_6773002batch_norm1_6773004*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_batch_norm1_layer_call_and_return_conditional_losses_6772819С
z_mean/StatefulPartitionedCallStatefulPartitionedCall,batch_norm1/StatefulPartitionedCall:output:0z_mean_6773075z_mean_6773077*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_z_mean_layer_call_and_return_conditional_losses_6773074Э
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall,batch_norm1/StatefulPartitionedCall:output:0z_log_var_6773148z_log_var_6773150*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_z_log_var_layer_call_and_return_conditional_losses_6773147Ы
"sampling_8/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sampling_8_layer_call_and_return_conditional_losses_6773178v
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         {

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         |

Identity_2Identity+sampling_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╙
NoOpNoOp$^batch_norm1/StatefulPartitionedCall^dense1/StatefulPartitionedCall#^sampling_8/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         5: : : : : : : : : : 2J
#batch_norm1/StatefulPartitionedCall#batch_norm1/StatefulPartitionedCall2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2H
"sampling_8/StatefulPartitionedCall"sampling_8/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:'
#
!
_user_specified_name	6773150:'	#
!
_user_specified_name	6773148:'#
!
_user_specified_name	6773077:'#
!
_user_specified_name	6773075:'#
!
_user_specified_name	6773004:'#
!
_user_specified_name	6773002:'#
!
_user_specified_name	6773000:'#
!
_user_specified_name	6772998:'#
!
_user_specified_name	6772945:'#
!
_user_specified_name	6772943:V R
'
_output_shapes
:         5
'
_user_specified_namepartial_input
Щ
t
G__inference_sampling_8_layer_call_and_return_conditional_losses_6773178

inputs
inputs_1
identityИI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskK
Shape_1Shapeinputs*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
random_normal/shapePackstrided_slice:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╡
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*'
_output_shapes
:         *
dtype0*
seed2я▐*
seed▒ х)Ц
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:         |
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:         J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?V
mulMulmul/x:output:0inputs_1*
T0*'
_output_shapes
:         E
ExpExpmul:z:0*
T0*'
_output_shapes
:         Z
mul_1MulExp:y:0random_normal:z:0*
T0*'
_output_shapes
:         Q
addAddV2inputs	mul_1:z:0*
T0*'
_output_shapes
:         O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :OK
'
_output_shapes
:         
 
_user_specified_nameinputs:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
м2
й
F__inference_z_log_var_layer_call_and_return_conditional_losses_6773147

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identityИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вReadVariableOp_4вReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B : K
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

:*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:         I
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
: f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:P
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:K
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:R
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Т
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 2$
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
:         
 
_user_specified_nameinputs
Щ
C
'__inference_relu1_layer_call_fn_6773440

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_relu1_layer_call_and_return_conditional_losses_6772996`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
у
Й
%__inference_signature_wrapper_6773347
partial_input
unknown:5
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity

identity_1

identity_2ИвStatefulPartitionedCall╬
StatefulPartitionedCallStatefulPartitionedCallpartial_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__wrapped_model_6772785o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         5: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'
#
!
_user_specified_name	6773339:'	#
!
_user_specified_name	6773337:'#
!
_user_specified_name	6773335:'#
!
_user_specified_name	6773333:'#
!
_user_specified_name	6773331:'#
!
_user_specified_name	6773329:'#
!
_user_specified_name	6773327:'#
!
_user_specified_name	6773325:'#
!
_user_specified_name	6773323:'#
!
_user_specified_name	6773321:V R
'
_output_shapes
:         5
'
_user_specified_namepartial_input
Н&
с
H__inference_batch_norm1_layer_call_and_return_conditional_losses_6773549

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:З
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:         l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ю
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:м
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
╫#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:         h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:         ╞
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2@
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
:         
 
_user_specified_nameinputs
З
Н
)__inference_encoder_layer_call_fn_6773245
partial_input
unknown:5
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity

identity_1

identity_2ИвStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallpartial_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         **
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_6773183o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         5: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'
#
!
_user_specified_name	6773237:'	#
!
_user_specified_name	6773235:'#
!
_user_specified_name	6773233:'#
!
_user_specified_name	6773231:'#
!
_user_specified_name	6773229:'#
!
_user_specified_name	6773227:'#
!
_user_specified_name	6773225:'#
!
_user_specified_name	6773223:'#
!
_user_specified_name	6773221:'#
!
_user_specified_name	6773219:V R
'
_output_shapes
:         5
'
_user_specified_namepartial_input
Ф	
╚
-__inference_batch_norm1_layer_call_fn_6773502

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_batch_norm1_layer_call_and_return_conditional_losses_6772819o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6773498:'#
!
_user_specified_name	6773496:'#
!
_user_specified_name	6773494:'#
!
_user_specified_name	6773492:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ЫX
н	
 __inference__traced_save_6773839
file_prefix6
$read_disablecopyonread_dense1_kernel:52
$read_1_disablecopyonread_dense1_bias:8
*read_2_disablecopyonread_batch_norm1_gamma:7
)read_3_disablecopyonread_batch_norm1_beta:>
0read_4_disablecopyonread_batch_norm1_moving_mean:B
4read_5_disablecopyonread_batch_norm1_moving_variance:8
&read_6_disablecopyonread_z_mean_kernel:2
$read_7_disablecopyonread_z_mean_bias:;
)read_8_disablecopyonread_z_log_var_kernel:5
'read_9_disablecopyonread_z_log_var_bias:
savev2_const
identity_21ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_dense1_kernel"/device:CPU:0*
_output_shapes
 а
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_dense1_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:5*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:5a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:5x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_dense1_bias"/device:CPU:0*
_output_shapes
 а
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_dense1_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_2/DisableCopyOnReadDisableCopyOnRead*read_2_disablecopyonread_batch_norm1_gamma"/device:CPU:0*
_output_shapes
 ж
Read_2/ReadVariableOpReadVariableOp*read_2_disablecopyonread_batch_norm1_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_3/DisableCopyOnReadDisableCopyOnRead)read_3_disablecopyonread_batch_norm1_beta"/device:CPU:0*
_output_shapes
 е
Read_3/ReadVariableOpReadVariableOp)read_3_disablecopyonread_batch_norm1_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:Д
Read_4/DisableCopyOnReadDisableCopyOnRead0read_4_disablecopyonread_batch_norm1_moving_mean"/device:CPU:0*
_output_shapes
 м
Read_4/ReadVariableOpReadVariableOp0read_4_disablecopyonread_batch_norm1_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:И
Read_5/DisableCopyOnReadDisableCopyOnRead4read_5_disablecopyonread_batch_norm1_moving_variance"/device:CPU:0*
_output_shapes
 ░
Read_5/ReadVariableOpReadVariableOp4read_5_disablecopyonread_batch_norm1_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:z
Read_6/DisableCopyOnReadDisableCopyOnRead&read_6_disablecopyonread_z_mean_kernel"/device:CPU:0*
_output_shapes
 ж
Read_6/ReadVariableOpReadVariableOp&read_6_disablecopyonread_z_mean_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:x
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_z_mean_bias"/device:CPU:0*
_output_shapes
 а
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_z_mean_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_8/DisableCopyOnReadDisableCopyOnRead)read_8_disablecopyonread_z_log_var_kernel"/device:CPU:0*
_output_shapes
 й
Read_8/ReadVariableOpReadVariableOp)read_8_disablecopyonread_z_log_var_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_9/DisableCopyOnReadDisableCopyOnRead'read_9_disablecopyonread_z_log_var_bias"/device:CPU:0*
_output_shapes
 г
Read_9/ReadVariableOpReadVariableOp'read_9_disablecopyonread_z_log_var_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:┐
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ш
value▐B█B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHГ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B ╣
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_20Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_21IdentityIdentity_20:output:0^NoOp*
T0*
_output_shapes
: ▒
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_21Identity_21:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
: : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
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
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:.
*
(
_user_specified_namez_log_var/bias:0	,
*
_user_specified_namez_log_var/kernel:+'
%
_user_specified_namez_mean/bias:-)
'
_user_specified_namez_mean/kernel:;7
5
_user_specified_namebatch_norm1/moving_variance:73
1
_user_specified_namebatch_norm1/moving_mean:0,
*
_user_specified_namebatch_norm1/beta:1-
+
_user_specified_namebatch_norm1/gamma:+'
%
_user_specified_namedense1/bias:-)
'
_user_specified_namedense1/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ю
Х
(__inference_z_mean_layer_call_fn_6773578

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_z_mean_layer_call_and_return_conditional_losses_6773074o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6773574:'#
!
_user_specified_name	6773572:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
м2
й
F__inference_z_log_var_layer_call_and_return_conditional_losses_6773723

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identityИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вReadVariableOp_4вReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B : K
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

:*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:         I
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
: f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:P
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:K
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:R
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Т
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 2$
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
:         
 
_user_specified_nameinputs
В!
^
B__inference_relu1_layer_call_and_return_conditional_losses_6772996

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
value	B :
K
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
 *   AG
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
:         F
ReluReluinputs*
T0*'
_output_shapes
:         S
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::э╧T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:         D
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:         r
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:         P
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:         [
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:         I
NegNegtruediv:z:0*
T0*'
_output_shapes
:         M
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:         R
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:         W
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:         d
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:         [
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:         P
truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?U
	truediv_2RealDivtruediv_2/x:output:0Cast:y:0*
T0*
_output_shapes
: L
sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?N
sub_3Subsub_3/x:output:0truediv_2:z:0*
T0*
_output_shapes
: l
clip_by_value/MinimumMinimumtruediv_1:z:0	sub_3:z:0*
T0*'
_output_shapes
:         T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:         ]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:         Q
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:         V
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:         L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:         [
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:         l
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:         Q
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
─'
Н
D__inference_encoder_layer_call_and_return_conditional_losses_6773216
partial_input 
dense1_6773187:5
dense1_6773189:!
batch_norm1_6773193:!
batch_norm1_6773195:!
batch_norm1_6773197:!
batch_norm1_6773199: 
z_mean_6773202:
z_mean_6773204:#
z_log_var_6773207:
z_log_var_6773209:
identity

identity_1

identity_2Ив#batch_norm1/StatefulPartitionedCallвdense1/StatefulPartitionedCallв"sampling_8/StatefulPartitionedCallв!z_log_var/StatefulPartitionedCallвz_mean/StatefulPartitionedCall╩
flatten_input/PartitionedCallPartitionedCallpartial_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         5* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_flatten_input_layer_call_and_return_conditional_losses_6772873Л
dense1/StatefulPartitionedCallStatefulPartitionedCall&flatten_input/PartitionedCall:output:0dense1_6773187dense1_6773189*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense1_layer_call_and_return_conditional_losses_6772942╘
relu1/PartitionedCallPartitionedCall'dense1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_relu1_layer_call_and_return_conditional_losses_6772996┼
#batch_norm1/StatefulPartitionedCallStatefulPartitionedCallrelu1/PartitionedCall:output:0batch_norm1_6773193batch_norm1_6773195batch_norm1_6773197batch_norm1_6773199*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_batch_norm1_layer_call_and_return_conditional_losses_6772839С
z_mean/StatefulPartitionedCallStatefulPartitionedCall,batch_norm1/StatefulPartitionedCall:output:0z_mean_6773202z_mean_6773204*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_z_mean_layer_call_and_return_conditional_losses_6773074Э
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall,batch_norm1/StatefulPartitionedCall:output:0z_log_var_6773207z_log_var_6773209*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_z_log_var_layer_call_and_return_conditional_losses_6773147Ы
"sampling_8/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sampling_8_layer_call_and_return_conditional_losses_6773178v
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         {

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         |

Identity_2Identity+sampling_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╙
NoOpNoOp$^batch_norm1/StatefulPartitionedCall^dense1/StatefulPartitionedCall#^sampling_8/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         5: : : : : : : : : : 2J
#batch_norm1/StatefulPartitionedCall#batch_norm1/StatefulPartitionedCall2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2H
"sampling_8/StatefulPartitionedCall"sampling_8/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:'
#
!
_user_specified_name	6773209:'	#
!
_user_specified_name	6773207:'#
!
_user_specified_name	6773204:'#
!
_user_specified_name	6773202:'#
!
_user_specified_name	6773199:'#
!
_user_specified_name	6773197:'#
!
_user_specified_name	6773195:'#
!
_user_specified_name	6773193:'#
!
_user_specified_name	6773189:'#
!
_user_specified_name	6773187:V R
'
_output_shapes
:         5
'
_user_specified_namepartial_input
ю
Х
(__inference_dense1_layer_call_fn_6773367

inputs
unknown:5
	unknown_0:
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense1_layer_call_and_return_conditional_losses_6772942o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         5: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6773363:'#
!
_user_specified_name	6773361:O K
'
_output_shapes
:         5
 
_user_specified_nameinputs
й
K
/__inference_flatten_input_layer_call_fn_6773352

inputs
identity╡
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         5* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_flatten_input_layer_call_and_return_conditional_losses_6772873`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         5"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         5:O K
'
_output_shapes
:         5
 
_user_specified_nameinputs
й2
ж
C__inference_dense1_layer_call_and_return_conditional_losses_6773435

inputs)
readvariableop_resource:5'
readvariableop_3_resource:
identityИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вReadVariableOp_4вReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B : K
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

:5*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:5N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:5@
NegNegtruediv:z:0*
T0*
_output_shapes

:5D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:5I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:5N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:5[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:5\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:5T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:5R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:5P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:5L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:5h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:5*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:5M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:5L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:5R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:5h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:5*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:5U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:         I
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
: f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:P
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:K
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:R
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Т
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         5: : 2$
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
:         5
 
_user_specified_nameinputs
Ї
Ш
+__inference_z_log_var_layer_call_fn_6773655

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_z_log_var_layer_call_and_return_conditional_losses_6773147o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6773651:'#
!
_user_specified_name	6773649:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Й
Н
)__inference_encoder_layer_call_fn_6773274
partial_input
unknown:5
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity

identity_1

identity_2ИвStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallpartial_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_encoder_layer_call_and_return_conditional_losses_6773216o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         5: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'
#
!
_user_specified_name	6773266:'	#
!
_user_specified_name	6773264:'#
!
_user_specified_name	6773262:'#
!
_user_specified_name	6773260:'#
!
_user_specified_name	6773258:'#
!
_user_specified_name	6773256:'#
!
_user_specified_name	6773254:'#
!
_user_specified_name	6773252:'#
!
_user_specified_name	6773250:'#
!
_user_specified_name	6773248:V R
'
_output_shapes
:         5
'
_user_specified_namepartial_input
но
Ф
"__inference__wrapped_model_6772785
partial_input8
&encoder_dense1_readvariableop_resource:56
(encoder_dense1_readvariableop_3_resource:C
5encoder_batch_norm1_batchnorm_readvariableop_resource:G
9encoder_batch_norm1_batchnorm_mul_readvariableop_resource:E
7encoder_batch_norm1_batchnorm_readvariableop_1_resource:E
7encoder_batch_norm1_batchnorm_readvariableop_2_resource:8
&encoder_z_mean_readvariableop_resource:6
(encoder_z_mean_readvariableop_3_resource:;
)encoder_z_log_var_readvariableop_resource:9
+encoder_z_log_var_readvariableop_3_resource:
identity

identity_1

identity_2Ив,encoder/batch_norm1/batchnorm/ReadVariableOpв.encoder/batch_norm1/batchnorm/ReadVariableOp_1в.encoder/batch_norm1/batchnorm/ReadVariableOp_2в0encoder/batch_norm1/batchnorm/mul/ReadVariableOpвencoder/dense1/ReadVariableOpвencoder/dense1/ReadVariableOp_1вencoder/dense1/ReadVariableOp_2вencoder/dense1/ReadVariableOp_3вencoder/dense1/ReadVariableOp_4вencoder/dense1/ReadVariableOp_5в encoder/z_log_var/ReadVariableOpв"encoder/z_log_var/ReadVariableOp_1в"encoder/z_log_var/ReadVariableOp_2в"encoder/z_log_var/ReadVariableOp_3в"encoder/z_log_var/ReadVariableOp_4в"encoder/z_log_var/ReadVariableOp_5вencoder/z_mean/ReadVariableOpвencoder/z_mean/ReadVariableOp_1вencoder/z_mean/ReadVariableOp_2вencoder/z_mean/ReadVariableOp_3вencoder/z_mean/ReadVariableOp_4вencoder/z_mean/ReadVariableOp_5l
encoder/flatten_input/ConstConst*
_output_shapes
:*
dtype0*
valueB"    5   П
encoder/flatten_input/ReshapeReshapepartial_input$encoder/flatten_input/Const:output:0*
T0*'
_output_shapes
:         5V
encoder/dense1/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :V
encoder/dense1/Pow/yConst*
_output_shapes
: *
dtype0*
value	B : x
encoder/dense1/PowPowencoder/dense1/Pow/x:output:0encoder/dense1/Pow/y:output:0*
T0*
_output_shapes
: c
encoder/dense1/CastCastencoder/dense1/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: Д
encoder/dense1/ReadVariableOpReadVariableOp&encoder_dense1_readvariableop_resource*
_output_shapes

:5*
dtype0Y
encoder/dense1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DИ
encoder/dense1/mulMul%encoder/dense1/ReadVariableOp:value:0encoder/dense1/mul/y:output:0*
T0*
_output_shapes

:5{
encoder/dense1/truedivRealDivencoder/dense1/mul:z:0encoder/dense1/Cast:y:0*
T0*
_output_shapes

:5^
encoder/dense1/NegNegencoder/dense1/truediv:z:0*
T0*
_output_shapes

:5b
encoder/dense1/RoundRoundencoder/dense1/truediv:z:0*
T0*
_output_shapes

:5v
encoder/dense1/addAddV2encoder/dense1/Neg:y:0encoder/dense1/Round:y:0*
T0*
_output_shapes

:5l
encoder/dense1/StopGradientStopGradientencoder/dense1/add:z:0*
T0*
_output_shapes

:5И
encoder/dense1/add_1AddV2encoder/dense1/truediv:z:0$encoder/dense1/StopGradient:output:0*
T0*
_output_shapes

:5k
&encoder/dense1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cг
$encoder/dense1/clip_by_value/MinimumMinimumencoder/dense1/add_1:z:0/encoder/dense1/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:5c
encoder/dense1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─г
encoder/dense1/clip_by_valueMaximum(encoder/dense1/clip_by_value/Minimum:z:0'encoder/dense1/clip_by_value/y:output:0*
T0*
_output_shapes

:5
encoder/dense1/mul_1Mulencoder/dense1/Cast:y:0 encoder/dense1/clip_by_value:z:0*
T0*
_output_shapes

:5_
encoder/dense1/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DЛ
encoder/dense1/truediv_1RealDivencoder/dense1/mul_1:z:0#encoder/dense1/truediv_1/y:output:0*
T0*
_output_shapes

:5[
encoder/dense1/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Г
encoder/dense1/mul_2Mulencoder/dense1/mul_2/x:output:0encoder/dense1/truediv_1:z:0*
T0*
_output_shapes

:5Ж
encoder/dense1/ReadVariableOp_1ReadVariableOp&encoder_dense1_readvariableop_resource*
_output_shapes

:5*
dtype0m
encoder/dense1/Neg_1Neg'encoder/dense1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:5z
encoder/dense1/add_2AddV2encoder/dense1/Neg_1:y:0encoder/dense1/mul_2:z:0*
T0*
_output_shapes

:5[
encoder/dense1/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
encoder/dense1/mul_3Mulencoder/dense1/mul_3/x:output:0encoder/dense1/add_2:z:0*
T0*
_output_shapes

:5p
encoder/dense1/StopGradient_1StopGradientencoder/dense1/mul_3:z:0*
T0*
_output_shapes

:5Ж
encoder/dense1/ReadVariableOp_2ReadVariableOp&encoder_dense1_readvariableop_resource*
_output_shapes

:5*
dtype0Ч
encoder/dense1/add_3AddV2'encoder/dense1/ReadVariableOp_2:value:0&encoder/dense1/StopGradient_1:output:0*
T0*
_output_shapes

:5У
encoder/dense1/MatMulMatMul&encoder/flatten_input/Reshape:output:0encoder/dense1/add_3:z:0*
T0*'
_output_shapes
:         X
encoder/dense1/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :X
encoder/dense1/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B : ~
encoder/dense1/Pow_1Powencoder/dense1/Pow_1/x:output:0encoder/dense1/Pow_1/y:output:0*
T0*
_output_shapes
: g
encoder/dense1/Cast_1Castencoder/dense1/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: Д
encoder/dense1/ReadVariableOp_3ReadVariableOp(encoder_dense1_readvariableop_3_resource*
_output_shapes
:*
dtype0[
encoder/dense1/mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DК
encoder/dense1/mul_4Mul'encoder/dense1/ReadVariableOp_3:value:0encoder/dense1/mul_4/y:output:0*
T0*
_output_shapes
:}
encoder/dense1/truediv_2RealDivencoder/dense1/mul_4:z:0encoder/dense1/Cast_1:y:0*
T0*
_output_shapes
:^
encoder/dense1/Neg_2Negencoder/dense1/truediv_2:z:0*
T0*
_output_shapes
:b
encoder/dense1/Round_1Roundencoder/dense1/truediv_2:z:0*
T0*
_output_shapes
:x
encoder/dense1/add_4AddV2encoder/dense1/Neg_2:y:0encoder/dense1/Round_1:y:0*
T0*
_output_shapes
:l
encoder/dense1/StopGradient_2StopGradientencoder/dense1/add_4:z:0*
T0*
_output_shapes
:И
encoder/dense1/add_5AddV2encoder/dense1/truediv_2:z:0&encoder/dense1/StopGradient_2:output:0*
T0*
_output_shapes
:m
(encoder/dense1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cг
&encoder/dense1/clip_by_value_1/MinimumMinimumencoder/dense1/add_5:z:01encoder/dense1/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:e
 encoder/dense1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─е
encoder/dense1/clip_by_value_1Maximum*encoder/dense1/clip_by_value_1/Minimum:z:0)encoder/dense1/clip_by_value_1/y:output:0*
T0*
_output_shapes
:
encoder/dense1/mul_5Mulencoder/dense1/Cast_1:y:0"encoder/dense1/clip_by_value_1:z:0*
T0*
_output_shapes
:_
encoder/dense1/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DЗ
encoder/dense1/truediv_3RealDivencoder/dense1/mul_5:z:0#encoder/dense1/truediv_3/y:output:0*
T0*
_output_shapes
:[
encoder/dense1/mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
encoder/dense1/mul_6Mulencoder/dense1/mul_6/x:output:0encoder/dense1/truediv_3:z:0*
T0*
_output_shapes
:Д
encoder/dense1/ReadVariableOp_4ReadVariableOp(encoder_dense1_readvariableop_3_resource*
_output_shapes
:*
dtype0i
encoder/dense1/Neg_3Neg'encoder/dense1/ReadVariableOp_4:value:0*
T0*
_output_shapes
:v
encoder/dense1/add_6AddV2encoder/dense1/Neg_3:y:0encoder/dense1/mul_6:z:0*
T0*
_output_shapes
:[
encoder/dense1/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?{
encoder/dense1/mul_7Mulencoder/dense1/mul_7/x:output:0encoder/dense1/add_6:z:0*
T0*
_output_shapes
:l
encoder/dense1/StopGradient_3StopGradientencoder/dense1/mul_7:z:0*
T0*
_output_shapes
:Д
encoder/dense1/ReadVariableOp_5ReadVariableOp(encoder_dense1_readvariableop_3_resource*
_output_shapes
:*
dtype0У
encoder/dense1/add_7AddV2'encoder/dense1/ReadVariableOp_5:value:0&encoder/dense1/StopGradient_3:output:0*
T0*
_output_shapes
:О
encoder/dense1/BiasAddBiasAddencoder/dense1/MatMul:product:0encoder/dense1/add_7:z:0*
T0*'
_output_shapes
:         U
encoder/relu1/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :U
encoder/relu1/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :
u
encoder/relu1/PowPowencoder/relu1/Pow/x:output:0encoder/relu1/Pow/y:output:0*
T0*
_output_shapes
: a
encoder/relu1/CastCastencoder/relu1/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: W
encoder/relu1/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :W
encoder/relu1/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B : {
encoder/relu1/Pow_1Powencoder/relu1/Pow_1/x:output:0encoder/relu1/Pow_1/y:output:0*
T0*
_output_shapes
: e
encoder/relu1/Cast_1Castencoder/relu1/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: X
encoder/relu1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
encoder/relu1/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B : m
encoder/relu1/Cast_2Castencoder/relu1/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: X
encoder/relu1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Aq
encoder/relu1/subSubencoder/relu1/Cast_2:y:0encoder/relu1/sub/y:output:0*
T0*
_output_shapes
: p
encoder/relu1/Pow_2Powencoder/relu1/Const:output:0encoder/relu1/sub:z:0*
T0*
_output_shapes
: n
encoder/relu1/sub_1Subencoder/relu1/Cast_1:y:0encoder/relu1/Pow_2:z:0*
T0*
_output_shapes
: Р
encoder/relu1/LessEqual	LessEqualencoder/dense1/BiasAdd:output:0encoder/relu1/sub_1:z:0*
T0*'
_output_shapes
:         m
encoder/relu1/ReluReluencoder/dense1/BiasAdd:output:0*
T0*'
_output_shapes
:         z
encoder/relu1/ones_like/ShapeShapeencoder/dense1/BiasAdd:output:0*
T0*
_output_shapes
::э╧b
encoder/relu1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?б
encoder/relu1/ones_likeFill&encoder/relu1/ones_like/Shape:output:0&encoder/relu1/ones_like/Const:output:0*
T0*'
_output_shapes
:         n
encoder/relu1/sub_2Subencoder/relu1/Cast_1:y:0encoder/relu1/Pow_2:z:0*
T0*
_output_shapes
: Е
encoder/relu1/mulMul encoder/relu1/ones_like:output:0encoder/relu1/sub_2:z:0*
T0*'
_output_shapes
:         к
encoder/relu1/SelectV2SelectV2encoder/relu1/LessEqual:z:0 encoder/relu1/Relu:activations:0encoder/relu1/mul:z:0*
T0*'
_output_shapes
:         Е
encoder/relu1/mul_1Mulencoder/dense1/BiasAdd:output:0encoder/relu1/Cast:y:0*
T0*'
_output_shapes
:         Е
encoder/relu1/truedivRealDivencoder/relu1/mul_1:z:0encoder/relu1/Cast_1:y:0*
T0*'
_output_shapes
:         e
encoder/relu1/NegNegencoder/relu1/truediv:z:0*
T0*'
_output_shapes
:         i
encoder/relu1/RoundRoundencoder/relu1/truediv:z:0*
T0*'
_output_shapes
:         |
encoder/relu1/addAddV2encoder/relu1/Neg:y:0encoder/relu1/Round:y:0*
T0*'
_output_shapes
:         s
encoder/relu1/StopGradientStopGradientencoder/relu1/add:z:0*
T0*'
_output_shapes
:         О
encoder/relu1/add_1AddV2encoder/relu1/truediv:z:0#encoder/relu1/StopGradient:output:0*
T0*'
_output_shapes
:         Е
encoder/relu1/truediv_1RealDivencoder/relu1/add_1:z:0encoder/relu1/Cast:y:0*
T0*'
_output_shapes
:         ^
encoder/relu1/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
encoder/relu1/truediv_2RealDiv"encoder/relu1/truediv_2/x:output:0encoder/relu1/Cast:y:0*
T0*
_output_shapes
: Z
encoder/relu1/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?x
encoder/relu1/sub_3Subencoder/relu1/sub_3/x:output:0encoder/relu1/truediv_2:z:0*
T0*
_output_shapes
: Ц
#encoder/relu1/clip_by_value/MinimumMinimumencoder/relu1/truediv_1:z:0encoder/relu1/sub_3:z:0*
T0*'
_output_shapes
:         b
encoder/relu1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    й
encoder/relu1/clip_by_valueMaximum'encoder/relu1/clip_by_value/Minimum:z:0&encoder/relu1/clip_by_value/y:output:0*
T0*'
_output_shapes
:         З
encoder/relu1/mul_2Mulencoder/relu1/Cast_1:y:0encoder/relu1/clip_by_value:z:0*
T0*'
_output_shapes
:         m
encoder/relu1/Neg_1Negencoder/relu1/SelectV2:output:0*
T0*'
_output_shapes
:         А
encoder/relu1/add_2AddV2encoder/relu1/Neg_1:y:0encoder/relu1/mul_2:z:0*
T0*'
_output_shapes
:         Z
encoder/relu1/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Е
encoder/relu1/mul_3Mulencoder/relu1/mul_3/x:output:0encoder/relu1/add_2:z:0*
T0*'
_output_shapes
:         w
encoder/relu1/StopGradient_1StopGradientencoder/relu1/mul_3:z:0*
T0*'
_output_shapes
:         Ц
encoder/relu1/add_3AddV2encoder/relu1/SelectV2:output:0%encoder/relu1/StopGradient_1:output:0*
T0*'
_output_shapes
:         Ю
,encoder/batch_norm1/batchnorm/ReadVariableOpReadVariableOp5encoder_batch_norm1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0h
#encoder/batch_norm1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:│
!encoder/batch_norm1/batchnorm/addAddV24encoder/batch_norm1/batchnorm/ReadVariableOp:value:0,encoder/batch_norm1/batchnorm/add/y:output:0*
T0*
_output_shapes
:x
#encoder/batch_norm1/batchnorm/RsqrtRsqrt%encoder/batch_norm1/batchnorm/add:z:0*
T0*
_output_shapes
:ж
0encoder/batch_norm1/batchnorm/mul/ReadVariableOpReadVariableOp9encoder_batch_norm1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0░
!encoder/batch_norm1/batchnorm/mulMul'encoder/batch_norm1/batchnorm/Rsqrt:y:08encoder/batch_norm1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ь
#encoder/batch_norm1/batchnorm/mul_1Mulencoder/relu1/add_3:z:0%encoder/batch_norm1/batchnorm/mul:z:0*
T0*'
_output_shapes
:         в
.encoder/batch_norm1/batchnorm/ReadVariableOp_1ReadVariableOp7encoder_batch_norm1_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0о
#encoder/batch_norm1/batchnorm/mul_2Mul6encoder/batch_norm1/batchnorm/ReadVariableOp_1:value:0%encoder/batch_norm1/batchnorm/mul:z:0*
T0*
_output_shapes
:в
.encoder/batch_norm1/batchnorm/ReadVariableOp_2ReadVariableOp7encoder_batch_norm1_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0о
!encoder/batch_norm1/batchnorm/subSub6encoder/batch_norm1/batchnorm/ReadVariableOp_2:value:0'encoder/batch_norm1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:о
#encoder/batch_norm1/batchnorm/add_1AddV2'encoder/batch_norm1/batchnorm/mul_1:z:0%encoder/batch_norm1/batchnorm/sub:z:0*
T0*'
_output_shapes
:         V
encoder/z_mean/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :V
encoder/z_mean/Pow/yConst*
_output_shapes
: *
dtype0*
value	B : x
encoder/z_mean/PowPowencoder/z_mean/Pow/x:output:0encoder/z_mean/Pow/y:output:0*
T0*
_output_shapes
: c
encoder/z_mean/CastCastencoder/z_mean/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: Д
encoder/z_mean/ReadVariableOpReadVariableOp&encoder_z_mean_readvariableop_resource*
_output_shapes

:*
dtype0Y
encoder/z_mean/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DИ
encoder/z_mean/mulMul%encoder/z_mean/ReadVariableOp:value:0encoder/z_mean/mul/y:output:0*
T0*
_output_shapes

:{
encoder/z_mean/truedivRealDivencoder/z_mean/mul:z:0encoder/z_mean/Cast:y:0*
T0*
_output_shapes

:^
encoder/z_mean/NegNegencoder/z_mean/truediv:z:0*
T0*
_output_shapes

:b
encoder/z_mean/RoundRoundencoder/z_mean/truediv:z:0*
T0*
_output_shapes

:v
encoder/z_mean/addAddV2encoder/z_mean/Neg:y:0encoder/z_mean/Round:y:0*
T0*
_output_shapes

:l
encoder/z_mean/StopGradientStopGradientencoder/z_mean/add:z:0*
T0*
_output_shapes

:И
encoder/z_mean/add_1AddV2encoder/z_mean/truediv:z:0$encoder/z_mean/StopGradient:output:0*
T0*
_output_shapes

:k
&encoder/z_mean/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cг
$encoder/z_mean/clip_by_value/MinimumMinimumencoder/z_mean/add_1:z:0/encoder/z_mean/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:c
encoder/z_mean/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─г
encoder/z_mean/clip_by_valueMaximum(encoder/z_mean/clip_by_value/Minimum:z:0'encoder/z_mean/clip_by_value/y:output:0*
T0*
_output_shapes

:
encoder/z_mean/mul_1Mulencoder/z_mean/Cast:y:0 encoder/z_mean/clip_by_value:z:0*
T0*
_output_shapes

:_
encoder/z_mean/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DЛ
encoder/z_mean/truediv_1RealDivencoder/z_mean/mul_1:z:0#encoder/z_mean/truediv_1/y:output:0*
T0*
_output_shapes

:[
encoder/z_mean/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Г
encoder/z_mean/mul_2Mulencoder/z_mean/mul_2/x:output:0encoder/z_mean/truediv_1:z:0*
T0*
_output_shapes

:Ж
encoder/z_mean/ReadVariableOp_1ReadVariableOp&encoder_z_mean_readvariableop_resource*
_output_shapes

:*
dtype0m
encoder/z_mean/Neg_1Neg'encoder/z_mean/ReadVariableOp_1:value:0*
T0*
_output_shapes

:z
encoder/z_mean/add_2AddV2encoder/z_mean/Neg_1:y:0encoder/z_mean/mul_2:z:0*
T0*
_output_shapes

:[
encoder/z_mean/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
encoder/z_mean/mul_3Mulencoder/z_mean/mul_3/x:output:0encoder/z_mean/add_2:z:0*
T0*
_output_shapes

:p
encoder/z_mean/StopGradient_1StopGradientencoder/z_mean/mul_3:z:0*
T0*
_output_shapes

:Ж
encoder/z_mean/ReadVariableOp_2ReadVariableOp&encoder_z_mean_readvariableop_resource*
_output_shapes

:*
dtype0Ч
encoder/z_mean/add_3AddV2'encoder/z_mean/ReadVariableOp_2:value:0&encoder/z_mean/StopGradient_1:output:0*
T0*
_output_shapes

:Ф
encoder/z_mean/MatMulMatMul'encoder/batch_norm1/batchnorm/add_1:z:0encoder/z_mean/add_3:z:0*
T0*'
_output_shapes
:         X
encoder/z_mean/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :X
encoder/z_mean/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B : ~
encoder/z_mean/Pow_1Powencoder/z_mean/Pow_1/x:output:0encoder/z_mean/Pow_1/y:output:0*
T0*
_output_shapes
: g
encoder/z_mean/Cast_1Castencoder/z_mean/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: Д
encoder/z_mean/ReadVariableOp_3ReadVariableOp(encoder_z_mean_readvariableop_3_resource*
_output_shapes
:*
dtype0[
encoder/z_mean/mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DК
encoder/z_mean/mul_4Mul'encoder/z_mean/ReadVariableOp_3:value:0encoder/z_mean/mul_4/y:output:0*
T0*
_output_shapes
:}
encoder/z_mean/truediv_2RealDivencoder/z_mean/mul_4:z:0encoder/z_mean/Cast_1:y:0*
T0*
_output_shapes
:^
encoder/z_mean/Neg_2Negencoder/z_mean/truediv_2:z:0*
T0*
_output_shapes
:b
encoder/z_mean/Round_1Roundencoder/z_mean/truediv_2:z:0*
T0*
_output_shapes
:x
encoder/z_mean/add_4AddV2encoder/z_mean/Neg_2:y:0encoder/z_mean/Round_1:y:0*
T0*
_output_shapes
:l
encoder/z_mean/StopGradient_2StopGradientencoder/z_mean/add_4:z:0*
T0*
_output_shapes
:И
encoder/z_mean/add_5AddV2encoder/z_mean/truediv_2:z:0&encoder/z_mean/StopGradient_2:output:0*
T0*
_output_shapes
:m
(encoder/z_mean/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cг
&encoder/z_mean/clip_by_value_1/MinimumMinimumencoder/z_mean/add_5:z:01encoder/z_mean/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:e
 encoder/z_mean/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─е
encoder/z_mean/clip_by_value_1Maximum*encoder/z_mean/clip_by_value_1/Minimum:z:0)encoder/z_mean/clip_by_value_1/y:output:0*
T0*
_output_shapes
:
encoder/z_mean/mul_5Mulencoder/z_mean/Cast_1:y:0"encoder/z_mean/clip_by_value_1:z:0*
T0*
_output_shapes
:_
encoder/z_mean/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DЗ
encoder/z_mean/truediv_3RealDivencoder/z_mean/mul_5:z:0#encoder/z_mean/truediv_3/y:output:0*
T0*
_output_shapes
:[
encoder/z_mean/mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
encoder/z_mean/mul_6Mulencoder/z_mean/mul_6/x:output:0encoder/z_mean/truediv_3:z:0*
T0*
_output_shapes
:Д
encoder/z_mean/ReadVariableOp_4ReadVariableOp(encoder_z_mean_readvariableop_3_resource*
_output_shapes
:*
dtype0i
encoder/z_mean/Neg_3Neg'encoder/z_mean/ReadVariableOp_4:value:0*
T0*
_output_shapes
:v
encoder/z_mean/add_6AddV2encoder/z_mean/Neg_3:y:0encoder/z_mean/mul_6:z:0*
T0*
_output_shapes
:[
encoder/z_mean/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?{
encoder/z_mean/mul_7Mulencoder/z_mean/mul_7/x:output:0encoder/z_mean/add_6:z:0*
T0*
_output_shapes
:l
encoder/z_mean/StopGradient_3StopGradientencoder/z_mean/mul_7:z:0*
T0*
_output_shapes
:Д
encoder/z_mean/ReadVariableOp_5ReadVariableOp(encoder_z_mean_readvariableop_3_resource*
_output_shapes
:*
dtype0У
encoder/z_mean/add_7AddV2'encoder/z_mean/ReadVariableOp_5:value:0&encoder/z_mean/StopGradient_3:output:0*
T0*
_output_shapes
:О
encoder/z_mean/BiasAddBiasAddencoder/z_mean/MatMul:product:0encoder/z_mean/add_7:z:0*
T0*'
_output_shapes
:         Y
encoder/z_log_var/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :Y
encoder/z_log_var/Pow/yConst*
_output_shapes
: *
dtype0*
value	B : Б
encoder/z_log_var/PowPow encoder/z_log_var/Pow/x:output:0 encoder/z_log_var/Pow/y:output:0*
T0*
_output_shapes
: i
encoder/z_log_var/CastCastencoder/z_log_var/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: К
 encoder/z_log_var/ReadVariableOpReadVariableOp)encoder_z_log_var_readvariableop_resource*
_output_shapes

:*
dtype0\
encoder/z_log_var/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DС
encoder/z_log_var/mulMul(encoder/z_log_var/ReadVariableOp:value:0 encoder/z_log_var/mul/y:output:0*
T0*
_output_shapes

:Д
encoder/z_log_var/truedivRealDivencoder/z_log_var/mul:z:0encoder/z_log_var/Cast:y:0*
T0*
_output_shapes

:d
encoder/z_log_var/NegNegencoder/z_log_var/truediv:z:0*
T0*
_output_shapes

:h
encoder/z_log_var/RoundRoundencoder/z_log_var/truediv:z:0*
T0*
_output_shapes

:
encoder/z_log_var/addAddV2encoder/z_log_var/Neg:y:0encoder/z_log_var/Round:y:0*
T0*
_output_shapes

:r
encoder/z_log_var/StopGradientStopGradientencoder/z_log_var/add:z:0*
T0*
_output_shapes

:С
encoder/z_log_var/add_1AddV2encoder/z_log_var/truediv:z:0'encoder/z_log_var/StopGradient:output:0*
T0*
_output_shapes

:n
)encoder/z_log_var/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cм
'encoder/z_log_var/clip_by_value/MinimumMinimumencoder/z_log_var/add_1:z:02encoder/z_log_var/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:f
!encoder/z_log_var/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─м
encoder/z_log_var/clip_by_valueMaximum+encoder/z_log_var/clip_by_value/Minimum:z:0*encoder/z_log_var/clip_by_value/y:output:0*
T0*
_output_shapes

:И
encoder/z_log_var/mul_1Mulencoder/z_log_var/Cast:y:0#encoder/z_log_var/clip_by_value:z:0*
T0*
_output_shapes

:b
encoder/z_log_var/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DФ
encoder/z_log_var/truediv_1RealDivencoder/z_log_var/mul_1:z:0&encoder/z_log_var/truediv_1/y:output:0*
T0*
_output_shapes

:^
encoder/z_log_var/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?М
encoder/z_log_var/mul_2Mul"encoder/z_log_var/mul_2/x:output:0encoder/z_log_var/truediv_1:z:0*
T0*
_output_shapes

:М
"encoder/z_log_var/ReadVariableOp_1ReadVariableOp)encoder_z_log_var_readvariableop_resource*
_output_shapes

:*
dtype0s
encoder/z_log_var/Neg_1Neg*encoder/z_log_var/ReadVariableOp_1:value:0*
T0*
_output_shapes

:Г
encoder/z_log_var/add_2AddV2encoder/z_log_var/Neg_1:y:0encoder/z_log_var/mul_2:z:0*
T0*
_output_shapes

:^
encoder/z_log_var/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?И
encoder/z_log_var/mul_3Mul"encoder/z_log_var/mul_3/x:output:0encoder/z_log_var/add_2:z:0*
T0*
_output_shapes

:v
 encoder/z_log_var/StopGradient_1StopGradientencoder/z_log_var/mul_3:z:0*
T0*
_output_shapes

:М
"encoder/z_log_var/ReadVariableOp_2ReadVariableOp)encoder_z_log_var_readvariableop_resource*
_output_shapes

:*
dtype0а
encoder/z_log_var/add_3AddV2*encoder/z_log_var/ReadVariableOp_2:value:0)encoder/z_log_var/StopGradient_1:output:0*
T0*
_output_shapes

:Ъ
encoder/z_log_var/MatMulMatMul'encoder/batch_norm1/batchnorm/add_1:z:0encoder/z_log_var/add_3:z:0*
T0*'
_output_shapes
:         [
encoder/z_log_var/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :[
encoder/z_log_var/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B : З
encoder/z_log_var/Pow_1Pow"encoder/z_log_var/Pow_1/x:output:0"encoder/z_log_var/Pow_1/y:output:0*
T0*
_output_shapes
: m
encoder/z_log_var/Cast_1Castencoder/z_log_var/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: К
"encoder/z_log_var/ReadVariableOp_3ReadVariableOp+encoder_z_log_var_readvariableop_3_resource*
_output_shapes
:*
dtype0^
encoder/z_log_var/mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DУ
encoder/z_log_var/mul_4Mul*encoder/z_log_var/ReadVariableOp_3:value:0"encoder/z_log_var/mul_4/y:output:0*
T0*
_output_shapes
:Ж
encoder/z_log_var/truediv_2RealDivencoder/z_log_var/mul_4:z:0encoder/z_log_var/Cast_1:y:0*
T0*
_output_shapes
:d
encoder/z_log_var/Neg_2Negencoder/z_log_var/truediv_2:z:0*
T0*
_output_shapes
:h
encoder/z_log_var/Round_1Roundencoder/z_log_var/truediv_2:z:0*
T0*
_output_shapes
:Б
encoder/z_log_var/add_4AddV2encoder/z_log_var/Neg_2:y:0encoder/z_log_var/Round_1:y:0*
T0*
_output_shapes
:r
 encoder/z_log_var/StopGradient_2StopGradientencoder/z_log_var/add_4:z:0*
T0*
_output_shapes
:С
encoder/z_log_var/add_5AddV2encoder/z_log_var/truediv_2:z:0)encoder/z_log_var/StopGradient_2:output:0*
T0*
_output_shapes
:p
+encoder/z_log_var/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cм
)encoder/z_log_var/clip_by_value_1/MinimumMinimumencoder/z_log_var/add_5:z:04encoder/z_log_var/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:h
#encoder/z_log_var/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─о
!encoder/z_log_var/clip_by_value_1Maximum-encoder/z_log_var/clip_by_value_1/Minimum:z:0,encoder/z_log_var/clip_by_value_1/y:output:0*
T0*
_output_shapes
:И
encoder/z_log_var/mul_5Mulencoder/z_log_var/Cast_1:y:0%encoder/z_log_var/clip_by_value_1:z:0*
T0*
_output_shapes
:b
encoder/z_log_var/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DР
encoder/z_log_var/truediv_3RealDivencoder/z_log_var/mul_5:z:0&encoder/z_log_var/truediv_3/y:output:0*
T0*
_output_shapes
:^
encoder/z_log_var/mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?И
encoder/z_log_var/mul_6Mul"encoder/z_log_var/mul_6/x:output:0encoder/z_log_var/truediv_3:z:0*
T0*
_output_shapes
:К
"encoder/z_log_var/ReadVariableOp_4ReadVariableOp+encoder_z_log_var_readvariableop_3_resource*
_output_shapes
:*
dtype0o
encoder/z_log_var/Neg_3Neg*encoder/z_log_var/ReadVariableOp_4:value:0*
T0*
_output_shapes
:
encoder/z_log_var/add_6AddV2encoder/z_log_var/Neg_3:y:0encoder/z_log_var/mul_6:z:0*
T0*
_output_shapes
:^
encoder/z_log_var/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Д
encoder/z_log_var/mul_7Mul"encoder/z_log_var/mul_7/x:output:0encoder/z_log_var/add_6:z:0*
T0*
_output_shapes
:r
 encoder/z_log_var/StopGradient_3StopGradientencoder/z_log_var/mul_7:z:0*
T0*
_output_shapes
:К
"encoder/z_log_var/ReadVariableOp_5ReadVariableOp+encoder_z_log_var_readvariableop_3_resource*
_output_shapes
:*
dtype0Ь
encoder/z_log_var/add_7AddV2*encoder/z_log_var/ReadVariableOp_5:value:0)encoder/z_log_var/StopGradient_3:output:0*
T0*
_output_shapes
:Ч
encoder/z_log_var/BiasAddBiasAdd"encoder/z_log_var/MatMul:product:0encoder/z_log_var/add_7:z:0*
T0*'
_output_shapes
:         u
encoder/sampling_8/ShapeShapeencoder/z_mean/BiasAdd:output:0*
T0*
_output_shapes
::э╧p
&encoder/sampling_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(encoder/sampling_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(encoder/sampling_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 encoder/sampling_8/strided_sliceStridedSlice!encoder/sampling_8/Shape:output:0/encoder/sampling_8/strided_slice/stack:output:01encoder/sampling_8/strided_slice/stack_1:output:01encoder/sampling_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
encoder/sampling_8/Shape_1Shapeencoder/z_mean/BiasAdd:output:0*
T0*
_output_shapes
::э╧r
(encoder/sampling_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*encoder/sampling_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*encoder/sampling_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:║
"encoder/sampling_8/strided_slice_1StridedSlice#encoder/sampling_8/Shape_1:output:01encoder/sampling_8/strided_slice_1/stack:output:03encoder/sampling_8/strided_slice_1/stack_1:output:03encoder/sampling_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask┤
&encoder/sampling_8/random_normal/shapePack)encoder/sampling_8/strided_slice:output:0+encoder/sampling_8/strided_slice_1:output:0*
N*
T0*
_output_shapes
:j
%encoder/sampling_8/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    l
'encoder/sampling_8/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▄
5encoder/sampling_8/random_normal/RandomStandardNormalRandomStandardNormal/encoder/sampling_8/random_normal/shape:output:0*
T0*'
_output_shapes
:         *
dtype0*
seed2╔╜Ь*
seed▒ х)╧
$encoder/sampling_8/random_normal/mulMul>encoder/sampling_8/random_normal/RandomStandardNormal:output:00encoder/sampling_8/random_normal/stddev:output:0*
T0*'
_output_shapes
:         ╡
 encoder/sampling_8/random_normalAddV2(encoder/sampling_8/random_normal/mul:z:0.encoder/sampling_8/random_normal/mean:output:0*
T0*'
_output_shapes
:         ]
encoder/sampling_8/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ц
encoder/sampling_8/mulMul!encoder/sampling_8/mul/x:output:0"encoder/z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:         k
encoder/sampling_8/ExpExpencoder/sampling_8/mul:z:0*
T0*'
_output_shapes
:         У
encoder/sampling_8/mul_1Mulencoder/sampling_8/Exp:y:0$encoder/sampling_8/random_normal:z:0*
T0*'
_output_shapes
:         Р
encoder/sampling_8/addAddV2encoder/z_mean/BiasAdd:output:0encoder/sampling_8/mul_1:z:0*
T0*'
_output_shapes
:         i
IdentityIdentityencoder/sampling_8/add:z:0^NoOp*
T0*'
_output_shapes
:         s

Identity_1Identity"encoder/z_log_var/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         p

Identity_2Identityencoder/z_mean/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ╓
NoOpNoOp-^encoder/batch_norm1/batchnorm/ReadVariableOp/^encoder/batch_norm1/batchnorm/ReadVariableOp_1/^encoder/batch_norm1/batchnorm/ReadVariableOp_21^encoder/batch_norm1/batchnorm/mul/ReadVariableOp^encoder/dense1/ReadVariableOp ^encoder/dense1/ReadVariableOp_1 ^encoder/dense1/ReadVariableOp_2 ^encoder/dense1/ReadVariableOp_3 ^encoder/dense1/ReadVariableOp_4 ^encoder/dense1/ReadVariableOp_5!^encoder/z_log_var/ReadVariableOp#^encoder/z_log_var/ReadVariableOp_1#^encoder/z_log_var/ReadVariableOp_2#^encoder/z_log_var/ReadVariableOp_3#^encoder/z_log_var/ReadVariableOp_4#^encoder/z_log_var/ReadVariableOp_5^encoder/z_mean/ReadVariableOp ^encoder/z_mean/ReadVariableOp_1 ^encoder/z_mean/ReadVariableOp_2 ^encoder/z_mean/ReadVariableOp_3 ^encoder/z_mean/ReadVariableOp_4 ^encoder/z_mean/ReadVariableOp_5*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         5: : : : : : : : : : 2`
.encoder/batch_norm1/batchnorm/ReadVariableOp_1.encoder/batch_norm1/batchnorm/ReadVariableOp_12`
.encoder/batch_norm1/batchnorm/ReadVariableOp_2.encoder/batch_norm1/batchnorm/ReadVariableOp_22\
,encoder/batch_norm1/batchnorm/ReadVariableOp,encoder/batch_norm1/batchnorm/ReadVariableOp2d
0encoder/batch_norm1/batchnorm/mul/ReadVariableOp0encoder/batch_norm1/batchnorm/mul/ReadVariableOp2B
encoder/dense1/ReadVariableOp_1encoder/dense1/ReadVariableOp_12B
encoder/dense1/ReadVariableOp_2encoder/dense1/ReadVariableOp_22B
encoder/dense1/ReadVariableOp_3encoder/dense1/ReadVariableOp_32B
encoder/dense1/ReadVariableOp_4encoder/dense1/ReadVariableOp_42B
encoder/dense1/ReadVariableOp_5encoder/dense1/ReadVariableOp_52>
encoder/dense1/ReadVariableOpencoder/dense1/ReadVariableOp2H
"encoder/z_log_var/ReadVariableOp_1"encoder/z_log_var/ReadVariableOp_12H
"encoder/z_log_var/ReadVariableOp_2"encoder/z_log_var/ReadVariableOp_22H
"encoder/z_log_var/ReadVariableOp_3"encoder/z_log_var/ReadVariableOp_32H
"encoder/z_log_var/ReadVariableOp_4"encoder/z_log_var/ReadVariableOp_42H
"encoder/z_log_var/ReadVariableOp_5"encoder/z_log_var/ReadVariableOp_52D
 encoder/z_log_var/ReadVariableOp encoder/z_log_var/ReadVariableOp2B
encoder/z_mean/ReadVariableOp_1encoder/z_mean/ReadVariableOp_12B
encoder/z_mean/ReadVariableOp_2encoder/z_mean/ReadVariableOp_22B
encoder/z_mean/ReadVariableOp_3encoder/z_mean/ReadVariableOp_32B
encoder/z_mean/ReadVariableOp_4encoder/z_mean/ReadVariableOp_42B
encoder/z_mean/ReadVariableOp_5encoder/z_mean/ReadVariableOp_52>
encoder/z_mean/ReadVariableOpencoder/z_mean/ReadVariableOp:(
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
:         5
'
_user_specified_namepartial_input
й2
ж
C__inference_z_mean_layer_call_and_return_conditional_losses_6773074

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identityИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вReadVariableOp_4вReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B : K
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

:*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:         I
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
: f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:P
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:K
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:R
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Т
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 2$
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
:         
 
_user_specified_nameinputs
║
f
J__inference_flatten_input_layer_call_and_return_conditional_losses_6773358

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    5   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         5X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         5"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         5:O K
'
_output_shapes
:         5
 
_user_specified_nameinputs
Н&
с
H__inference_batch_norm1_layer_call_and_return_conditional_losses_6772819

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:З
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:         l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ю
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:м
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
╫#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:         h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:         ╞
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2@
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
:         
 
_user_specified_nameinputs
ж
v
G__inference_sampling_8_layer_call_and_return_conditional_losses_6773755
inputs_0
inputs_1
identityИK
ShapeShapeinputs_0*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
Shape_1Shapeinputs_0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
random_normal/shapePackstrided_slice:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╢
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*'
_output_shapes
:         *
dtype0*
seed2╡ММ*
seed▒ х)Ц
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:         |
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:         J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?V
mulMulmul/x:output:0inputs_1*
T0*'
_output_shapes
:         E
ExpExpmul:z:0*
T0*'
_output_shapes
:         Z
mul_1MulExp:y:0random_normal:z:0*
T0*'
_output_shapes
:         S
addAddV2inputs_0	mul_1:z:0*
T0*'
_output_shapes
:         O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :QM
'
_output_shapes
:         
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs_0
К3
г
#__inference__traced_restore_6773878
file_prefix0
assignvariableop_dense1_kernel:5,
assignvariableop_1_dense1_bias:2
$assignvariableop_2_batch_norm1_gamma:1
#assignvariableop_3_batch_norm1_beta:8
*assignvariableop_4_batch_norm1_moving_mean:<
.assignvariableop_5_batch_norm1_moving_variance:2
 assignvariableop_6_z_mean_kernel:,
assignvariableop_7_z_mean_bias:5
#assignvariableop_8_z_log_var_kernel:/
!assignvariableop_9_z_log_var_bias:
identity_11ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9┬
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ш
value▐B█B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЖ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B ╒
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2[
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
:╡
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_2AssignVariableOp$assignvariableop_2_batch_norm1_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_3AssignVariableOp#assignvariableop_3_batch_norm1_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_4AssignVariableOp*assignvariableop_4_batch_norm1_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_5AssignVariableOp.assignvariableop_5_batch_norm1_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_6AssignVariableOp assignvariableop_6_z_mean_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╡
AssignVariableOp_7AssignVariableOpassignvariableop_7_z_mean_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_8AssignVariableOp#assignvariableop_8_z_log_var_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_9AssignVariableOp!assignvariableop_9_z_log_var_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 л
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_11IdentityIdentity_10:output:0^NoOp_1*
T0*
_output_shapes
: Ї
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_11Identity_11:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : : : : : 2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:.
*
(
_user_specified_namez_log_var/bias:0	,
*
_user_specified_namez_log_var/kernel:+'
%
_user_specified_namez_mean/bias:-)
'
_user_specified_namez_mean/kernel:;7
5
_user_specified_namebatch_norm1/moving_variance:73
1
_user_specified_namebatch_norm1/moving_mean:0,
*
_user_specified_namebatch_norm1/beta:1-
+
_user_specified_namebatch_norm1/gamma:+'
%
_user_specified_namedense1/bias:-)
'
_user_specified_namedense1/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╓
u
,__inference_sampling_8_layer_call_fn_6773729
inputs_0
inputs_1
identityИвStatefulPartitionedCall╧
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sampling_8_layer_call_and_return_conditional_losses_6773178o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:         
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs_0
╔
з
H__inference_batch_norm1_layer_call_and_return_conditional_losses_6773569

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:         z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:         Ц
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 28
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
:         
 
_user_specified_nameinputs
В!
^
B__inference_relu1_layer_call_and_return_conditional_losses_6773489

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
value	B :
K
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
 *   AG
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
:         F
ReluReluinputs*
T0*'
_output_shapes
:         S
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::э╧T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:         D
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:         r
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:         P
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:         [
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:         I
NegNegtruediv:z:0*
T0*'
_output_shapes
:         M
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:         R
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:         W
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:         d
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:         [
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:         P
truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?U
	truediv_2RealDivtruediv_2/x:output:0Cast:y:0*
T0*
_output_shapes
: L
sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?N
sub_3Subsub_3/x:output:0truediv_2:z:0*
T0*
_output_shapes
: l
clip_by_value/MinimumMinimumtruediv_1:z:0	sub_3:z:0*
T0*'
_output_shapes
:         T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:         ]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:         Q
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:         V
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:         L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:         [
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:         l
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:         Q
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
║
f
J__inference_flatten_input_layer_call_and_return_conditional_losses_6772873

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    5   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         5X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         5"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         5:O K
'
_output_shapes
:         5
 
_user_specified_nameinputs
й2
ж
C__inference_z_mean_layer_call_and_return_conditional_losses_6773646

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identityИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вReadVariableOp_4вReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B : K
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

:*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:         I
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
: f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:P
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:K
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:R
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Т
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 2$
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
:         
 
_user_specified_nameinputs
Ц	
╚
-__inference_batch_norm1_layer_call_fn_6773515

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_batch_norm1_layer_call_and_return_conditional_losses_6772839o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	6773511:'#
!
_user_specified_name	6773509:'#
!
_user_specified_name	6773507:'#
!
_user_specified_name	6773505:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
й2
ж
C__inference_dense1_layer_call_and_return_conditional_losses_6772942

inputs)
readvariableop_resource:5'
readvariableop_3_resource:
identityИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вReadVariableOp_4вReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B : K
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

:5*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:5N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:5@
NegNegtruediv:z:0*
T0*
_output_shapes

:5D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:5I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:5N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:5[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:5\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:5T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:5R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:5P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:5L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:5h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:5*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:5M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:5L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:5R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:5h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:5*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:5U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:         I
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
: f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   D]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:P
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:K
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * А Cv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ─x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:R
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   DZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Т
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         5: : 2$
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
:         5
 
_user_specified_nameinputs
╔
з
H__inference_batch_norm1_layer_call_and_return_conditional_losses_6772839

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:         z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:         Ц
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 28
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
:         
 
_user_specified_nameinputs"╩L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┤
serving_defaultа
G
partial_input6
serving_default_partial_input:0         5>

sampling_80
StatefulPartitionedCall:0         =
	z_log_var0
StatefulPartitionedCall:1         :
z_mean0
StatefulPartitionedCall:2         tensorflow/serving/predict:Ък
д
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
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
е
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
▒
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
kernel_quantizer
bias_quantizer
kernel_quantizer_internal
bias_quantizer_internal

quantizers

 kernel
!bias"
_tf_keras_layer
─
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(
activation
(	quantizer"
_tf_keras_layer
ъ
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
/axis
	0gamma
1beta
2moving_mean
3moving_variance"
_tf_keras_layer
▒
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:kernel_quantizer
;bias_quantizer
:kernel_quantizer_internal
;bias_quantizer_internal
<
quantizers

=kernel
>bias"
_tf_keras_layer
▒
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
Ekernel_quantizer
Fbias_quantizer
Ekernel_quantizer_internal
Fbias_quantizer_internal
G
quantizers

Hkernel
Ibias"
_tf_keras_layer
е
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses"
_tf_keras_layer
f
 0
!1
02
13
24
35
=6
>7
H8
I9"
trackable_list_wrapper
X
 0
!1
02
13
=4
>5
H6
I7"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
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
Utrace_0
Vtrace_12О
)__inference_encoder_layer_call_fn_6773245
)__inference_encoder_layer_call_fn_6773274╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zUtrace_0zVtrace_1
√
Wtrace_0
Xtrace_12─
D__inference_encoder_layer_call_and_return_conditional_losses_6773183
D__inference_encoder_layer_call_and_return_conditional_losses_6773216╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zWtrace_0zXtrace_1
╙B╨
"__inference__wrapped_model_6772785partial_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
,
Yserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
щ
_trace_02╠
/__inference_flatten_input_layer_call_fn_6773352Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z_trace_0
Д
`trace_02ч
J__inference_flatten_input_layer_call_and_return_conditional_losses_6773358Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z`trace_0
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
т
ftrace_02┼
(__inference_dense1_layer_call_fn_6773367Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zftrace_0
¤
gtrace_02р
C__inference_dense1_layer_call_and_return_conditional_losses_6773435Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zgtrace_0
"
_generic_user_object
"
_generic_user_object
.
0
1"
trackable_list_wrapper
:52dense1/kernel
:2dense1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
с
mtrace_02─
'__inference_relu1_layer_call_fn_6773440Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zmtrace_0
№
ntrace_02▀
B__inference_relu1_layer_call_and_return_conditional_losses_6773489Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zntrace_0
"
_generic_user_object
<
00
11
22
33"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
н
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
═
ttrace_0
utrace_12Ц
-__inference_batch_norm1_layer_call_fn_6773502
-__inference_batch_norm1_layer_call_fn_6773515╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zttrace_0zutrace_1
Г
vtrace_0
wtrace_12╠
H__inference_batch_norm1_layer_call_and_return_conditional_losses_6773549
H__inference_batch_norm1_layer_call_and_return_conditional_losses_6773569╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zvtrace_0zwtrace_1
 "
trackable_list_wrapper
:2batch_norm1/gamma
:2batch_norm1/beta
':% (2batch_norm1/moving_mean
+:) (2batch_norm1/moving_variance
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
т
}trace_02┼
(__inference_z_mean_layer_call_fn_6773578Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z}trace_0
¤
~trace_02р
C__inference_z_mean_layer_call_and_return_conditional_losses_6773646Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z~trace_0
"
_generic_user_object
"
_generic_user_object
.
:0
;1"
trackable_list_wrapper
:2z_mean/kernel
:2z_mean/bias
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
▒
non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
ч
Дtrace_02╚
+__inference_z_log_var_layer_call_fn_6773655Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zДtrace_0
В
Еtrace_02у
F__inference_z_log_var_layer_call_and_return_conditional_losses_6773723Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЕtrace_0
"
_generic_user_object
"
_generic_user_object
.
E0
F1"
trackable_list_wrapper
": 2z_log_var/kernel
:2z_log_var/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
ш
Лtrace_02╔
,__inference_sampling_8_layer_call_fn_6773729Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЛtrace_0
Г
Мtrace_02ф
G__inference_sampling_8_layer_call_and_return_conditional_losses_6773755Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zМtrace_0
.
20
31"
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
ўBЇ
)__inference_encoder_layer_call_fn_6773245partial_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
)__inference_encoder_layer_call_fn_6773274partial_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ТBП
D__inference_encoder_layer_call_and_return_conditional_losses_6773183partial_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ТBП
D__inference_encoder_layer_call_and_return_conditional_losses_6773216partial_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥B╧
%__inference_signature_wrapper_6773347partial_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
┘B╓
/__inference_flatten_input_layer_call_fn_6773352inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЇBё
J__inference_flatten_input_layer_call_and_return_conditional_losses_6773358inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╥B╧
(__inference_dense1_layer_call_fn_6773367inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_dense1_layer_call_and_return_conditional_losses_6773435inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╤B╬
'__inference_relu1_layer_call_fn_6773440inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_relu1_layer_call_and_return_conditional_losses_6773489inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЇBё
-__inference_batch_norm1_layer_call_fn_6773502inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЇBё
-__inference_batch_norm1_layer_call_fn_6773515inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
H__inference_batch_norm1_layer_call_and_return_conditional_losses_6773549inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
H__inference_batch_norm1_layer_call_and_return_conditional_losses_6773569inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╥B╧
(__inference_z_mean_layer_call_fn_6773578inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_z_mean_layer_call_and_return_conditional_losses_6773646inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╒B╥
+__inference_z_log_var_layer_call_fn_6773655inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЁBэ
F__inference_z_log_var_layer_call_and_return_conditional_losses_6773723inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
тB▀
,__inference_sampling_8_layer_call_fn_6773729inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
G__inference_sampling_8_layer_call_and_return_conditional_losses_6773755inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 Д
"__inference__wrapped_model_6772785▌
 !3021=>HI6в3
,в)
'К$
partial_input         5
к "ЦкТ
2

sampling_8$К!

sampling_8         
0
	z_log_var#К 
	z_log_var         
*
z_mean К
z_mean         ╣
H__inference_batch_norm1_layer_call_and_return_conditional_losses_6773549m23017в4
-в*
 К
inputs         
p

 
к ",в)
"К
tensor_0         
Ъ ╣
H__inference_batch_norm1_layer_call_and_return_conditional_losses_6773569m30217в4
-в*
 К
inputs         
p 

 
к ",в)
"К
tensor_0         
Ъ У
-__inference_batch_norm1_layer_call_fn_6773502b23017в4
-в*
 К
inputs         
p

 
к "!К
unknown         У
-__inference_batch_norm1_layer_call_fn_6773515b30217в4
-в*
 К
inputs         
p 

 
к "!К
unknown         к
C__inference_dense1_layer_call_and_return_conditional_losses_6773435c !/в,
%в"
 К
inputs         5
к ",в)
"К
tensor_0         
Ъ Д
(__inference_dense1_layer_call_fn_6773367X !/в,
%в"
 К
inputs         5
к "!К
unknown         Ц
D__inference_encoder_layer_call_and_return_conditional_losses_6773183═
 !2301=>HI>в;
4в1
'К$
partial_input         5
p

 
к "в|
uЪr
$К!

tensor_0_0         
$К!

tensor_0_1         
$К!

tensor_0_2         
Ъ Ц
D__inference_encoder_layer_call_and_return_conditional_losses_6773216═
 !3021=>HI>в;
4в1
'К$
partial_input         5
p 

 
к "в|
uЪr
$К!

tensor_0_0         
$К!

tensor_0_1         
$К!

tensor_0_2         
Ъ ы
)__inference_encoder_layer_call_fn_6773245╜
 !2301=>HI>в;
4в1
'К$
partial_input         5
p

 
к "oЪl
"К
tensor_0         
"К
tensor_1         
"К
tensor_2         ы
)__inference_encoder_layer_call_fn_6773274╜
 !3021=>HI>в;
4в1
'К$
partial_input         5
p 

 
к "oЪl
"К
tensor_0         
"К
tensor_1         
"К
tensor_2         н
J__inference_flatten_input_layer_call_and_return_conditional_losses_6773358_/в,
%в"
 К
inputs         5
к ",в)
"К
tensor_0         5
Ъ З
/__inference_flatten_input_layer_call_fn_6773352T/в,
%в"
 К
inputs         5
к "!К
unknown         5е
B__inference_relu1_layer_call_and_return_conditional_losses_6773489_/в,
%в"
 К
inputs         
к ",в)
"К
tensor_0         
Ъ 
'__inference_relu1_layer_call_fn_6773440T/в,
%в"
 К
inputs         
к "!К
unknown         ╓
G__inference_sampling_8_layer_call_and_return_conditional_losses_6773755КZвW
PвM
KЪH
"К
inputs_0         
"К
inputs_1         
к ",в)
"К
tensor_0         
Ъ п
,__inference_sampling_8_layer_call_fn_6773729ZвW
PвM
KЪH
"К
inputs_0         
"К
inputs_1         
к "!К
unknown         Ш
%__inference_signature_wrapper_6773347ю
 !3021=>HIGвD
в 
=к:
8
partial_input'К$
partial_input         5"ЦкТ
2

sampling_8$К!

sampling_8         
0
	z_log_var#К 
	z_log_var         
*
z_mean К
z_mean         н
F__inference_z_log_var_layer_call_and_return_conditional_losses_6773723cHI/в,
%в"
 К
inputs         
к ",в)
"К
tensor_0         
Ъ З
+__inference_z_log_var_layer_call_fn_6773655XHI/в,
%в"
 К
inputs         
к "!К
unknown         к
C__inference_z_mean_layer_call_and_return_conditional_losses_6773646c=>/в,
%в"
 К
inputs         
к ",в)
"К
tensor_0         
Ъ Д
(__inference_z_mean_layer_call_fn_6773578X=>/в,
%в"
 К
inputs         
к "!К
unknown         