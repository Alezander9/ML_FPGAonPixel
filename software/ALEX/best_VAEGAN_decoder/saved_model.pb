ям
ЅФ
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
output"out_typeКнout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
Ѕ
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
executor_typestring И®
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.13.12v2.13.0-17-gf841394b1b78шу
Ъ
!output_batch_norm/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:i*2
shared_name#!output_batch_norm/moving_variance
У
5output_batch_norm/moving_variance/Read/ReadVariableOpReadVariableOp!output_batch_norm/moving_variance*
_output_shapes
:i*
dtype0
Т
output_batch_norm/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:i*.
shared_nameoutput_batch_norm/moving_mean
Л
1output_batch_norm/moving_mean/Read/ReadVariableOpReadVariableOpoutput_batch_norm/moving_mean*
_output_shapes
:i*
dtype0
Д
output_batch_norm/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:i*'
shared_nameoutput_batch_norm/beta
}
*output_batch_norm/beta/Read/ReadVariableOpReadVariableOpoutput_batch_norm/beta*
_output_shapes
:i*
dtype0
Ж
output_batch_norm/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:i*(
shared_nameoutput_batch_norm/gamma

+output_batch_norm/gamma/Read/ReadVariableOpReadVariableOpoutput_batch_norm/gamma*
_output_shapes
:i*
dtype0
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:i*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:i*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:`i*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:`i*
dtype0
О
batch_norm6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*,
shared_namebatch_norm6/moving_variance
З
/batch_norm6/moving_variance/Read/ReadVariableOpReadVariableOpbatch_norm6/moving_variance*
_output_shapes
:`*
dtype0
Ж
batch_norm6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*(
shared_namebatch_norm6/moving_mean

+batch_norm6/moving_mean/Read/ReadVariableOpReadVariableOpbatch_norm6/moving_mean*
_output_shapes
:`*
dtype0
x
batch_norm6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*!
shared_namebatch_norm6/beta
q
$batch_norm6/beta/Read/ReadVariableOpReadVariableOpbatch_norm6/beta*
_output_shapes
:`*
dtype0
z
batch_norm6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*"
shared_namebatch_norm6/gamma
s
%batch_norm6/gamma/Read/ReadVariableOpReadVariableOpbatch_norm6/gamma*
_output_shapes
:`*
dtype0
n
dense6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_namedense6/bias
g
dense6/bias/Read/ReadVariableOpReadVariableOpdense6/bias*
_output_shapes
:`*
dtype0
v
dense6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0`*
shared_namedense6/kernel
o
!dense6/kernel/Read/ReadVariableOpReadVariableOpdense6/kernel*
_output_shapes

:0`*
dtype0
О
batch_norm5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*,
shared_namebatch_norm5/moving_variance
З
/batch_norm5/moving_variance/Read/ReadVariableOpReadVariableOpbatch_norm5/moving_variance*
_output_shapes
:0*
dtype0
Ж
batch_norm5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*(
shared_namebatch_norm5/moving_mean

+batch_norm5/moving_mean/Read/ReadVariableOpReadVariableOpbatch_norm5/moving_mean*
_output_shapes
:0*
dtype0
x
batch_norm5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*!
shared_namebatch_norm5/beta
q
$batch_norm5/beta/Read/ReadVariableOpReadVariableOpbatch_norm5/beta*
_output_shapes
:0*
dtype0
z
batch_norm5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*"
shared_namebatch_norm5/gamma
s
%batch_norm5/gamma/Read/ReadVariableOpReadVariableOpbatch_norm5/gamma*
_output_shapes
:0*
dtype0
n
dense5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_namedense5/bias
g
dense5/bias/Read/ReadVariableOpReadVariableOpdense5/bias*
_output_shapes
:0*
dtype0
v
dense5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*
shared_namedense5/kernel
o
!dense5/kernel/Read/ReadVariableOpReadVariableOpdense5/kernel*
_output_shapes

:0*
dtype0
О
batch_norm4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_norm4/moving_variance
З
/batch_norm4/moving_variance/Read/ReadVariableOpReadVariableOpbatch_norm4/moving_variance*
_output_shapes
:*
dtype0
Ж
batch_norm4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namebatch_norm4/moving_mean

+batch_norm4/moving_mean/Read/ReadVariableOpReadVariableOpbatch_norm4/moving_mean*
_output_shapes
:*
dtype0
x
batch_norm4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namebatch_norm4/beta
q
$batch_norm4/beta/Read/ReadVariableOpReadVariableOpbatch_norm4/beta*
_output_shapes
:*
dtype0
z
batch_norm4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namebatch_norm4/gamma
s
%batch_norm4/gamma/Read/ReadVariableOpReadVariableOpbatch_norm4/gamma*
_output_shapes
:*
dtype0
n
dense4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense4/bias
g
dense4/bias/Read/ReadVariableOpReadVariableOpdense4/bias*
_output_shapes
:*
dtype0
v
dense4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense4/kernel
o
!dense4/kernel/Read/ReadVariableOpReadVariableOpdense4/kernel*
_output_shapes

:*
dtype0
О
batch_norm3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_norm3/moving_variance
З
/batch_norm3/moving_variance/Read/ReadVariableOpReadVariableOpbatch_norm3/moving_variance*
_output_shapes
:*
dtype0
Ж
batch_norm3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namebatch_norm3/moving_mean

+batch_norm3/moving_mean/Read/ReadVariableOpReadVariableOpbatch_norm3/moving_mean*
_output_shapes
:*
dtype0
x
batch_norm3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namebatch_norm3/beta
q
$batch_norm3/beta/Read/ReadVariableOpReadVariableOpbatch_norm3/beta*
_output_shapes
:*
dtype0
z
batch_norm3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namebatch_norm3/gamma
s
%batch_norm3/gamma/Read/ReadVariableOpReadVariableOpbatch_norm3/gamma*
_output_shapes
:*
dtype0
n
dense3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense3/bias
g
dense3/bias/Read/ReadVariableOpReadVariableOpdense3/bias*
_output_shapes
:*
dtype0
v
dense3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense3/kernel
o
!dense3/kernel/Read/ReadVariableOpReadVariableOpdense3/kernel*
_output_shapes

:
*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:€€€€€€€€€
*
dtype0*
shape:€€€€€€€€€

ў
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense3/kerneldense3/biasbatch_norm3/moving_variancebatch_norm3/gammabatch_norm3/moving_meanbatch_norm3/betadense4/kerneldense4/biasbatch_norm4/moving_variancebatch_norm4/gammabatch_norm4/moving_meanbatch_norm4/betadense5/kerneldense5/biasbatch_norm5/moving_variancebatch_norm5/gammabatch_norm5/moving_meanbatch_norm5/betadense6/kerneldense6/biasbatch_norm6/moving_variancebatch_norm6/gammabatch_norm6/moving_meanbatch_norm6/betaoutput/kerneloutput/bias!output_batch_norm/moving_varianceoutput_batch_norm/gammaoutput_batch_norm/moving_meanoutput_batch_norm/beta**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€i*@
_read_only_resource_inputs"
 	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_882922

NoOpNoOp
гq
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Юq
valueФqBСq BКq
Ч
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
layer-11
layer_with_weights-7
layer-12
layer_with_weights-8
layer-13
layer-14
layer_with_weights-9
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
Ь
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
kernel_quantizer
 bias_quantizer
kernel_quantizer_internal
 bias_quantizer_internal
!
quantizers

"kernel
#bias*
≠
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses
*
activation
*	quantizer* 
’
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1axis
	2gamma
3beta
4moving_mean
5moving_variance*
Ь
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses
<kernel_quantizer
=bias_quantizer
<kernel_quantizer_internal
=bias_quantizer_internal
>
quantizers

?kernel
@bias*
≠
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses
G
activation
G	quantizer* 
’
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
Naxis
	Ogamma
Pbeta
Qmoving_mean
Rmoving_variance*
Ь
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Ykernel_quantizer
Zbias_quantizer
Ykernel_quantizer_internal
Zbias_quantizer_internal
[
quantizers

\kernel
]bias*
≠
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
d
activation
d	quantizer* 
’
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses
kaxis
	lgamma
mbeta
nmoving_mean
omoving_variance*
Ь
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses
vkernel_quantizer
wbias_quantizer
vkernel_quantizer_internal
wbias_quantizer_internal
x
quantizers

ykernel
zbias*
∞
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+А&call_and_return_all_conditional_losses
Б
activation
Б	quantizer* 
а
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses
	Иaxis

Йgamma
	Кbeta
Лmoving_mean
Мmoving_variance*
©
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses
Уkernel_quantizer
Фbias_quantizer
Уkernel_quantizer_internal
Фbias_quantizer_internal
Х
quantizers
Цkernel
	Чbias*
µ
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses
Ю
activation
Ю	quantizer* 
а
Я	variables
†trainable_variables
°regularization_losses
Ґ	keras_api
£__call__
+§&call_and_return_all_conditional_losses
	•axis

¶gamma
	Іbeta
®moving_mean
©moving_variance*
ф
"0
#1
22
33
44
55
?6
@7
O8
P9
Q10
R11
\12
]13
l14
m15
n16
o17
y18
z19
Й20
К21
Л22
М23
Ц24
Ч25
¶26
І27
®28
©29*
†
"0
#1
22
33
?4
@5
O6
P7
\8
]9
l10
m11
y12
z13
Й14
К15
Ц16
Ч17
¶18
І19*
* 
µ
™non_trainable_variables
Ђlayers
ђmetrics
 ≠layer_regularization_losses
Ѓlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ѓtrace_0
∞trace_1* 

±trace_0
≤trace_1* 
* 

≥serving_default* 

"0
#1*

"0
#1*
* 
Ш
іnon_trainable_variables
µlayers
ґmetrics
 Јlayer_regularization_losses
Єlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

єtrace_0* 

Їtrace_0* 
* 
* 

0
 1* 
]W
VARIABLE_VALUEdense3/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEdense3/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
їnon_trainable_variables
Љlayers
љmetrics
 Њlayer_regularization_losses
њlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 

јtrace_0* 

Ѕtrace_0* 
* 
 
20
31
42
53*

20
31*
* 
Ш
¬non_trainable_variables
√layers
ƒmetrics
 ≈layer_regularization_losses
∆layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

«trace_0
»trace_1* 

…trace_0
 trace_1* 
* 
`Z
VARIABLE_VALUEbatch_norm3/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEbatch_norm3/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbatch_norm3/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_norm3/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

?0
@1*

?0
@1*
* 
Ш
Ћnon_trainable_variables
ћlayers
Ќmetrics
 ќlayer_regularization_losses
ѕlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

–trace_0* 

—trace_0* 
* 
* 

<0
=1* 
]W
VARIABLE_VALUEdense4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEdense4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
“non_trainable_variables
”layers
‘metrics
 ’layer_regularization_losses
÷layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 

„trace_0* 

Ўtrace_0* 
* 
 
O0
P1
Q2
R3*

O0
P1*
* 
Ш
ўnon_trainable_variables
Џlayers
џmetrics
 №layer_regularization_losses
Ёlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*

ёtrace_0
яtrace_1* 

аtrace_0
бtrace_1* 
* 
`Z
VARIABLE_VALUEbatch_norm4/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEbatch_norm4/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbatch_norm4/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_norm4/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

\0
]1*

\0
]1*
* 
Ш
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*

зtrace_0* 

иtrace_0* 
* 
* 

Y0
Z1* 
]W
VARIABLE_VALUEdense5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEdense5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses* 

оtrace_0* 

пtrace_0* 
* 
 
l0
m1
n2
o3*

l0
m1*
* 
Ш
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*

хtrace_0
цtrace_1* 

чtrace_0
шtrace_1* 
* 
`Z
VARIABLE_VALUEbatch_norm5/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEbatch_norm5/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbatch_norm5/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_norm5/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

y0
z1*

y0
z1*
* 
Ш
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*

юtrace_0* 

€trace_0* 
* 
* 

v0
w1* 
]W
VARIABLE_VALUEdense6/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEdense6/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ш
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses* 

Еtrace_0* 

Жtrace_0* 
* 
$
Й0
К1
Л2
М3*

Й0
К1*
* 
Ю
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses*

Мtrace_0
Нtrace_1* 

Оtrace_0
Пtrace_1* 
* 
`Z
VARIABLE_VALUEbatch_norm6/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEbatch_norm6/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbatch_norm6/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_norm6/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

Ц0
Ч1*

Ц0
Ч1*
* 
Ю
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses*

Хtrace_0* 

Цtrace_0* 
* 
* 

У0
Ф1* 
]W
VARIABLE_VALUEoutput/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEoutput/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ь
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses* 

Ьtrace_0* 

Эtrace_0* 
* 
$
¶0
І1
®2
©3*

¶0
І1*
* 
Ю
Юnon_trainable_variables
Яlayers
†metrics
 °layer_regularization_losses
Ґlayer_metrics
Я	variables
†trainable_variables
°regularization_losses
£__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses*

£trace_0
§trace_1* 

•trace_0
¶trace_1* 
* 
f`
VARIABLE_VALUEoutput_batch_norm/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEoutput_batch_norm/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEoutput_batch_norm/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE!output_batch_norm/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
N
40
51
Q2
R3
n4
o5
Л6
М7
®8
©9*
z
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15*
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
40
51*
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
Q0
R1*
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
n0
o1*
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

Л0
М1*
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

®0
©1*
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
§
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense3/kerneldense3/biasbatch_norm3/gammabatch_norm3/betabatch_norm3/moving_meanbatch_norm3/moving_variancedense4/kerneldense4/biasbatch_norm4/gammabatch_norm4/betabatch_norm4/moving_meanbatch_norm4/moving_variancedense5/kerneldense5/biasbatch_norm5/gammabatch_norm5/betabatch_norm5/moving_meanbatch_norm5/moving_variancedense6/kerneldense6/biasbatch_norm6/gammabatch_norm6/betabatch_norm6/moving_meanbatch_norm6/moving_varianceoutput/kerneloutput/biasoutput_batch_norm/gammaoutput_batch_norm/betaoutput_batch_norm/moving_mean!output_batch_norm/moving_varianceConst*+
Tin$
"2 *
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
GPU 2J 8В *(
f#R!
__inference__traced_save_884179
Я
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense3/kerneldense3/biasbatch_norm3/gammabatch_norm3/betabatch_norm3/moving_meanbatch_norm3/moving_variancedense4/kerneldense4/biasbatch_norm4/gammabatch_norm4/betabatch_norm4/moving_meanbatch_norm4/moving_variancedense5/kerneldense5/biasbatch_norm5/gammabatch_norm5/betabatch_norm5/moving_meanbatch_norm5/moving_variancedense6/kerneldense6/biasbatch_norm6/gammabatch_norm6/betabatch_norm6/moving_meanbatch_norm6/moving_varianceoutput/kerneloutput/biasoutput_batch_norm/gammaoutput_batch_norm/betaoutput_batch_norm/moving_mean!output_batch_norm/moving_variance**
Tin#
!2*
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_884278Ћѓ
Б!
]
A__inference_relu6_layer_call_and_return_conditional_losses_883686

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
value	B :K
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
 *  pAG
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
:€€€€€€€€€`F
ReluReluinputs*
T0*'
_output_shapes
:€€€€€€€€€`S
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::нѕT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€`D
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€`r
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€`P
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:€€€€€€€€€`[
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€`I
NegNegtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€`M
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€`R
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:€€€€€€€€€`W
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€`d
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€`[
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€`P
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
:€€€€€€€€€`T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€`]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:€€€€€€€€€`Q
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€`V
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€`L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€`[
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€`l
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€`Q
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€`:O K
'
_output_shapes
:€€€€€€€€€`
 
_user_specified_nameinputs
Б!
]
A__inference_relu4_layer_call_and_return_conditional_losses_883264

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
value	B :K
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
 *  pAG
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
:€€€€€€€€€F
ReluReluinputs*
T0*'
_output_shapes
:€€€€€€€€€S
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::нѕT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€D
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€r
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€P
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:€€€€€€€€€[
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€I
NegNegtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€M
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€R
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:€€€€€€€€€W
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€d
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€[
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€P
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
:€€€€€€€€€T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:€€€€€€€€€Q
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€V
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€[
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€l
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Q
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Б!
]
A__inference_relu5_layer_call_and_return_conditional_losses_883475

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
value	B :K
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
 *  pAG
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
:€€€€€€€€€0F
ReluReluinputs*
T0*'
_output_shapes
:€€€€€€€€€0S
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::нѕT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€0D
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€0r
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€0P
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:€€€€€€€€€0[
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€0I
NegNegtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€0M
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€0R
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:€€€€€€€€€0W
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€0d
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€0[
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€0P
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
:€€€€€€€€€0T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€0]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:€€€€€€€€€0Q
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€0V
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€0L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€0[
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€0l
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€0Q
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€0:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
»
¶
G__inference_batch_norm3_layer_call_and_return_conditional_losses_881567

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
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
:€€€€€€€€€z
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
:€€€€€€€€€b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ц
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 28
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
:€€€€€€€€€
 
_user_specified_nameinputs
»
¶
G__inference_batch_norm3_layer_call_and_return_conditional_losses_883133

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
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
:€€€€€€€€€z
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
:€€€€€€€€€b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ц
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 28
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
:€€€€€€€€€
 
_user_specified_nameinputs
О	
«
,__inference_batch_norm4_layer_call_fn_883277

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_batch_norm4_layer_call_and_return_conditional_losses_881627o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name883273:&"
 
_user_specified_name883271:&"
 
_user_specified_name883269:&"
 
_user_specified_name883267:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
М&
а
G__inference_batch_norm3_layer_call_and_return_conditional_losses_883113

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
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

:З
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ю
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
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:ђ
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
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:і
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
:€€€€€€€€€h
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
:€€€€€€€€€b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€∆
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2@
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
:€€€€€€€€€
 
_user_specified_nameinputs
®2
•
B__inference_dense5_layer_call_and_return_conditional_losses_882247

inputs)
readvariableop_resource:0'
readvariableop_3_resource:0
identityИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3ҐReadVariableOp_4ҐReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
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

:0*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:0N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:0@
NegNegtruediv:z:0*
T0*
_output_shapes

:0D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:0I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:0N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:0[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:0\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьFv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:0T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:0R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:0P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:0L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:0h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:0*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:0M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:0L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:0R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:0h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:0*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:0U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€0I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
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
:0*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:0P
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:0@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:0D
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:0K
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:0N
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:0[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:0^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьFv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:0V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:0R
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:0P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:0L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:0f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:0*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:0I
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:0L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:0N
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:0f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:0*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:0a
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€0_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0Т
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 2$
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
:€€€€€€€€€
 
_user_specified_nameinputs
®2
•
B__inference_dense6_layer_call_and_return_conditional_losses_882379

inputs)
readvariableop_resource:0`'
readvariableop_3_resource:`
identityИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3ҐReadVariableOp_4ҐReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
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

:0`*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:0`N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:0`@
NegNegtruediv:z:0*
T0*
_output_shapes

:0`D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:0`I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:0`N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:0`[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:0`\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьFv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:0`T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:0`R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:0`P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:0`L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:0`h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:0`*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:0`M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:0`L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:0`R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:0`h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:0`*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:0`U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€`I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
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
:`*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:`P
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:`@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:`D
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:`K
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:`N
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:`[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:`^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьFv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:`V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:`R
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:`P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:`L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:`f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:`*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:`I
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:`L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:`N
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:`f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:`*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:`a
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€`_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`Т
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€0: : 2$
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
:€€€€€€€€€0
 
_user_specified_nameinputs
®2
•
B__inference_dense3_layer_call_and_return_conditional_losses_882999

inputs)
readvariableop_resource:
'
readvariableop_3_resource:
identityИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3ҐReadVariableOp_4ҐReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
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

:
*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:
N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:
@
NegNegtruediv:z:0*
T0*
_output_shapes

:
D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:
I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:
N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:
[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:
\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьFv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:
T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:
R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:
P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:
L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:
h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:
*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:
M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:
L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:
R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:
h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:
*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:
U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
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
 *  АF]
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
 * ьFv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆x
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
 *  АFZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
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
 *  А?N
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
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Т
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
: : 2$
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
:€€€€€€€€€

 
_user_specified_nameinputs
Ч
B
&__inference_relu3_layer_call_fn_883004

inputs
identityђ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_relu3_layer_call_and_return_conditional_losses_882037`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
М&
а
G__inference_batch_norm3_layer_call_and_return_conditional_losses_881547

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
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

:З
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ю
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
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:ђ
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
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:і
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
:€€€€€€€€€h
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
:€€€€€€€€€b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€∆
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2@
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
:€€€€€€€€€
 
_user_specified_nameinputs
к
Ф
'__inference_output_layer_call_fn_883775

inputs
unknown:`i
	unknown_0:i
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€i*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_882511o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€i<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€`: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name883771:&"
 
_user_specified_name883769:O K
'
_output_shapes
:€€€€€€€€€`
 
_user_specified_nameinputs
к
Ф
'__inference_dense4_layer_call_fn_883142

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense4_layer_call_and_return_conditional_losses_882115o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name883138:&"
 
_user_specified_name883136:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
»
¶
G__inference_batch_norm5_layer_call_and_return_conditional_losses_883555

inputs/
!batchnorm_readvariableop_resource:03
%batchnorm_mul_readvariableop_resource:01
#batchnorm_readvariableop_1_resource:01
#batchnorm_readvariableop_2_resource:0
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:0*
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
:0P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:0~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:0c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€0z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:0*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:0z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:0*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:0r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€0b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0Ц
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€0: : : : 28
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
:€€€€€€€€€0
 
_user_specified_nameinputs
®2
•
B__inference_output_layer_call_and_return_conditional_losses_883843

inputs)
readvariableop_resource:`i'
readvariableop_3_resource:i
identityИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3ҐReadVariableOp_4ҐReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
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

:`i*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:`iN
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:`i@
NegNegtruediv:z:0*
T0*
_output_shapes

:`iD
RoundRoundtruediv:z:0*
T0*
_output_shapes

:`iI
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:`iN
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:`i[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:`i\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьFv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:`iT
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:`iR
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:`iP
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:`iL
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:`ih
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:`i*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:`iM
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:`iL
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:`iR
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:`ih
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:`i*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:`iU
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€iI
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
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
:i*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:iP
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:i@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:iD
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:iK
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:iN
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:i[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:i^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьFv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:iV
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:iR
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:iP
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:iL
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:if
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:i*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:iI
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:iL
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:iN
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:if
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:i*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:ia
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€i_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€iТ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€`: : 2$
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
:€€€€€€€€€`
 
_user_specified_nameinputs
З!
c
G__inference_output_relu_layer_call_and_return_conditional_losses_883897

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
value	B :K
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
 *  pAG
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
:€€€€€€€€€iF
ReluReluinputs*
T0*'
_output_shapes
:€€€€€€€€€iS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::нѕT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€iD
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ir
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€iP
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:€€€€€€€€€i[
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€iI
NegNegtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€iM
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€iR
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:€€€€€€€€€iW
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€id
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€i[
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€iP
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
:€€€€€€€€€iT
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€i]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:€€€€€€€€€iQ
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€iV
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€iL
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€i[
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€il
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€iQ
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€i"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€i:O K
'
_output_shapes
:€€€€€€€€€i
 
_user_specified_nameinputs
Ч
B
&__inference_relu5_layer_call_fn_883426

inputs
identityђ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_relu5_layer_call_and_return_conditional_losses_882301`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€0:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
ќ
ђ
M__inference_output_batch_norm_layer_call_and_return_conditional_losses_881887

inputs/
!batchnorm_readvariableop_resource:i3
%batchnorm_mul_readvariableop_resource:i1
#batchnorm_readvariableop_1_resource:i1
#batchnorm_readvariableop_2_resource:i
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:i*
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
:iP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:i~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:i*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:ic
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€iz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:i*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:iz
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:i*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:ir
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€ib
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€iЦ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€i: : : : 28
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
:€€€€€€€€€i
 
_user_specified_nameinputs
®2
•
B__inference_dense3_layer_call_and_return_conditional_losses_881983

inputs)
readvariableop_resource:
'
readvariableop_3_resource:
identityИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3ҐReadVariableOp_4ҐReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
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

:
*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:
N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:
@
NegNegtruediv:z:0*
T0*
_output_shapes

:
D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:
I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:
N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:
[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:
\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьFv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:
T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:
R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:
P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:
L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:
h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:
*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:
M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:
L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:
R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:
h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:
*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:
U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
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
 *  АF]
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
 * ьFv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆x
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
 *  АFZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
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
 *  А?N
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
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Т
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
: : 2$
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
:€€€€€€€€€

 
_user_specified_nameinputs
Т&
ж
M__inference_output_batch_norm_layer_call_and_return_conditional_losses_881867

inputs5
'assignmovingavg_readvariableop_resource:i7
)assignmovingavg_1_readvariableop_resource:i3
%batchnorm_mul_readvariableop_resource:i/
!batchnorm_readvariableop_resource:i
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:i*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:iЗ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€il
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ю
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:i*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:i*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:i*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:i*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:ix
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:iђ
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
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:i*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:i~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:iі
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
:iP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:i~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:i*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:ic
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ih
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:iv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:i*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:ir
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€ib
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€i∆
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€i: : : : 2@
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
:€€€€€€€€€i
 
_user_specified_nameinputs
Т&
ж
M__inference_output_batch_norm_layer_call_and_return_conditional_losses_883957

inputs5
'assignmovingavg_readvariableop_resource:i7
)assignmovingavg_1_readvariableop_resource:i3
%batchnorm_mul_readvariableop_resource:i/
!batchnorm_readvariableop_resource:i
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:i*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:iЗ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€il
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ю
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:i*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:i*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:i*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:i*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:ix
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:iђ
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
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:i*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:i~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:iі
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
:iP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:i~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:i*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:ic
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ih
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:iv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:i*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:ir
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€ib
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€i∆
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€i: : : : 2@
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
:€€€€€€€€€i
 
_user_specified_nameinputs
М&
а
G__inference_batch_norm4_layer_call_and_return_conditional_losses_881627

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
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
:€€€€€€€€€l
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
„#<В
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
:ђ
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
„#<Ж
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
:і
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
:€€€€€€€€€h
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
:€€€€€€€€€b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€∆
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2@
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
:€€€€€€€€€
 
_user_specified_nameinputs
Б!
]
A__inference_relu6_layer_call_and_return_conditional_losses_882433

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
value	B :K
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
 *  pAG
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
:€€€€€€€€€`F
ReluReluinputs*
T0*'
_output_shapes
:€€€€€€€€€`S
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::нѕT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€`D
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€`r
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€`P
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:€€€€€€€€€`[
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€`I
NegNegtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€`M
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€`R
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:€€€€€€€€€`W
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€`d
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€`[
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€`P
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
:€€€€€€€€€`T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€`]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:€€€€€€€€€`Q
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€`V
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€`L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€`[
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€`l
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€`Q
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€`:O K
'
_output_shapes
:€€€€€€€€€`
 
_user_specified_nameinputs
к
Ф
'__inference_dense3_layer_call_fn_882931

inputs
unknown:

	unknown_0:
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense3_layer_call_and_return_conditional_losses_881983o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name882927:&"
 
_user_specified_name882925:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
®2
•
B__inference_dense5_layer_call_and_return_conditional_losses_883421

inputs)
readvariableop_resource:0'
readvariableop_3_resource:0
identityИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3ҐReadVariableOp_4ҐReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
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

:0*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:0N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:0@
NegNegtruediv:z:0*
T0*
_output_shapes

:0D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:0I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:0N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:0[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:0\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьFv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:0T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:0R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:0P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:0L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:0h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:0*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:0M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:0L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:0R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:0h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:0*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:0U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€0I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
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
:0*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:0P
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:0@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:0D
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:0K
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:0N
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:0[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:0^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьFv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:0V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:0R
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:0P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:0L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:0f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:0*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:0I
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:0L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:0N
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:0f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:0*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:0a
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€0_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0Т
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 2$
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
:€€€€€€€€€
 
_user_specified_nameinputs
О	
«
,__inference_batch_norm5_layer_call_fn_883488

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_batch_norm5_layer_call_and_return_conditional_losses_881707o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€0: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name883484:&"
 
_user_specified_name883482:&"
 
_user_specified_name883480:&"
 
_user_specified_name883478:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
М&
а
G__inference_batch_norm4_layer_call_and_return_conditional_losses_883324

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
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
:€€€€€€€€€l
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
„#<В
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
:ђ
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
„#<Ж
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
:і
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
:€€€€€€€€€h
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
:€€€€€€€€€b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€∆
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2@
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
:€€€€€€€€€
 
_user_specified_nameinputs
Ч
B
&__inference_relu6_layer_call_fn_883637

inputs
identityђ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_relu6_layer_call_and_return_conditional_losses_882433`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€`:O K
'
_output_shapes
:€€€€€€€€€`
 
_user_specified_nameinputs
ЮҐ
э
!__inference__wrapped_model_881513
input_18
&decoder_dense3_readvariableop_resource:
6
(decoder_dense3_readvariableop_3_resource:C
5decoder_batch_norm3_batchnorm_readvariableop_resource:G
9decoder_batch_norm3_batchnorm_mul_readvariableop_resource:E
7decoder_batch_norm3_batchnorm_readvariableop_1_resource:E
7decoder_batch_norm3_batchnorm_readvariableop_2_resource:8
&decoder_dense4_readvariableop_resource:6
(decoder_dense4_readvariableop_3_resource:C
5decoder_batch_norm4_batchnorm_readvariableop_resource:G
9decoder_batch_norm4_batchnorm_mul_readvariableop_resource:E
7decoder_batch_norm4_batchnorm_readvariableop_1_resource:E
7decoder_batch_norm4_batchnorm_readvariableop_2_resource:8
&decoder_dense5_readvariableop_resource:06
(decoder_dense5_readvariableop_3_resource:0C
5decoder_batch_norm5_batchnorm_readvariableop_resource:0G
9decoder_batch_norm5_batchnorm_mul_readvariableop_resource:0E
7decoder_batch_norm5_batchnorm_readvariableop_1_resource:0E
7decoder_batch_norm5_batchnorm_readvariableop_2_resource:08
&decoder_dense6_readvariableop_resource:0`6
(decoder_dense6_readvariableop_3_resource:`C
5decoder_batch_norm6_batchnorm_readvariableop_resource:`G
9decoder_batch_norm6_batchnorm_mul_readvariableop_resource:`E
7decoder_batch_norm6_batchnorm_readvariableop_1_resource:`E
7decoder_batch_norm6_batchnorm_readvariableop_2_resource:`8
&decoder_output_readvariableop_resource:`i6
(decoder_output_readvariableop_3_resource:iI
;decoder_output_batch_norm_batchnorm_readvariableop_resource:iM
?decoder_output_batch_norm_batchnorm_mul_readvariableop_resource:iK
=decoder_output_batch_norm_batchnorm_readvariableop_1_resource:iK
=decoder_output_batch_norm_batchnorm_readvariableop_2_resource:i
identityИҐ,decoder/batch_norm3/batchnorm/ReadVariableOpҐ.decoder/batch_norm3/batchnorm/ReadVariableOp_1Ґ.decoder/batch_norm3/batchnorm/ReadVariableOp_2Ґ0decoder/batch_norm3/batchnorm/mul/ReadVariableOpҐ,decoder/batch_norm4/batchnorm/ReadVariableOpҐ.decoder/batch_norm4/batchnorm/ReadVariableOp_1Ґ.decoder/batch_norm4/batchnorm/ReadVariableOp_2Ґ0decoder/batch_norm4/batchnorm/mul/ReadVariableOpҐ,decoder/batch_norm5/batchnorm/ReadVariableOpҐ.decoder/batch_norm5/batchnorm/ReadVariableOp_1Ґ.decoder/batch_norm5/batchnorm/ReadVariableOp_2Ґ0decoder/batch_norm5/batchnorm/mul/ReadVariableOpҐ,decoder/batch_norm6/batchnorm/ReadVariableOpҐ.decoder/batch_norm6/batchnorm/ReadVariableOp_1Ґ.decoder/batch_norm6/batchnorm/ReadVariableOp_2Ґ0decoder/batch_norm6/batchnorm/mul/ReadVariableOpҐdecoder/dense3/ReadVariableOpҐdecoder/dense3/ReadVariableOp_1Ґdecoder/dense3/ReadVariableOp_2Ґdecoder/dense3/ReadVariableOp_3Ґdecoder/dense3/ReadVariableOp_4Ґdecoder/dense3/ReadVariableOp_5Ґdecoder/dense4/ReadVariableOpҐdecoder/dense4/ReadVariableOp_1Ґdecoder/dense4/ReadVariableOp_2Ґdecoder/dense4/ReadVariableOp_3Ґdecoder/dense4/ReadVariableOp_4Ґdecoder/dense4/ReadVariableOp_5Ґdecoder/dense5/ReadVariableOpҐdecoder/dense5/ReadVariableOp_1Ґdecoder/dense5/ReadVariableOp_2Ґdecoder/dense5/ReadVariableOp_3Ґdecoder/dense5/ReadVariableOp_4Ґdecoder/dense5/ReadVariableOp_5Ґdecoder/dense6/ReadVariableOpҐdecoder/dense6/ReadVariableOp_1Ґdecoder/dense6/ReadVariableOp_2Ґdecoder/dense6/ReadVariableOp_3Ґdecoder/dense6/ReadVariableOp_4Ґdecoder/dense6/ReadVariableOp_5Ґdecoder/output/ReadVariableOpҐdecoder/output/ReadVariableOp_1Ґdecoder/output/ReadVariableOp_2Ґdecoder/output/ReadVariableOp_3Ґdecoder/output/ReadVariableOp_4Ґdecoder/output/ReadVariableOp_5Ґ2decoder/output_batch_norm/batchnorm/ReadVariableOpҐ4decoder/output_batch_norm/batchnorm/ReadVariableOp_1Ґ4decoder/output_batch_norm/batchnorm/ReadVariableOp_2Ґ6decoder/output_batch_norm/batchnorm/mul/ReadVariableOpV
decoder/dense3/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :V
decoder/dense3/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :x
decoder/dense3/PowPowdecoder/dense3/Pow/x:output:0decoder/dense3/Pow/y:output:0*
T0*
_output_shapes
: c
decoder/dense3/CastCastdecoder/dense3/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: Д
decoder/dense3/ReadVariableOpReadVariableOp&decoder_dense3_readvariableop_resource*
_output_shapes

:
*
dtype0Y
decoder/dense3/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFИ
decoder/dense3/mulMul%decoder/dense3/ReadVariableOp:value:0decoder/dense3/mul/y:output:0*
T0*
_output_shapes

:
{
decoder/dense3/truedivRealDivdecoder/dense3/mul:z:0decoder/dense3/Cast:y:0*
T0*
_output_shapes

:
^
decoder/dense3/NegNegdecoder/dense3/truediv:z:0*
T0*
_output_shapes

:
b
decoder/dense3/RoundRounddecoder/dense3/truediv:z:0*
T0*
_output_shapes

:
v
decoder/dense3/addAddV2decoder/dense3/Neg:y:0decoder/dense3/Round:y:0*
T0*
_output_shapes

:
l
decoder/dense3/StopGradientStopGradientdecoder/dense3/add:z:0*
T0*
_output_shapes

:
И
decoder/dense3/add_1AddV2decoder/dense3/truediv:z:0$decoder/dense3/StopGradient:output:0*
T0*
_output_shapes

:
k
&decoder/dense3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьF£
$decoder/dense3/clip_by_value/MinimumMinimumdecoder/dense3/add_1:z:0/decoder/dense3/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:
c
decoder/dense3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆£
decoder/dense3/clip_by_valueMaximum(decoder/dense3/clip_by_value/Minimum:z:0'decoder/dense3/clip_by_value/y:output:0*
T0*
_output_shapes

:

decoder/dense3/mul_1Muldecoder/dense3/Cast:y:0 decoder/dense3/clip_by_value:z:0*
T0*
_output_shapes

:
_
decoder/dense3/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFЛ
decoder/dense3/truediv_1RealDivdecoder/dense3/mul_1:z:0#decoder/dense3/truediv_1/y:output:0*
T0*
_output_shapes

:
[
decoder/dense3/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Г
decoder/dense3/mul_2Muldecoder/dense3/mul_2/x:output:0decoder/dense3/truediv_1:z:0*
T0*
_output_shapes

:
Ж
decoder/dense3/ReadVariableOp_1ReadVariableOp&decoder_dense3_readvariableop_resource*
_output_shapes

:
*
dtype0m
decoder/dense3/Neg_1Neg'decoder/dense3/ReadVariableOp_1:value:0*
T0*
_output_shapes

:
z
decoder/dense3/add_2AddV2decoder/dense3/Neg_1:y:0decoder/dense3/mul_2:z:0*
T0*
_output_shapes

:
[
decoder/dense3/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
decoder/dense3/mul_3Muldecoder/dense3/mul_3/x:output:0decoder/dense3/add_2:z:0*
T0*
_output_shapes

:
p
decoder/dense3/StopGradient_1StopGradientdecoder/dense3/mul_3:z:0*
T0*
_output_shapes

:
Ж
decoder/dense3/ReadVariableOp_2ReadVariableOp&decoder_dense3_readvariableop_resource*
_output_shapes

:
*
dtype0Ч
decoder/dense3/add_3AddV2'decoder/dense3/ReadVariableOp_2:value:0&decoder/dense3/StopGradient_1:output:0*
T0*
_output_shapes

:
t
decoder/dense3/MatMulMatMulinput_1decoder/dense3/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€X
decoder/dense3/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :X
decoder/dense3/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :~
decoder/dense3/Pow_1Powdecoder/dense3/Pow_1/x:output:0decoder/dense3/Pow_1/y:output:0*
T0*
_output_shapes
: g
decoder/dense3/Cast_1Castdecoder/dense3/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: Д
decoder/dense3/ReadVariableOp_3ReadVariableOp(decoder_dense3_readvariableop_3_resource*
_output_shapes
:*
dtype0[
decoder/dense3/mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFК
decoder/dense3/mul_4Mul'decoder/dense3/ReadVariableOp_3:value:0decoder/dense3/mul_4/y:output:0*
T0*
_output_shapes
:}
decoder/dense3/truediv_2RealDivdecoder/dense3/mul_4:z:0decoder/dense3/Cast_1:y:0*
T0*
_output_shapes
:^
decoder/dense3/Neg_2Negdecoder/dense3/truediv_2:z:0*
T0*
_output_shapes
:b
decoder/dense3/Round_1Rounddecoder/dense3/truediv_2:z:0*
T0*
_output_shapes
:x
decoder/dense3/add_4AddV2decoder/dense3/Neg_2:y:0decoder/dense3/Round_1:y:0*
T0*
_output_shapes
:l
decoder/dense3/StopGradient_2StopGradientdecoder/dense3/add_4:z:0*
T0*
_output_shapes
:И
decoder/dense3/add_5AddV2decoder/dense3/truediv_2:z:0&decoder/dense3/StopGradient_2:output:0*
T0*
_output_shapes
:m
(decoder/dense3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьF£
&decoder/dense3/clip_by_value_1/MinimumMinimumdecoder/dense3/add_5:z:01decoder/dense3/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:e
 decoder/dense3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆•
decoder/dense3/clip_by_value_1Maximum*decoder/dense3/clip_by_value_1/Minimum:z:0)decoder/dense3/clip_by_value_1/y:output:0*
T0*
_output_shapes
:
decoder/dense3/mul_5Muldecoder/dense3/Cast_1:y:0"decoder/dense3/clip_by_value_1:z:0*
T0*
_output_shapes
:_
decoder/dense3/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFЗ
decoder/dense3/truediv_3RealDivdecoder/dense3/mul_5:z:0#decoder/dense3/truediv_3/y:output:0*
T0*
_output_shapes
:[
decoder/dense3/mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
decoder/dense3/mul_6Muldecoder/dense3/mul_6/x:output:0decoder/dense3/truediv_3:z:0*
T0*
_output_shapes
:Д
decoder/dense3/ReadVariableOp_4ReadVariableOp(decoder_dense3_readvariableop_3_resource*
_output_shapes
:*
dtype0i
decoder/dense3/Neg_3Neg'decoder/dense3/ReadVariableOp_4:value:0*
T0*
_output_shapes
:v
decoder/dense3/add_6AddV2decoder/dense3/Neg_3:y:0decoder/dense3/mul_6:z:0*
T0*
_output_shapes
:[
decoder/dense3/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?{
decoder/dense3/mul_7Muldecoder/dense3/mul_7/x:output:0decoder/dense3/add_6:z:0*
T0*
_output_shapes
:l
decoder/dense3/StopGradient_3StopGradientdecoder/dense3/mul_7:z:0*
T0*
_output_shapes
:Д
decoder/dense3/ReadVariableOp_5ReadVariableOp(decoder_dense3_readvariableop_3_resource*
_output_shapes
:*
dtype0У
decoder/dense3/add_7AddV2'decoder/dense3/ReadVariableOp_5:value:0&decoder/dense3/StopGradient_3:output:0*
T0*
_output_shapes
:О
decoder/dense3/BiasAddBiasAdddecoder/dense3/MatMul:product:0decoder/dense3/add_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€U
decoder/relu3/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :U
decoder/relu3/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :u
decoder/relu3/PowPowdecoder/relu3/Pow/x:output:0decoder/relu3/Pow/y:output:0*
T0*
_output_shapes
: a
decoder/relu3/CastCastdecoder/relu3/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: W
decoder/relu3/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :W
decoder/relu3/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B : {
decoder/relu3/Pow_1Powdecoder/relu3/Pow_1/x:output:0decoder/relu3/Pow_1/y:output:0*
T0*
_output_shapes
: e
decoder/relu3/Cast_1Castdecoder/relu3/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: X
decoder/relu3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
decoder/relu3/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B : m
decoder/relu3/Cast_2Castdecoder/relu3/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: X
decoder/relu3/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  pAq
decoder/relu3/subSubdecoder/relu3/Cast_2:y:0decoder/relu3/sub/y:output:0*
T0*
_output_shapes
: p
decoder/relu3/Pow_2Powdecoder/relu3/Const:output:0decoder/relu3/sub:z:0*
T0*
_output_shapes
: n
decoder/relu3/sub_1Subdecoder/relu3/Cast_1:y:0decoder/relu3/Pow_2:z:0*
T0*
_output_shapes
: Р
decoder/relu3/LessEqual	LessEqualdecoder/dense3/BiasAdd:output:0decoder/relu3/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€m
decoder/relu3/ReluReludecoder/dense3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€z
decoder/relu3/ones_like/ShapeShapedecoder/dense3/BiasAdd:output:0*
T0*
_output_shapes
::нѕb
decoder/relu3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?°
decoder/relu3/ones_likeFill&decoder/relu3/ones_like/Shape:output:0&decoder/relu3/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€n
decoder/relu3/sub_2Subdecoder/relu3/Cast_1:y:0decoder/relu3/Pow_2:z:0*
T0*
_output_shapes
: Е
decoder/relu3/mulMul decoder/relu3/ones_like:output:0decoder/relu3/sub_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€™
decoder/relu3/SelectV2SelectV2decoder/relu3/LessEqual:z:0 decoder/relu3/Relu:activations:0decoder/relu3/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€Е
decoder/relu3/mul_1Muldecoder/dense3/BiasAdd:output:0decoder/relu3/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€Е
decoder/relu3/truedivRealDivdecoder/relu3/mul_1:z:0decoder/relu3/Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€e
decoder/relu3/NegNegdecoder/relu3/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€i
decoder/relu3/RoundRounddecoder/relu3/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
decoder/relu3/addAddV2decoder/relu3/Neg:y:0decoder/relu3/Round:y:0*
T0*'
_output_shapes
:€€€€€€€€€s
decoder/relu3/StopGradientStopGradientdecoder/relu3/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€О
decoder/relu3/add_1AddV2decoder/relu3/truediv:z:0#decoder/relu3/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€Е
decoder/relu3/truediv_1RealDivdecoder/relu3/add_1:z:0decoder/relu3/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€^
decoder/relu3/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
decoder/relu3/truediv_2RealDiv"decoder/relu3/truediv_2/x:output:0decoder/relu3/Cast:y:0*
T0*
_output_shapes
: Z
decoder/relu3/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?x
decoder/relu3/sub_3Subdecoder/relu3/sub_3/x:output:0decoder/relu3/truediv_2:z:0*
T0*
_output_shapes
: Ц
#decoder/relu3/clip_by_value/MinimumMinimumdecoder/relu3/truediv_1:z:0decoder/relu3/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€b
decoder/relu3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ©
decoder/relu3/clip_by_valueMaximum'decoder/relu3/clip_by_value/Minimum:z:0&decoder/relu3/clip_by_value/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€З
decoder/relu3/mul_2Muldecoder/relu3/Cast_1:y:0decoder/relu3/clip_by_value:z:0*
T0*'
_output_shapes
:€€€€€€€€€m
decoder/relu3/Neg_1Negdecoder/relu3/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€А
decoder/relu3/add_2AddV2decoder/relu3/Neg_1:y:0decoder/relu3/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€Z
decoder/relu3/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Е
decoder/relu3/mul_3Muldecoder/relu3/mul_3/x:output:0decoder/relu3/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€w
decoder/relu3/StopGradient_1StopGradientdecoder/relu3/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ц
decoder/relu3/add_3AddV2decoder/relu3/SelectV2:output:0%decoder/relu3/StopGradient_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ю
,decoder/batch_norm3/batchnorm/ReadVariableOpReadVariableOp5decoder_batch_norm3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0h
#decoder/batch_norm3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:≥
!decoder/batch_norm3/batchnorm/addAddV24decoder/batch_norm3/batchnorm/ReadVariableOp:value:0,decoder/batch_norm3/batchnorm/add/y:output:0*
T0*
_output_shapes
:x
#decoder/batch_norm3/batchnorm/RsqrtRsqrt%decoder/batch_norm3/batchnorm/add:z:0*
T0*
_output_shapes
:¶
0decoder/batch_norm3/batchnorm/mul/ReadVariableOpReadVariableOp9decoder_batch_norm3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0∞
!decoder/batch_norm3/batchnorm/mulMul'decoder/batch_norm3/batchnorm/Rsqrt:y:08decoder/batch_norm3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ь
#decoder/batch_norm3/batchnorm/mul_1Muldecoder/relu3/add_3:z:0%decoder/batch_norm3/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
.decoder/batch_norm3/batchnorm/ReadVariableOp_1ReadVariableOp7decoder_batch_norm3_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0Ѓ
#decoder/batch_norm3/batchnorm/mul_2Mul6decoder/batch_norm3/batchnorm/ReadVariableOp_1:value:0%decoder/batch_norm3/batchnorm/mul:z:0*
T0*
_output_shapes
:Ґ
.decoder/batch_norm3/batchnorm/ReadVariableOp_2ReadVariableOp7decoder_batch_norm3_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0Ѓ
!decoder/batch_norm3/batchnorm/subSub6decoder/batch_norm3/batchnorm/ReadVariableOp_2:value:0'decoder/batch_norm3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Ѓ
#decoder/batch_norm3/batchnorm/add_1AddV2'decoder/batch_norm3/batchnorm/mul_1:z:0%decoder/batch_norm3/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€V
decoder/dense4/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :V
decoder/dense4/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :x
decoder/dense4/PowPowdecoder/dense4/Pow/x:output:0decoder/dense4/Pow/y:output:0*
T0*
_output_shapes
: c
decoder/dense4/CastCastdecoder/dense4/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: Д
decoder/dense4/ReadVariableOpReadVariableOp&decoder_dense4_readvariableop_resource*
_output_shapes

:*
dtype0Y
decoder/dense4/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFИ
decoder/dense4/mulMul%decoder/dense4/ReadVariableOp:value:0decoder/dense4/mul/y:output:0*
T0*
_output_shapes

:{
decoder/dense4/truedivRealDivdecoder/dense4/mul:z:0decoder/dense4/Cast:y:0*
T0*
_output_shapes

:^
decoder/dense4/NegNegdecoder/dense4/truediv:z:0*
T0*
_output_shapes

:b
decoder/dense4/RoundRounddecoder/dense4/truediv:z:0*
T0*
_output_shapes

:v
decoder/dense4/addAddV2decoder/dense4/Neg:y:0decoder/dense4/Round:y:0*
T0*
_output_shapes

:l
decoder/dense4/StopGradientStopGradientdecoder/dense4/add:z:0*
T0*
_output_shapes

:И
decoder/dense4/add_1AddV2decoder/dense4/truediv:z:0$decoder/dense4/StopGradient:output:0*
T0*
_output_shapes

:k
&decoder/dense4/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьF£
$decoder/dense4/clip_by_value/MinimumMinimumdecoder/dense4/add_1:z:0/decoder/dense4/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:c
decoder/dense4/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆£
decoder/dense4/clip_by_valueMaximum(decoder/dense4/clip_by_value/Minimum:z:0'decoder/dense4/clip_by_value/y:output:0*
T0*
_output_shapes

:
decoder/dense4/mul_1Muldecoder/dense4/Cast:y:0 decoder/dense4/clip_by_value:z:0*
T0*
_output_shapes

:_
decoder/dense4/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFЛ
decoder/dense4/truediv_1RealDivdecoder/dense4/mul_1:z:0#decoder/dense4/truediv_1/y:output:0*
T0*
_output_shapes

:[
decoder/dense4/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Г
decoder/dense4/mul_2Muldecoder/dense4/mul_2/x:output:0decoder/dense4/truediv_1:z:0*
T0*
_output_shapes

:Ж
decoder/dense4/ReadVariableOp_1ReadVariableOp&decoder_dense4_readvariableop_resource*
_output_shapes

:*
dtype0m
decoder/dense4/Neg_1Neg'decoder/dense4/ReadVariableOp_1:value:0*
T0*
_output_shapes

:z
decoder/dense4/add_2AddV2decoder/dense4/Neg_1:y:0decoder/dense4/mul_2:z:0*
T0*
_output_shapes

:[
decoder/dense4/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
decoder/dense4/mul_3Muldecoder/dense4/mul_3/x:output:0decoder/dense4/add_2:z:0*
T0*
_output_shapes

:p
decoder/dense4/StopGradient_1StopGradientdecoder/dense4/mul_3:z:0*
T0*
_output_shapes

:Ж
decoder/dense4/ReadVariableOp_2ReadVariableOp&decoder_dense4_readvariableop_resource*
_output_shapes

:*
dtype0Ч
decoder/dense4/add_3AddV2'decoder/dense4/ReadVariableOp_2:value:0&decoder/dense4/StopGradient_1:output:0*
T0*
_output_shapes

:Ф
decoder/dense4/MatMulMatMul'decoder/batch_norm3/batchnorm/add_1:z:0decoder/dense4/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€X
decoder/dense4/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :X
decoder/dense4/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :~
decoder/dense4/Pow_1Powdecoder/dense4/Pow_1/x:output:0decoder/dense4/Pow_1/y:output:0*
T0*
_output_shapes
: g
decoder/dense4/Cast_1Castdecoder/dense4/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: Д
decoder/dense4/ReadVariableOp_3ReadVariableOp(decoder_dense4_readvariableop_3_resource*
_output_shapes
:*
dtype0[
decoder/dense4/mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFК
decoder/dense4/mul_4Mul'decoder/dense4/ReadVariableOp_3:value:0decoder/dense4/mul_4/y:output:0*
T0*
_output_shapes
:}
decoder/dense4/truediv_2RealDivdecoder/dense4/mul_4:z:0decoder/dense4/Cast_1:y:0*
T0*
_output_shapes
:^
decoder/dense4/Neg_2Negdecoder/dense4/truediv_2:z:0*
T0*
_output_shapes
:b
decoder/dense4/Round_1Rounddecoder/dense4/truediv_2:z:0*
T0*
_output_shapes
:x
decoder/dense4/add_4AddV2decoder/dense4/Neg_2:y:0decoder/dense4/Round_1:y:0*
T0*
_output_shapes
:l
decoder/dense4/StopGradient_2StopGradientdecoder/dense4/add_4:z:0*
T0*
_output_shapes
:И
decoder/dense4/add_5AddV2decoder/dense4/truediv_2:z:0&decoder/dense4/StopGradient_2:output:0*
T0*
_output_shapes
:m
(decoder/dense4/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьF£
&decoder/dense4/clip_by_value_1/MinimumMinimumdecoder/dense4/add_5:z:01decoder/dense4/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:e
 decoder/dense4/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆•
decoder/dense4/clip_by_value_1Maximum*decoder/dense4/clip_by_value_1/Minimum:z:0)decoder/dense4/clip_by_value_1/y:output:0*
T0*
_output_shapes
:
decoder/dense4/mul_5Muldecoder/dense4/Cast_1:y:0"decoder/dense4/clip_by_value_1:z:0*
T0*
_output_shapes
:_
decoder/dense4/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFЗ
decoder/dense4/truediv_3RealDivdecoder/dense4/mul_5:z:0#decoder/dense4/truediv_3/y:output:0*
T0*
_output_shapes
:[
decoder/dense4/mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
decoder/dense4/mul_6Muldecoder/dense4/mul_6/x:output:0decoder/dense4/truediv_3:z:0*
T0*
_output_shapes
:Д
decoder/dense4/ReadVariableOp_4ReadVariableOp(decoder_dense4_readvariableop_3_resource*
_output_shapes
:*
dtype0i
decoder/dense4/Neg_3Neg'decoder/dense4/ReadVariableOp_4:value:0*
T0*
_output_shapes
:v
decoder/dense4/add_6AddV2decoder/dense4/Neg_3:y:0decoder/dense4/mul_6:z:0*
T0*
_output_shapes
:[
decoder/dense4/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?{
decoder/dense4/mul_7Muldecoder/dense4/mul_7/x:output:0decoder/dense4/add_6:z:0*
T0*
_output_shapes
:l
decoder/dense4/StopGradient_3StopGradientdecoder/dense4/mul_7:z:0*
T0*
_output_shapes
:Д
decoder/dense4/ReadVariableOp_5ReadVariableOp(decoder_dense4_readvariableop_3_resource*
_output_shapes
:*
dtype0У
decoder/dense4/add_7AddV2'decoder/dense4/ReadVariableOp_5:value:0&decoder/dense4/StopGradient_3:output:0*
T0*
_output_shapes
:О
decoder/dense4/BiasAddBiasAdddecoder/dense4/MatMul:product:0decoder/dense4/add_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€U
decoder/relu4/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :U
decoder/relu4/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :u
decoder/relu4/PowPowdecoder/relu4/Pow/x:output:0decoder/relu4/Pow/y:output:0*
T0*
_output_shapes
: a
decoder/relu4/CastCastdecoder/relu4/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: W
decoder/relu4/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :W
decoder/relu4/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B : {
decoder/relu4/Pow_1Powdecoder/relu4/Pow_1/x:output:0decoder/relu4/Pow_1/y:output:0*
T0*
_output_shapes
: e
decoder/relu4/Cast_1Castdecoder/relu4/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: X
decoder/relu4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
decoder/relu4/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B : m
decoder/relu4/Cast_2Castdecoder/relu4/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: X
decoder/relu4/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  pAq
decoder/relu4/subSubdecoder/relu4/Cast_2:y:0decoder/relu4/sub/y:output:0*
T0*
_output_shapes
: p
decoder/relu4/Pow_2Powdecoder/relu4/Const:output:0decoder/relu4/sub:z:0*
T0*
_output_shapes
: n
decoder/relu4/sub_1Subdecoder/relu4/Cast_1:y:0decoder/relu4/Pow_2:z:0*
T0*
_output_shapes
: Р
decoder/relu4/LessEqual	LessEqualdecoder/dense4/BiasAdd:output:0decoder/relu4/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€m
decoder/relu4/ReluReludecoder/dense4/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€z
decoder/relu4/ones_like/ShapeShapedecoder/dense4/BiasAdd:output:0*
T0*
_output_shapes
::нѕb
decoder/relu4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?°
decoder/relu4/ones_likeFill&decoder/relu4/ones_like/Shape:output:0&decoder/relu4/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€n
decoder/relu4/sub_2Subdecoder/relu4/Cast_1:y:0decoder/relu4/Pow_2:z:0*
T0*
_output_shapes
: Е
decoder/relu4/mulMul decoder/relu4/ones_like:output:0decoder/relu4/sub_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€™
decoder/relu4/SelectV2SelectV2decoder/relu4/LessEqual:z:0 decoder/relu4/Relu:activations:0decoder/relu4/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€Е
decoder/relu4/mul_1Muldecoder/dense4/BiasAdd:output:0decoder/relu4/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€Е
decoder/relu4/truedivRealDivdecoder/relu4/mul_1:z:0decoder/relu4/Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€e
decoder/relu4/NegNegdecoder/relu4/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€i
decoder/relu4/RoundRounddecoder/relu4/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
decoder/relu4/addAddV2decoder/relu4/Neg:y:0decoder/relu4/Round:y:0*
T0*'
_output_shapes
:€€€€€€€€€s
decoder/relu4/StopGradientStopGradientdecoder/relu4/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€О
decoder/relu4/add_1AddV2decoder/relu4/truediv:z:0#decoder/relu4/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€Е
decoder/relu4/truediv_1RealDivdecoder/relu4/add_1:z:0decoder/relu4/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€^
decoder/relu4/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
decoder/relu4/truediv_2RealDiv"decoder/relu4/truediv_2/x:output:0decoder/relu4/Cast:y:0*
T0*
_output_shapes
: Z
decoder/relu4/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?x
decoder/relu4/sub_3Subdecoder/relu4/sub_3/x:output:0decoder/relu4/truediv_2:z:0*
T0*
_output_shapes
: Ц
#decoder/relu4/clip_by_value/MinimumMinimumdecoder/relu4/truediv_1:z:0decoder/relu4/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€b
decoder/relu4/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ©
decoder/relu4/clip_by_valueMaximum'decoder/relu4/clip_by_value/Minimum:z:0&decoder/relu4/clip_by_value/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€З
decoder/relu4/mul_2Muldecoder/relu4/Cast_1:y:0decoder/relu4/clip_by_value:z:0*
T0*'
_output_shapes
:€€€€€€€€€m
decoder/relu4/Neg_1Negdecoder/relu4/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€А
decoder/relu4/add_2AddV2decoder/relu4/Neg_1:y:0decoder/relu4/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€Z
decoder/relu4/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Е
decoder/relu4/mul_3Muldecoder/relu4/mul_3/x:output:0decoder/relu4/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€w
decoder/relu4/StopGradient_1StopGradientdecoder/relu4/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ц
decoder/relu4/add_3AddV2decoder/relu4/SelectV2:output:0%decoder/relu4/StopGradient_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ю
,decoder/batch_norm4/batchnorm/ReadVariableOpReadVariableOp5decoder_batch_norm4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0h
#decoder/batch_norm4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:≥
!decoder/batch_norm4/batchnorm/addAddV24decoder/batch_norm4/batchnorm/ReadVariableOp:value:0,decoder/batch_norm4/batchnorm/add/y:output:0*
T0*
_output_shapes
:x
#decoder/batch_norm4/batchnorm/RsqrtRsqrt%decoder/batch_norm4/batchnorm/add:z:0*
T0*
_output_shapes
:¶
0decoder/batch_norm4/batchnorm/mul/ReadVariableOpReadVariableOp9decoder_batch_norm4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0∞
!decoder/batch_norm4/batchnorm/mulMul'decoder/batch_norm4/batchnorm/Rsqrt:y:08decoder/batch_norm4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ь
#decoder/batch_norm4/batchnorm/mul_1Muldecoder/relu4/add_3:z:0%decoder/batch_norm4/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
.decoder/batch_norm4/batchnorm/ReadVariableOp_1ReadVariableOp7decoder_batch_norm4_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0Ѓ
#decoder/batch_norm4/batchnorm/mul_2Mul6decoder/batch_norm4/batchnorm/ReadVariableOp_1:value:0%decoder/batch_norm4/batchnorm/mul:z:0*
T0*
_output_shapes
:Ґ
.decoder/batch_norm4/batchnorm/ReadVariableOp_2ReadVariableOp7decoder_batch_norm4_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0Ѓ
!decoder/batch_norm4/batchnorm/subSub6decoder/batch_norm4/batchnorm/ReadVariableOp_2:value:0'decoder/batch_norm4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Ѓ
#decoder/batch_norm4/batchnorm/add_1AddV2'decoder/batch_norm4/batchnorm/mul_1:z:0%decoder/batch_norm4/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€V
decoder/dense5/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :V
decoder/dense5/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :x
decoder/dense5/PowPowdecoder/dense5/Pow/x:output:0decoder/dense5/Pow/y:output:0*
T0*
_output_shapes
: c
decoder/dense5/CastCastdecoder/dense5/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: Д
decoder/dense5/ReadVariableOpReadVariableOp&decoder_dense5_readvariableop_resource*
_output_shapes

:0*
dtype0Y
decoder/dense5/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFИ
decoder/dense5/mulMul%decoder/dense5/ReadVariableOp:value:0decoder/dense5/mul/y:output:0*
T0*
_output_shapes

:0{
decoder/dense5/truedivRealDivdecoder/dense5/mul:z:0decoder/dense5/Cast:y:0*
T0*
_output_shapes

:0^
decoder/dense5/NegNegdecoder/dense5/truediv:z:0*
T0*
_output_shapes

:0b
decoder/dense5/RoundRounddecoder/dense5/truediv:z:0*
T0*
_output_shapes

:0v
decoder/dense5/addAddV2decoder/dense5/Neg:y:0decoder/dense5/Round:y:0*
T0*
_output_shapes

:0l
decoder/dense5/StopGradientStopGradientdecoder/dense5/add:z:0*
T0*
_output_shapes

:0И
decoder/dense5/add_1AddV2decoder/dense5/truediv:z:0$decoder/dense5/StopGradient:output:0*
T0*
_output_shapes

:0k
&decoder/dense5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьF£
$decoder/dense5/clip_by_value/MinimumMinimumdecoder/dense5/add_1:z:0/decoder/dense5/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:0c
decoder/dense5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆£
decoder/dense5/clip_by_valueMaximum(decoder/dense5/clip_by_value/Minimum:z:0'decoder/dense5/clip_by_value/y:output:0*
T0*
_output_shapes

:0
decoder/dense5/mul_1Muldecoder/dense5/Cast:y:0 decoder/dense5/clip_by_value:z:0*
T0*
_output_shapes

:0_
decoder/dense5/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFЛ
decoder/dense5/truediv_1RealDivdecoder/dense5/mul_1:z:0#decoder/dense5/truediv_1/y:output:0*
T0*
_output_shapes

:0[
decoder/dense5/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Г
decoder/dense5/mul_2Muldecoder/dense5/mul_2/x:output:0decoder/dense5/truediv_1:z:0*
T0*
_output_shapes

:0Ж
decoder/dense5/ReadVariableOp_1ReadVariableOp&decoder_dense5_readvariableop_resource*
_output_shapes

:0*
dtype0m
decoder/dense5/Neg_1Neg'decoder/dense5/ReadVariableOp_1:value:0*
T0*
_output_shapes

:0z
decoder/dense5/add_2AddV2decoder/dense5/Neg_1:y:0decoder/dense5/mul_2:z:0*
T0*
_output_shapes

:0[
decoder/dense5/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
decoder/dense5/mul_3Muldecoder/dense5/mul_3/x:output:0decoder/dense5/add_2:z:0*
T0*
_output_shapes

:0p
decoder/dense5/StopGradient_1StopGradientdecoder/dense5/mul_3:z:0*
T0*
_output_shapes

:0Ж
decoder/dense5/ReadVariableOp_2ReadVariableOp&decoder_dense5_readvariableop_resource*
_output_shapes

:0*
dtype0Ч
decoder/dense5/add_3AddV2'decoder/dense5/ReadVariableOp_2:value:0&decoder/dense5/StopGradient_1:output:0*
T0*
_output_shapes

:0Ф
decoder/dense5/MatMulMatMul'decoder/batch_norm4/batchnorm/add_1:z:0decoder/dense5/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€0X
decoder/dense5/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :X
decoder/dense5/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :~
decoder/dense5/Pow_1Powdecoder/dense5/Pow_1/x:output:0decoder/dense5/Pow_1/y:output:0*
T0*
_output_shapes
: g
decoder/dense5/Cast_1Castdecoder/dense5/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: Д
decoder/dense5/ReadVariableOp_3ReadVariableOp(decoder_dense5_readvariableop_3_resource*
_output_shapes
:0*
dtype0[
decoder/dense5/mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFК
decoder/dense5/mul_4Mul'decoder/dense5/ReadVariableOp_3:value:0decoder/dense5/mul_4/y:output:0*
T0*
_output_shapes
:0}
decoder/dense5/truediv_2RealDivdecoder/dense5/mul_4:z:0decoder/dense5/Cast_1:y:0*
T0*
_output_shapes
:0^
decoder/dense5/Neg_2Negdecoder/dense5/truediv_2:z:0*
T0*
_output_shapes
:0b
decoder/dense5/Round_1Rounddecoder/dense5/truediv_2:z:0*
T0*
_output_shapes
:0x
decoder/dense5/add_4AddV2decoder/dense5/Neg_2:y:0decoder/dense5/Round_1:y:0*
T0*
_output_shapes
:0l
decoder/dense5/StopGradient_2StopGradientdecoder/dense5/add_4:z:0*
T0*
_output_shapes
:0И
decoder/dense5/add_5AddV2decoder/dense5/truediv_2:z:0&decoder/dense5/StopGradient_2:output:0*
T0*
_output_shapes
:0m
(decoder/dense5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьF£
&decoder/dense5/clip_by_value_1/MinimumMinimumdecoder/dense5/add_5:z:01decoder/dense5/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:0e
 decoder/dense5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆•
decoder/dense5/clip_by_value_1Maximum*decoder/dense5/clip_by_value_1/Minimum:z:0)decoder/dense5/clip_by_value_1/y:output:0*
T0*
_output_shapes
:0
decoder/dense5/mul_5Muldecoder/dense5/Cast_1:y:0"decoder/dense5/clip_by_value_1:z:0*
T0*
_output_shapes
:0_
decoder/dense5/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFЗ
decoder/dense5/truediv_3RealDivdecoder/dense5/mul_5:z:0#decoder/dense5/truediv_3/y:output:0*
T0*
_output_shapes
:0[
decoder/dense5/mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
decoder/dense5/mul_6Muldecoder/dense5/mul_6/x:output:0decoder/dense5/truediv_3:z:0*
T0*
_output_shapes
:0Д
decoder/dense5/ReadVariableOp_4ReadVariableOp(decoder_dense5_readvariableop_3_resource*
_output_shapes
:0*
dtype0i
decoder/dense5/Neg_3Neg'decoder/dense5/ReadVariableOp_4:value:0*
T0*
_output_shapes
:0v
decoder/dense5/add_6AddV2decoder/dense5/Neg_3:y:0decoder/dense5/mul_6:z:0*
T0*
_output_shapes
:0[
decoder/dense5/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?{
decoder/dense5/mul_7Muldecoder/dense5/mul_7/x:output:0decoder/dense5/add_6:z:0*
T0*
_output_shapes
:0l
decoder/dense5/StopGradient_3StopGradientdecoder/dense5/mul_7:z:0*
T0*
_output_shapes
:0Д
decoder/dense5/ReadVariableOp_5ReadVariableOp(decoder_dense5_readvariableop_3_resource*
_output_shapes
:0*
dtype0У
decoder/dense5/add_7AddV2'decoder/dense5/ReadVariableOp_5:value:0&decoder/dense5/StopGradient_3:output:0*
T0*
_output_shapes
:0О
decoder/dense5/BiasAddBiasAdddecoder/dense5/MatMul:product:0decoder/dense5/add_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€0U
decoder/relu5/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :U
decoder/relu5/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :u
decoder/relu5/PowPowdecoder/relu5/Pow/x:output:0decoder/relu5/Pow/y:output:0*
T0*
_output_shapes
: a
decoder/relu5/CastCastdecoder/relu5/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: W
decoder/relu5/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :W
decoder/relu5/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B : {
decoder/relu5/Pow_1Powdecoder/relu5/Pow_1/x:output:0decoder/relu5/Pow_1/y:output:0*
T0*
_output_shapes
: e
decoder/relu5/Cast_1Castdecoder/relu5/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: X
decoder/relu5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
decoder/relu5/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B : m
decoder/relu5/Cast_2Castdecoder/relu5/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: X
decoder/relu5/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  pAq
decoder/relu5/subSubdecoder/relu5/Cast_2:y:0decoder/relu5/sub/y:output:0*
T0*
_output_shapes
: p
decoder/relu5/Pow_2Powdecoder/relu5/Const:output:0decoder/relu5/sub:z:0*
T0*
_output_shapes
: n
decoder/relu5/sub_1Subdecoder/relu5/Cast_1:y:0decoder/relu5/Pow_2:z:0*
T0*
_output_shapes
: Р
decoder/relu5/LessEqual	LessEqualdecoder/dense5/BiasAdd:output:0decoder/relu5/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€0m
decoder/relu5/ReluReludecoder/dense5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€0z
decoder/relu5/ones_like/ShapeShapedecoder/dense5/BiasAdd:output:0*
T0*
_output_shapes
::нѕb
decoder/relu5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?°
decoder/relu5/ones_likeFill&decoder/relu5/ones_like/Shape:output:0&decoder/relu5/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€0n
decoder/relu5/sub_2Subdecoder/relu5/Cast_1:y:0decoder/relu5/Pow_2:z:0*
T0*
_output_shapes
: Е
decoder/relu5/mulMul decoder/relu5/ones_like:output:0decoder/relu5/sub_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€0™
decoder/relu5/SelectV2SelectV2decoder/relu5/LessEqual:z:0 decoder/relu5/Relu:activations:0decoder/relu5/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€0Е
decoder/relu5/mul_1Muldecoder/dense5/BiasAdd:output:0decoder/relu5/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€0Е
decoder/relu5/truedivRealDivdecoder/relu5/mul_1:z:0decoder/relu5/Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€0e
decoder/relu5/NegNegdecoder/relu5/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€0i
decoder/relu5/RoundRounddecoder/relu5/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€0|
decoder/relu5/addAddV2decoder/relu5/Neg:y:0decoder/relu5/Round:y:0*
T0*'
_output_shapes
:€€€€€€€€€0s
decoder/relu5/StopGradientStopGradientdecoder/relu5/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€0О
decoder/relu5/add_1AddV2decoder/relu5/truediv:z:0#decoder/relu5/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€0Е
decoder/relu5/truediv_1RealDivdecoder/relu5/add_1:z:0decoder/relu5/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€0^
decoder/relu5/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
decoder/relu5/truediv_2RealDiv"decoder/relu5/truediv_2/x:output:0decoder/relu5/Cast:y:0*
T0*
_output_shapes
: Z
decoder/relu5/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?x
decoder/relu5/sub_3Subdecoder/relu5/sub_3/x:output:0decoder/relu5/truediv_2:z:0*
T0*
_output_shapes
: Ц
#decoder/relu5/clip_by_value/MinimumMinimumdecoder/relu5/truediv_1:z:0decoder/relu5/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€0b
decoder/relu5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ©
decoder/relu5/clip_by_valueMaximum'decoder/relu5/clip_by_value/Minimum:z:0&decoder/relu5/clip_by_value/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€0З
decoder/relu5/mul_2Muldecoder/relu5/Cast_1:y:0decoder/relu5/clip_by_value:z:0*
T0*'
_output_shapes
:€€€€€€€€€0m
decoder/relu5/Neg_1Negdecoder/relu5/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€0А
decoder/relu5/add_2AddV2decoder/relu5/Neg_1:y:0decoder/relu5/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€0Z
decoder/relu5/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Е
decoder/relu5/mul_3Muldecoder/relu5/mul_3/x:output:0decoder/relu5/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€0w
decoder/relu5/StopGradient_1StopGradientdecoder/relu5/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€0Ц
decoder/relu5/add_3AddV2decoder/relu5/SelectV2:output:0%decoder/relu5/StopGradient_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€0Ю
,decoder/batch_norm5/batchnorm/ReadVariableOpReadVariableOp5decoder_batch_norm5_batchnorm_readvariableop_resource*
_output_shapes
:0*
dtype0h
#decoder/batch_norm5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:≥
!decoder/batch_norm5/batchnorm/addAddV24decoder/batch_norm5/batchnorm/ReadVariableOp:value:0,decoder/batch_norm5/batchnorm/add/y:output:0*
T0*
_output_shapes
:0x
#decoder/batch_norm5/batchnorm/RsqrtRsqrt%decoder/batch_norm5/batchnorm/add:z:0*
T0*
_output_shapes
:0¶
0decoder/batch_norm5/batchnorm/mul/ReadVariableOpReadVariableOp9decoder_batch_norm5_batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype0∞
!decoder/batch_norm5/batchnorm/mulMul'decoder/batch_norm5/batchnorm/Rsqrt:y:08decoder/batch_norm5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:0Ь
#decoder/batch_norm5/batchnorm/mul_1Muldecoder/relu5/add_3:z:0%decoder/batch_norm5/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€0Ґ
.decoder/batch_norm5/batchnorm/ReadVariableOp_1ReadVariableOp7decoder_batch_norm5_batchnorm_readvariableop_1_resource*
_output_shapes
:0*
dtype0Ѓ
#decoder/batch_norm5/batchnorm/mul_2Mul6decoder/batch_norm5/batchnorm/ReadVariableOp_1:value:0%decoder/batch_norm5/batchnorm/mul:z:0*
T0*
_output_shapes
:0Ґ
.decoder/batch_norm5/batchnorm/ReadVariableOp_2ReadVariableOp7decoder_batch_norm5_batchnorm_readvariableop_2_resource*
_output_shapes
:0*
dtype0Ѓ
!decoder/batch_norm5/batchnorm/subSub6decoder/batch_norm5/batchnorm/ReadVariableOp_2:value:0'decoder/batch_norm5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:0Ѓ
#decoder/batch_norm5/batchnorm/add_1AddV2'decoder/batch_norm5/batchnorm/mul_1:z:0%decoder/batch_norm5/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€0V
decoder/dense6/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :V
decoder/dense6/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :x
decoder/dense6/PowPowdecoder/dense6/Pow/x:output:0decoder/dense6/Pow/y:output:0*
T0*
_output_shapes
: c
decoder/dense6/CastCastdecoder/dense6/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: Д
decoder/dense6/ReadVariableOpReadVariableOp&decoder_dense6_readvariableop_resource*
_output_shapes

:0`*
dtype0Y
decoder/dense6/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFИ
decoder/dense6/mulMul%decoder/dense6/ReadVariableOp:value:0decoder/dense6/mul/y:output:0*
T0*
_output_shapes

:0`{
decoder/dense6/truedivRealDivdecoder/dense6/mul:z:0decoder/dense6/Cast:y:0*
T0*
_output_shapes

:0`^
decoder/dense6/NegNegdecoder/dense6/truediv:z:0*
T0*
_output_shapes

:0`b
decoder/dense6/RoundRounddecoder/dense6/truediv:z:0*
T0*
_output_shapes

:0`v
decoder/dense6/addAddV2decoder/dense6/Neg:y:0decoder/dense6/Round:y:0*
T0*
_output_shapes

:0`l
decoder/dense6/StopGradientStopGradientdecoder/dense6/add:z:0*
T0*
_output_shapes

:0`И
decoder/dense6/add_1AddV2decoder/dense6/truediv:z:0$decoder/dense6/StopGradient:output:0*
T0*
_output_shapes

:0`k
&decoder/dense6/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьF£
$decoder/dense6/clip_by_value/MinimumMinimumdecoder/dense6/add_1:z:0/decoder/dense6/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:0`c
decoder/dense6/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆£
decoder/dense6/clip_by_valueMaximum(decoder/dense6/clip_by_value/Minimum:z:0'decoder/dense6/clip_by_value/y:output:0*
T0*
_output_shapes

:0`
decoder/dense6/mul_1Muldecoder/dense6/Cast:y:0 decoder/dense6/clip_by_value:z:0*
T0*
_output_shapes

:0`_
decoder/dense6/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFЛ
decoder/dense6/truediv_1RealDivdecoder/dense6/mul_1:z:0#decoder/dense6/truediv_1/y:output:0*
T0*
_output_shapes

:0`[
decoder/dense6/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Г
decoder/dense6/mul_2Muldecoder/dense6/mul_2/x:output:0decoder/dense6/truediv_1:z:0*
T0*
_output_shapes

:0`Ж
decoder/dense6/ReadVariableOp_1ReadVariableOp&decoder_dense6_readvariableop_resource*
_output_shapes

:0`*
dtype0m
decoder/dense6/Neg_1Neg'decoder/dense6/ReadVariableOp_1:value:0*
T0*
_output_shapes

:0`z
decoder/dense6/add_2AddV2decoder/dense6/Neg_1:y:0decoder/dense6/mul_2:z:0*
T0*
_output_shapes

:0`[
decoder/dense6/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
decoder/dense6/mul_3Muldecoder/dense6/mul_3/x:output:0decoder/dense6/add_2:z:0*
T0*
_output_shapes

:0`p
decoder/dense6/StopGradient_1StopGradientdecoder/dense6/mul_3:z:0*
T0*
_output_shapes

:0`Ж
decoder/dense6/ReadVariableOp_2ReadVariableOp&decoder_dense6_readvariableop_resource*
_output_shapes

:0`*
dtype0Ч
decoder/dense6/add_3AddV2'decoder/dense6/ReadVariableOp_2:value:0&decoder/dense6/StopGradient_1:output:0*
T0*
_output_shapes

:0`Ф
decoder/dense6/MatMulMatMul'decoder/batch_norm5/batchnorm/add_1:z:0decoder/dense6/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€`X
decoder/dense6/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :X
decoder/dense6/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :~
decoder/dense6/Pow_1Powdecoder/dense6/Pow_1/x:output:0decoder/dense6/Pow_1/y:output:0*
T0*
_output_shapes
: g
decoder/dense6/Cast_1Castdecoder/dense6/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: Д
decoder/dense6/ReadVariableOp_3ReadVariableOp(decoder_dense6_readvariableop_3_resource*
_output_shapes
:`*
dtype0[
decoder/dense6/mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFК
decoder/dense6/mul_4Mul'decoder/dense6/ReadVariableOp_3:value:0decoder/dense6/mul_4/y:output:0*
T0*
_output_shapes
:`}
decoder/dense6/truediv_2RealDivdecoder/dense6/mul_4:z:0decoder/dense6/Cast_1:y:0*
T0*
_output_shapes
:`^
decoder/dense6/Neg_2Negdecoder/dense6/truediv_2:z:0*
T0*
_output_shapes
:`b
decoder/dense6/Round_1Rounddecoder/dense6/truediv_2:z:0*
T0*
_output_shapes
:`x
decoder/dense6/add_4AddV2decoder/dense6/Neg_2:y:0decoder/dense6/Round_1:y:0*
T0*
_output_shapes
:`l
decoder/dense6/StopGradient_2StopGradientdecoder/dense6/add_4:z:0*
T0*
_output_shapes
:`И
decoder/dense6/add_5AddV2decoder/dense6/truediv_2:z:0&decoder/dense6/StopGradient_2:output:0*
T0*
_output_shapes
:`m
(decoder/dense6/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьF£
&decoder/dense6/clip_by_value_1/MinimumMinimumdecoder/dense6/add_5:z:01decoder/dense6/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:`e
 decoder/dense6/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆•
decoder/dense6/clip_by_value_1Maximum*decoder/dense6/clip_by_value_1/Minimum:z:0)decoder/dense6/clip_by_value_1/y:output:0*
T0*
_output_shapes
:`
decoder/dense6/mul_5Muldecoder/dense6/Cast_1:y:0"decoder/dense6/clip_by_value_1:z:0*
T0*
_output_shapes
:`_
decoder/dense6/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFЗ
decoder/dense6/truediv_3RealDivdecoder/dense6/mul_5:z:0#decoder/dense6/truediv_3/y:output:0*
T0*
_output_shapes
:`[
decoder/dense6/mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
decoder/dense6/mul_6Muldecoder/dense6/mul_6/x:output:0decoder/dense6/truediv_3:z:0*
T0*
_output_shapes
:`Д
decoder/dense6/ReadVariableOp_4ReadVariableOp(decoder_dense6_readvariableop_3_resource*
_output_shapes
:`*
dtype0i
decoder/dense6/Neg_3Neg'decoder/dense6/ReadVariableOp_4:value:0*
T0*
_output_shapes
:`v
decoder/dense6/add_6AddV2decoder/dense6/Neg_3:y:0decoder/dense6/mul_6:z:0*
T0*
_output_shapes
:`[
decoder/dense6/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?{
decoder/dense6/mul_7Muldecoder/dense6/mul_7/x:output:0decoder/dense6/add_6:z:0*
T0*
_output_shapes
:`l
decoder/dense6/StopGradient_3StopGradientdecoder/dense6/mul_7:z:0*
T0*
_output_shapes
:`Д
decoder/dense6/ReadVariableOp_5ReadVariableOp(decoder_dense6_readvariableop_3_resource*
_output_shapes
:`*
dtype0У
decoder/dense6/add_7AddV2'decoder/dense6/ReadVariableOp_5:value:0&decoder/dense6/StopGradient_3:output:0*
T0*
_output_shapes
:`О
decoder/dense6/BiasAddBiasAdddecoder/dense6/MatMul:product:0decoder/dense6/add_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€`U
decoder/relu6/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :U
decoder/relu6/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :u
decoder/relu6/PowPowdecoder/relu6/Pow/x:output:0decoder/relu6/Pow/y:output:0*
T0*
_output_shapes
: a
decoder/relu6/CastCastdecoder/relu6/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: W
decoder/relu6/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :W
decoder/relu6/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B : {
decoder/relu6/Pow_1Powdecoder/relu6/Pow_1/x:output:0decoder/relu6/Pow_1/y:output:0*
T0*
_output_shapes
: e
decoder/relu6/Cast_1Castdecoder/relu6/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: X
decoder/relu6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
decoder/relu6/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B : m
decoder/relu6/Cast_2Castdecoder/relu6/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: X
decoder/relu6/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  pAq
decoder/relu6/subSubdecoder/relu6/Cast_2:y:0decoder/relu6/sub/y:output:0*
T0*
_output_shapes
: p
decoder/relu6/Pow_2Powdecoder/relu6/Const:output:0decoder/relu6/sub:z:0*
T0*
_output_shapes
: n
decoder/relu6/sub_1Subdecoder/relu6/Cast_1:y:0decoder/relu6/Pow_2:z:0*
T0*
_output_shapes
: Р
decoder/relu6/LessEqual	LessEqualdecoder/dense6/BiasAdd:output:0decoder/relu6/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€`m
decoder/relu6/ReluReludecoder/dense6/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`z
decoder/relu6/ones_like/ShapeShapedecoder/dense6/BiasAdd:output:0*
T0*
_output_shapes
::нѕb
decoder/relu6/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?°
decoder/relu6/ones_likeFill&decoder/relu6/ones_like/Shape:output:0&decoder/relu6/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€`n
decoder/relu6/sub_2Subdecoder/relu6/Cast_1:y:0decoder/relu6/Pow_2:z:0*
T0*
_output_shapes
: Е
decoder/relu6/mulMul decoder/relu6/ones_like:output:0decoder/relu6/sub_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€`™
decoder/relu6/SelectV2SelectV2decoder/relu6/LessEqual:z:0 decoder/relu6/Relu:activations:0decoder/relu6/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€`Е
decoder/relu6/mul_1Muldecoder/dense6/BiasAdd:output:0decoder/relu6/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€`Е
decoder/relu6/truedivRealDivdecoder/relu6/mul_1:z:0decoder/relu6/Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€`e
decoder/relu6/NegNegdecoder/relu6/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€`i
decoder/relu6/RoundRounddecoder/relu6/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€`|
decoder/relu6/addAddV2decoder/relu6/Neg:y:0decoder/relu6/Round:y:0*
T0*'
_output_shapes
:€€€€€€€€€`s
decoder/relu6/StopGradientStopGradientdecoder/relu6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€`О
decoder/relu6/add_1AddV2decoder/relu6/truediv:z:0#decoder/relu6/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€`Е
decoder/relu6/truediv_1RealDivdecoder/relu6/add_1:z:0decoder/relu6/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€`^
decoder/relu6/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
decoder/relu6/truediv_2RealDiv"decoder/relu6/truediv_2/x:output:0decoder/relu6/Cast:y:0*
T0*
_output_shapes
: Z
decoder/relu6/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?x
decoder/relu6/sub_3Subdecoder/relu6/sub_3/x:output:0decoder/relu6/truediv_2:z:0*
T0*
_output_shapes
: Ц
#decoder/relu6/clip_by_value/MinimumMinimumdecoder/relu6/truediv_1:z:0decoder/relu6/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€`b
decoder/relu6/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ©
decoder/relu6/clip_by_valueMaximum'decoder/relu6/clip_by_value/Minimum:z:0&decoder/relu6/clip_by_value/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€`З
decoder/relu6/mul_2Muldecoder/relu6/Cast_1:y:0decoder/relu6/clip_by_value:z:0*
T0*'
_output_shapes
:€€€€€€€€€`m
decoder/relu6/Neg_1Negdecoder/relu6/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€`А
decoder/relu6/add_2AddV2decoder/relu6/Neg_1:y:0decoder/relu6/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€`Z
decoder/relu6/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Е
decoder/relu6/mul_3Muldecoder/relu6/mul_3/x:output:0decoder/relu6/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€`w
decoder/relu6/StopGradient_1StopGradientdecoder/relu6/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€`Ц
decoder/relu6/add_3AddV2decoder/relu6/SelectV2:output:0%decoder/relu6/StopGradient_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€`Ю
,decoder/batch_norm6/batchnorm/ReadVariableOpReadVariableOp5decoder_batch_norm6_batchnorm_readvariableop_resource*
_output_shapes
:`*
dtype0h
#decoder/batch_norm6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:≥
!decoder/batch_norm6/batchnorm/addAddV24decoder/batch_norm6/batchnorm/ReadVariableOp:value:0,decoder/batch_norm6/batchnorm/add/y:output:0*
T0*
_output_shapes
:`x
#decoder/batch_norm6/batchnorm/RsqrtRsqrt%decoder/batch_norm6/batchnorm/add:z:0*
T0*
_output_shapes
:`¶
0decoder/batch_norm6/batchnorm/mul/ReadVariableOpReadVariableOp9decoder_batch_norm6_batchnorm_mul_readvariableop_resource*
_output_shapes
:`*
dtype0∞
!decoder/batch_norm6/batchnorm/mulMul'decoder/batch_norm6/batchnorm/Rsqrt:y:08decoder/batch_norm6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:`Ь
#decoder/batch_norm6/batchnorm/mul_1Muldecoder/relu6/add_3:z:0%decoder/batch_norm6/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€`Ґ
.decoder/batch_norm6/batchnorm/ReadVariableOp_1ReadVariableOp7decoder_batch_norm6_batchnorm_readvariableop_1_resource*
_output_shapes
:`*
dtype0Ѓ
#decoder/batch_norm6/batchnorm/mul_2Mul6decoder/batch_norm6/batchnorm/ReadVariableOp_1:value:0%decoder/batch_norm6/batchnorm/mul:z:0*
T0*
_output_shapes
:`Ґ
.decoder/batch_norm6/batchnorm/ReadVariableOp_2ReadVariableOp7decoder_batch_norm6_batchnorm_readvariableop_2_resource*
_output_shapes
:`*
dtype0Ѓ
!decoder/batch_norm6/batchnorm/subSub6decoder/batch_norm6/batchnorm/ReadVariableOp_2:value:0'decoder/batch_norm6/batchnorm/mul_2:z:0*
T0*
_output_shapes
:`Ѓ
#decoder/batch_norm6/batchnorm/add_1AddV2'decoder/batch_norm6/batchnorm/mul_1:z:0%decoder/batch_norm6/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€`V
decoder/output/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :V
decoder/output/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :x
decoder/output/PowPowdecoder/output/Pow/x:output:0decoder/output/Pow/y:output:0*
T0*
_output_shapes
: c
decoder/output/CastCastdecoder/output/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: Д
decoder/output/ReadVariableOpReadVariableOp&decoder_output_readvariableop_resource*
_output_shapes

:`i*
dtype0Y
decoder/output/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFИ
decoder/output/mulMul%decoder/output/ReadVariableOp:value:0decoder/output/mul/y:output:0*
T0*
_output_shapes

:`i{
decoder/output/truedivRealDivdecoder/output/mul:z:0decoder/output/Cast:y:0*
T0*
_output_shapes

:`i^
decoder/output/NegNegdecoder/output/truediv:z:0*
T0*
_output_shapes

:`ib
decoder/output/RoundRounddecoder/output/truediv:z:0*
T0*
_output_shapes

:`iv
decoder/output/addAddV2decoder/output/Neg:y:0decoder/output/Round:y:0*
T0*
_output_shapes

:`il
decoder/output/StopGradientStopGradientdecoder/output/add:z:0*
T0*
_output_shapes

:`iИ
decoder/output/add_1AddV2decoder/output/truediv:z:0$decoder/output/StopGradient:output:0*
T0*
_output_shapes

:`ik
&decoder/output/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьF£
$decoder/output/clip_by_value/MinimumMinimumdecoder/output/add_1:z:0/decoder/output/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:`ic
decoder/output/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆£
decoder/output/clip_by_valueMaximum(decoder/output/clip_by_value/Minimum:z:0'decoder/output/clip_by_value/y:output:0*
T0*
_output_shapes

:`i
decoder/output/mul_1Muldecoder/output/Cast:y:0 decoder/output/clip_by_value:z:0*
T0*
_output_shapes

:`i_
decoder/output/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFЛ
decoder/output/truediv_1RealDivdecoder/output/mul_1:z:0#decoder/output/truediv_1/y:output:0*
T0*
_output_shapes

:`i[
decoder/output/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Г
decoder/output/mul_2Muldecoder/output/mul_2/x:output:0decoder/output/truediv_1:z:0*
T0*
_output_shapes

:`iЖ
decoder/output/ReadVariableOp_1ReadVariableOp&decoder_output_readvariableop_resource*
_output_shapes

:`i*
dtype0m
decoder/output/Neg_1Neg'decoder/output/ReadVariableOp_1:value:0*
T0*
_output_shapes

:`iz
decoder/output/add_2AddV2decoder/output/Neg_1:y:0decoder/output/mul_2:z:0*
T0*
_output_shapes

:`i[
decoder/output/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
decoder/output/mul_3Muldecoder/output/mul_3/x:output:0decoder/output/add_2:z:0*
T0*
_output_shapes

:`ip
decoder/output/StopGradient_1StopGradientdecoder/output/mul_3:z:0*
T0*
_output_shapes

:`iЖ
decoder/output/ReadVariableOp_2ReadVariableOp&decoder_output_readvariableop_resource*
_output_shapes

:`i*
dtype0Ч
decoder/output/add_3AddV2'decoder/output/ReadVariableOp_2:value:0&decoder/output/StopGradient_1:output:0*
T0*
_output_shapes

:`iФ
decoder/output/MatMulMatMul'decoder/batch_norm6/batchnorm/add_1:z:0decoder/output/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€iX
decoder/output/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :X
decoder/output/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :~
decoder/output/Pow_1Powdecoder/output/Pow_1/x:output:0decoder/output/Pow_1/y:output:0*
T0*
_output_shapes
: g
decoder/output/Cast_1Castdecoder/output/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: Д
decoder/output/ReadVariableOp_3ReadVariableOp(decoder_output_readvariableop_3_resource*
_output_shapes
:i*
dtype0[
decoder/output/mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFК
decoder/output/mul_4Mul'decoder/output/ReadVariableOp_3:value:0decoder/output/mul_4/y:output:0*
T0*
_output_shapes
:i}
decoder/output/truediv_2RealDivdecoder/output/mul_4:z:0decoder/output/Cast_1:y:0*
T0*
_output_shapes
:i^
decoder/output/Neg_2Negdecoder/output/truediv_2:z:0*
T0*
_output_shapes
:ib
decoder/output/Round_1Rounddecoder/output/truediv_2:z:0*
T0*
_output_shapes
:ix
decoder/output/add_4AddV2decoder/output/Neg_2:y:0decoder/output/Round_1:y:0*
T0*
_output_shapes
:il
decoder/output/StopGradient_2StopGradientdecoder/output/add_4:z:0*
T0*
_output_shapes
:iИ
decoder/output/add_5AddV2decoder/output/truediv_2:z:0&decoder/output/StopGradient_2:output:0*
T0*
_output_shapes
:im
(decoder/output/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьF£
&decoder/output/clip_by_value_1/MinimumMinimumdecoder/output/add_5:z:01decoder/output/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:ie
 decoder/output/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆•
decoder/output/clip_by_value_1Maximum*decoder/output/clip_by_value_1/Minimum:z:0)decoder/output/clip_by_value_1/y:output:0*
T0*
_output_shapes
:i
decoder/output/mul_5Muldecoder/output/Cast_1:y:0"decoder/output/clip_by_value_1:z:0*
T0*
_output_shapes
:i_
decoder/output/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFЗ
decoder/output/truediv_3RealDivdecoder/output/mul_5:z:0#decoder/output/truediv_3/y:output:0*
T0*
_output_shapes
:i[
decoder/output/mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
decoder/output/mul_6Muldecoder/output/mul_6/x:output:0decoder/output/truediv_3:z:0*
T0*
_output_shapes
:iД
decoder/output/ReadVariableOp_4ReadVariableOp(decoder_output_readvariableop_3_resource*
_output_shapes
:i*
dtype0i
decoder/output/Neg_3Neg'decoder/output/ReadVariableOp_4:value:0*
T0*
_output_shapes
:iv
decoder/output/add_6AddV2decoder/output/Neg_3:y:0decoder/output/mul_6:z:0*
T0*
_output_shapes
:i[
decoder/output/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?{
decoder/output/mul_7Muldecoder/output/mul_7/x:output:0decoder/output/add_6:z:0*
T0*
_output_shapes
:il
decoder/output/StopGradient_3StopGradientdecoder/output/mul_7:z:0*
T0*
_output_shapes
:iД
decoder/output/ReadVariableOp_5ReadVariableOp(decoder_output_readvariableop_3_resource*
_output_shapes
:i*
dtype0У
decoder/output/add_7AddV2'decoder/output/ReadVariableOp_5:value:0&decoder/output/StopGradient_3:output:0*
T0*
_output_shapes
:iО
decoder/output/BiasAddBiasAdddecoder/output/MatMul:product:0decoder/output/add_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€i[
decoder/output_relu/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :[
decoder/output_relu/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :З
decoder/output_relu/PowPow"decoder/output_relu/Pow/x:output:0"decoder/output_relu/Pow/y:output:0*
T0*
_output_shapes
: m
decoder/output_relu/CastCastdecoder/output_relu/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: ]
decoder/output_relu/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :]
decoder/output_relu/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B : Н
decoder/output_relu/Pow_1Pow$decoder/output_relu/Pow_1/x:output:0$decoder/output_relu/Pow_1/y:output:0*
T0*
_output_shapes
: q
decoder/output_relu/Cast_1Castdecoder/output_relu/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: ^
decoder/output_relu/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @^
decoder/output_relu/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B : y
decoder/output_relu/Cast_2Cast%decoder/output_relu/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ^
decoder/output_relu/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  pAГ
decoder/output_relu/subSubdecoder/output_relu/Cast_2:y:0"decoder/output_relu/sub/y:output:0*
T0*
_output_shapes
: В
decoder/output_relu/Pow_2Pow"decoder/output_relu/Const:output:0decoder/output_relu/sub:z:0*
T0*
_output_shapes
: А
decoder/output_relu/sub_1Subdecoder/output_relu/Cast_1:y:0decoder/output_relu/Pow_2:z:0*
T0*
_output_shapes
: Ь
decoder/output_relu/LessEqual	LessEqualdecoder/output/BiasAdd:output:0decoder/output_relu/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€is
decoder/output_relu/ReluReludecoder/output/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€iА
#decoder/output_relu/ones_like/ShapeShapedecoder/output/BiasAdd:output:0*
T0*
_output_shapes
::нѕh
#decoder/output_relu/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?≥
decoder/output_relu/ones_likeFill,decoder/output_relu/ones_like/Shape:output:0,decoder/output_relu/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€iА
decoder/output_relu/sub_2Subdecoder/output_relu/Cast_1:y:0decoder/output_relu/Pow_2:z:0*
T0*
_output_shapes
: Ч
decoder/output_relu/mulMul&decoder/output_relu/ones_like:output:0decoder/output_relu/sub_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€i¬
decoder/output_relu/SelectV2SelectV2!decoder/output_relu/LessEqual:z:0&decoder/output_relu/Relu:activations:0decoder/output_relu/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€iС
decoder/output_relu/mul_1Muldecoder/output/BiasAdd:output:0decoder/output_relu/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€iЧ
decoder/output_relu/truedivRealDivdecoder/output_relu/mul_1:z:0decoder/output_relu/Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€iq
decoder/output_relu/NegNegdecoder/output_relu/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€iu
decoder/output_relu/RoundRounddecoder/output_relu/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€iО
decoder/output_relu/addAddV2decoder/output_relu/Neg:y:0decoder/output_relu/Round:y:0*
T0*'
_output_shapes
:€€€€€€€€€i
 decoder/output_relu/StopGradientStopGradientdecoder/output_relu/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€i†
decoder/output_relu/add_1AddV2decoder/output_relu/truediv:z:0)decoder/output_relu/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€iЧ
decoder/output_relu/truediv_1RealDivdecoder/output_relu/add_1:z:0decoder/output_relu/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€id
decoder/output_relu/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?С
decoder/output_relu/truediv_2RealDiv(decoder/output_relu/truediv_2/x:output:0decoder/output_relu/Cast:y:0*
T0*
_output_shapes
: `
decoder/output_relu/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?К
decoder/output_relu/sub_3Sub$decoder/output_relu/sub_3/x:output:0!decoder/output_relu/truediv_2:z:0*
T0*
_output_shapes
: ®
)decoder/output_relu/clip_by_value/MinimumMinimum!decoder/output_relu/truediv_1:z:0decoder/output_relu/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ih
#decoder/output_relu/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ї
!decoder/output_relu/clip_by_valueMaximum-decoder/output_relu/clip_by_value/Minimum:z:0,decoder/output_relu/clip_by_value/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€iЩ
decoder/output_relu/mul_2Muldecoder/output_relu/Cast_1:y:0%decoder/output_relu/clip_by_value:z:0*
T0*'
_output_shapes
:€€€€€€€€€iy
decoder/output_relu/Neg_1Neg%decoder/output_relu/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€iТ
decoder/output_relu/add_2AddV2decoder/output_relu/Neg_1:y:0decoder/output_relu/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€i`
decoder/output_relu/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ч
decoder/output_relu/mul_3Mul$decoder/output_relu/mul_3/x:output:0decoder/output_relu/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€iГ
"decoder/output_relu/StopGradient_1StopGradientdecoder/output_relu/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€i®
decoder/output_relu/add_3AddV2%decoder/output_relu/SelectV2:output:0+decoder/output_relu/StopGradient_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€i™
2decoder/output_batch_norm/batchnorm/ReadVariableOpReadVariableOp;decoder_output_batch_norm_batchnorm_readvariableop_resource*
_output_shapes
:i*
dtype0n
)decoder/output_batch_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:≈
'decoder/output_batch_norm/batchnorm/addAddV2:decoder/output_batch_norm/batchnorm/ReadVariableOp:value:02decoder/output_batch_norm/batchnorm/add/y:output:0*
T0*
_output_shapes
:iД
)decoder/output_batch_norm/batchnorm/RsqrtRsqrt+decoder/output_batch_norm/batchnorm/add:z:0*
T0*
_output_shapes
:i≤
6decoder/output_batch_norm/batchnorm/mul/ReadVariableOpReadVariableOp?decoder_output_batch_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:i*
dtype0¬
'decoder/output_batch_norm/batchnorm/mulMul-decoder/output_batch_norm/batchnorm/Rsqrt:y:0>decoder/output_batch_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:iЃ
)decoder/output_batch_norm/batchnorm/mul_1Muldecoder/output_relu/add_3:z:0+decoder/output_batch_norm/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€iЃ
4decoder/output_batch_norm/batchnorm/ReadVariableOp_1ReadVariableOp=decoder_output_batch_norm_batchnorm_readvariableop_1_resource*
_output_shapes
:i*
dtype0ј
)decoder/output_batch_norm/batchnorm/mul_2Mul<decoder/output_batch_norm/batchnorm/ReadVariableOp_1:value:0+decoder/output_batch_norm/batchnorm/mul:z:0*
T0*
_output_shapes
:iЃ
4decoder/output_batch_norm/batchnorm/ReadVariableOp_2ReadVariableOp=decoder_output_batch_norm_batchnorm_readvariableop_2_resource*
_output_shapes
:i*
dtype0ј
'decoder/output_batch_norm/batchnorm/subSub<decoder/output_batch_norm/batchnorm/ReadVariableOp_2:value:0-decoder/output_batch_norm/batchnorm/mul_2:z:0*
T0*
_output_shapes
:iј
)decoder/output_batch_norm/batchnorm/add_1AddV2-decoder/output_batch_norm/batchnorm/mul_1:z:0+decoder/output_batch_norm/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€i|
IdentityIdentity-decoder/output_batch_norm/batchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€iА
NoOpNoOp-^decoder/batch_norm3/batchnorm/ReadVariableOp/^decoder/batch_norm3/batchnorm/ReadVariableOp_1/^decoder/batch_norm3/batchnorm/ReadVariableOp_21^decoder/batch_norm3/batchnorm/mul/ReadVariableOp-^decoder/batch_norm4/batchnorm/ReadVariableOp/^decoder/batch_norm4/batchnorm/ReadVariableOp_1/^decoder/batch_norm4/batchnorm/ReadVariableOp_21^decoder/batch_norm4/batchnorm/mul/ReadVariableOp-^decoder/batch_norm5/batchnorm/ReadVariableOp/^decoder/batch_norm5/batchnorm/ReadVariableOp_1/^decoder/batch_norm5/batchnorm/ReadVariableOp_21^decoder/batch_norm5/batchnorm/mul/ReadVariableOp-^decoder/batch_norm6/batchnorm/ReadVariableOp/^decoder/batch_norm6/batchnorm/ReadVariableOp_1/^decoder/batch_norm6/batchnorm/ReadVariableOp_21^decoder/batch_norm6/batchnorm/mul/ReadVariableOp^decoder/dense3/ReadVariableOp ^decoder/dense3/ReadVariableOp_1 ^decoder/dense3/ReadVariableOp_2 ^decoder/dense3/ReadVariableOp_3 ^decoder/dense3/ReadVariableOp_4 ^decoder/dense3/ReadVariableOp_5^decoder/dense4/ReadVariableOp ^decoder/dense4/ReadVariableOp_1 ^decoder/dense4/ReadVariableOp_2 ^decoder/dense4/ReadVariableOp_3 ^decoder/dense4/ReadVariableOp_4 ^decoder/dense4/ReadVariableOp_5^decoder/dense5/ReadVariableOp ^decoder/dense5/ReadVariableOp_1 ^decoder/dense5/ReadVariableOp_2 ^decoder/dense5/ReadVariableOp_3 ^decoder/dense5/ReadVariableOp_4 ^decoder/dense5/ReadVariableOp_5^decoder/dense6/ReadVariableOp ^decoder/dense6/ReadVariableOp_1 ^decoder/dense6/ReadVariableOp_2 ^decoder/dense6/ReadVariableOp_3 ^decoder/dense6/ReadVariableOp_4 ^decoder/dense6/ReadVariableOp_5^decoder/output/ReadVariableOp ^decoder/output/ReadVariableOp_1 ^decoder/output/ReadVariableOp_2 ^decoder/output/ReadVariableOp_3 ^decoder/output/ReadVariableOp_4 ^decoder/output/ReadVariableOp_53^decoder/output_batch_norm/batchnorm/ReadVariableOp5^decoder/output_batch_norm/batchnorm/ReadVariableOp_15^decoder/output_batch_norm/batchnorm/ReadVariableOp_27^decoder/output_batch_norm/batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.decoder/batch_norm3/batchnorm/ReadVariableOp_1.decoder/batch_norm3/batchnorm/ReadVariableOp_12`
.decoder/batch_norm3/batchnorm/ReadVariableOp_2.decoder/batch_norm3/batchnorm/ReadVariableOp_22\
,decoder/batch_norm3/batchnorm/ReadVariableOp,decoder/batch_norm3/batchnorm/ReadVariableOp2d
0decoder/batch_norm3/batchnorm/mul/ReadVariableOp0decoder/batch_norm3/batchnorm/mul/ReadVariableOp2`
.decoder/batch_norm4/batchnorm/ReadVariableOp_1.decoder/batch_norm4/batchnorm/ReadVariableOp_12`
.decoder/batch_norm4/batchnorm/ReadVariableOp_2.decoder/batch_norm4/batchnorm/ReadVariableOp_22\
,decoder/batch_norm4/batchnorm/ReadVariableOp,decoder/batch_norm4/batchnorm/ReadVariableOp2d
0decoder/batch_norm4/batchnorm/mul/ReadVariableOp0decoder/batch_norm4/batchnorm/mul/ReadVariableOp2`
.decoder/batch_norm5/batchnorm/ReadVariableOp_1.decoder/batch_norm5/batchnorm/ReadVariableOp_12`
.decoder/batch_norm5/batchnorm/ReadVariableOp_2.decoder/batch_norm5/batchnorm/ReadVariableOp_22\
,decoder/batch_norm5/batchnorm/ReadVariableOp,decoder/batch_norm5/batchnorm/ReadVariableOp2d
0decoder/batch_norm5/batchnorm/mul/ReadVariableOp0decoder/batch_norm5/batchnorm/mul/ReadVariableOp2`
.decoder/batch_norm6/batchnorm/ReadVariableOp_1.decoder/batch_norm6/batchnorm/ReadVariableOp_12`
.decoder/batch_norm6/batchnorm/ReadVariableOp_2.decoder/batch_norm6/batchnorm/ReadVariableOp_22\
,decoder/batch_norm6/batchnorm/ReadVariableOp,decoder/batch_norm6/batchnorm/ReadVariableOp2d
0decoder/batch_norm6/batchnorm/mul/ReadVariableOp0decoder/batch_norm6/batchnorm/mul/ReadVariableOp2B
decoder/dense3/ReadVariableOp_1decoder/dense3/ReadVariableOp_12B
decoder/dense3/ReadVariableOp_2decoder/dense3/ReadVariableOp_22B
decoder/dense3/ReadVariableOp_3decoder/dense3/ReadVariableOp_32B
decoder/dense3/ReadVariableOp_4decoder/dense3/ReadVariableOp_42B
decoder/dense3/ReadVariableOp_5decoder/dense3/ReadVariableOp_52>
decoder/dense3/ReadVariableOpdecoder/dense3/ReadVariableOp2B
decoder/dense4/ReadVariableOp_1decoder/dense4/ReadVariableOp_12B
decoder/dense4/ReadVariableOp_2decoder/dense4/ReadVariableOp_22B
decoder/dense4/ReadVariableOp_3decoder/dense4/ReadVariableOp_32B
decoder/dense4/ReadVariableOp_4decoder/dense4/ReadVariableOp_42B
decoder/dense4/ReadVariableOp_5decoder/dense4/ReadVariableOp_52>
decoder/dense4/ReadVariableOpdecoder/dense4/ReadVariableOp2B
decoder/dense5/ReadVariableOp_1decoder/dense5/ReadVariableOp_12B
decoder/dense5/ReadVariableOp_2decoder/dense5/ReadVariableOp_22B
decoder/dense5/ReadVariableOp_3decoder/dense5/ReadVariableOp_32B
decoder/dense5/ReadVariableOp_4decoder/dense5/ReadVariableOp_42B
decoder/dense5/ReadVariableOp_5decoder/dense5/ReadVariableOp_52>
decoder/dense5/ReadVariableOpdecoder/dense5/ReadVariableOp2B
decoder/dense6/ReadVariableOp_1decoder/dense6/ReadVariableOp_12B
decoder/dense6/ReadVariableOp_2decoder/dense6/ReadVariableOp_22B
decoder/dense6/ReadVariableOp_3decoder/dense6/ReadVariableOp_32B
decoder/dense6/ReadVariableOp_4decoder/dense6/ReadVariableOp_42B
decoder/dense6/ReadVariableOp_5decoder/dense6/ReadVariableOp_52>
decoder/dense6/ReadVariableOpdecoder/dense6/ReadVariableOp2B
decoder/output/ReadVariableOp_1decoder/output/ReadVariableOp_12B
decoder/output/ReadVariableOp_2decoder/output/ReadVariableOp_22B
decoder/output/ReadVariableOp_3decoder/output/ReadVariableOp_32B
decoder/output/ReadVariableOp_4decoder/output/ReadVariableOp_42B
decoder/output/ReadVariableOp_5decoder/output/ReadVariableOp_52>
decoder/output/ReadVariableOpdecoder/output/ReadVariableOp2l
4decoder/output_batch_norm/batchnorm/ReadVariableOp_14decoder/output_batch_norm/batchnorm/ReadVariableOp_12l
4decoder/output_batch_norm/batchnorm/ReadVariableOp_24decoder/output_batch_norm/batchnorm/ReadVariableOp_22h
2decoder/output_batch_norm/batchnorm/ReadVariableOp2decoder/output_batch_norm/batchnorm/ReadVariableOp2p
6decoder/output_batch_norm/batchnorm/mul/ReadVariableOp6decoder/output_batch_norm/batchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
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
resource:P L
'
_output_shapes
:€€€€€€€€€

!
_user_specified_name	input_1
»
¶
G__inference_batch_norm6_layer_call_and_return_conditional_losses_881807

inputs/
!batchnorm_readvariableop_resource:`3
%batchnorm_mul_readvariableop_resource:`1
#batchnorm_readvariableop_1_resource:`1
#batchnorm_readvariableop_2_resource:`
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:`*
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
:`P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:`~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:`*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:`c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€`z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:`*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:`z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:`*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:`r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€`b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`Ц
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€`: : : : 28
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
:€€€€€€€€€`
 
_user_specified_nameinputs
®2
•
B__inference_dense4_layer_call_and_return_conditional_losses_882115

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identityИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3ҐReadVariableOp_4ҐReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
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

:*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьFv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
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
 *  АF]
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
 * ьFv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆x
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
 *  АFZ
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
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Т
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 2$
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
:€€€€€€€€€
 
_user_specified_nameinputs
Б!
]
A__inference_relu3_layer_call_and_return_conditional_losses_883053

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
value	B :K
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
 *  pAG
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
:€€€€€€€€€F
ReluReluinputs*
T0*'
_output_shapes
:€€€€€€€€€S
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::нѕT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€D
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€r
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€P
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:€€€€€€€€€[
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€I
NegNegtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€M
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€R
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:€€€€€€€€€W
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€d
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€[
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€P
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
:€€€€€€€€€T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:€€€€€€€€€Q
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€V
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€[
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€l
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Q
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ъ	
Ќ
2__inference_output_batch_norm_layer_call_fn_883910

inputs
unknown:i
	unknown_0:i
	unknown_1:i
	unknown_2:i
identityИҐStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€i*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_output_batch_norm_layer_call_and_return_conditional_losses_881867o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€i<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€i: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name883906:&"
 
_user_specified_name883904:&"
 
_user_specified_name883902:&"
 
_user_specified_name883900:O K
'
_output_shapes
:€€€€€€€€€i
 
_user_specified_nameinputs
е
х
(__inference_decoder_layer_call_fn_882786
input_1
unknown:

	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:0

unknown_12:0

unknown_13:0

unknown_14:0

unknown_15:0

unknown_16:0

unknown_17:0`

unknown_18:`

unknown_19:`

unknown_20:`

unknown_21:`

unknown_22:`

unknown_23:`i

unknown_24:i

unknown_25:i

unknown_26:i

unknown_27:i

unknown_28:i
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€i*@
_read_only_resource_inputs"
 	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_882656o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€i<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name882782:&"
 
_user_specified_name882780:&"
 
_user_specified_name882778:&"
 
_user_specified_name882776:&"
 
_user_specified_name882774:&"
 
_user_specified_name882772:&"
 
_user_specified_name882770:&"
 
_user_specified_name882768:&"
 
_user_specified_name882766:&"
 
_user_specified_name882764:&"
 
_user_specified_name882762:&"
 
_user_specified_name882760:&"
 
_user_specified_name882758:&"
 
_user_specified_name882756:&"
 
_user_specified_name882754:&"
 
_user_specified_name882752:&"
 
_user_specified_name882750:&"
 
_user_specified_name882748:&"
 
_user_specified_name882746:&"
 
_user_specified_name882744:&
"
 
_user_specified_name882742:&	"
 
_user_specified_name882740:&"
 
_user_specified_name882738:&"
 
_user_specified_name882736:&"
 
_user_specified_name882734:&"
 
_user_specified_name882732:&"
 
_user_specified_name882730:&"
 
_user_specified_name882728:&"
 
_user_specified_name882726:&"
 
_user_specified_name882724:P L
'
_output_shapes
:€€€€€€€€€

!
_user_specified_name	input_1
Р	
«
,__inference_batch_norm4_layer_call_fn_883290

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_batch_norm4_layer_call_and_return_conditional_losses_881647o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name883286:&"
 
_user_specified_name883284:&"
 
_user_specified_name883282:&"
 
_user_specified_name883280:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
їO
¬
C__inference_decoder_layer_call_and_return_conditional_losses_882656
input_1
dense3_882580:

dense3_882582: 
batch_norm3_882586: 
batch_norm3_882588: 
batch_norm3_882590: 
batch_norm3_882592:
dense4_882595:
dense4_882597: 
batch_norm4_882601: 
batch_norm4_882603: 
batch_norm4_882605: 
batch_norm4_882607:
dense5_882610:0
dense5_882612:0 
batch_norm5_882616:0 
batch_norm5_882618:0 
batch_norm5_882620:0 
batch_norm5_882622:0
dense6_882625:0`
dense6_882627:` 
batch_norm6_882631:` 
batch_norm6_882633:` 
batch_norm6_882635:` 
batch_norm6_882637:`
output_882640:`i
output_882642:i&
output_batch_norm_882646:i&
output_batch_norm_882648:i&
output_batch_norm_882650:i&
output_batch_norm_882652:i
identityИҐ#batch_norm3/StatefulPartitionedCallҐ#batch_norm4/StatefulPartitionedCallҐ#batch_norm5/StatefulPartitionedCallҐ#batch_norm6/StatefulPartitionedCallҐdense3/StatefulPartitionedCallҐdense4/StatefulPartitionedCallҐdense5/StatefulPartitionedCallҐdense6/StatefulPartitionedCallҐoutput/StatefulPartitionedCallҐ)output_batch_norm/StatefulPartitionedCallй
dense3/StatefulPartitionedCallStatefulPartitionedCallinput_1dense3_882580dense3_882582*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense3_layer_call_and_return_conditional_losses_881983”
relu3/PartitionedCallPartitionedCall'dense3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_relu3_layer_call_and_return_conditional_losses_882037ј
#batch_norm3/StatefulPartitionedCallStatefulPartitionedCallrelu3/PartitionedCall:output:0batch_norm3_882586batch_norm3_882588batch_norm3_882590batch_norm3_882592*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_batch_norm3_layer_call_and_return_conditional_losses_881567О
dense4/StatefulPartitionedCallStatefulPartitionedCall,batch_norm3/StatefulPartitionedCall:output:0dense4_882595dense4_882597*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense4_layer_call_and_return_conditional_losses_882115”
relu4/PartitionedCallPartitionedCall'dense4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_relu4_layer_call_and_return_conditional_losses_882169ј
#batch_norm4/StatefulPartitionedCallStatefulPartitionedCallrelu4/PartitionedCall:output:0batch_norm4_882601batch_norm4_882603batch_norm4_882605batch_norm4_882607*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_batch_norm4_layer_call_and_return_conditional_losses_881647О
dense5/StatefulPartitionedCallStatefulPartitionedCall,batch_norm4/StatefulPartitionedCall:output:0dense5_882610dense5_882612*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense5_layer_call_and_return_conditional_losses_882247”
relu5/PartitionedCallPartitionedCall'dense5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_relu5_layer_call_and_return_conditional_losses_882301ј
#batch_norm5/StatefulPartitionedCallStatefulPartitionedCallrelu5/PartitionedCall:output:0batch_norm5_882616batch_norm5_882618batch_norm5_882620batch_norm5_882622*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_batch_norm5_layer_call_and_return_conditional_losses_881727О
dense6/StatefulPartitionedCallStatefulPartitionedCall,batch_norm5/StatefulPartitionedCall:output:0dense6_882625dense6_882627*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense6_layer_call_and_return_conditional_losses_882379”
relu6/PartitionedCallPartitionedCall'dense6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_relu6_layer_call_and_return_conditional_losses_882433ј
#batch_norm6/StatefulPartitionedCallStatefulPartitionedCallrelu6/PartitionedCall:output:0batch_norm6_882631batch_norm6_882633batch_norm6_882635batch_norm6_882637*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€`*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_batch_norm6_layer_call_and_return_conditional_losses_881807О
output/StatefulPartitionedCallStatefulPartitionedCall,batch_norm6/StatefulPartitionedCall:output:0output_882640output_882642*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€i*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_882511я
output_relu/PartitionedCallPartitionedCall'output/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€i* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_output_relu_layer_call_and_return_conditional_losses_882565к
)output_batch_norm/StatefulPartitionedCallStatefulPartitionedCall$output_relu/PartitionedCall:output:0output_batch_norm_882646output_batch_norm_882648output_batch_norm_882650output_batch_norm_882652*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€i*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_output_batch_norm_layer_call_and_return_conditional_losses_881887Б
IdentityIdentity2output_batch_norm/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€iЛ
NoOpNoOp$^batch_norm3/StatefulPartitionedCall$^batch_norm4/StatefulPartitionedCall$^batch_norm5/StatefulPartitionedCall$^batch_norm6/StatefulPartitionedCall^dense3/StatefulPartitionedCall^dense4/StatefulPartitionedCall^dense5/StatefulPartitionedCall^dense6/StatefulPartitionedCall^output/StatefulPartitionedCall*^output_batch_norm/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#batch_norm3/StatefulPartitionedCall#batch_norm3/StatefulPartitionedCall2J
#batch_norm4/StatefulPartitionedCall#batch_norm4/StatefulPartitionedCall2J
#batch_norm5/StatefulPartitionedCall#batch_norm5/StatefulPartitionedCall2J
#batch_norm6/StatefulPartitionedCall#batch_norm6/StatefulPartitionedCall2@
dense3/StatefulPartitionedCalldense3/StatefulPartitionedCall2@
dense4/StatefulPartitionedCalldense4/StatefulPartitionedCall2@
dense5/StatefulPartitionedCalldense5/StatefulPartitionedCall2@
dense6/StatefulPartitionedCalldense6/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2V
)output_batch_norm/StatefulPartitionedCall)output_batch_norm/StatefulPartitionedCall:&"
 
_user_specified_name882652:&"
 
_user_specified_name882650:&"
 
_user_specified_name882648:&"
 
_user_specified_name882646:&"
 
_user_specified_name882642:&"
 
_user_specified_name882640:&"
 
_user_specified_name882637:&"
 
_user_specified_name882635:&"
 
_user_specified_name882633:&"
 
_user_specified_name882631:&"
 
_user_specified_name882627:&"
 
_user_specified_name882625:&"
 
_user_specified_name882622:&"
 
_user_specified_name882620:&"
 
_user_specified_name882618:&"
 
_user_specified_name882616:&"
 
_user_specified_name882612:&"
 
_user_specified_name882610:&"
 
_user_specified_name882607:&"
 
_user_specified_name882605:&
"
 
_user_specified_name882603:&	"
 
_user_specified_name882601:&"
 
_user_specified_name882597:&"
 
_user_specified_name882595:&"
 
_user_specified_name882592:&"
 
_user_specified_name882590:&"
 
_user_specified_name882588:&"
 
_user_specified_name882586:&"
 
_user_specified_name882582:&"
 
_user_specified_name882580:P L
'
_output_shapes
:€€€€€€€€€

!
_user_specified_name	input_1
»
¶
G__inference_batch_norm4_layer_call_and_return_conditional_losses_883344

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
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
:€€€€€€€€€z
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
:€€€€€€€€€b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ц
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 28
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
:€€€€€€€€€
 
_user_specified_nameinputs
Ч
B
&__inference_relu4_layer_call_fn_883215

inputs
identityђ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_relu4_layer_call_and_return_conditional_losses_882169`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
к
Ф
'__inference_dense6_layer_call_fn_883564

inputs
unknown:0`
	unknown_0:`
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense6_layer_call_and_return_conditional_losses_882379o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€0: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name883560:&"
 
_user_specified_name883558:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
®2
•
B__inference_output_layer_call_and_return_conditional_losses_882511

inputs)
readvariableop_resource:`i'
readvariableop_3_resource:i
identityИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3ҐReadVariableOp_4ҐReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
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

:`i*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:`iN
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:`i@
NegNegtruediv:z:0*
T0*
_output_shapes

:`iD
RoundRoundtruediv:z:0*
T0*
_output_shapes

:`iI
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:`iN
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:`i[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:`i\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьFv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:`iT
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:`iR
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:`iP
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:`iL
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:`ih
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:`i*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:`iM
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:`iL
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:`iR
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:`ih
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:`i*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:`iU
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€iI
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
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
:i*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:iP
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:i@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:iD
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:iK
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:iN
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:i[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:i^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьFv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:iV
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:iR
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:iP
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:iL
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:if
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:i*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:iI
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:iL
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:iN
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:if
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:i*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:ia
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€i_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€iТ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€`: : 2$
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
:€€€€€€€€€`
 
_user_specified_nameinputs
њ
с
$__inference_signature_wrapper_882922
input_1
unknown:

	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:0

unknown_12:0

unknown_13:0

unknown_14:0

unknown_15:0

unknown_16:0

unknown_17:0`

unknown_18:`

unknown_19:`

unknown_20:`

unknown_21:`

unknown_22:`

unknown_23:`i

unknown_24:i

unknown_25:i

unknown_26:i

unknown_27:i

unknown_28:i
identityИҐStatefulPartitionedCallґ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€i*@
_read_only_resource_inputs"
 	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_881513o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€i<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name882918:&"
 
_user_specified_name882916:&"
 
_user_specified_name882914:&"
 
_user_specified_name882912:&"
 
_user_specified_name882910:&"
 
_user_specified_name882908:&"
 
_user_specified_name882906:&"
 
_user_specified_name882904:&"
 
_user_specified_name882902:&"
 
_user_specified_name882900:&"
 
_user_specified_name882898:&"
 
_user_specified_name882896:&"
 
_user_specified_name882894:&"
 
_user_specified_name882892:&"
 
_user_specified_name882890:&"
 
_user_specified_name882888:&"
 
_user_specified_name882886:&"
 
_user_specified_name882884:&"
 
_user_specified_name882882:&"
 
_user_specified_name882880:&
"
 
_user_specified_name882878:&	"
 
_user_specified_name882876:&"
 
_user_specified_name882874:&"
 
_user_specified_name882872:&"
 
_user_specified_name882870:&"
 
_user_specified_name882868:&"
 
_user_specified_name882866:&"
 
_user_specified_name882864:&"
 
_user_specified_name882862:&"
 
_user_specified_name882860:P L
'
_output_shapes
:€€€€€€€€€

!
_user_specified_name	input_1
“й
Ѓ
__inference__traced_save_884179
file_prefix6
$read_disablecopyonread_dense3_kernel:
2
$read_1_disablecopyonread_dense3_bias:8
*read_2_disablecopyonread_batch_norm3_gamma:7
)read_3_disablecopyonread_batch_norm3_beta:>
0read_4_disablecopyonread_batch_norm3_moving_mean:B
4read_5_disablecopyonread_batch_norm3_moving_variance:8
&read_6_disablecopyonread_dense4_kernel:2
$read_7_disablecopyonread_dense4_bias:8
*read_8_disablecopyonread_batch_norm4_gamma:7
)read_9_disablecopyonread_batch_norm4_beta:?
1read_10_disablecopyonread_batch_norm4_moving_mean:C
5read_11_disablecopyonread_batch_norm4_moving_variance:9
'read_12_disablecopyonread_dense5_kernel:03
%read_13_disablecopyonread_dense5_bias:09
+read_14_disablecopyonread_batch_norm5_gamma:08
*read_15_disablecopyonread_batch_norm5_beta:0?
1read_16_disablecopyonread_batch_norm5_moving_mean:0C
5read_17_disablecopyonread_batch_norm5_moving_variance:09
'read_18_disablecopyonread_dense6_kernel:0`3
%read_19_disablecopyonread_dense6_bias:`9
+read_20_disablecopyonread_batch_norm6_gamma:`8
*read_21_disablecopyonread_batch_norm6_beta:`?
1read_22_disablecopyonread_batch_norm6_moving_mean:`C
5read_23_disablecopyonread_batch_norm6_moving_variance:`9
'read_24_disablecopyonread_output_kernel:`i3
%read_25_disablecopyonread_output_bias:i?
1read_26_disablecopyonread_output_batch_norm_gamma:i>
0read_27_disablecopyonread_output_batch_norm_beta:iE
7read_28_disablecopyonread_output_batch_norm_moving_mean:iI
;read_29_disablecopyonread_output_batch_norm_moving_variance:i
savev2_const
identity_61ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
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
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_dense3_kernel"/device:CPU:0*
_output_shapes
 †
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_dense3_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:
x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_dense3_bias"/device:CPU:0*
_output_shapes
 †
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_dense3_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
:~
Read_2/DisableCopyOnReadDisableCopyOnRead*read_2_disablecopyonread_batch_norm3_gamma"/device:CPU:0*
_output_shapes
 ¶
Read_2/ReadVariableOpReadVariableOp*read_2_disablecopyonread_batch_norm3_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
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
:}
Read_3/DisableCopyOnReadDisableCopyOnRead)read_3_disablecopyonread_batch_norm3_beta"/device:CPU:0*
_output_shapes
 •
Read_3/ReadVariableOpReadVariableOp)read_3_disablecopyonread_batch_norm3_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
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
:Д
Read_4/DisableCopyOnReadDisableCopyOnRead0read_4_disablecopyonread_batch_norm3_moving_mean"/device:CPU:0*
_output_shapes
 ђ
Read_4/ReadVariableOpReadVariableOp0read_4_disablecopyonread_batch_norm3_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
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
:И
Read_5/DisableCopyOnReadDisableCopyOnRead4read_5_disablecopyonread_batch_norm3_moving_variance"/device:CPU:0*
_output_shapes
 ∞
Read_5/ReadVariableOpReadVariableOp4read_5_disablecopyonread_batch_norm3_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
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
Read_6/DisableCopyOnReadDisableCopyOnRead&read_6_disablecopyonread_dense4_kernel"/device:CPU:0*
_output_shapes
 ¶
Read_6/ReadVariableOpReadVariableOp&read_6_disablecopyonread_dense4_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:x
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_dense4_bias"/device:CPU:0*
_output_shapes
 †
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_dense4_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_8/DisableCopyOnReadDisableCopyOnRead*read_8_disablecopyonread_batch_norm4_gamma"/device:CPU:0*
_output_shapes
 ¶
Read_8/ReadVariableOpReadVariableOp*read_8_disablecopyonread_batch_norm4_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_9/DisableCopyOnReadDisableCopyOnRead)read_9_disablecopyonread_batch_norm4_beta"/device:CPU:0*
_output_shapes
 •
Read_9/ReadVariableOpReadVariableOp)read_9_disablecopyonread_batch_norm4_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:Ж
Read_10/DisableCopyOnReadDisableCopyOnRead1read_10_disablecopyonread_batch_norm4_moving_mean"/device:CPU:0*
_output_shapes
 ѓ
Read_10/ReadVariableOpReadVariableOp1read_10_disablecopyonread_batch_norm4_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:К
Read_11/DisableCopyOnReadDisableCopyOnRead5read_11_disablecopyonread_batch_norm4_moving_variance"/device:CPU:0*
_output_shapes
 ≥
Read_11/ReadVariableOpReadVariableOp5read_11_disablecopyonread_batch_norm4_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_12/DisableCopyOnReadDisableCopyOnRead'read_12_disablecopyonread_dense5_kernel"/device:CPU:0*
_output_shapes
 ©
Read_12/ReadVariableOpReadVariableOp'read_12_disablecopyonread_dense5_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:0*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:0e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:0z
Read_13/DisableCopyOnReadDisableCopyOnRead%read_13_disablecopyonread_dense5_bias"/device:CPU:0*
_output_shapes
 £
Read_13/ReadVariableOpReadVariableOp%read_13_disablecopyonread_dense5_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:0А
Read_14/DisableCopyOnReadDisableCopyOnRead+read_14_disablecopyonread_batch_norm5_gamma"/device:CPU:0*
_output_shapes
 ©
Read_14/ReadVariableOpReadVariableOp+read_14_disablecopyonread_batch_norm5_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:0
Read_15/DisableCopyOnReadDisableCopyOnRead*read_15_disablecopyonread_batch_norm5_beta"/device:CPU:0*
_output_shapes
 ®
Read_15/ReadVariableOpReadVariableOp*read_15_disablecopyonread_batch_norm5_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:0Ж
Read_16/DisableCopyOnReadDisableCopyOnRead1read_16_disablecopyonread_batch_norm5_moving_mean"/device:CPU:0*
_output_shapes
 ѓ
Read_16/ReadVariableOpReadVariableOp1read_16_disablecopyonread_batch_norm5_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:0К
Read_17/DisableCopyOnReadDisableCopyOnRead5read_17_disablecopyonread_batch_norm5_moving_variance"/device:CPU:0*
_output_shapes
 ≥
Read_17/ReadVariableOpReadVariableOp5read_17_disablecopyonread_batch_norm5_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:0|
Read_18/DisableCopyOnReadDisableCopyOnRead'read_18_disablecopyonread_dense6_kernel"/device:CPU:0*
_output_shapes
 ©
Read_18/ReadVariableOpReadVariableOp'read_18_disablecopyonread_dense6_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:0`*
dtype0o
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:0`e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

:0`z
Read_19/DisableCopyOnReadDisableCopyOnRead%read_19_disablecopyonread_dense6_bias"/device:CPU:0*
_output_shapes
 £
Read_19/ReadVariableOpReadVariableOp%read_19_disablecopyonread_dense6_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:`А
Read_20/DisableCopyOnReadDisableCopyOnRead+read_20_disablecopyonread_batch_norm6_gamma"/device:CPU:0*
_output_shapes
 ©
Read_20/ReadVariableOpReadVariableOp+read_20_disablecopyonread_batch_norm6_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:`
Read_21/DisableCopyOnReadDisableCopyOnRead*read_21_disablecopyonread_batch_norm6_beta"/device:CPU:0*
_output_shapes
 ®
Read_21/ReadVariableOpReadVariableOp*read_21_disablecopyonread_batch_norm6_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:`Ж
Read_22/DisableCopyOnReadDisableCopyOnRead1read_22_disablecopyonread_batch_norm6_moving_mean"/device:CPU:0*
_output_shapes
 ѓ
Read_22/ReadVariableOpReadVariableOp1read_22_disablecopyonread_batch_norm6_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:`К
Read_23/DisableCopyOnReadDisableCopyOnRead5read_23_disablecopyonread_batch_norm6_moving_variance"/device:CPU:0*
_output_shapes
 ≥
Read_23/ReadVariableOpReadVariableOp5read_23_disablecopyonread_batch_norm6_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:`|
Read_24/DisableCopyOnReadDisableCopyOnRead'read_24_disablecopyonread_output_kernel"/device:CPU:0*
_output_shapes
 ©
Read_24/ReadVariableOpReadVariableOp'read_24_disablecopyonread_output_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:`i*
dtype0o
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:`ie
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes

:`iz
Read_25/DisableCopyOnReadDisableCopyOnRead%read_25_disablecopyonread_output_bias"/device:CPU:0*
_output_shapes
 £
Read_25/ReadVariableOpReadVariableOp%read_25_disablecopyonread_output_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:i*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:ia
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:iЖ
Read_26/DisableCopyOnReadDisableCopyOnRead1read_26_disablecopyonread_output_batch_norm_gamma"/device:CPU:0*
_output_shapes
 ѓ
Read_26/ReadVariableOpReadVariableOp1read_26_disablecopyonread_output_batch_norm_gamma^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:i*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:ia
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:iЕ
Read_27/DisableCopyOnReadDisableCopyOnRead0read_27_disablecopyonread_output_batch_norm_beta"/device:CPU:0*
_output_shapes
 Ѓ
Read_27/ReadVariableOpReadVariableOp0read_27_disablecopyonread_output_batch_norm_beta^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:i*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:ia
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:iМ
Read_28/DisableCopyOnReadDisableCopyOnRead7read_28_disablecopyonread_output_batch_norm_moving_mean"/device:CPU:0*
_output_shapes
 µ
Read_28/ReadVariableOpReadVariableOp7read_28_disablecopyonread_output_batch_norm_moving_mean^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:i*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:ia
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:iР
Read_29/DisableCopyOnReadDisableCopyOnRead;read_29_disablecopyonread_output_batch_norm_moving_variance"/device:CPU:0*
_output_shapes
 є
Read_29/ReadVariableOpReadVariableOp;read_29_disablecopyonread_output_batch_norm_moving_variance^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:i*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:ia
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:i«
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*р
valueжBгB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЂ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Е
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *-
dtypes#
!2Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_60Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_61IdentityIdentity_60:output:0^NoOp*
T0*
_output_shapes
: ’
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_61Identity_61:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
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
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:A=
;
_user_specified_name#!output_batch_norm/moving_variance:=9
7
_user_specified_nameoutput_batch_norm/moving_mean:62
0
_user_specified_nameoutput_batch_norm/beta:73
1
_user_specified_nameoutput_batch_norm/gamma:+'
%
_user_specified_nameoutput/bias:-)
'
_user_specified_nameoutput/kernel:;7
5
_user_specified_namebatch_norm6/moving_variance:73
1
_user_specified_namebatch_norm6/moving_mean:0,
*
_user_specified_namebatch_norm6/beta:1-
+
_user_specified_namebatch_norm6/gamma:+'
%
_user_specified_namedense6/bias:-)
'
_user_specified_namedense6/kernel:;7
5
_user_specified_namebatch_norm5/moving_variance:73
1
_user_specified_namebatch_norm5/moving_mean:0,
*
_user_specified_namebatch_norm5/beta:1-
+
_user_specified_namebatch_norm5/gamma:+'
%
_user_specified_namedense5/bias:-)
'
_user_specified_namedense5/kernel:;7
5
_user_specified_namebatch_norm4/moving_variance:73
1
_user_specified_namebatch_norm4/moving_mean:0
,
*
_user_specified_namebatch_norm4/beta:1	-
+
_user_specified_namebatch_norm4/gamma:+'
%
_user_specified_namedense4/bias:-)
'
_user_specified_namedense4/kernel:;7
5
_user_specified_namebatch_norm3/moving_variance:73
1
_user_specified_namebatch_norm3/moving_mean:0,
*
_user_specified_namebatch_norm3/beta:1-
+
_user_specified_namebatch_norm3/gamma:+'
%
_user_specified_namedense3/bias:-)
'
_user_specified_namedense3/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
£
H
,__inference_output_relu_layer_call_fn_883848

inputs
identity≤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€i* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_output_relu_layer_call_and_return_conditional_losses_882565`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€i"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€i:O K
'
_output_shapes
:€€€€€€€€€i
 
_user_specified_nameinputs
Ь	
Ќ
2__inference_output_batch_norm_layer_call_fn_883923

inputs
unknown:i
	unknown_0:i
	unknown_1:i
	unknown_2:i
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€i*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_output_batch_norm_layer_call_and_return_conditional_losses_881887o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€i<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€i: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name883919:&"
 
_user_specified_name883917:&"
 
_user_specified_name883915:&"
 
_user_specified_name883913:O K
'
_output_shapes
:€€€€€€€€€i
 
_user_specified_nameinputs
Р	
«
,__inference_batch_norm6_layer_call_fn_883712

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€`*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_batch_norm6_layer_call_and_return_conditional_losses_881807o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name883708:&"
 
_user_specified_name883706:&"
 
_user_specified_name883704:&"
 
_user_specified_name883702:O K
'
_output_shapes
:€€€€€€€€€`
 
_user_specified_nameinputs
Р	
«
,__inference_batch_norm3_layer_call_fn_883079

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_batch_norm3_layer_call_and_return_conditional_losses_881567o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name883075:&"
 
_user_specified_name883073:&"
 
_user_specified_name883071:&"
 
_user_specified_name883069:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
М&
а
G__inference_batch_norm5_layer_call_and_return_conditional_losses_883535

inputs5
'assignmovingavg_readvariableop_resource:07
)assignmovingavg_1_readvariableop_resource:03
%batchnorm_mul_readvariableop_resource:0/
!batchnorm_readvariableop_resource:0
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:0*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:0З
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€0l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ю
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:0*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:0*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:0x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:0ђ
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
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:0*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:0~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:0і
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
:0P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:0~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:0c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€0h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:0v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:0*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:0r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€0b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0∆
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€0: : : : 2@
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
:€€€€€€€€€0
 
_user_specified_nameinputs
ќ
ђ
M__inference_output_batch_norm_layer_call_and_return_conditional_losses_883977

inputs/
!batchnorm_readvariableop_resource:i3
%batchnorm_mul_readvariableop_resource:i1
#batchnorm_readvariableop_1_resource:i1
#batchnorm_readvariableop_2_resource:i
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:i*
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
:iP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:i~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:i*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:ic
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€iz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:i*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:iz
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:i*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:ir
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€ib
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€iЦ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€i: : : : 28
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
:€€€€€€€€€i
 
_user_specified_nameinputs
к
Ф
'__inference_dense5_layer_call_fn_883353

inputs
unknown:0
	unknown_0:0
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense5_layer_call_and_return_conditional_losses_882247o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name883349:&"
 
_user_specified_name883347:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
О	
«
,__inference_batch_norm3_layer_call_fn_883066

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_batch_norm3_layer_call_and_return_conditional_losses_881547o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name883062:&"
 
_user_specified_name883060:&"
 
_user_specified_name883058:&"
 
_user_specified_name883056:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
»
¶
G__inference_batch_norm4_layer_call_and_return_conditional_losses_881647

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
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
:€€€€€€€€€z
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
:€€€€€€€€€b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ц
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 28
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
:€€€€€€€€€
 
_user_specified_nameinputs
»
¶
G__inference_batch_norm5_layer_call_and_return_conditional_losses_881727

inputs/
!batchnorm_readvariableop_resource:03
%batchnorm_mul_readvariableop_resource:01
#batchnorm_readvariableop_1_resource:01
#batchnorm_readvariableop_2_resource:0
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:0*
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
:0P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:0~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:0c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€0z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:0*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:0z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:0*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:0r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€0b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0Ц
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€0: : : : 28
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
:€€€€€€€€€0
 
_user_specified_nameinputs
М&
а
G__inference_batch_norm5_layer_call_and_return_conditional_losses_881707

inputs5
'assignmovingavg_readvariableop_resource:07
)assignmovingavg_1_readvariableop_resource:03
%batchnorm_mul_readvariableop_resource:0/
!batchnorm_readvariableop_resource:0
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:0*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:0З
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€0l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ю
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:0*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:0*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:0x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:0ђ
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
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:0*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:0~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:0і
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
:0P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:0~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:0c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€0h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:0v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:0*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:0r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€0b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0∆
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€0: : : : 2@
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
:€€€€€€€€€0
 
_user_specified_nameinputs
®2
•
B__inference_dense6_layer_call_and_return_conditional_losses_883632

inputs)
readvariableop_resource:0`'
readvariableop_3_resource:`
identityИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3ҐReadVariableOp_4ҐReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
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

:0`*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:0`N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:0`@
NegNegtruediv:z:0*
T0*
_output_shapes

:0`D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:0`I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:0`N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:0`[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:0`\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьFv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:0`T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:0`R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:0`P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:0`L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:0`h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:0`*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:0`M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:0`L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:0`R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:0`h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:0`*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:0`U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€`I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
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
:`*
dtype0L
mul_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF]
mul_4MulReadVariableOp_3:value:0mul_4/y:output:0*
T0*
_output_shapes
:`P
	truediv_2RealDiv	mul_4:z:0
Cast_1:y:0*
T0*
_output_shapes
:`@
Neg_2Negtruediv_2:z:0*
T0*
_output_shapes
:`D
Round_1Roundtruediv_2:z:0*
T0*
_output_shapes
:`K
add_4AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:`N
StopGradient_2StopGradient	add_4:z:0*
T0*
_output_shapes
:`[
add_5AddV2truediv_2:z:0StopGradient_2:output:0*
T0*
_output_shapes
:`^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьFv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:`V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:`R
mul_5Mul
Cast_1:y:0clip_by_value_1:z:0*
T0*
_output_shapes
:`P
truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АFZ
	truediv_3RealDiv	mul_5:z:0truediv_3/y:output:0*
T0*
_output_shapes
:`L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_6Mulmul_6/x:output:0truediv_3:z:0*
T0*
_output_shapes
:`f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:`*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:`I
add_6AddV2	Neg_3:y:0	mul_6:z:0*
T0*
_output_shapes
:`L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?N
mul_7Mulmul_7/x:output:0	add_6:z:0*
T0*
_output_shapes
:`N
StopGradient_3StopGradient	mul_7:z:0*
T0*
_output_shapes
:`f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:`*
dtype0f
add_7AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:`a
BiasAddBiasAddMatMul:product:0	add_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€`_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`Т
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€0: : 2$
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
:€€€€€€€€€0
 
_user_specified_nameinputs
Б!
]
A__inference_relu3_layer_call_and_return_conditional_losses_882037

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
value	B :K
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
 *  pAG
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
:€€€€€€€€€F
ReluReluinputs*
T0*'
_output_shapes
:€€€€€€€€€S
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::нѕT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€D
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€r
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€P
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:€€€€€€€€€[
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€I
NegNegtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€M
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€R
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:€€€€€€€€€W
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€d
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€[
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€P
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
:€€€€€€€€€T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:€€€€€€€€€Q
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€V
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€[
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€l
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Q
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Б!
]
A__inference_relu5_layer_call_and_return_conditional_losses_882301

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
value	B :K
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
 *  pAG
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
:€€€€€€€€€0F
ReluReluinputs*
T0*'
_output_shapes
:€€€€€€€€€0S
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::нѕT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€0D
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€0r
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€0P
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:€€€€€€€€€0[
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€0I
NegNegtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€0M
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€0R
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:€€€€€€€€€0W
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€0d
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€0[
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€0P
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
:€€€€€€€€€0T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€0]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:€€€€€€€€€0Q
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€0V
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€0L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€0[
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€0l
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€0Q
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€0:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
»
¶
G__inference_batch_norm6_layer_call_and_return_conditional_losses_883766

inputs/
!batchnorm_readvariableop_resource:`3
%batchnorm_mul_readvariableop_resource:`1
#batchnorm_readvariableop_1_resource:`1
#batchnorm_readvariableop_2_resource:`
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:`*
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
:`P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:`~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:`*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:`c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€`z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:`*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:`z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:`*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:`r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€`b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`Ц
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€`: : : : 28
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
:€€€€€€€€€`
 
_user_specified_nameinputs
М&
а
G__inference_batch_norm6_layer_call_and_return_conditional_losses_881787

inputs5
'assignmovingavg_readvariableop_resource:`7
)assignmovingavg_1_readvariableop_resource:`3
%batchnorm_mul_readvariableop_resource:`/
!batchnorm_readvariableop_resource:`
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:`*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:`З
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€`l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ю
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:`*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:`*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:`*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:`*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:`x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:`ђ
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
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:`*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:`~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:`і
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
:`P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:`~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:`*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:`c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€`h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:`v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:`*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:`r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€`b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`∆
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€`: : : : 2@
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
:€€€€€€€€€`
 
_user_specified_nameinputs
О	
«
,__inference_batch_norm6_layer_call_fn_883699

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_batch_norm6_layer_call_and_return_conditional_losses_881787o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name883695:&"
 
_user_specified_name883693:&"
 
_user_specified_name883691:&"
 
_user_specified_name883689:O K
'
_output_shapes
:€€€€€€€€€`
 
_user_specified_nameinputs
№Н
ј
"__inference__traced_restore_884278
file_prefix0
assignvariableop_dense3_kernel:
,
assignvariableop_1_dense3_bias:2
$assignvariableop_2_batch_norm3_gamma:1
#assignvariableop_3_batch_norm3_beta:8
*assignvariableop_4_batch_norm3_moving_mean:<
.assignvariableop_5_batch_norm3_moving_variance:2
 assignvariableop_6_dense4_kernel:,
assignvariableop_7_dense4_bias:2
$assignvariableop_8_batch_norm4_gamma:1
#assignvariableop_9_batch_norm4_beta:9
+assignvariableop_10_batch_norm4_moving_mean:=
/assignvariableop_11_batch_norm4_moving_variance:3
!assignvariableop_12_dense5_kernel:0-
assignvariableop_13_dense5_bias:03
%assignvariableop_14_batch_norm5_gamma:02
$assignvariableop_15_batch_norm5_beta:09
+assignvariableop_16_batch_norm5_moving_mean:0=
/assignvariableop_17_batch_norm5_moving_variance:03
!assignvariableop_18_dense6_kernel:0`-
assignvariableop_19_dense6_bias:`3
%assignvariableop_20_batch_norm6_gamma:`2
$assignvariableop_21_batch_norm6_beta:`9
+assignvariableop_22_batch_norm6_moving_mean:`=
/assignvariableop_23_batch_norm6_moving_variance:`3
!assignvariableop_24_output_kernel:`i-
assignvariableop_25_output_bias:i9
+assignvariableop_26_output_batch_norm_gamma:i8
*assignvariableop_27_output_batch_norm_beta:i?
1assignvariableop_28_output_batch_norm_moving_mean:iC
5assignvariableop_29_output_batch_norm_moving_variance:i
identity_31ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*р
valueжBгB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЃ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ї
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Р
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOpAssignVariableOpassignvariableop_dense3_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense3_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_2AssignVariableOp$assignvariableop_2_batch_norm3_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_3AssignVariableOp#assignvariableop_3_batch_norm3_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_4AssignVariableOp*assignvariableop_4_batch_norm3_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_5AssignVariableOp.assignvariableop_5_batch_norm3_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense4_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense4_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_8AssignVariableOp$assignvariableop_8_batch_norm4_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_9AssignVariableOp#assignvariableop_9_batch_norm4_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_10AssignVariableOp+assignvariableop_10_batch_norm4_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_11AssignVariableOp/assignvariableop_11_batch_norm4_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_12AssignVariableOp!assignvariableop_12_dense5_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_13AssignVariableOpassignvariableop_13_dense5_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_14AssignVariableOp%assignvariableop_14_batch_norm5_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_15AssignVariableOp$assignvariableop_15_batch_norm5_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_16AssignVariableOp+assignvariableop_16_batch_norm5_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_17AssignVariableOp/assignvariableop_17_batch_norm5_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_18AssignVariableOp!assignvariableop_18_dense6_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_19AssignVariableOpassignvariableop_19_dense6_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_20AssignVariableOp%assignvariableop_20_batch_norm6_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_21AssignVariableOp$assignvariableop_21_batch_norm6_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_22AssignVariableOp+assignvariableop_22_batch_norm6_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_23AssignVariableOp/assignvariableop_23_batch_norm6_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_24AssignVariableOp!assignvariableop_24_output_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_25AssignVariableOpassignvariableop_25_output_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_26AssignVariableOp+assignvariableop_26_output_batch_norm_gammaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_27AssignVariableOp*assignvariableop_27_output_batch_norm_betaIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_28AssignVariableOp1assignvariableop_28_output_batch_norm_moving_meanIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_29AssignVariableOp5assignvariableop_29_output_batch_norm_moving_varianceIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 г
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: ђ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_31Identity_31:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:A=
;
_user_specified_name#!output_batch_norm/moving_variance:=9
7
_user_specified_nameoutput_batch_norm/moving_mean:62
0
_user_specified_nameoutput_batch_norm/beta:73
1
_user_specified_nameoutput_batch_norm/gamma:+'
%
_user_specified_nameoutput/bias:-)
'
_user_specified_nameoutput/kernel:;7
5
_user_specified_namebatch_norm6/moving_variance:73
1
_user_specified_namebatch_norm6/moving_mean:0,
*
_user_specified_namebatch_norm6/beta:1-
+
_user_specified_namebatch_norm6/gamma:+'
%
_user_specified_namedense6/bias:-)
'
_user_specified_namedense6/kernel:;7
5
_user_specified_namebatch_norm5/moving_variance:73
1
_user_specified_namebatch_norm5/moving_mean:0,
*
_user_specified_namebatch_norm5/beta:1-
+
_user_specified_namebatch_norm5/gamma:+'
%
_user_specified_namedense5/bias:-)
'
_user_specified_namedense5/kernel:;7
5
_user_specified_namebatch_norm4/moving_variance:73
1
_user_specified_namebatch_norm4/moving_mean:0
,
*
_user_specified_namebatch_norm4/beta:1	-
+
_user_specified_namebatch_norm4/gamma:+'
%
_user_specified_namedense4/bias:-)
'
_user_specified_namedense4/kernel:;7
5
_user_specified_namebatch_norm3/moving_variance:73
1
_user_specified_namebatch_norm3/moving_mean:0,
*
_user_specified_namebatch_norm3/beta:1-
+
_user_specified_namebatch_norm3/gamma:+'
%
_user_specified_namedense3/bias:-)
'
_user_specified_namedense3/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
З!
c
G__inference_output_relu_layer_call_and_return_conditional_losses_882565

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
value	B :K
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
 *  pAG
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
:€€€€€€€€€iF
ReluReluinputs*
T0*'
_output_shapes
:€€€€€€€€€iS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::нѕT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€iD
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ir
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€iP
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:€€€€€€€€€i[
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€iI
NegNegtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€iM
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€iR
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:€€€€€€€€€iW
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€id
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€i[
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€iP
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
:€€€€€€€€€iT
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€i]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:€€€€€€€€€iQ
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€iV
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€iL
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€i[
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€il
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€iQ
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€i"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€i:O K
'
_output_shapes
:€€€€€€€€€i
 
_user_specified_nameinputs
Б!
]
A__inference_relu4_layer_call_and_return_conditional_losses_882169

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
value	B :K
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
 *  pAG
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
:€€€€€€€€€F
ReluReluinputs*
T0*'
_output_shapes
:€€€€€€€€€S
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::нѕT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€D
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€r
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€P
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:€€€€€€€€€[
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€I
NegNegtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€M
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€R
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:€€€€€€€€€W
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€d
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€[
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€P
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
:€€€€€€€€€T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:€€€€€€€€€Q
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€V
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€[
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€l
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Q
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
®2
•
B__inference_dense4_layer_call_and_return_conditional_losses_883210

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identityИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3ҐReadVariableOp_4ҐReadVariableOp_5G
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
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

:*
dtype0J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF[
mulMulReadVariableOp:value:0mul/y:output:0*
T0*
_output_shapes

:N
truedivRealDivmul:z:0Cast:y:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:I
addAddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:N
StopGradientStopGradientadd:z:0*
T0*
_output_shapes

:[
add_1AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 * ьFv
clip_by_value/MinimumMinimum	add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:R
mul_1MulCast:y:0clip_by_value:z:0*
T0*
_output_shapes

:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АF^
	truediv_1RealDiv	mul_1:z:0truediv_1/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
mul_2Mulmul_2/x:output:0truediv_1:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*
_output_shapes

:L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?R
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_3:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_3AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
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
 *  АF]
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
 * ьFv
clip_by_value_1/MinimumMinimum	add_5:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А∆x
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
 *  АFZ
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
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Т
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 2$
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
:€€€€€€€€€
 
_user_specified_nameinputs
џ
х
(__inference_decoder_layer_call_fn_882721
input_1
unknown:

	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:0

unknown_12:0

unknown_13:0

unknown_14:0

unknown_15:0

unknown_16:0

unknown_17:0`

unknown_18:`

unknown_19:`

unknown_20:`

unknown_21:`

unknown_22:`

unknown_23:`i

unknown_24:i

unknown_25:i

unknown_26:i

unknown_27:i

unknown_28:i
identityИҐStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€i*6
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_882577o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€i<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name882717:&"
 
_user_specified_name882715:&"
 
_user_specified_name882713:&"
 
_user_specified_name882711:&"
 
_user_specified_name882709:&"
 
_user_specified_name882707:&"
 
_user_specified_name882705:&"
 
_user_specified_name882703:&"
 
_user_specified_name882701:&"
 
_user_specified_name882699:&"
 
_user_specified_name882697:&"
 
_user_specified_name882695:&"
 
_user_specified_name882693:&"
 
_user_specified_name882691:&"
 
_user_specified_name882689:&"
 
_user_specified_name882687:&"
 
_user_specified_name882685:&"
 
_user_specified_name882683:&"
 
_user_specified_name882681:&"
 
_user_specified_name882679:&
"
 
_user_specified_name882677:&	"
 
_user_specified_name882675:&"
 
_user_specified_name882673:&"
 
_user_specified_name882671:&"
 
_user_specified_name882669:&"
 
_user_specified_name882667:&"
 
_user_specified_name882665:&"
 
_user_specified_name882663:&"
 
_user_specified_name882661:&"
 
_user_specified_name882659:P L
'
_output_shapes
:€€€€€€€€€

!
_user_specified_name	input_1
М&
а
G__inference_batch_norm6_layer_call_and_return_conditional_losses_883746

inputs5
'assignmovingavg_readvariableop_resource:`7
)assignmovingavg_1_readvariableop_resource:`3
%batchnorm_mul_readvariableop_resource:`/
!batchnorm_readvariableop_resource:`
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:`*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:`З
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€`l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ю
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:`*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:`*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:`*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:`*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:`x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:`ђ
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
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:`*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:`~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:`і
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
:`P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:`~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:`*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:`c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€`h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:`v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:`*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:`r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€`b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`∆
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€`: : : : 2@
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
:€€€€€€€€€`
 
_user_specified_nameinputs
Р	
«
,__inference_batch_norm5_layer_call_fn_883501

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_batch_norm5_layer_call_and_return_conditional_losses_881727o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€0: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name883497:&"
 
_user_specified_name883495:&"
 
_user_specified_name883493:&"
 
_user_specified_name883491:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
±O
¬
C__inference_decoder_layer_call_and_return_conditional_losses_882577
input_1
dense3_881984:

dense3_881986: 
batch_norm3_882039: 
batch_norm3_882041: 
batch_norm3_882043: 
batch_norm3_882045:
dense4_882116:
dense4_882118: 
batch_norm4_882171: 
batch_norm4_882173: 
batch_norm4_882175: 
batch_norm4_882177:
dense5_882248:0
dense5_882250:0 
batch_norm5_882303:0 
batch_norm5_882305:0 
batch_norm5_882307:0 
batch_norm5_882309:0
dense6_882380:0`
dense6_882382:` 
batch_norm6_882435:` 
batch_norm6_882437:` 
batch_norm6_882439:` 
batch_norm6_882441:`
output_882512:`i
output_882514:i&
output_batch_norm_882567:i&
output_batch_norm_882569:i&
output_batch_norm_882571:i&
output_batch_norm_882573:i
identityИҐ#batch_norm3/StatefulPartitionedCallҐ#batch_norm4/StatefulPartitionedCallҐ#batch_norm5/StatefulPartitionedCallҐ#batch_norm6/StatefulPartitionedCallҐdense3/StatefulPartitionedCallҐdense4/StatefulPartitionedCallҐdense5/StatefulPartitionedCallҐdense6/StatefulPartitionedCallҐoutput/StatefulPartitionedCallҐ)output_batch_norm/StatefulPartitionedCallй
dense3/StatefulPartitionedCallStatefulPartitionedCallinput_1dense3_881984dense3_881986*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense3_layer_call_and_return_conditional_losses_881983”
relu3/PartitionedCallPartitionedCall'dense3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_relu3_layer_call_and_return_conditional_losses_882037Њ
#batch_norm3/StatefulPartitionedCallStatefulPartitionedCallrelu3/PartitionedCall:output:0batch_norm3_882039batch_norm3_882041batch_norm3_882043batch_norm3_882045*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_batch_norm3_layer_call_and_return_conditional_losses_881547О
dense4/StatefulPartitionedCallStatefulPartitionedCall,batch_norm3/StatefulPartitionedCall:output:0dense4_882116dense4_882118*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense4_layer_call_and_return_conditional_losses_882115”
relu4/PartitionedCallPartitionedCall'dense4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_relu4_layer_call_and_return_conditional_losses_882169Њ
#batch_norm4/StatefulPartitionedCallStatefulPartitionedCallrelu4/PartitionedCall:output:0batch_norm4_882171batch_norm4_882173batch_norm4_882175batch_norm4_882177*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_batch_norm4_layer_call_and_return_conditional_losses_881627О
dense5/StatefulPartitionedCallStatefulPartitionedCall,batch_norm4/StatefulPartitionedCall:output:0dense5_882248dense5_882250*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense5_layer_call_and_return_conditional_losses_882247”
relu5/PartitionedCallPartitionedCall'dense5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_relu5_layer_call_and_return_conditional_losses_882301Њ
#batch_norm5/StatefulPartitionedCallStatefulPartitionedCallrelu5/PartitionedCall:output:0batch_norm5_882303batch_norm5_882305batch_norm5_882307batch_norm5_882309*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_batch_norm5_layer_call_and_return_conditional_losses_881707О
dense6/StatefulPartitionedCallStatefulPartitionedCall,batch_norm5/StatefulPartitionedCall:output:0dense6_882380dense6_882382*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense6_layer_call_and_return_conditional_losses_882379”
relu6/PartitionedCallPartitionedCall'dense6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_relu6_layer_call_and_return_conditional_losses_882433Њ
#batch_norm6/StatefulPartitionedCallStatefulPartitionedCallrelu6/PartitionedCall:output:0batch_norm6_882435batch_norm6_882437batch_norm6_882439batch_norm6_882441*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_batch_norm6_layer_call_and_return_conditional_losses_881787О
output/StatefulPartitionedCallStatefulPartitionedCall,batch_norm6/StatefulPartitionedCall:output:0output_882512output_882514*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€i*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_882511я
output_relu/PartitionedCallPartitionedCall'output/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€i* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_output_relu_layer_call_and_return_conditional_losses_882565и
)output_batch_norm/StatefulPartitionedCallStatefulPartitionedCall$output_relu/PartitionedCall:output:0output_batch_norm_882567output_batch_norm_882569output_batch_norm_882571output_batch_norm_882573*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€i*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_output_batch_norm_layer_call_and_return_conditional_losses_881867Б
IdentityIdentity2output_batch_norm/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€iЛ
NoOpNoOp$^batch_norm3/StatefulPartitionedCall$^batch_norm4/StatefulPartitionedCall$^batch_norm5/StatefulPartitionedCall$^batch_norm6/StatefulPartitionedCall^dense3/StatefulPartitionedCall^dense4/StatefulPartitionedCall^dense5/StatefulPartitionedCall^dense6/StatefulPartitionedCall^output/StatefulPartitionedCall*^output_batch_norm/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#batch_norm3/StatefulPartitionedCall#batch_norm3/StatefulPartitionedCall2J
#batch_norm4/StatefulPartitionedCall#batch_norm4/StatefulPartitionedCall2J
#batch_norm5/StatefulPartitionedCall#batch_norm5/StatefulPartitionedCall2J
#batch_norm6/StatefulPartitionedCall#batch_norm6/StatefulPartitionedCall2@
dense3/StatefulPartitionedCalldense3/StatefulPartitionedCall2@
dense4/StatefulPartitionedCalldense4/StatefulPartitionedCall2@
dense5/StatefulPartitionedCalldense5/StatefulPartitionedCall2@
dense6/StatefulPartitionedCalldense6/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2V
)output_batch_norm/StatefulPartitionedCall)output_batch_norm/StatefulPartitionedCall:&"
 
_user_specified_name882573:&"
 
_user_specified_name882571:&"
 
_user_specified_name882569:&"
 
_user_specified_name882567:&"
 
_user_specified_name882514:&"
 
_user_specified_name882512:&"
 
_user_specified_name882441:&"
 
_user_specified_name882439:&"
 
_user_specified_name882437:&"
 
_user_specified_name882435:&"
 
_user_specified_name882382:&"
 
_user_specified_name882380:&"
 
_user_specified_name882309:&"
 
_user_specified_name882307:&"
 
_user_specified_name882305:&"
 
_user_specified_name882303:&"
 
_user_specified_name882250:&"
 
_user_specified_name882248:&"
 
_user_specified_name882177:&"
 
_user_specified_name882175:&
"
 
_user_specified_name882173:&	"
 
_user_specified_name882171:&"
 
_user_specified_name882118:&"
 
_user_specified_name882116:&"
 
_user_specified_name882045:&"
 
_user_specified_name882043:&"
 
_user_specified_name882041:&"
 
_user_specified_name882039:&"
 
_user_specified_name881986:&"
 
_user_specified_name881984:P L
'
_output_shapes
:€€€€€€€€€

!
_user_specified_name	input_1" L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*і
serving_default†
;
input_10
serving_default_input_1:0€€€€€€€€€
E
output_batch_norm0
StatefulPartitionedCall:0€€€€€€€€€itensorflow/serving/predict:µя
Ѓ
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
layer-11
layer_with_weights-7
layer-12
layer_with_weights-8
layer-13
layer-14
layer_with_weights-9
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
±
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
kernel_quantizer
 bias_quantizer
kernel_quantizer_internal
 bias_quantizer_internal
!
quantizers

"kernel
#bias"
_tf_keras_layer
ƒ
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses
*
activation
*	quantizer"
_tf_keras_layer
к
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1axis
	2gamma
3beta
4moving_mean
5moving_variance"
_tf_keras_layer
±
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses
<kernel_quantizer
=bias_quantizer
<kernel_quantizer_internal
=bias_quantizer_internal
>
quantizers

?kernel
@bias"
_tf_keras_layer
ƒ
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses
G
activation
G	quantizer"
_tf_keras_layer
к
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
Naxis
	Ogamma
Pbeta
Qmoving_mean
Rmoving_variance"
_tf_keras_layer
±
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Ykernel_quantizer
Zbias_quantizer
Ykernel_quantizer_internal
Zbias_quantizer_internal
[
quantizers

\kernel
]bias"
_tf_keras_layer
ƒ
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
d
activation
d	quantizer"
_tf_keras_layer
к
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses
kaxis
	lgamma
mbeta
nmoving_mean
omoving_variance"
_tf_keras_layer
±
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses
vkernel_quantizer
wbias_quantizer
vkernel_quantizer_internal
wbias_quantizer_internal
x
quantizers

ykernel
zbias"
_tf_keras_layer
«
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+А&call_and_return_all_conditional_losses
Б
activation
Б	quantizer"
_tf_keras_layer
х
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses
	Иaxis

Йgamma
	Кbeta
Лmoving_mean
Мmoving_variance"
_tf_keras_layer
Њ
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses
Уkernel_quantizer
Фbias_quantizer
Уkernel_quantizer_internal
Фbias_quantizer_internal
Х
quantizers
Цkernel
	Чbias"
_tf_keras_layer
ћ
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses
Ю
activation
Ю	quantizer"
_tf_keras_layer
х
Я	variables
†trainable_variables
°regularization_losses
Ґ	keras_api
£__call__
+§&call_and_return_all_conditional_losses
	•axis

¶gamma
	Іbeta
®moving_mean
©moving_variance"
_tf_keras_layer
Р
"0
#1
22
33
44
55
?6
@7
O8
P9
Q10
R11
\12
]13
l14
m15
n16
o17
y18
z19
Й20
К21
Л22
М23
Ц24
Ч25
¶26
І27
®28
©29"
trackable_list_wrapper
Љ
"0
#1
22
33
?4
@5
O6
P7
\8
]9
l10
m11
y12
z13
Й14
К15
Ц16
Ч17
¶18
І19"
trackable_list_wrapper
 "
trackable_list_wrapper
ѕ
™non_trainable_variables
Ђlayers
ђmetrics
 ≠layer_regularization_losses
Ѓlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
«
ѓtrace_0
∞trace_12М
(__inference_decoder_layer_call_fn_882721
(__inference_decoder_layer_call_fn_882786µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zѓtrace_0z∞trace_1
э
±trace_0
≤trace_12¬
C__inference_decoder_layer_call_and_return_conditional_losses_882577
C__inference_decoder_layer_call_and_return_conditional_losses_882656µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z±trace_0z≤trace_1
ћB…
!__inference__wrapped_model_881513input_1"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
-
≥serving_default"
signature_map
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
іnon_trainable_variables
µlayers
ґmetrics
 Јlayer_regularization_losses
Єlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
г
єtrace_02ƒ
'__inference_dense3_layer_call_fn_882931Ш
С≤Н
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
annotations™ *
 zєtrace_0
ю
Їtrace_02я
B__inference_dense3_layer_call_and_return_conditional_losses_882999Ш
С≤Н
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
annotations™ *
 zЇtrace_0
"
_generic_user_object
"
_generic_user_object
.
0
 1"
trackable_list_wrapper
:
2dense3/kernel
:2dense3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
їnon_trainable_variables
Љlayers
љmetrics
 Њlayer_regularization_losses
њlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
в
јtrace_02√
&__inference_relu3_layer_call_fn_883004Ш
С≤Н
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
annotations™ *
 zјtrace_0
э
Ѕtrace_02ё
A__inference_relu3_layer_call_and_return_conditional_losses_883053Ш
С≤Н
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
annotations™ *
 zЅtrace_0
"
_generic_user_object
<
20
31
42
53"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
¬non_trainable_variables
√layers
ƒmetrics
 ≈layer_regularization_losses
∆layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
ѕ
«trace_0
»trace_12Ф
,__inference_batch_norm3_layer_call_fn_883066
,__inference_batch_norm3_layer_call_fn_883079µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z«trace_0z»trace_1
Е
…trace_0
 trace_12 
G__inference_batch_norm3_layer_call_and_return_conditional_losses_883113
G__inference_batch_norm3_layer_call_and_return_conditional_losses_883133µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z…trace_0z trace_1
 "
trackable_list_wrapper
:2batch_norm3/gamma
:2batch_norm3/beta
':% (2batch_norm3/moving_mean
+:) (2batch_norm3/moving_variance
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ћnon_trainable_variables
ћlayers
Ќmetrics
 ќlayer_regularization_losses
ѕlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
г
–trace_02ƒ
'__inference_dense4_layer_call_fn_883142Ш
С≤Н
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
annotations™ *
 z–trace_0
ю
—trace_02я
B__inference_dense4_layer_call_and_return_conditional_losses_883210Ш
С≤Н
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
annotations™ *
 z—trace_0
"
_generic_user_object
"
_generic_user_object
.
<0
=1"
trackable_list_wrapper
:2dense4/kernel
:2dense4/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
“non_trainable_variables
”layers
‘metrics
 ’layer_regularization_losses
÷layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
в
„trace_02√
&__inference_relu4_layer_call_fn_883215Ш
С≤Н
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
annotations™ *
 z„trace_0
э
Ўtrace_02ё
A__inference_relu4_layer_call_and_return_conditional_losses_883264Ш
С≤Н
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
annotations™ *
 zЎtrace_0
"
_generic_user_object
<
O0
P1
Q2
R3"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ўnon_trainable_variables
Џlayers
џmetrics
 №layer_regularization_losses
Ёlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
ѕ
ёtrace_0
яtrace_12Ф
,__inference_batch_norm4_layer_call_fn_883277
,__inference_batch_norm4_layer_call_fn_883290µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zёtrace_0zяtrace_1
Е
аtrace_0
бtrace_12 
G__inference_batch_norm4_layer_call_and_return_conditional_losses_883324
G__inference_batch_norm4_layer_call_and_return_conditional_losses_883344µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zаtrace_0zбtrace_1
 "
trackable_list_wrapper
:2batch_norm4/gamma
:2batch_norm4/beta
':% (2batch_norm4/moving_mean
+:) (2batch_norm4/moving_variance
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
г
зtrace_02ƒ
'__inference_dense5_layer_call_fn_883353Ш
С≤Н
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
annotations™ *
 zзtrace_0
ю
иtrace_02я
B__inference_dense5_layer_call_and_return_conditional_losses_883421Ш
С≤Н
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
annotations™ *
 zиtrace_0
"
_generic_user_object
"
_generic_user_object
.
Y0
Z1"
trackable_list_wrapper
:02dense5/kernel
:02dense5/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
в
оtrace_02√
&__inference_relu5_layer_call_fn_883426Ш
С≤Н
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
annotations™ *
 zоtrace_0
э
пtrace_02ё
A__inference_relu5_layer_call_and_return_conditional_losses_883475Ш
С≤Н
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
annotations™ *
 zпtrace_0
"
_generic_user_object
<
l0
m1
n2
o3"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
ѕ
хtrace_0
цtrace_12Ф
,__inference_batch_norm5_layer_call_fn_883488
,__inference_batch_norm5_layer_call_fn_883501µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zхtrace_0zцtrace_1
Е
чtrace_0
шtrace_12 
G__inference_batch_norm5_layer_call_and_return_conditional_losses_883535
G__inference_batch_norm5_layer_call_and_return_conditional_losses_883555µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zчtrace_0zшtrace_1
 "
trackable_list_wrapper
:02batch_norm5/gamma
:02batch_norm5/beta
':%0 (2batch_norm5/moving_mean
+:)0 (2batch_norm5/moving_variance
.
y0
z1"
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
г
юtrace_02ƒ
'__inference_dense6_layer_call_fn_883564Ш
С≤Н
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
annotations™ *
 zюtrace_0
ю
€trace_02я
B__inference_dense6_layer_call_and_return_conditional_losses_883632Ш
С≤Н
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
annotations™ *
 z€trace_0
"
_generic_user_object
"
_generic_user_object
.
v0
w1"
trackable_list_wrapper
:0`2dense6/kernel
:`2dense6/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
і
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
в
Еtrace_02√
&__inference_relu6_layer_call_fn_883637Ш
С≤Н
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
annotations™ *
 zЕtrace_0
э
Жtrace_02ё
A__inference_relu6_layer_call_and_return_conditional_losses_883686Ш
С≤Н
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
annotations™ *
 zЖtrace_0
"
_generic_user_object
@
Й0
К1
Л2
М3"
trackable_list_wrapper
0
Й0
К1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
ѕ
Мtrace_0
Нtrace_12Ф
,__inference_batch_norm6_layer_call_fn_883699
,__inference_batch_norm6_layer_call_fn_883712µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zМtrace_0zНtrace_1
Е
Оtrace_0
Пtrace_12 
G__inference_batch_norm6_layer_call_and_return_conditional_losses_883746
G__inference_batch_norm6_layer_call_and_return_conditional_losses_883766µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zОtrace_0zПtrace_1
 "
trackable_list_wrapper
:`2batch_norm6/gamma
:`2batch_norm6/beta
':%` (2batch_norm6/moving_mean
+:)` (2batch_norm6/moving_variance
0
Ц0
Ч1"
trackable_list_wrapper
0
Ц0
Ч1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
г
Хtrace_02ƒ
'__inference_output_layer_call_fn_883775Ш
С≤Н
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
annotations™ *
 zХtrace_0
ю
Цtrace_02я
B__inference_output_layer_call_and_return_conditional_losses_883843Ш
С≤Н
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
annotations™ *
 zЦtrace_0
"
_generic_user_object
"
_generic_user_object
0
У0
Ф1"
trackable_list_wrapper
:`i2output/kernel
:i2output/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
и
Ьtrace_02…
,__inference_output_relu_layer_call_fn_883848Ш
С≤Н
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
annotations™ *
 zЬtrace_0
Г
Эtrace_02д
G__inference_output_relu_layer_call_and_return_conditional_losses_883897Ш
С≤Н
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
annotations™ *
 zЭtrace_0
"
_generic_user_object
@
¶0
І1
®2
©3"
trackable_list_wrapper
0
¶0
І1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Юnon_trainable_variables
Яlayers
†metrics
 °layer_regularization_losses
Ґlayer_metrics
Я	variables
†trainable_variables
°regularization_losses
£__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
џ
£trace_0
§trace_12†
2__inference_output_batch_norm_layer_call_fn_883910
2__inference_output_batch_norm_layer_call_fn_883923µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z£trace_0z§trace_1
С
•trace_0
¶trace_12÷
M__inference_output_batch_norm_layer_call_and_return_conditional_losses_883957
M__inference_output_batch_norm_layer_call_and_return_conditional_losses_883977µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z•trace_0z¶trace_1
 "
trackable_list_wrapper
%:#i2output_batch_norm/gamma
$:"i2output_batch_norm/beta
-:+i (2output_batch_norm/moving_mean
1:/i (2!output_batch_norm/moving_variance
j
40
51
Q2
R3
n4
o5
Л6
М7
®8
©9"
trackable_list_wrapper
Ц
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
(__inference_decoder_layer_call_fn_882721input_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
рBн
(__inference_decoder_layer_call_fn_882786input_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЛBИ
C__inference_decoder_layer_call_and_return_conditional_losses_882577input_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЛBИ
C__inference_decoder_layer_call_and_return_conditional_losses_882656input_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЋB»
$__inference_signature_wrapper_882922input_1"Ф
Н≤Й
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
annotations™ *
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
—Bќ
'__inference_dense3_layer_call_fn_882931inputs"Ш
С≤Н
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
annotations™ *
 
мBй
B__inference_dense3_layer_call_and_return_conditional_losses_882999inputs"Ш
С≤Н
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
annotations™ *
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
–BЌ
&__inference_relu3_layer_call_fn_883004inputs"Ш
С≤Н
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
annotations™ *
 
лBи
A__inference_relu3_layer_call_and_return_conditional_losses_883053inputs"Ш
С≤Н
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
annotations™ *
 
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
уBр
,__inference_batch_norm3_layer_call_fn_883066inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
,__inference_batch_norm3_layer_call_fn_883079inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ОBЛ
G__inference_batch_norm3_layer_call_and_return_conditional_losses_883113inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ОBЛ
G__inference_batch_norm3_layer_call_and_return_conditional_losses_883133inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
—Bќ
'__inference_dense4_layer_call_fn_883142inputs"Ш
С≤Н
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
annotations™ *
 
мBй
B__inference_dense4_layer_call_and_return_conditional_losses_883210inputs"Ш
С≤Н
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
annotations™ *
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
–BЌ
&__inference_relu4_layer_call_fn_883215inputs"Ш
С≤Н
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
annotations™ *
 
лBи
A__inference_relu4_layer_call_and_return_conditional_losses_883264inputs"Ш
С≤Н
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
annotations™ *
 
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
уBр
,__inference_batch_norm4_layer_call_fn_883277inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
,__inference_batch_norm4_layer_call_fn_883290inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ОBЛ
G__inference_batch_norm4_layer_call_and_return_conditional_losses_883324inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ОBЛ
G__inference_batch_norm4_layer_call_and_return_conditional_losses_883344inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
—Bќ
'__inference_dense5_layer_call_fn_883353inputs"Ш
С≤Н
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
annotations™ *
 
мBй
B__inference_dense5_layer_call_and_return_conditional_losses_883421inputs"Ш
С≤Н
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
annotations™ *
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
–BЌ
&__inference_relu5_layer_call_fn_883426inputs"Ш
С≤Н
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
annotations™ *
 
лBи
A__inference_relu5_layer_call_and_return_conditional_losses_883475inputs"Ш
С≤Н
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
annotations™ *
 
.
n0
o1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
уBр
,__inference_batch_norm5_layer_call_fn_883488inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
,__inference_batch_norm5_layer_call_fn_883501inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ОBЛ
G__inference_batch_norm5_layer_call_and_return_conditional_losses_883535inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ОBЛ
G__inference_batch_norm5_layer_call_and_return_conditional_losses_883555inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
—Bќ
'__inference_dense6_layer_call_fn_883564inputs"Ш
С≤Н
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
annotations™ *
 
мBй
B__inference_dense6_layer_call_and_return_conditional_losses_883632inputs"Ш
С≤Н
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
annotations™ *
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
–BЌ
&__inference_relu6_layer_call_fn_883637inputs"Ш
С≤Н
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
annotations™ *
 
лBи
A__inference_relu6_layer_call_and_return_conditional_losses_883686inputs"Ш
С≤Н
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
annotations™ *
 
0
Л0
М1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
уBр
,__inference_batch_norm6_layer_call_fn_883699inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
,__inference_batch_norm6_layer_call_fn_883712inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ОBЛ
G__inference_batch_norm6_layer_call_and_return_conditional_losses_883746inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ОBЛ
G__inference_batch_norm6_layer_call_and_return_conditional_losses_883766inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
—Bќ
'__inference_output_layer_call_fn_883775inputs"Ш
С≤Н
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
annotations™ *
 
мBй
B__inference_output_layer_call_and_return_conditional_losses_883843inputs"Ш
С≤Н
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
annotations™ *
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
÷B”
,__inference_output_relu_layer_call_fn_883848inputs"Ш
С≤Н
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
annotations™ *
 
сBо
G__inference_output_relu_layer_call_and_return_conditional_losses_883897inputs"Ш
С≤Н
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
annotations™ *
 
0
®0
©1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
щBц
2__inference_output_batch_norm_layer_call_fn_883910inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
2__inference_output_batch_norm_layer_call_fn_883923inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ФBС
M__inference_output_batch_norm_layer_call_and_return_conditional_losses_883957inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ФBС
M__inference_output_batch_norm_layer_call_and_return_conditional_losses_883977inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 …
!__inference__wrapped_model_881513£("#5243?@ROQP\]olnmyzМЙЛКЦЧ©¶®І0Ґ-
&Ґ#
!К
input_1€€€€€€€€€

™ "E™B
@
output_batch_norm+К(
output_batch_norm€€€€€€€€€iЄ
G__inference_batch_norm3_layer_call_and_return_conditional_losses_883113m45237Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Є
G__inference_batch_norm3_layer_call_and_return_conditional_losses_883133m52437Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Т
,__inference_batch_norm3_layer_call_fn_883066b45237Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€Т
,__inference_batch_norm3_layer_call_fn_883079b52437Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€Є
G__inference_batch_norm4_layer_call_and_return_conditional_losses_883324mQROP7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Є
G__inference_batch_norm4_layer_call_and_return_conditional_losses_883344mROQP7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Т
,__inference_batch_norm4_layer_call_fn_883277bQROP7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€Т
,__inference_batch_norm4_layer_call_fn_883290bROQP7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€Є
G__inference_batch_norm5_layer_call_and_return_conditional_losses_883535mnolm7Ґ4
-Ґ*
 К
inputs€€€€€€€€€0
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€0
Ъ Є
G__inference_batch_norm5_layer_call_and_return_conditional_losses_883555molnm7Ґ4
-Ґ*
 К
inputs€€€€€€€€€0
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€0
Ъ Т
,__inference_batch_norm5_layer_call_fn_883488bnolm7Ґ4
-Ґ*
 К
inputs€€€€€€€€€0
p

 
™ "!К
unknown€€€€€€€€€0Т
,__inference_batch_norm5_layer_call_fn_883501bolnm7Ґ4
-Ґ*
 К
inputs€€€€€€€€€0
p 

 
™ "!К
unknown€€€€€€€€€0Љ
G__inference_batch_norm6_layer_call_and_return_conditional_losses_883746qЛМЙК7Ґ4
-Ґ*
 К
inputs€€€€€€€€€`
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€`
Ъ Љ
G__inference_batch_norm6_layer_call_and_return_conditional_losses_883766qМЙЛК7Ґ4
-Ґ*
 К
inputs€€€€€€€€€`
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€`
Ъ Ц
,__inference_batch_norm6_layer_call_fn_883699fЛМЙК7Ґ4
-Ґ*
 К
inputs€€€€€€€€€`
p

 
™ "!К
unknown€€€€€€€€€`Ц
,__inference_batch_norm6_layer_call_fn_883712fМЙЛК7Ґ4
-Ґ*
 К
inputs€€€€€€€€€`
p 

 
™ "!К
unknown€€€€€€€€€`Џ
C__inference_decoder_layer_call_and_return_conditional_losses_882577Т("#4523?@QROP\]nolmyzЛМЙКЦЧ®©¶І8Ґ5
.Ґ+
!К
input_1€€€€€€€€€

p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€i
Ъ Џ
C__inference_decoder_layer_call_and_return_conditional_losses_882656Т("#5243?@ROQP\]olnmyzМЙЛКЦЧ©¶®І8Ґ5
.Ґ+
!К
input_1€€€€€€€€€

p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€i
Ъ і
(__inference_decoder_layer_call_fn_882721З("#4523?@QROP\]nolmyzЛМЙКЦЧ®©¶І8Ґ5
.Ґ+
!К
input_1€€€€€€€€€

p

 
™ "!К
unknown€€€€€€€€€iі
(__inference_decoder_layer_call_fn_882786З("#5243?@ROQP\]olnmyzМЙЛКЦЧ©¶®І8Ґ5
.Ґ+
!К
input_1€€€€€€€€€

p 

 
™ "!К
unknown€€€€€€€€€i©
B__inference_dense3_layer_call_and_return_conditional_losses_882999c"#/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Г
'__inference_dense3_layer_call_fn_882931X"#/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "!К
unknown€€€€€€€€€©
B__inference_dense4_layer_call_and_return_conditional_losses_883210c?@/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Г
'__inference_dense4_layer_call_fn_883142X?@/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€©
B__inference_dense5_layer_call_and_return_conditional_losses_883421c\]/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€0
Ъ Г
'__inference_dense5_layer_call_fn_883353X\]/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€0©
B__inference_dense6_layer_call_and_return_conditional_losses_883632cyz/Ґ,
%Ґ"
 К
inputs€€€€€€€€€0
™ ",Ґ)
"К
tensor_0€€€€€€€€€`
Ъ Г
'__inference_dense6_layer_call_fn_883564Xyz/Ґ,
%Ґ"
 К
inputs€€€€€€€€€0
™ "!К
unknown€€€€€€€€€`¬
M__inference_output_batch_norm_layer_call_and_return_conditional_losses_883957q®©¶І7Ґ4
-Ґ*
 К
inputs€€€€€€€€€i
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€i
Ъ ¬
M__inference_output_batch_norm_layer_call_and_return_conditional_losses_883977q©¶®І7Ґ4
-Ґ*
 К
inputs€€€€€€€€€i
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€i
Ъ Ь
2__inference_output_batch_norm_layer_call_fn_883910f®©¶І7Ґ4
-Ґ*
 К
inputs€€€€€€€€€i
p

 
™ "!К
unknown€€€€€€€€€iЬ
2__inference_output_batch_norm_layer_call_fn_883923f©¶®І7Ґ4
-Ґ*
 К
inputs€€€€€€€€€i
p 

 
™ "!К
unknown€€€€€€€€€iЂ
B__inference_output_layer_call_and_return_conditional_losses_883843eЦЧ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€`
™ ",Ґ)
"К
tensor_0€€€€€€€€€i
Ъ Е
'__inference_output_layer_call_fn_883775ZЦЧ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€`
™ "!К
unknown€€€€€€€€€i™
G__inference_output_relu_layer_call_and_return_conditional_losses_883897_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€i
™ ",Ґ)
"К
tensor_0€€€€€€€€€i
Ъ Д
,__inference_output_relu_layer_call_fn_883848T/Ґ,
%Ґ"
 К
inputs€€€€€€€€€i
™ "!К
unknown€€€€€€€€€i§
A__inference_relu3_layer_call_and_return_conditional_losses_883053_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ~
&__inference_relu3_layer_call_fn_883004T/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€§
A__inference_relu4_layer_call_and_return_conditional_losses_883264_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ~
&__inference_relu4_layer_call_fn_883215T/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€§
A__inference_relu5_layer_call_and_return_conditional_losses_883475_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€0
™ ",Ґ)
"К
tensor_0€€€€€€€€€0
Ъ ~
&__inference_relu5_layer_call_fn_883426T/Ґ,
%Ґ"
 К
inputs€€€€€€€€€0
™ "!К
unknown€€€€€€€€€0§
A__inference_relu6_layer_call_and_return_conditional_losses_883686_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€`
™ ",Ґ)
"К
tensor_0€€€€€€€€€`
Ъ ~
&__inference_relu6_layer_call_fn_883637T/Ґ,
%Ґ"
 К
inputs€€€€€€€€€`
™ "!К
unknown€€€€€€€€€`„
$__inference_signature_wrapper_882922Ѓ("#5243?@ROQP\]olnmyzМЙЛКЦЧ©¶®І;Ґ8
Ґ 
1™.
,
input_1!К
input_1€€€€€€€€€
"E™B
@
output_batch_norm+К(
output_batch_norm€€€€€€€€€i