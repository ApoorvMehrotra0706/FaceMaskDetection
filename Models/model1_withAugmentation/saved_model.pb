??#
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
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
?
DepthwiseConv2dNative

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

;
Elu
features"T
activations"T"
Ttype:
2
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
?
$separable_conv2d_49/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$separable_conv2d_49/depthwise_kernel
?
8separable_conv2d_49/depthwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_49/depthwise_kernel*&
_output_shapes
:*
dtype0
?
$separable_conv2d_49/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$separable_conv2d_49/pointwise_kernel
?
8separable_conv2d_49/pointwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_49/pointwise_kernel*&
_output_shapes
:*
dtype0
?
separable_conv2d_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameseparable_conv2d_49/bias
?
,separable_conv2d_49/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_49/bias*
_output_shapes
:*
dtype0
?
batch_normalization_55/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_55/gamma
?
0batch_normalization_55/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_55/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_55/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_55/beta
?
/batch_normalization_55/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_55/beta*
_output_shapes
:*
dtype0
?
"batch_normalization_55/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_55/moving_mean
?
6batch_normalization_55/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_55/moving_mean*
_output_shapes
:*
dtype0
?
&batch_normalization_55/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_55/moving_variance
?
:batch_normalization_55/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_55/moving_variance*
_output_shapes
:*
dtype0
?
$separable_conv2d_50/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$separable_conv2d_50/depthwise_kernel
?
8separable_conv2d_50/depthwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_50/depthwise_kernel*&
_output_shapes
:*
dtype0
?
$separable_conv2d_50/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*5
shared_name&$separable_conv2d_50/pointwise_kernel
?
8separable_conv2d_50/pointwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_50/pointwise_kernel*&
_output_shapes
:$*
dtype0
?
separable_conv2d_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*)
shared_nameseparable_conv2d_50/bias
?
,separable_conv2d_50/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_50/bias*
_output_shapes
:$*
dtype0
?
batch_normalization_56/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*-
shared_namebatch_normalization_56/gamma
?
0batch_normalization_56/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_56/gamma*
_output_shapes
:$*
dtype0
?
batch_normalization_56/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*,
shared_namebatch_normalization_56/beta
?
/batch_normalization_56/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_56/beta*
_output_shapes
:$*
dtype0
?
"batch_normalization_56/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*3
shared_name$"batch_normalization_56/moving_mean
?
6batch_normalization_56/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_56/moving_mean*
_output_shapes
:$*
dtype0
?
&batch_normalization_56/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*7
shared_name(&batch_normalization_56/moving_variance
?
:batch_normalization_56/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_56/moving_variance*
_output_shapes
:$*
dtype0
?
$separable_conv2d_51/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*5
shared_name&$separable_conv2d_51/depthwise_kernel
?
8separable_conv2d_51/depthwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_51/depthwise_kernel*&
_output_shapes
:$*
dtype0
?
$separable_conv2d_51/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:$0*5
shared_name&$separable_conv2d_51/pointwise_kernel
?
8separable_conv2d_51/pointwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_51/pointwise_kernel*&
_output_shapes
:$0*
dtype0
?
separable_conv2d_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*)
shared_nameseparable_conv2d_51/bias
?
,separable_conv2d_51/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_51/bias*
_output_shapes
:0*
dtype0
?
batch_normalization_57/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*-
shared_namebatch_normalization_57/gamma
?
0batch_normalization_57/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_57/gamma*
_output_shapes
:0*
dtype0
?
batch_normalization_57/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*,
shared_namebatch_normalization_57/beta
?
/batch_normalization_57/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_57/beta*
_output_shapes
:0*
dtype0
?
"batch_normalization_57/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*3
shared_name$"batch_normalization_57/moving_mean
?
6batch_normalization_57/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_57/moving_mean*
_output_shapes
:0*
dtype0
?
&batch_normalization_57/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*7
shared_name(&batch_normalization_57/moving_variance
?
:batch_normalization_57/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_57/moving_variance*
_output_shapes
:0*
dtype0
?
$separable_conv2d_52/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*5
shared_name&$separable_conv2d_52/depthwise_kernel
?
8separable_conv2d_52/depthwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_52/depthwise_kernel*&
_output_shapes
:0*
dtype0
?
$separable_conv2d_52/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*5
shared_name&$separable_conv2d_52/pointwise_kernel
?
8separable_conv2d_52/pointwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_52/pointwise_kernel*&
_output_shapes
:0@*
dtype0
?
separable_conv2d_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameseparable_conv2d_52/bias
?
,separable_conv2d_52/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_52/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_58/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_58/gamma
?
0batch_normalization_58/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_58/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_58/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_58/beta
?
/batch_normalization_58/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_58/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_58/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_58/moving_mean
?
6batch_normalization_58/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_58/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_58/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_58/moving_variance
?
:batch_normalization_58/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_58/moving_variance*
_output_shapes
:@*
dtype0
?
$separable_conv2d_53/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$separable_conv2d_53/depthwise_kernel
?
8separable_conv2d_53/depthwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_53/depthwise_kernel*&
_output_shapes
:@*
dtype0
?
$separable_conv2d_53/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*5
shared_name&$separable_conv2d_53/pointwise_kernel
?
8separable_conv2d_53/pointwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_53/pointwise_kernel*&
_output_shapes
:@@*
dtype0
?
separable_conv2d_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameseparable_conv2d_53/bias
?
,separable_conv2d_53/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_53/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_59/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_59/gamma
?
0batch_normalization_59/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_59/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_59/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_59/beta
?
/batch_normalization_59/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_59/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_59/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_59/moving_mean
?
6batch_normalization_59/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_59/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_59/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_59/moving_variance
?
:batch_normalization_59/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_59/moving_variance*
_output_shapes
:@*
dtype0
|
dense_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??d* 
shared_namedense_37/kernel
u
#dense_37/kernel/Read/ReadVariableOpReadVariableOpdense_37/kernel* 
_output_shapes
:
??d*
dtype0
r
dense_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_37/bias
k
!dense_37/bias/Read/ReadVariableOpReadVariableOpdense_37/bias*
_output_shapes
:d*
dtype0
z
dense_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2* 
shared_namedense_38/kernel
s
#dense_38/kernel/Read/ReadVariableOpReadVariableOpdense_38/kernel*
_output_shapes

:d2*
dtype0
r
dense_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_38/bias
k
!dense_38/bias/Read/ReadVariableOpReadVariableOpdense_38/bias*
_output_shapes
:2*
dtype0
z
dense_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
* 
shared_namedense_39/kernel
s
#dense_39/kernel/Read/ReadVariableOpReadVariableOpdense_39/kernel*
_output_shapes

:2
*
dtype0
r
dense_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_39/bias
k
!dense_39/bias/Read/ReadVariableOpReadVariableOpdense_39/bias*
_output_shapes
:
*
dtype0
z
dense_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_40/kernel
s
#dense_40/kernel/Read/ReadVariableOpReadVariableOpdense_40/kernel*
_output_shapes

:
*
dtype0
r
dense_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_40/bias
k
!dense_40/bias/Read/ReadVariableOpReadVariableOpdense_40/bias*
_output_shapes
:*
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
?
+Adam/separable_conv2d_49/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/separable_conv2d_49/depthwise_kernel/m
?
?Adam/separable_conv2d_49/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_49/depthwise_kernel/m*&
_output_shapes
:*
dtype0
?
+Adam/separable_conv2d_49/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/separable_conv2d_49/pointwise_kernel/m
?
?Adam/separable_conv2d_49/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_49/pointwise_kernel/m*&
_output_shapes
:*
dtype0
?
Adam/separable_conv2d_49/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/separable_conv2d_49/bias/m
?
3Adam/separable_conv2d_49/bias/m/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_49/bias/m*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_55/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_55/gamma/m
?
7Adam/batch_normalization_55/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_55/gamma/m*
_output_shapes
:*
dtype0
?
"Adam/batch_normalization_55/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_55/beta/m
?
6Adam/batch_normalization_55/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_55/beta/m*
_output_shapes
:*
dtype0
?
+Adam/separable_conv2d_50/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/separable_conv2d_50/depthwise_kernel/m
?
?Adam/separable_conv2d_50/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_50/depthwise_kernel/m*&
_output_shapes
:*
dtype0
?
+Adam/separable_conv2d_50/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*<
shared_name-+Adam/separable_conv2d_50/pointwise_kernel/m
?
?Adam/separable_conv2d_50/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_50/pointwise_kernel/m*&
_output_shapes
:$*
dtype0
?
Adam/separable_conv2d_50/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*0
shared_name!Adam/separable_conv2d_50/bias/m
?
3Adam/separable_conv2d_50/bias/m/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_50/bias/m*
_output_shapes
:$*
dtype0
?
#Adam/batch_normalization_56/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*4
shared_name%#Adam/batch_normalization_56/gamma/m
?
7Adam/batch_normalization_56/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_56/gamma/m*
_output_shapes
:$*
dtype0
?
"Adam/batch_normalization_56/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*3
shared_name$"Adam/batch_normalization_56/beta/m
?
6Adam/batch_normalization_56/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_56/beta/m*
_output_shapes
:$*
dtype0
?
+Adam/separable_conv2d_51/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*<
shared_name-+Adam/separable_conv2d_51/depthwise_kernel/m
?
?Adam/separable_conv2d_51/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_51/depthwise_kernel/m*&
_output_shapes
:$*
dtype0
?
+Adam/separable_conv2d_51/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$0*<
shared_name-+Adam/separable_conv2d_51/pointwise_kernel/m
?
?Adam/separable_conv2d_51/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_51/pointwise_kernel/m*&
_output_shapes
:$0*
dtype0
?
Adam/separable_conv2d_51/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*0
shared_name!Adam/separable_conv2d_51/bias/m
?
3Adam/separable_conv2d_51/bias/m/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_51/bias/m*
_output_shapes
:0*
dtype0
?
#Adam/batch_normalization_57/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*4
shared_name%#Adam/batch_normalization_57/gamma/m
?
7Adam/batch_normalization_57/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_57/gamma/m*
_output_shapes
:0*
dtype0
?
"Adam/batch_normalization_57/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*3
shared_name$"Adam/batch_normalization_57/beta/m
?
6Adam/batch_normalization_57/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_57/beta/m*
_output_shapes
:0*
dtype0
?
+Adam/separable_conv2d_52/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*<
shared_name-+Adam/separable_conv2d_52/depthwise_kernel/m
?
?Adam/separable_conv2d_52/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_52/depthwise_kernel/m*&
_output_shapes
:0*
dtype0
?
+Adam/separable_conv2d_52/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*<
shared_name-+Adam/separable_conv2d_52/pointwise_kernel/m
?
?Adam/separable_conv2d_52/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_52/pointwise_kernel/m*&
_output_shapes
:0@*
dtype0
?
Adam/separable_conv2d_52/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/separable_conv2d_52/bias/m
?
3Adam/separable_conv2d_52/bias/m/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_52/bias/m*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_58/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_58/gamma/m
?
7Adam/batch_normalization_58/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_58/gamma/m*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_58/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_58/beta/m
?
6Adam/batch_normalization_58/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_58/beta/m*
_output_shapes
:@*
dtype0
?
+Adam/separable_conv2d_53/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*<
shared_name-+Adam/separable_conv2d_53/depthwise_kernel/m
?
?Adam/separable_conv2d_53/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_53/depthwise_kernel/m*&
_output_shapes
:@*
dtype0
?
+Adam/separable_conv2d_53/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*<
shared_name-+Adam/separable_conv2d_53/pointwise_kernel/m
?
?Adam/separable_conv2d_53/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_53/pointwise_kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/separable_conv2d_53/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/separable_conv2d_53/bias/m
?
3Adam/separable_conv2d_53/bias/m/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_53/bias/m*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_59/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_59/gamma/m
?
7Adam/batch_normalization_59/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_59/gamma/m*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_59/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_59/beta/m
?
6Adam/batch_normalization_59/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_59/beta/m*
_output_shapes
:@*
dtype0
?
Adam/dense_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??d*'
shared_nameAdam/dense_37/kernel/m
?
*Adam/dense_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/m* 
_output_shapes
:
??d*
dtype0
?
Adam/dense_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_37/bias/m
y
(Adam/dense_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*'
shared_nameAdam/dense_38/kernel/m
?
*Adam/dense_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/m*
_output_shapes

:d2*
dtype0
?
Adam/dense_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_38/bias/m
y
(Adam/dense_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/m*
_output_shapes
:2*
dtype0
?
Adam/dense_39/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*'
shared_nameAdam/dense_39/kernel/m
?
*Adam/dense_39/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_39/kernel/m*
_output_shapes

:2
*
dtype0
?
Adam/dense_39/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_39/bias/m
y
(Adam/dense_39/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_39/bias/m*
_output_shapes
:
*
dtype0
?
Adam/dense_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_40/kernel/m
?
*Adam/dense_40/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_40/bias/m
y
(Adam/dense_40/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/m*
_output_shapes
:*
dtype0
?
+Adam/separable_conv2d_49/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/separable_conv2d_49/depthwise_kernel/v
?
?Adam/separable_conv2d_49/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_49/depthwise_kernel/v*&
_output_shapes
:*
dtype0
?
+Adam/separable_conv2d_49/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/separable_conv2d_49/pointwise_kernel/v
?
?Adam/separable_conv2d_49/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_49/pointwise_kernel/v*&
_output_shapes
:*
dtype0
?
Adam/separable_conv2d_49/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/separable_conv2d_49/bias/v
?
3Adam/separable_conv2d_49/bias/v/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_49/bias/v*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_55/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_55/gamma/v
?
7Adam/batch_normalization_55/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_55/gamma/v*
_output_shapes
:*
dtype0
?
"Adam/batch_normalization_55/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_55/beta/v
?
6Adam/batch_normalization_55/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_55/beta/v*
_output_shapes
:*
dtype0
?
+Adam/separable_conv2d_50/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/separable_conv2d_50/depthwise_kernel/v
?
?Adam/separable_conv2d_50/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_50/depthwise_kernel/v*&
_output_shapes
:*
dtype0
?
+Adam/separable_conv2d_50/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*<
shared_name-+Adam/separable_conv2d_50/pointwise_kernel/v
?
?Adam/separable_conv2d_50/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_50/pointwise_kernel/v*&
_output_shapes
:$*
dtype0
?
Adam/separable_conv2d_50/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*0
shared_name!Adam/separable_conv2d_50/bias/v
?
3Adam/separable_conv2d_50/bias/v/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_50/bias/v*
_output_shapes
:$*
dtype0
?
#Adam/batch_normalization_56/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*4
shared_name%#Adam/batch_normalization_56/gamma/v
?
7Adam/batch_normalization_56/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_56/gamma/v*
_output_shapes
:$*
dtype0
?
"Adam/batch_normalization_56/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*3
shared_name$"Adam/batch_normalization_56/beta/v
?
6Adam/batch_normalization_56/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_56/beta/v*
_output_shapes
:$*
dtype0
?
+Adam/separable_conv2d_51/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*<
shared_name-+Adam/separable_conv2d_51/depthwise_kernel/v
?
?Adam/separable_conv2d_51/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_51/depthwise_kernel/v*&
_output_shapes
:$*
dtype0
?
+Adam/separable_conv2d_51/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$0*<
shared_name-+Adam/separable_conv2d_51/pointwise_kernel/v
?
?Adam/separable_conv2d_51/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_51/pointwise_kernel/v*&
_output_shapes
:$0*
dtype0
?
Adam/separable_conv2d_51/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*0
shared_name!Adam/separable_conv2d_51/bias/v
?
3Adam/separable_conv2d_51/bias/v/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_51/bias/v*
_output_shapes
:0*
dtype0
?
#Adam/batch_normalization_57/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*4
shared_name%#Adam/batch_normalization_57/gamma/v
?
7Adam/batch_normalization_57/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_57/gamma/v*
_output_shapes
:0*
dtype0
?
"Adam/batch_normalization_57/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*3
shared_name$"Adam/batch_normalization_57/beta/v
?
6Adam/batch_normalization_57/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_57/beta/v*
_output_shapes
:0*
dtype0
?
+Adam/separable_conv2d_52/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*<
shared_name-+Adam/separable_conv2d_52/depthwise_kernel/v
?
?Adam/separable_conv2d_52/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_52/depthwise_kernel/v*&
_output_shapes
:0*
dtype0
?
+Adam/separable_conv2d_52/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*<
shared_name-+Adam/separable_conv2d_52/pointwise_kernel/v
?
?Adam/separable_conv2d_52/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_52/pointwise_kernel/v*&
_output_shapes
:0@*
dtype0
?
Adam/separable_conv2d_52/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/separable_conv2d_52/bias/v
?
3Adam/separable_conv2d_52/bias/v/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_52/bias/v*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_58/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_58/gamma/v
?
7Adam/batch_normalization_58/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_58/gamma/v*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_58/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_58/beta/v
?
6Adam/batch_normalization_58/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_58/beta/v*
_output_shapes
:@*
dtype0
?
+Adam/separable_conv2d_53/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*<
shared_name-+Adam/separable_conv2d_53/depthwise_kernel/v
?
?Adam/separable_conv2d_53/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_53/depthwise_kernel/v*&
_output_shapes
:@*
dtype0
?
+Adam/separable_conv2d_53/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*<
shared_name-+Adam/separable_conv2d_53/pointwise_kernel/v
?
?Adam/separable_conv2d_53/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_53/pointwise_kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/separable_conv2d_53/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/separable_conv2d_53/bias/v
?
3Adam/separable_conv2d_53/bias/v/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_53/bias/v*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_59/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_59/gamma/v
?
7Adam/batch_normalization_59/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_59/gamma/v*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_59/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_59/beta/v
?
6Adam/batch_normalization_59/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_59/beta/v*
_output_shapes
:@*
dtype0
?
Adam/dense_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??d*'
shared_nameAdam/dense_37/kernel/v
?
*Adam/dense_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/v* 
_output_shapes
:
??d*
dtype0
?
Adam/dense_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_37/bias/v
y
(Adam/dense_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*'
shared_nameAdam/dense_38/kernel/v
?
*Adam/dense_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/v*
_output_shapes

:d2*
dtype0
?
Adam/dense_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_38/bias/v
y
(Adam/dense_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/v*
_output_shapes
:2*
dtype0
?
Adam/dense_39/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*'
shared_nameAdam/dense_39/kernel/v
?
*Adam/dense_39/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_39/kernel/v*
_output_shapes

:2
*
dtype0
?
Adam/dense_39/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_39/bias/v
y
(Adam/dense_39/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_39/bias/v*
_output_shapes
:
*
dtype0
?
Adam/dense_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_40/kernel/v
?
*Adam/dense_40/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_40/bias/v
y
(Adam/dense_40/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
layer_with_weights-6
layer-6
layer_with_weights-7
layer-7
	layer_with_weights-8
	layer-8

layer_with_weights-9

layer-9
layer-10
layer_with_weights-10
layer-11
layer_with_weights-11
layer-12
layer_with_weights-12
layer-13
layer_with_weights-13
layer-14
	optimizer

signatures
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
?
depthwise_kernel
pointwise_kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?
axis
	 gamma
!beta
"moving_mean
#moving_variance
#$_self_saveable_object_factories
%	variables
&trainable_variables
'regularization_losses
(	keras_api
?
)depthwise_kernel
*pointwise_kernel
+bias
#,_self_saveable_object_factories
-	variables
.trainable_variables
/regularization_losses
0	keras_api
?
1axis
	2gamma
3beta
4moving_mean
5moving_variance
#6_self_saveable_object_factories
7	variables
8trainable_variables
9regularization_losses
:	keras_api
?
;depthwise_kernel
<pointwise_kernel
=bias
#>_self_saveable_object_factories
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
?
Caxis
	Dgamma
Ebeta
Fmoving_mean
Gmoving_variance
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
?
Mdepthwise_kernel
Npointwise_kernel
Obias
#P_self_saveable_object_factories
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
?
Uaxis
	Vgamma
Wbeta
Xmoving_mean
Ymoving_variance
#Z_self_saveable_object_factories
[	variables
\trainable_variables
]regularization_losses
^	keras_api
?
_depthwise_kernel
`pointwise_kernel
abias
#b_self_saveable_object_factories
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
?
gaxis
	hgamma
ibeta
jmoving_mean
kmoving_variance
#l_self_saveable_object_factories
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
w
#q_self_saveable_object_factories
r	variables
strainable_variables
tregularization_losses
u	keras_api
?

vkernel
wbias
#x_self_saveable_object_factories
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
?

}kernel
~bias
#_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?iter
?beta_1
?beta_2

?decay
?learning_ratem?m?m? m?!m?)m?*m?+m?2m?3m?;m?<m?=m?Dm?Em?Mm?Nm?Om?Vm?Wm?_m?`m?am?hm?im?vm?wm?}m?~m?	?m?	?m?	?m?	?m?v?v?v? v?!v?)v?*v?+v?2v?3v?;v?<v?=v?Dv?Ev?Mv?Nv?Ov?Vv?Wv?_v?`v?av?hv?iv?vv?wv?}v?~v?	?v?	?v?	?v?	?v?
 
 
?
0
1
2
 3
!4
)5
*6
+7
28
39
;10
<11
=12
D13
E14
M15
N16
O17
V18
W19
_20
`21
a22
h23
i24
v25
w26
}27
~28
?29
?30
?31
?32
?
0
1
2
 3
!4
"5
#6
)7
*8
+9
210
311
412
513
;14
<15
=16
D17
E18
F19
G20
M21
N22
O23
V24
W25
X26
Y27
_28
`29
a30
h31
i32
j33
k34
v35
w36
}37
~38
?39
?40
?41
?42
 
?
?layer_metrics
trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
	variables
?layers
regularization_losses
zx
VARIABLE_VALUE$separable_conv2d_49/depthwise_kernel@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE$separable_conv2d_49/pointwise_kernel@layer_with_weights-0/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEseparable_conv2d_49/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2

0
1
2
 
?
?layer_metrics
	variables
trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_55/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_55/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_55/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_55/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

 0
!1
"2
#3

 0
!1
 
?
?layer_metrics
%	variables
&trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
'regularization_losses
zx
VARIABLE_VALUE$separable_conv2d_50/depthwise_kernel@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE$separable_conv2d_50/pointwise_kernel@layer_with_weights-2/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEseparable_conv2d_50/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

)0
*1
+2

)0
*1
+2
 
?
?layer_metrics
-	variables
.trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
/regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_56/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_56/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_56/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_56/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

20
31
42
53

20
31
 
?
?layer_metrics
7	variables
8trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
9regularization_losses
zx
VARIABLE_VALUE$separable_conv2d_51/depthwise_kernel@layer_with_weights-4/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE$separable_conv2d_51/pointwise_kernel@layer_with_weights-4/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEseparable_conv2d_51/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

;0
<1
=2

;0
<1
=2
 
?
?layer_metrics
?	variables
@trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
Aregularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_57/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_57/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_57/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_57/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

D0
E1
F2
G3

D0
E1
 
?
?layer_metrics
I	variables
Jtrainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
Kregularization_losses
zx
VARIABLE_VALUE$separable_conv2d_52/depthwise_kernel@layer_with_weights-6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE$separable_conv2d_52/pointwise_kernel@layer_with_weights-6/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEseparable_conv2d_52/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

M0
N1
O2

M0
N1
O2
 
?
?layer_metrics
Q	variables
Rtrainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
Sregularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_58/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_58/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_58/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_58/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

V0
W1
X2
Y3

V0
W1
 
?
?layer_metrics
[	variables
\trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
]regularization_losses
zx
VARIABLE_VALUE$separable_conv2d_53/depthwise_kernel@layer_with_weights-8/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE$separable_conv2d_53/pointwise_kernel@layer_with_weights-8/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEseparable_conv2d_53/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

_0
`1
a2

_0
`1
a2
 
?
?layer_metrics
c	variables
dtrainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
eregularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_59/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_59/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_59/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_59/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

h0
i1
j2
k3

h0
i1
 
?
?layer_metrics
m	variables
ntrainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
oregularization_losses
 
 
 
 
?
?layer_metrics
r	variables
strainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
tregularization_losses
\Z
VARIABLE_VALUEdense_37/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_37/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 

v0
w1

v0
w1
 
?
?layer_metrics
y	variables
ztrainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
{regularization_losses
\Z
VARIABLE_VALUEdense_38/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_38/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE
 

}0
~1

}0
~1
 
?
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
?regularization_losses
\Z
VARIABLE_VALUEdense_39/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_39/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?0
?1
 
?
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
?regularization_losses
\Z
VARIABLE_VALUEdense_40/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_40/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?0
?1
 
?
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
?regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
F
"0
#1
42
53
F4
G5
X6
Y7
j8
k9

?0
?1
 
n
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
 
 
 
 
 
 

"0
#1
 
 
 
 
 
 
 
 
 

40
51
 
 
 
 
 
 
 
 
 

F0
G1
 
 
 
 
 
 
 
 
 

X0
Y1
 
 
 
 
 
 
 
 
 

j0
k1
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
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUE+Adam/separable_conv2d_49/depthwise_kernel/m\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_49/pointwise_kernel/m\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/separable_conv2d_49/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_55/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_55/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_50/depthwise_kernel/m\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_50/pointwise_kernel/m\layer_with_weights-2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/separable_conv2d_50/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_56/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_56/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_51/depthwise_kernel/m\layer_with_weights-4/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_51/pointwise_kernel/m\layer_with_weights-4/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/separable_conv2d_51/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_57/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_57/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_52/depthwise_kernel/m\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_52/pointwise_kernel/m\layer_with_weights-6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/separable_conv2d_52/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_58/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_58/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_53/depthwise_kernel/m\layer_with_weights-8/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_53/pointwise_kernel/m\layer_with_weights-8/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/separable_conv2d_53/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_59/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_59/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_37/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_37/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_38/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_38/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_39/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_39/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_40/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_40/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_49/depthwise_kernel/v\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_49/pointwise_kernel/v\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/separable_conv2d_49/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_55/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_55/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_50/depthwise_kernel/v\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_50/pointwise_kernel/v\layer_with_weights-2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/separable_conv2d_50/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_56/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_56/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_51/depthwise_kernel/v\layer_with_weights-4/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_51/pointwise_kernel/v\layer_with_weights-4/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/separable_conv2d_51/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_57/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_57/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_52/depthwise_kernel/v\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_52/pointwise_kernel/v\layer_with_weights-6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/separable_conv2d_52/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_58/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_58/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_53/depthwise_kernel/v\layer_with_weights-8/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/separable_conv2d_53/pointwise_kernel/v\layer_with_weights-8/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/separable_conv2d_53/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_59/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_59/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_37/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_37/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_38/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_38/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_39/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_39/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_40/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_40/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
)serving_default_separable_conv2d_49_inputPlaceholder*/
_output_shapes
:?????????||*
dtype0*$
shape:?????????||
?
StatefulPartitionedCallStatefulPartitionedCall)serving_default_separable_conv2d_49_input$separable_conv2d_49/depthwise_kernel$separable_conv2d_49/pointwise_kernelseparable_conv2d_49/biasbatch_normalization_55/gammabatch_normalization_55/beta"batch_normalization_55/moving_mean&batch_normalization_55/moving_variance$separable_conv2d_50/depthwise_kernel$separable_conv2d_50/pointwise_kernelseparable_conv2d_50/biasbatch_normalization_56/gammabatch_normalization_56/beta"batch_normalization_56/moving_mean&batch_normalization_56/moving_variance$separable_conv2d_51/depthwise_kernel$separable_conv2d_51/pointwise_kernelseparable_conv2d_51/biasbatch_normalization_57/gammabatch_normalization_57/beta"batch_normalization_57/moving_mean&batch_normalization_57/moving_variance$separable_conv2d_52/depthwise_kernel$separable_conv2d_52/pointwise_kernelseparable_conv2d_52/biasbatch_normalization_58/gammabatch_normalization_58/beta"batch_normalization_58/moving_mean&batch_normalization_58/moving_variance$separable_conv2d_53/depthwise_kernel$separable_conv2d_53/pointwise_kernelseparable_conv2d_53/biasbatch_normalization_59/gammabatch_normalization_59/beta"batch_normalization_59/moving_mean&batch_normalization_59/moving_variancedense_37/kerneldense_37/biasdense_38/kerneldense_38/biasdense_39/kerneldense_39/biasdense_40/kerneldense_40/bias*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*M
_read_only_resource_inputs/
-+	
 !"#$%&'()*+*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_171025
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?2
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename8separable_conv2d_49/depthwise_kernel/Read/ReadVariableOp8separable_conv2d_49/pointwise_kernel/Read/ReadVariableOp,separable_conv2d_49/bias/Read/ReadVariableOp0batch_normalization_55/gamma/Read/ReadVariableOp/batch_normalization_55/beta/Read/ReadVariableOp6batch_normalization_55/moving_mean/Read/ReadVariableOp:batch_normalization_55/moving_variance/Read/ReadVariableOp8separable_conv2d_50/depthwise_kernel/Read/ReadVariableOp8separable_conv2d_50/pointwise_kernel/Read/ReadVariableOp,separable_conv2d_50/bias/Read/ReadVariableOp0batch_normalization_56/gamma/Read/ReadVariableOp/batch_normalization_56/beta/Read/ReadVariableOp6batch_normalization_56/moving_mean/Read/ReadVariableOp:batch_normalization_56/moving_variance/Read/ReadVariableOp8separable_conv2d_51/depthwise_kernel/Read/ReadVariableOp8separable_conv2d_51/pointwise_kernel/Read/ReadVariableOp,separable_conv2d_51/bias/Read/ReadVariableOp0batch_normalization_57/gamma/Read/ReadVariableOp/batch_normalization_57/beta/Read/ReadVariableOp6batch_normalization_57/moving_mean/Read/ReadVariableOp:batch_normalization_57/moving_variance/Read/ReadVariableOp8separable_conv2d_52/depthwise_kernel/Read/ReadVariableOp8separable_conv2d_52/pointwise_kernel/Read/ReadVariableOp,separable_conv2d_52/bias/Read/ReadVariableOp0batch_normalization_58/gamma/Read/ReadVariableOp/batch_normalization_58/beta/Read/ReadVariableOp6batch_normalization_58/moving_mean/Read/ReadVariableOp:batch_normalization_58/moving_variance/Read/ReadVariableOp8separable_conv2d_53/depthwise_kernel/Read/ReadVariableOp8separable_conv2d_53/pointwise_kernel/Read/ReadVariableOp,separable_conv2d_53/bias/Read/ReadVariableOp0batch_normalization_59/gamma/Read/ReadVariableOp/batch_normalization_59/beta/Read/ReadVariableOp6batch_normalization_59/moving_mean/Read/ReadVariableOp:batch_normalization_59/moving_variance/Read/ReadVariableOp#dense_37/kernel/Read/ReadVariableOp!dense_37/bias/Read/ReadVariableOp#dense_38/kernel/Read/ReadVariableOp!dense_38/bias/Read/ReadVariableOp#dense_39/kernel/Read/ReadVariableOp!dense_39/bias/Read/ReadVariableOp#dense_40/kernel/Read/ReadVariableOp!dense_40/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp?Adam/separable_conv2d_49/depthwise_kernel/m/Read/ReadVariableOp?Adam/separable_conv2d_49/pointwise_kernel/m/Read/ReadVariableOp3Adam/separable_conv2d_49/bias/m/Read/ReadVariableOp7Adam/batch_normalization_55/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_55/beta/m/Read/ReadVariableOp?Adam/separable_conv2d_50/depthwise_kernel/m/Read/ReadVariableOp?Adam/separable_conv2d_50/pointwise_kernel/m/Read/ReadVariableOp3Adam/separable_conv2d_50/bias/m/Read/ReadVariableOp7Adam/batch_normalization_56/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_56/beta/m/Read/ReadVariableOp?Adam/separable_conv2d_51/depthwise_kernel/m/Read/ReadVariableOp?Adam/separable_conv2d_51/pointwise_kernel/m/Read/ReadVariableOp3Adam/separable_conv2d_51/bias/m/Read/ReadVariableOp7Adam/batch_normalization_57/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_57/beta/m/Read/ReadVariableOp?Adam/separable_conv2d_52/depthwise_kernel/m/Read/ReadVariableOp?Adam/separable_conv2d_52/pointwise_kernel/m/Read/ReadVariableOp3Adam/separable_conv2d_52/bias/m/Read/ReadVariableOp7Adam/batch_normalization_58/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_58/beta/m/Read/ReadVariableOp?Adam/separable_conv2d_53/depthwise_kernel/m/Read/ReadVariableOp?Adam/separable_conv2d_53/pointwise_kernel/m/Read/ReadVariableOp3Adam/separable_conv2d_53/bias/m/Read/ReadVariableOp7Adam/batch_normalization_59/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_59/beta/m/Read/ReadVariableOp*Adam/dense_37/kernel/m/Read/ReadVariableOp(Adam/dense_37/bias/m/Read/ReadVariableOp*Adam/dense_38/kernel/m/Read/ReadVariableOp(Adam/dense_38/bias/m/Read/ReadVariableOp*Adam/dense_39/kernel/m/Read/ReadVariableOp(Adam/dense_39/bias/m/Read/ReadVariableOp*Adam/dense_40/kernel/m/Read/ReadVariableOp(Adam/dense_40/bias/m/Read/ReadVariableOp?Adam/separable_conv2d_49/depthwise_kernel/v/Read/ReadVariableOp?Adam/separable_conv2d_49/pointwise_kernel/v/Read/ReadVariableOp3Adam/separable_conv2d_49/bias/v/Read/ReadVariableOp7Adam/batch_normalization_55/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_55/beta/v/Read/ReadVariableOp?Adam/separable_conv2d_50/depthwise_kernel/v/Read/ReadVariableOp?Adam/separable_conv2d_50/pointwise_kernel/v/Read/ReadVariableOp3Adam/separable_conv2d_50/bias/v/Read/ReadVariableOp7Adam/batch_normalization_56/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_56/beta/v/Read/ReadVariableOp?Adam/separable_conv2d_51/depthwise_kernel/v/Read/ReadVariableOp?Adam/separable_conv2d_51/pointwise_kernel/v/Read/ReadVariableOp3Adam/separable_conv2d_51/bias/v/Read/ReadVariableOp7Adam/batch_normalization_57/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_57/beta/v/Read/ReadVariableOp?Adam/separable_conv2d_52/depthwise_kernel/v/Read/ReadVariableOp?Adam/separable_conv2d_52/pointwise_kernel/v/Read/ReadVariableOp3Adam/separable_conv2d_52/bias/v/Read/ReadVariableOp7Adam/batch_normalization_58/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_58/beta/v/Read/ReadVariableOp?Adam/separable_conv2d_53/depthwise_kernel/v/Read/ReadVariableOp?Adam/separable_conv2d_53/pointwise_kernel/v/Read/ReadVariableOp3Adam/separable_conv2d_53/bias/v/Read/ReadVariableOp7Adam/batch_normalization_59/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_59/beta/v/Read/ReadVariableOp*Adam/dense_37/kernel/v/Read/ReadVariableOp(Adam/dense_37/bias/v/Read/ReadVariableOp*Adam/dense_38/kernel/v/Read/ReadVariableOp(Adam/dense_38/bias/v/Read/ReadVariableOp*Adam/dense_39/kernel/v/Read/ReadVariableOp(Adam/dense_39/bias/v/Read/ReadVariableOp*Adam/dense_40/kernel/v/Read/ReadVariableOp(Adam/dense_40/bias/v/Read/ReadVariableOpConst*?
Tin|
z2x	*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_172653
? 
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename$separable_conv2d_49/depthwise_kernel$separable_conv2d_49/pointwise_kernelseparable_conv2d_49/biasbatch_normalization_55/gammabatch_normalization_55/beta"batch_normalization_55/moving_mean&batch_normalization_55/moving_variance$separable_conv2d_50/depthwise_kernel$separable_conv2d_50/pointwise_kernelseparable_conv2d_50/biasbatch_normalization_56/gammabatch_normalization_56/beta"batch_normalization_56/moving_mean&batch_normalization_56/moving_variance$separable_conv2d_51/depthwise_kernel$separable_conv2d_51/pointwise_kernelseparable_conv2d_51/biasbatch_normalization_57/gammabatch_normalization_57/beta"batch_normalization_57/moving_mean&batch_normalization_57/moving_variance$separable_conv2d_52/depthwise_kernel$separable_conv2d_52/pointwise_kernelseparable_conv2d_52/biasbatch_normalization_58/gammabatch_normalization_58/beta"batch_normalization_58/moving_mean&batch_normalization_58/moving_variance$separable_conv2d_53/depthwise_kernel$separable_conv2d_53/pointwise_kernelseparable_conv2d_53/biasbatch_normalization_59/gammabatch_normalization_59/beta"batch_normalization_59/moving_mean&batch_normalization_59/moving_variancedense_37/kerneldense_37/biasdense_38/kerneldense_38/biasdense_39/kerneldense_39/biasdense_40/kerneldense_40/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1+Adam/separable_conv2d_49/depthwise_kernel/m+Adam/separable_conv2d_49/pointwise_kernel/mAdam/separable_conv2d_49/bias/m#Adam/batch_normalization_55/gamma/m"Adam/batch_normalization_55/beta/m+Adam/separable_conv2d_50/depthwise_kernel/m+Adam/separable_conv2d_50/pointwise_kernel/mAdam/separable_conv2d_50/bias/m#Adam/batch_normalization_56/gamma/m"Adam/batch_normalization_56/beta/m+Adam/separable_conv2d_51/depthwise_kernel/m+Adam/separable_conv2d_51/pointwise_kernel/mAdam/separable_conv2d_51/bias/m#Adam/batch_normalization_57/gamma/m"Adam/batch_normalization_57/beta/m+Adam/separable_conv2d_52/depthwise_kernel/m+Adam/separable_conv2d_52/pointwise_kernel/mAdam/separable_conv2d_52/bias/m#Adam/batch_normalization_58/gamma/m"Adam/batch_normalization_58/beta/m+Adam/separable_conv2d_53/depthwise_kernel/m+Adam/separable_conv2d_53/pointwise_kernel/mAdam/separable_conv2d_53/bias/m#Adam/batch_normalization_59/gamma/m"Adam/batch_normalization_59/beta/mAdam/dense_37/kernel/mAdam/dense_37/bias/mAdam/dense_38/kernel/mAdam/dense_38/bias/mAdam/dense_39/kernel/mAdam/dense_39/bias/mAdam/dense_40/kernel/mAdam/dense_40/bias/m+Adam/separable_conv2d_49/depthwise_kernel/v+Adam/separable_conv2d_49/pointwise_kernel/vAdam/separable_conv2d_49/bias/v#Adam/batch_normalization_55/gamma/v"Adam/batch_normalization_55/beta/v+Adam/separable_conv2d_50/depthwise_kernel/v+Adam/separable_conv2d_50/pointwise_kernel/vAdam/separable_conv2d_50/bias/v#Adam/batch_normalization_56/gamma/v"Adam/batch_normalization_56/beta/v+Adam/separable_conv2d_51/depthwise_kernel/v+Adam/separable_conv2d_51/pointwise_kernel/vAdam/separable_conv2d_51/bias/v#Adam/batch_normalization_57/gamma/v"Adam/batch_normalization_57/beta/v+Adam/separable_conv2d_52/depthwise_kernel/v+Adam/separable_conv2d_52/pointwise_kernel/vAdam/separable_conv2d_52/bias/v#Adam/batch_normalization_58/gamma/v"Adam/batch_normalization_58/beta/v+Adam/separable_conv2d_53/depthwise_kernel/v+Adam/separable_conv2d_53/pointwise_kernel/vAdam/separable_conv2d_53/bias/v#Adam/batch_normalization_59/gamma/v"Adam/batch_normalization_59/beta/vAdam/dense_37/kernel/vAdam/dense_37/bias/vAdam/dense_38/kernel/vAdam/dense_38/bias/vAdam/dense_39/kernel/vAdam/dense_39/bias/vAdam/dense_40/kernel/vAdam/dense_40/bias/v*?
Tin{
y2w*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_173017??
?
?
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_169929

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????>>:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????>>2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????>>::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????>>
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_58_layer_call_fn_171993

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1701872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_57_layer_call_fn_171865

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????0*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1696222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????02

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????0::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????0
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_169591

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????0:0:0:0:0:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????02

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????0::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????0
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_171885

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????0:0:0:0:0:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????0::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_171693

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:$*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:$*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:$*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:$*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????$:$:$:$:$:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????$2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????$::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????$
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_171583

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????>>:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????>>2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????>>::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????>>
 
_user_specified_nameinputs
??
?:
__inference__traced_save_172653
file_prefixC
?savev2_separable_conv2d_49_depthwise_kernel_read_readvariableopC
?savev2_separable_conv2d_49_pointwise_kernel_read_readvariableop7
3savev2_separable_conv2d_49_bias_read_readvariableop;
7savev2_batch_normalization_55_gamma_read_readvariableop:
6savev2_batch_normalization_55_beta_read_readvariableopA
=savev2_batch_normalization_55_moving_mean_read_readvariableopE
Asavev2_batch_normalization_55_moving_variance_read_readvariableopC
?savev2_separable_conv2d_50_depthwise_kernel_read_readvariableopC
?savev2_separable_conv2d_50_pointwise_kernel_read_readvariableop7
3savev2_separable_conv2d_50_bias_read_readvariableop;
7savev2_batch_normalization_56_gamma_read_readvariableop:
6savev2_batch_normalization_56_beta_read_readvariableopA
=savev2_batch_normalization_56_moving_mean_read_readvariableopE
Asavev2_batch_normalization_56_moving_variance_read_readvariableopC
?savev2_separable_conv2d_51_depthwise_kernel_read_readvariableopC
?savev2_separable_conv2d_51_pointwise_kernel_read_readvariableop7
3savev2_separable_conv2d_51_bias_read_readvariableop;
7savev2_batch_normalization_57_gamma_read_readvariableop:
6savev2_batch_normalization_57_beta_read_readvariableopA
=savev2_batch_normalization_57_moving_mean_read_readvariableopE
Asavev2_batch_normalization_57_moving_variance_read_readvariableopC
?savev2_separable_conv2d_52_depthwise_kernel_read_readvariableopC
?savev2_separable_conv2d_52_pointwise_kernel_read_readvariableop7
3savev2_separable_conv2d_52_bias_read_readvariableop;
7savev2_batch_normalization_58_gamma_read_readvariableop:
6savev2_batch_normalization_58_beta_read_readvariableopA
=savev2_batch_normalization_58_moving_mean_read_readvariableopE
Asavev2_batch_normalization_58_moving_variance_read_readvariableopC
?savev2_separable_conv2d_53_depthwise_kernel_read_readvariableopC
?savev2_separable_conv2d_53_pointwise_kernel_read_readvariableop7
3savev2_separable_conv2d_53_bias_read_readvariableop;
7savev2_batch_normalization_59_gamma_read_readvariableop:
6savev2_batch_normalization_59_beta_read_readvariableopA
=savev2_batch_normalization_59_moving_mean_read_readvariableopE
Asavev2_batch_normalization_59_moving_variance_read_readvariableop.
*savev2_dense_37_kernel_read_readvariableop,
(savev2_dense_37_bias_read_readvariableop.
*savev2_dense_38_kernel_read_readvariableop,
(savev2_dense_38_bias_read_readvariableop.
*savev2_dense_39_kernel_read_readvariableop,
(savev2_dense_39_bias_read_readvariableop.
*savev2_dense_40_kernel_read_readvariableop,
(savev2_dense_40_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopJ
Fsavev2_adam_separable_conv2d_49_depthwise_kernel_m_read_readvariableopJ
Fsavev2_adam_separable_conv2d_49_pointwise_kernel_m_read_readvariableop>
:savev2_adam_separable_conv2d_49_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_55_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_55_beta_m_read_readvariableopJ
Fsavev2_adam_separable_conv2d_50_depthwise_kernel_m_read_readvariableopJ
Fsavev2_adam_separable_conv2d_50_pointwise_kernel_m_read_readvariableop>
:savev2_adam_separable_conv2d_50_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_56_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_56_beta_m_read_readvariableopJ
Fsavev2_adam_separable_conv2d_51_depthwise_kernel_m_read_readvariableopJ
Fsavev2_adam_separable_conv2d_51_pointwise_kernel_m_read_readvariableop>
:savev2_adam_separable_conv2d_51_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_57_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_57_beta_m_read_readvariableopJ
Fsavev2_adam_separable_conv2d_52_depthwise_kernel_m_read_readvariableopJ
Fsavev2_adam_separable_conv2d_52_pointwise_kernel_m_read_readvariableop>
:savev2_adam_separable_conv2d_52_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_58_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_58_beta_m_read_readvariableopJ
Fsavev2_adam_separable_conv2d_53_depthwise_kernel_m_read_readvariableopJ
Fsavev2_adam_separable_conv2d_53_pointwise_kernel_m_read_readvariableop>
:savev2_adam_separable_conv2d_53_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_59_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_59_beta_m_read_readvariableop5
1savev2_adam_dense_37_kernel_m_read_readvariableop3
/savev2_adam_dense_37_bias_m_read_readvariableop5
1savev2_adam_dense_38_kernel_m_read_readvariableop3
/savev2_adam_dense_38_bias_m_read_readvariableop5
1savev2_adam_dense_39_kernel_m_read_readvariableop3
/savev2_adam_dense_39_bias_m_read_readvariableop5
1savev2_adam_dense_40_kernel_m_read_readvariableop3
/savev2_adam_dense_40_bias_m_read_readvariableopJ
Fsavev2_adam_separable_conv2d_49_depthwise_kernel_v_read_readvariableopJ
Fsavev2_adam_separable_conv2d_49_pointwise_kernel_v_read_readvariableop>
:savev2_adam_separable_conv2d_49_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_55_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_55_beta_v_read_readvariableopJ
Fsavev2_adam_separable_conv2d_50_depthwise_kernel_v_read_readvariableopJ
Fsavev2_adam_separable_conv2d_50_pointwise_kernel_v_read_readvariableop>
:savev2_adam_separable_conv2d_50_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_56_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_56_beta_v_read_readvariableopJ
Fsavev2_adam_separable_conv2d_51_depthwise_kernel_v_read_readvariableopJ
Fsavev2_adam_separable_conv2d_51_pointwise_kernel_v_read_readvariableop>
:savev2_adam_separable_conv2d_51_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_57_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_57_beta_v_read_readvariableopJ
Fsavev2_adam_separable_conv2d_52_depthwise_kernel_v_read_readvariableopJ
Fsavev2_adam_separable_conv2d_52_pointwise_kernel_v_read_readvariableop>
:savev2_adam_separable_conv2d_52_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_58_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_58_beta_v_read_readvariableopJ
Fsavev2_adam_separable_conv2d_53_depthwise_kernel_v_read_readvariableopJ
Fsavev2_adam_separable_conv2d_53_pointwise_kernel_v_read_readvariableop>
:savev2_adam_separable_conv2d_53_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_59_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_59_beta_v_read_readvariableop5
1savev2_adam_dense_37_kernel_v_read_readvariableop3
/savev2_adam_dense_37_bias_v_read_readvariableop5
1savev2_adam_dense_38_kernel_v_read_readvariableop3
/savev2_adam_dense_38_bias_v_read_readvariableop5
1savev2_adam_dense_39_kernel_v_read_readvariableop3
/savev2_adam_dense_39_bias_v_read_readvariableop5
1savev2_adam_dense_40_kernel_v_read_readvariableop3
/savev2_adam_dense_40_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?E
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:w*
dtype0*?D
value?DB?DwB@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-4/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-4/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-6/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-8/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-8/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-4/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-4/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-8/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-8/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-4/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-4/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-8/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-8/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:w*
dtype0*?
value?B?wB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?8
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0?savev2_separable_conv2d_49_depthwise_kernel_read_readvariableop?savev2_separable_conv2d_49_pointwise_kernel_read_readvariableop3savev2_separable_conv2d_49_bias_read_readvariableop7savev2_batch_normalization_55_gamma_read_readvariableop6savev2_batch_normalization_55_beta_read_readvariableop=savev2_batch_normalization_55_moving_mean_read_readvariableopAsavev2_batch_normalization_55_moving_variance_read_readvariableop?savev2_separable_conv2d_50_depthwise_kernel_read_readvariableop?savev2_separable_conv2d_50_pointwise_kernel_read_readvariableop3savev2_separable_conv2d_50_bias_read_readvariableop7savev2_batch_normalization_56_gamma_read_readvariableop6savev2_batch_normalization_56_beta_read_readvariableop=savev2_batch_normalization_56_moving_mean_read_readvariableopAsavev2_batch_normalization_56_moving_variance_read_readvariableop?savev2_separable_conv2d_51_depthwise_kernel_read_readvariableop?savev2_separable_conv2d_51_pointwise_kernel_read_readvariableop3savev2_separable_conv2d_51_bias_read_readvariableop7savev2_batch_normalization_57_gamma_read_readvariableop6savev2_batch_normalization_57_beta_read_readvariableop=savev2_batch_normalization_57_moving_mean_read_readvariableopAsavev2_batch_normalization_57_moving_variance_read_readvariableop?savev2_separable_conv2d_52_depthwise_kernel_read_readvariableop?savev2_separable_conv2d_52_pointwise_kernel_read_readvariableop3savev2_separable_conv2d_52_bias_read_readvariableop7savev2_batch_normalization_58_gamma_read_readvariableop6savev2_batch_normalization_58_beta_read_readvariableop=savev2_batch_normalization_58_moving_mean_read_readvariableopAsavev2_batch_normalization_58_moving_variance_read_readvariableop?savev2_separable_conv2d_53_depthwise_kernel_read_readvariableop?savev2_separable_conv2d_53_pointwise_kernel_read_readvariableop3savev2_separable_conv2d_53_bias_read_readvariableop7savev2_batch_normalization_59_gamma_read_readvariableop6savev2_batch_normalization_59_beta_read_readvariableop=savev2_batch_normalization_59_moving_mean_read_readvariableopAsavev2_batch_normalization_59_moving_variance_read_readvariableop*savev2_dense_37_kernel_read_readvariableop(savev2_dense_37_bias_read_readvariableop*savev2_dense_38_kernel_read_readvariableop(savev2_dense_38_bias_read_readvariableop*savev2_dense_39_kernel_read_readvariableop(savev2_dense_39_bias_read_readvariableop*savev2_dense_40_kernel_read_readvariableop(savev2_dense_40_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopFsavev2_adam_separable_conv2d_49_depthwise_kernel_m_read_readvariableopFsavev2_adam_separable_conv2d_49_pointwise_kernel_m_read_readvariableop:savev2_adam_separable_conv2d_49_bias_m_read_readvariableop>savev2_adam_batch_normalization_55_gamma_m_read_readvariableop=savev2_adam_batch_normalization_55_beta_m_read_readvariableopFsavev2_adam_separable_conv2d_50_depthwise_kernel_m_read_readvariableopFsavev2_adam_separable_conv2d_50_pointwise_kernel_m_read_readvariableop:savev2_adam_separable_conv2d_50_bias_m_read_readvariableop>savev2_adam_batch_normalization_56_gamma_m_read_readvariableop=savev2_adam_batch_normalization_56_beta_m_read_readvariableopFsavev2_adam_separable_conv2d_51_depthwise_kernel_m_read_readvariableopFsavev2_adam_separable_conv2d_51_pointwise_kernel_m_read_readvariableop:savev2_adam_separable_conv2d_51_bias_m_read_readvariableop>savev2_adam_batch_normalization_57_gamma_m_read_readvariableop=savev2_adam_batch_normalization_57_beta_m_read_readvariableopFsavev2_adam_separable_conv2d_52_depthwise_kernel_m_read_readvariableopFsavev2_adam_separable_conv2d_52_pointwise_kernel_m_read_readvariableop:savev2_adam_separable_conv2d_52_bias_m_read_readvariableop>savev2_adam_batch_normalization_58_gamma_m_read_readvariableop=savev2_adam_batch_normalization_58_beta_m_read_readvariableopFsavev2_adam_separable_conv2d_53_depthwise_kernel_m_read_readvariableopFsavev2_adam_separable_conv2d_53_pointwise_kernel_m_read_readvariableop:savev2_adam_separable_conv2d_53_bias_m_read_readvariableop>savev2_adam_batch_normalization_59_gamma_m_read_readvariableop=savev2_adam_batch_normalization_59_beta_m_read_readvariableop1savev2_adam_dense_37_kernel_m_read_readvariableop/savev2_adam_dense_37_bias_m_read_readvariableop1savev2_adam_dense_38_kernel_m_read_readvariableop/savev2_adam_dense_38_bias_m_read_readvariableop1savev2_adam_dense_39_kernel_m_read_readvariableop/savev2_adam_dense_39_bias_m_read_readvariableop1savev2_adam_dense_40_kernel_m_read_readvariableop/savev2_adam_dense_40_bias_m_read_readvariableopFsavev2_adam_separable_conv2d_49_depthwise_kernel_v_read_readvariableopFsavev2_adam_separable_conv2d_49_pointwise_kernel_v_read_readvariableop:savev2_adam_separable_conv2d_49_bias_v_read_readvariableop>savev2_adam_batch_normalization_55_gamma_v_read_readvariableop=savev2_adam_batch_normalization_55_beta_v_read_readvariableopFsavev2_adam_separable_conv2d_50_depthwise_kernel_v_read_readvariableopFsavev2_adam_separable_conv2d_50_pointwise_kernel_v_read_readvariableop:savev2_adam_separable_conv2d_50_bias_v_read_readvariableop>savev2_adam_batch_normalization_56_gamma_v_read_readvariableop=savev2_adam_batch_normalization_56_beta_v_read_readvariableopFsavev2_adam_separable_conv2d_51_depthwise_kernel_v_read_readvariableopFsavev2_adam_separable_conv2d_51_pointwise_kernel_v_read_readvariableop:savev2_adam_separable_conv2d_51_bias_v_read_readvariableop>savev2_adam_batch_normalization_57_gamma_v_read_readvariableop=savev2_adam_batch_normalization_57_beta_v_read_readvariableopFsavev2_adam_separable_conv2d_52_depthwise_kernel_v_read_readvariableopFsavev2_adam_separable_conv2d_52_pointwise_kernel_v_read_readvariableop:savev2_adam_separable_conv2d_52_bias_v_read_readvariableop>savev2_adam_batch_normalization_58_gamma_v_read_readvariableop=savev2_adam_batch_normalization_58_beta_v_read_readvariableopFsavev2_adam_separable_conv2d_53_depthwise_kernel_v_read_readvariableopFsavev2_adam_separable_conv2d_53_pointwise_kernel_v_read_readvariableop:savev2_adam_separable_conv2d_53_bias_v_read_readvariableop>savev2_adam_batch_normalization_59_gamma_v_read_readvariableop=savev2_adam_batch_normalization_59_beta_v_read_readvariableop1savev2_adam_dense_37_kernel_v_read_readvariableop/savev2_adam_dense_37_bias_v_read_readvariableop1savev2_adam_dense_38_kernel_v_read_readvariableop/savev2_adam_dense_38_bias_v_read_readvariableop1savev2_adam_dense_39_kernel_v_read_readvariableop/savev2_adam_dense_39_bias_v_read_readvariableop1savev2_adam_dense_40_kernel_v_read_readvariableop/savev2_adam_dense_40_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes{
y2w	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::::::$:$:$:$:$:$:$:$0:0:0:0:0:0:0:0@:@:@:@:@:@:@:@@:@:@:@:@:@:
??d:d:d2:2:2
:
:
:: : : : : : : : : :::::::$:$:$:$:$:$0:0:0:0:0:0@:@:@:@:@:@@:@:@:@:
??d:d:d2:2:2
:
:
::::::::$:$:$:$:$:$0:0:0:0:0:0@:@:@:@:@:@@:@:@:@:
??d:d:d2:2:2
:
:
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
::,	(
&
_output_shapes
:$: 


_output_shapes
:$: 

_output_shapes
:$: 

_output_shapes
:$: 

_output_shapes
:$: 

_output_shapes
:$:,(
&
_output_shapes
:$:,(
&
_output_shapes
:$0: 

_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0:,(
&
_output_shapes
:0:,(
&
_output_shapes
:0@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:  

_output_shapes
:@: !

_output_shapes
:@: "

_output_shapes
:@: #

_output_shapes
:@:&$"
 
_output_shapes
:
??d: %

_output_shapes
:d:$& 

_output_shapes

:d2: '

_output_shapes
:2:$( 

_output_shapes

:2
: )

_output_shapes
:
:$* 

_output_shapes

:
: +

_output_shapes
::,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :,5(
&
_output_shapes
::,6(
&
_output_shapes
:: 7

_output_shapes
:: 8

_output_shapes
:: 9

_output_shapes
::,:(
&
_output_shapes
::,;(
&
_output_shapes
:$: <

_output_shapes
:$: =

_output_shapes
:$: >

_output_shapes
:$:,?(
&
_output_shapes
:$:,@(
&
_output_shapes
:$0: A

_output_shapes
:0: B

_output_shapes
:0: C

_output_shapes
:0:,D(
&
_output_shapes
:0:,E(
&
_output_shapes
:0@: F

_output_shapes
:@: G

_output_shapes
:@: H

_output_shapes
:@:,I(
&
_output_shapes
:@:,J(
&
_output_shapes
:@@: K

_output_shapes
:@: L

_output_shapes
:@: M

_output_shapes
:@:&N"
 
_output_shapes
:
??d: O

_output_shapes
:d:$P 

_output_shapes

:d2: Q

_output_shapes
:2:$R 

_output_shapes

:2
: S

_output_shapes
:
:$T 

_output_shapes

:
: U

_output_shapes
::,V(
&
_output_shapes
::,W(
&
_output_shapes
:: X

_output_shapes
:: Y

_output_shapes
:: Z

_output_shapes
::,[(
&
_output_shapes
::,\(
&
_output_shapes
:$: ]

_output_shapes
:$: ^

_output_shapes
:$: _

_output_shapes
:$:,`(
&
_output_shapes
:$:,a(
&
_output_shapes
:$0: b

_output_shapes
:0: c

_output_shapes
:0: d

_output_shapes
:0:,e(
&
_output_shapes
:0:,f(
&
_output_shapes
:0@: g

_output_shapes
:@: h

_output_shapes
:@: i

_output_shapes
:@:,j(
&
_output_shapes
:@:,k(
&
_output_shapes
:@@: l

_output_shapes
:@: m

_output_shapes
:@: n

_output_shapes
:@:&o"
 
_output_shapes
:
??d: p

_output_shapes
:d:$q 

_output_shapes

:d2: r

_output_shapes
:2:$s 

_output_shapes

:2
: t

_output_shapes
:
:$u 

_output_shapes

:
: v

_output_shapes
::w

_output_shapes
: 
?
?
4__inference_separable_conv2d_53_layer_call_fn_169795

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_53_layer_call_and_return_conditional_losses_1697832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:+???????????????????????????@:::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_169857

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_171025
separable_conv2d_49_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallseparable_conv2d_49_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*M
_read_only_resource_inputs/
-+	
 !"#$%&'()*+*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_1692342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????||:::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
/
_output_shapes
:?????????||
3
_user_specified_nameseparable_conv2d_49_input
?	
?
D__inference_dense_38_layer_call_and_return_conditional_losses_170355

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????22
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_56_layer_call_fn_171801

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_1700272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????$::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
~
)__inference_dense_39_layer_call_fn_172256

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_1703822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????2::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
4__inference_separable_conv2d_50_layer_call_fn_169396

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????$*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_50_layer_call_and_return_conditional_losses_1693842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????$2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:+???????????????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
O__inference_separable_conv2d_50_layer_call_and_return_conditional_losses_169384

inputs,
(separable_conv2d_readvariableop_resource.
*separable_conv2d_readvariableop_1_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?separable_conv2d/ReadVariableOp?!separable_conv2d/ReadVariableOp_1?
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
separable_conv2d/ReadVariableOp?
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:$*
dtype02#
!separable_conv2d/ReadVariableOp_1?
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
separable_conv2d/Shape?
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rate?
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
2
separable_conv2d/depthwise?
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+???????????????????????????$*
paddingVALID*
strides
2
separable_conv2d?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????$2	
BiasAddo
EluEluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????$2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????$2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:+???????????????????????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_10_layer_call_fn_170924
separable_conv2d_49_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallseparable_conv2d_49_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*M
_read_only_resource_inputs/
-+	
 !"#$%&'()*+*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_1708352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????||:::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
/
_output_shapes
:?????????||
3
_user_specified_nameseparable_conv2d_49_input
?
?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_170027

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:$*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:$*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:$*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:$*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????$:$:$:$:$:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????$::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_55_layer_call_fn_171660

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_1693252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_37_layer_call_and_return_conditional_losses_170328

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?_
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_170426
separable_conv2d_49_input
separable_conv2d_49_169903
separable_conv2d_49_169905
separable_conv2d_49_169907!
batch_normalization_55_169974!
batch_normalization_55_169976!
batch_normalization_55_169978!
batch_normalization_55_169980
separable_conv2d_50_169983
separable_conv2d_50_169985
separable_conv2d_50_169987!
batch_normalization_56_170054!
batch_normalization_56_170056!
batch_normalization_56_170058!
batch_normalization_56_170060
separable_conv2d_51_170063
separable_conv2d_51_170065
separable_conv2d_51_170067!
batch_normalization_57_170134!
batch_normalization_57_170136!
batch_normalization_57_170138!
batch_normalization_57_170140
separable_conv2d_52_170143
separable_conv2d_52_170145
separable_conv2d_52_170147!
batch_normalization_58_170214!
batch_normalization_58_170216!
batch_normalization_58_170218!
batch_normalization_58_170220
separable_conv2d_53_170223
separable_conv2d_53_170225
separable_conv2d_53_170227!
batch_normalization_59_170294!
batch_normalization_59_170296!
batch_normalization_59_170298!
batch_normalization_59_170300
dense_37_170339
dense_37_170341
dense_38_170366
dense_38_170368
dense_39_170393
dense_39_170395
dense_40_170420
dense_40_170422
identity??.batch_normalization_55/StatefulPartitionedCall?.batch_normalization_56/StatefulPartitionedCall?.batch_normalization_57/StatefulPartitionedCall?.batch_normalization_58/StatefulPartitionedCall?.batch_normalization_59/StatefulPartitionedCall? dense_37/StatefulPartitionedCall? dense_38/StatefulPartitionedCall? dense_39/StatefulPartitionedCall? dense_40/StatefulPartitionedCall?+separable_conv2d_49/StatefulPartitionedCall?+separable_conv2d_50/StatefulPartitionedCall?+separable_conv2d_51/StatefulPartitionedCall?+separable_conv2d_52/StatefulPartitionedCall?+separable_conv2d_53/StatefulPartitionedCall?
+separable_conv2d_49/StatefulPartitionedCallStatefulPartitionedCallseparable_conv2d_49_inputseparable_conv2d_49_169903separable_conv2d_49_169905separable_conv2d_49_169907*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_49_layer_call_and_return_conditional_losses_1692512-
+separable_conv2d_49/StatefulPartitionedCall?
.batch_normalization_55/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_49/StatefulPartitionedCall:output:0batch_normalization_55_169974batch_normalization_55_169976batch_normalization_55_169978batch_normalization_55_169980*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_16992920
.batch_normalization_55/StatefulPartitionedCall?
+separable_conv2d_50/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_55/StatefulPartitionedCall:output:0separable_conv2d_50_169983separable_conv2d_50_169985separable_conv2d_50_169987*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_50_layer_call_and_return_conditional_losses_1693842-
+separable_conv2d_50/StatefulPartitionedCall?
.batch_normalization_56/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_50/StatefulPartitionedCall:output:0batch_normalization_56_170054batch_normalization_56_170056batch_normalization_56_170058batch_normalization_56_170060*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17000920
.batch_normalization_56/StatefulPartitionedCall?
+separable_conv2d_51/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_56/StatefulPartitionedCall:output:0separable_conv2d_51_170063separable_conv2d_51_170065separable_conv2d_51_170067*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_51_layer_call_and_return_conditional_losses_1695172-
+separable_conv2d_51/StatefulPartitionedCall?
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_51/StatefulPartitionedCall:output:0batch_normalization_57_170134batch_normalization_57_170136batch_normalization_57_170138batch_normalization_57_170140*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17008920
.batch_normalization_57/StatefulPartitionedCall?
+separable_conv2d_52/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0separable_conv2d_52_170143separable_conv2d_52_170145separable_conv2d_52_170147*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_52_layer_call_and_return_conditional_losses_1696502-
+separable_conv2d_52/StatefulPartitionedCall?
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_52/StatefulPartitionedCall:output:0batch_normalization_58_170214batch_normalization_58_170216batch_normalization_58_170218batch_normalization_58_170220*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_17016920
.batch_normalization_58/StatefulPartitionedCall?
+separable_conv2d_53/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0separable_conv2d_53_170223separable_conv2d_53_170225separable_conv2d_53_170227*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_53_layer_call_and_return_conditional_losses_1697832-
+separable_conv2d_53/StatefulPartitionedCall?
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_53/StatefulPartitionedCall:output:0batch_normalization_59_170294batch_normalization_59_170296batch_normalization_59_170298batch_normalization_59_170300*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_17024920
.batch_normalization_59/StatefulPartitionedCall?
flatten_10/PartitionedCallPartitionedCall7batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_1703092
flatten_10/PartitionedCall?
 dense_37/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_37_170339dense_37_170341*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_1703282"
 dense_37/StatefulPartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_170366dense_38_170368*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_1703552"
 dense_38/StatefulPartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_170393dense_39_170395*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_1703822"
 dense_39/StatefulPartitionedCall?
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0dense_40_170420dense_40_170422*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_1704092"
 dense_40/StatefulPartitionedCall?
IdentityIdentity)dense_40/StatefulPartitionedCall:output:0/^batch_normalization_55/StatefulPartitionedCall/^batch_normalization_56/StatefulPartitionedCall/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall,^separable_conv2d_49/StatefulPartitionedCall,^separable_conv2d_50/StatefulPartitionedCall,^separable_conv2d_51/StatefulPartitionedCall,^separable_conv2d_52/StatefulPartitionedCall,^separable_conv2d_53/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????||:::::::::::::::::::::::::::::::::::::::::::2`
.batch_normalization_55/StatefulPartitionedCall.batch_normalization_55/StatefulPartitionedCall2`
.batch_normalization_56/StatefulPartitionedCall.batch_normalization_56/StatefulPartitionedCall2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2Z
+separable_conv2d_49/StatefulPartitionedCall+separable_conv2d_49/StatefulPartitionedCall2Z
+separable_conv2d_50/StatefulPartitionedCall+separable_conv2d_50/StatefulPartitionedCall2Z
+separable_conv2d_51/StatefulPartitionedCall+separable_conv2d_51/StatefulPartitionedCall2Z
+separable_conv2d_52/StatefulPartitionedCall+separable_conv2d_52/StatefulPartitionedCall2Z
+separable_conv2d_53/StatefulPartitionedCall+separable_conv2d_53/StatefulPartitionedCall:j f
/
_output_shapes
:?????????||
3
_user_specified_nameseparable_conv2d_49_input
?
?
.__inference_sequential_10_layer_call_fn_171454

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*C
_read_only_resource_inputs%
#!	
 !$%&'()*+*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_1706392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????||:::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????||
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_169724

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?_
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_170639

inputs
separable_conv2d_49_170537
separable_conv2d_49_170539
separable_conv2d_49_170541!
batch_normalization_55_170544!
batch_normalization_55_170546!
batch_normalization_55_170548!
batch_normalization_55_170550
separable_conv2d_50_170553
separable_conv2d_50_170555
separable_conv2d_50_170557!
batch_normalization_56_170560!
batch_normalization_56_170562!
batch_normalization_56_170564!
batch_normalization_56_170566
separable_conv2d_51_170569
separable_conv2d_51_170571
separable_conv2d_51_170573!
batch_normalization_57_170576!
batch_normalization_57_170578!
batch_normalization_57_170580!
batch_normalization_57_170582
separable_conv2d_52_170585
separable_conv2d_52_170587
separable_conv2d_52_170589!
batch_normalization_58_170592!
batch_normalization_58_170594!
batch_normalization_58_170596!
batch_normalization_58_170598
separable_conv2d_53_170601
separable_conv2d_53_170603
separable_conv2d_53_170605!
batch_normalization_59_170608!
batch_normalization_59_170610!
batch_normalization_59_170612!
batch_normalization_59_170614
dense_37_170618
dense_37_170620
dense_38_170623
dense_38_170625
dense_39_170628
dense_39_170630
dense_40_170633
dense_40_170635
identity??.batch_normalization_55/StatefulPartitionedCall?.batch_normalization_56/StatefulPartitionedCall?.batch_normalization_57/StatefulPartitionedCall?.batch_normalization_58/StatefulPartitionedCall?.batch_normalization_59/StatefulPartitionedCall? dense_37/StatefulPartitionedCall? dense_38/StatefulPartitionedCall? dense_39/StatefulPartitionedCall? dense_40/StatefulPartitionedCall?+separable_conv2d_49/StatefulPartitionedCall?+separable_conv2d_50/StatefulPartitionedCall?+separable_conv2d_51/StatefulPartitionedCall?+separable_conv2d_52/StatefulPartitionedCall?+separable_conv2d_53/StatefulPartitionedCall?
+separable_conv2d_49/StatefulPartitionedCallStatefulPartitionedCallinputsseparable_conv2d_49_170537separable_conv2d_49_170539separable_conv2d_49_170541*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_49_layer_call_and_return_conditional_losses_1692512-
+separable_conv2d_49/StatefulPartitionedCall?
.batch_normalization_55/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_49/StatefulPartitionedCall:output:0batch_normalization_55_170544batch_normalization_55_170546batch_normalization_55_170548batch_normalization_55_170550*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_16992920
.batch_normalization_55/StatefulPartitionedCall?
+separable_conv2d_50/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_55/StatefulPartitionedCall:output:0separable_conv2d_50_170553separable_conv2d_50_170555separable_conv2d_50_170557*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_50_layer_call_and_return_conditional_losses_1693842-
+separable_conv2d_50/StatefulPartitionedCall?
.batch_normalization_56/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_50/StatefulPartitionedCall:output:0batch_normalization_56_170560batch_normalization_56_170562batch_normalization_56_170564batch_normalization_56_170566*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17000920
.batch_normalization_56/StatefulPartitionedCall?
+separable_conv2d_51/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_56/StatefulPartitionedCall:output:0separable_conv2d_51_170569separable_conv2d_51_170571separable_conv2d_51_170573*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_51_layer_call_and_return_conditional_losses_1695172-
+separable_conv2d_51/StatefulPartitionedCall?
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_51/StatefulPartitionedCall:output:0batch_normalization_57_170576batch_normalization_57_170578batch_normalization_57_170580batch_normalization_57_170582*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17008920
.batch_normalization_57/StatefulPartitionedCall?
+separable_conv2d_52/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0separable_conv2d_52_170585separable_conv2d_52_170587separable_conv2d_52_170589*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_52_layer_call_and_return_conditional_losses_1696502-
+separable_conv2d_52/StatefulPartitionedCall?
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_52/StatefulPartitionedCall:output:0batch_normalization_58_170592batch_normalization_58_170594batch_normalization_58_170596batch_normalization_58_170598*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_17016920
.batch_normalization_58/StatefulPartitionedCall?
+separable_conv2d_53/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0separable_conv2d_53_170601separable_conv2d_53_170603separable_conv2d_53_170605*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_53_layer_call_and_return_conditional_losses_1697832-
+separable_conv2d_53/StatefulPartitionedCall?
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_53/StatefulPartitionedCall:output:0batch_normalization_59_170608batch_normalization_59_170610batch_normalization_59_170612batch_normalization_59_170614*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_17024920
.batch_normalization_59/StatefulPartitionedCall?
flatten_10/PartitionedCallPartitionedCall7batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_1703092
flatten_10/PartitionedCall?
 dense_37/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_37_170618dense_37_170620*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_1703282"
 dense_37/StatefulPartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_170623dense_38_170625*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_1703552"
 dense_38/StatefulPartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_170628dense_39_170630*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_1703822"
 dense_39/StatefulPartitionedCall?
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0dense_40_170633dense_40_170635*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_1704092"
 dense_40/StatefulPartitionedCall?
IdentityIdentity)dense_40/StatefulPartitionedCall:output:0/^batch_normalization_55/StatefulPartitionedCall/^batch_normalization_56/StatefulPartitionedCall/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall,^separable_conv2d_49/StatefulPartitionedCall,^separable_conv2d_50/StatefulPartitionedCall,^separable_conv2d_51/StatefulPartitionedCall,^separable_conv2d_52/StatefulPartitionedCall,^separable_conv2d_53/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????||:::::::::::::::::::::::::::::::::::::::::::2`
.batch_normalization_55/StatefulPartitionedCall.batch_normalization_55/StatefulPartitionedCall2`
.batch_normalization_56/StatefulPartitionedCall.batch_normalization_56/StatefulPartitionedCall2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2Z
+separable_conv2d_49/StatefulPartitionedCall+separable_conv2d_49/StatefulPartitionedCall2Z
+separable_conv2d_50/StatefulPartitionedCall+separable_conv2d_50/StatefulPartitionedCall2Z
+separable_conv2d_51/StatefulPartitionedCall+separable_conv2d_51/StatefulPartitionedCall2Z
+separable_conv2d_52/StatefulPartitionedCall+separable_conv2d_52/StatefulPartitionedCall2Z
+separable_conv2d_53/StatefulPartitionedCall+separable_conv2d_53/StatefulPartitionedCall:W S
/
_output_shapes
:?????????||
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_172141

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_171967

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
O__inference_separable_conv2d_49_layer_call_and_return_conditional_losses_169251

inputs,
(separable_conv2d_readvariableop_resource.
*separable_conv2d_readvariableop_1_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?separable_conv2d/ReadVariableOp?!separable_conv2d/ReadVariableOp_1?
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
separable_conv2d/ReadVariableOp?
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:*
dtype02#
!separable_conv2d/ReadVariableOp_1?
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
separable_conv2d/Shape?
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rate?
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
2
separable_conv2d/depthwise?
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
2
separable_conv2d?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAddo
EluEluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:+???????????????????????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_39_layer_call_and_return_conditional_losses_170382

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_171565

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????>>:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????>>2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????>>::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????>>
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_169356

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_59_layer_call_fn_172121

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1702672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
D__inference_dense_37_layer_call_and_return_conditional_losses_172207

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_170169

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_171775

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:$*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:$*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:$*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:$*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????$:$:$:$:$:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????$::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
G
+__inference_flatten_10_layer_call_fn_172196

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_1703092
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_169755

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_59_layer_call_fn_172185

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1698882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?_
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_170531
separable_conv2d_49_input
separable_conv2d_49_170429
separable_conv2d_49_170431
separable_conv2d_49_170433!
batch_normalization_55_170436!
batch_normalization_55_170438!
batch_normalization_55_170440!
batch_normalization_55_170442
separable_conv2d_50_170445
separable_conv2d_50_170447
separable_conv2d_50_170449!
batch_normalization_56_170452!
batch_normalization_56_170454!
batch_normalization_56_170456!
batch_normalization_56_170458
separable_conv2d_51_170461
separable_conv2d_51_170463
separable_conv2d_51_170465!
batch_normalization_57_170468!
batch_normalization_57_170470!
batch_normalization_57_170472!
batch_normalization_57_170474
separable_conv2d_52_170477
separable_conv2d_52_170479
separable_conv2d_52_170481!
batch_normalization_58_170484!
batch_normalization_58_170486!
batch_normalization_58_170488!
batch_normalization_58_170490
separable_conv2d_53_170493
separable_conv2d_53_170495
separable_conv2d_53_170497!
batch_normalization_59_170500!
batch_normalization_59_170502!
batch_normalization_59_170504!
batch_normalization_59_170506
dense_37_170510
dense_37_170512
dense_38_170515
dense_38_170517
dense_39_170520
dense_39_170522
dense_40_170525
dense_40_170527
identity??.batch_normalization_55/StatefulPartitionedCall?.batch_normalization_56/StatefulPartitionedCall?.batch_normalization_57/StatefulPartitionedCall?.batch_normalization_58/StatefulPartitionedCall?.batch_normalization_59/StatefulPartitionedCall? dense_37/StatefulPartitionedCall? dense_38/StatefulPartitionedCall? dense_39/StatefulPartitionedCall? dense_40/StatefulPartitionedCall?+separable_conv2d_49/StatefulPartitionedCall?+separable_conv2d_50/StatefulPartitionedCall?+separable_conv2d_51/StatefulPartitionedCall?+separable_conv2d_52/StatefulPartitionedCall?+separable_conv2d_53/StatefulPartitionedCall?
+separable_conv2d_49/StatefulPartitionedCallStatefulPartitionedCallseparable_conv2d_49_inputseparable_conv2d_49_170429separable_conv2d_49_170431separable_conv2d_49_170433*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_49_layer_call_and_return_conditional_losses_1692512-
+separable_conv2d_49/StatefulPartitionedCall?
.batch_normalization_55/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_49/StatefulPartitionedCall:output:0batch_normalization_55_170436batch_normalization_55_170438batch_normalization_55_170440batch_normalization_55_170442*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_16994720
.batch_normalization_55/StatefulPartitionedCall?
+separable_conv2d_50/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_55/StatefulPartitionedCall:output:0separable_conv2d_50_170445separable_conv2d_50_170447separable_conv2d_50_170449*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_50_layer_call_and_return_conditional_losses_1693842-
+separable_conv2d_50/StatefulPartitionedCall?
.batch_normalization_56/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_50/StatefulPartitionedCall:output:0batch_normalization_56_170452batch_normalization_56_170454batch_normalization_56_170456batch_normalization_56_170458*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17002720
.batch_normalization_56/StatefulPartitionedCall?
+separable_conv2d_51/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_56/StatefulPartitionedCall:output:0separable_conv2d_51_170461separable_conv2d_51_170463separable_conv2d_51_170465*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_51_layer_call_and_return_conditional_losses_1695172-
+separable_conv2d_51/StatefulPartitionedCall?
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_51/StatefulPartitionedCall:output:0batch_normalization_57_170468batch_normalization_57_170470batch_normalization_57_170472batch_normalization_57_170474*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17010720
.batch_normalization_57/StatefulPartitionedCall?
+separable_conv2d_52/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0separable_conv2d_52_170477separable_conv2d_52_170479separable_conv2d_52_170481*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_52_layer_call_and_return_conditional_losses_1696502-
+separable_conv2d_52/StatefulPartitionedCall?
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_52/StatefulPartitionedCall:output:0batch_normalization_58_170484batch_normalization_58_170486batch_normalization_58_170488batch_normalization_58_170490*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_17018720
.batch_normalization_58/StatefulPartitionedCall?
+separable_conv2d_53/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0separable_conv2d_53_170493separable_conv2d_53_170495separable_conv2d_53_170497*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_53_layer_call_and_return_conditional_losses_1697832-
+separable_conv2d_53/StatefulPartitionedCall?
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_53/StatefulPartitionedCall:output:0batch_normalization_59_170500batch_normalization_59_170502batch_normalization_59_170504batch_normalization_59_170506*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_17026720
.batch_normalization_59/StatefulPartitionedCall?
flatten_10/PartitionedCallPartitionedCall7batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_1703092
flatten_10/PartitionedCall?
 dense_37/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_37_170510dense_37_170512*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_1703282"
 dense_37/StatefulPartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_170515dense_38_170517*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_1703552"
 dense_38/StatefulPartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_170520dense_39_170522*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_1703822"
 dense_39/StatefulPartitionedCall?
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0dense_40_170525dense_40_170527*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_1704092"
 dense_40/StatefulPartitionedCall?
IdentityIdentity)dense_40/StatefulPartitionedCall:output:0/^batch_normalization_55/StatefulPartitionedCall/^batch_normalization_56/StatefulPartitionedCall/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall,^separable_conv2d_49/StatefulPartitionedCall,^separable_conv2d_50/StatefulPartitionedCall,^separable_conv2d_51/StatefulPartitionedCall,^separable_conv2d_52/StatefulPartitionedCall,^separable_conv2d_53/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????||:::::::::::::::::::::::::::::::::::::::::::2`
.batch_normalization_55/StatefulPartitionedCall.batch_normalization_55/StatefulPartitionedCall2`
.batch_normalization_56/StatefulPartitionedCall.batch_normalization_56/StatefulPartitionedCall2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2Z
+separable_conv2d_49/StatefulPartitionedCall+separable_conv2d_49/StatefulPartitionedCall2Z
+separable_conv2d_50/StatefulPartitionedCall+separable_conv2d_50/StatefulPartitionedCall2Z
+separable_conv2d_51/StatefulPartitionedCall+separable_conv2d_51/StatefulPartitionedCall2Z
+separable_conv2d_52/StatefulPartitionedCall+separable_conv2d_52/StatefulPartitionedCall2Z
+separable_conv2d_53/StatefulPartitionedCall+separable_conv2d_53/StatefulPartitionedCall:j f
/
_output_shapes
:?????????||
3
_user_specified_nameseparable_conv2d_49_input
?
?
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_169947

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????>>:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????>>2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????>>::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????>>
 
_user_specified_nameinputs
?_
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_170835

inputs
separable_conv2d_49_170733
separable_conv2d_49_170735
separable_conv2d_49_170737!
batch_normalization_55_170740!
batch_normalization_55_170742!
batch_normalization_55_170744!
batch_normalization_55_170746
separable_conv2d_50_170749
separable_conv2d_50_170751
separable_conv2d_50_170753!
batch_normalization_56_170756!
batch_normalization_56_170758!
batch_normalization_56_170760!
batch_normalization_56_170762
separable_conv2d_51_170765
separable_conv2d_51_170767
separable_conv2d_51_170769!
batch_normalization_57_170772!
batch_normalization_57_170774!
batch_normalization_57_170776!
batch_normalization_57_170778
separable_conv2d_52_170781
separable_conv2d_52_170783
separable_conv2d_52_170785!
batch_normalization_58_170788!
batch_normalization_58_170790!
batch_normalization_58_170792!
batch_normalization_58_170794
separable_conv2d_53_170797
separable_conv2d_53_170799
separable_conv2d_53_170801!
batch_normalization_59_170804!
batch_normalization_59_170806!
batch_normalization_59_170808!
batch_normalization_59_170810
dense_37_170814
dense_37_170816
dense_38_170819
dense_38_170821
dense_39_170824
dense_39_170826
dense_40_170829
dense_40_170831
identity??.batch_normalization_55/StatefulPartitionedCall?.batch_normalization_56/StatefulPartitionedCall?.batch_normalization_57/StatefulPartitionedCall?.batch_normalization_58/StatefulPartitionedCall?.batch_normalization_59/StatefulPartitionedCall? dense_37/StatefulPartitionedCall? dense_38/StatefulPartitionedCall? dense_39/StatefulPartitionedCall? dense_40/StatefulPartitionedCall?+separable_conv2d_49/StatefulPartitionedCall?+separable_conv2d_50/StatefulPartitionedCall?+separable_conv2d_51/StatefulPartitionedCall?+separable_conv2d_52/StatefulPartitionedCall?+separable_conv2d_53/StatefulPartitionedCall?
+separable_conv2d_49/StatefulPartitionedCallStatefulPartitionedCallinputsseparable_conv2d_49_170733separable_conv2d_49_170735separable_conv2d_49_170737*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_49_layer_call_and_return_conditional_losses_1692512-
+separable_conv2d_49/StatefulPartitionedCall?
.batch_normalization_55/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_49/StatefulPartitionedCall:output:0batch_normalization_55_170740batch_normalization_55_170742batch_normalization_55_170744batch_normalization_55_170746*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_16994720
.batch_normalization_55/StatefulPartitionedCall?
+separable_conv2d_50/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_55/StatefulPartitionedCall:output:0separable_conv2d_50_170749separable_conv2d_50_170751separable_conv2d_50_170753*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_50_layer_call_and_return_conditional_losses_1693842-
+separable_conv2d_50/StatefulPartitionedCall?
.batch_normalization_56/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_50/StatefulPartitionedCall:output:0batch_normalization_56_170756batch_normalization_56_170758batch_normalization_56_170760batch_normalization_56_170762*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_17002720
.batch_normalization_56/StatefulPartitionedCall?
+separable_conv2d_51/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_56/StatefulPartitionedCall:output:0separable_conv2d_51_170765separable_conv2d_51_170767separable_conv2d_51_170769*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_51_layer_call_and_return_conditional_losses_1695172-
+separable_conv2d_51/StatefulPartitionedCall?
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_51/StatefulPartitionedCall:output:0batch_normalization_57_170772batch_normalization_57_170774batch_normalization_57_170776batch_normalization_57_170778*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_17010720
.batch_normalization_57/StatefulPartitionedCall?
+separable_conv2d_52/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0separable_conv2d_52_170781separable_conv2d_52_170783separable_conv2d_52_170785*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_52_layer_call_and_return_conditional_losses_1696502-
+separable_conv2d_52/StatefulPartitionedCall?
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_52/StatefulPartitionedCall:output:0batch_normalization_58_170788batch_normalization_58_170790batch_normalization_58_170792batch_normalization_58_170794*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_17018720
.batch_normalization_58/StatefulPartitionedCall?
+separable_conv2d_53/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0separable_conv2d_53_170797separable_conv2d_53_170799separable_conv2d_53_170801*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_53_layer_call_and_return_conditional_losses_1697832-
+separable_conv2d_53/StatefulPartitionedCall?
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_53/StatefulPartitionedCall:output:0batch_normalization_59_170804batch_normalization_59_170806batch_normalization_59_170808batch_normalization_59_170810*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_17026720
.batch_normalization_59/StatefulPartitionedCall?
flatten_10/PartitionedCallPartitionedCall7batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_1703092
flatten_10/PartitionedCall?
 dense_37/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_37_170814dense_37_170816*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_1703282"
 dense_37/StatefulPartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_170819dense_38_170821*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_1703552"
 dense_38/StatefulPartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_170824dense_39_170826*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_1703822"
 dense_39/StatefulPartitionedCall?
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0dense_40_170829dense_40_170831*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_1704092"
 dense_40/StatefulPartitionedCall?
IdentityIdentity)dense_40/StatefulPartitionedCall:output:0/^batch_normalization_55/StatefulPartitionedCall/^batch_normalization_56/StatefulPartitionedCall/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall,^separable_conv2d_49/StatefulPartitionedCall,^separable_conv2d_50/StatefulPartitionedCall,^separable_conv2d_51/StatefulPartitionedCall,^separable_conv2d_52/StatefulPartitionedCall,^separable_conv2d_53/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????||:::::::::::::::::::::::::::::::::::::::::::2`
.batch_normalization_55/StatefulPartitionedCall.batch_normalization_55/StatefulPartitionedCall2`
.batch_normalization_56/StatefulPartitionedCall.batch_normalization_56/StatefulPartitionedCall2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2Z
+separable_conv2d_49/StatefulPartitionedCall+separable_conv2d_49/StatefulPartitionedCall2Z
+separable_conv2d_50/StatefulPartitionedCall+separable_conv2d_50/StatefulPartitionedCall2Z
+separable_conv2d_51/StatefulPartitionedCall+separable_conv2d_51/StatefulPartitionedCall2Z
+separable_conv2d_52/StatefulPartitionedCall+separable_conv2d_52/StatefulPartitionedCall2Z
+separable_conv2d_53/StatefulPartitionedCall+separable_conv2d_53/StatefulPartitionedCall:W S
/
_output_shapes
:?????????||
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_55_layer_call_fn_171596

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_1699292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????>>2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????>>::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????>>
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_169489

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:$*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:$*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:$*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:$*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????$:$:$:$:$:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????$2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????$::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????$
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_56_layer_call_fn_171724

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_1694582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????$2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????$::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????$
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_170187

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_169888

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_170009

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:$*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:$*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:$*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:$*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????$:$:$:$:$:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????$::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_172077

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_172095

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_56_layer_call_fn_171737

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????$*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_1694892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????$2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????$::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????$
 
_user_specified_nameinputs
?
b
F__inference_flatten_10_layer_call_and_return_conditional_losses_172191

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? @  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_171647

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
4__inference_separable_conv2d_52_layer_call_fn_169662

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_52_layer_call_and_return_conditional_losses_1696502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:+???????????????????????????0:::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????0
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_171839

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????0:0:0:0:0:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????02

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????0::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????0
 
_user_specified_nameinputs
??
?'
I__inference_sequential_10_layer_call_and_return_conditional_losses_171199

inputs@
<separable_conv2d_49_separable_conv2d_readvariableop_resourceB
>separable_conv2d_49_separable_conv2d_readvariableop_1_resource7
3separable_conv2d_49_biasadd_readvariableop_resource2
.batch_normalization_55_readvariableop_resource4
0batch_normalization_55_readvariableop_1_resourceC
?batch_normalization_55_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_55_fusedbatchnormv3_readvariableop_1_resource@
<separable_conv2d_50_separable_conv2d_readvariableop_resourceB
>separable_conv2d_50_separable_conv2d_readvariableop_1_resource7
3separable_conv2d_50_biasadd_readvariableop_resource2
.batch_normalization_56_readvariableop_resource4
0batch_normalization_56_readvariableop_1_resourceC
?batch_normalization_56_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_56_fusedbatchnormv3_readvariableop_1_resource@
<separable_conv2d_51_separable_conv2d_readvariableop_resourceB
>separable_conv2d_51_separable_conv2d_readvariableop_1_resource7
3separable_conv2d_51_biasadd_readvariableop_resource2
.batch_normalization_57_readvariableop_resource4
0batch_normalization_57_readvariableop_1_resourceC
?batch_normalization_57_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource@
<separable_conv2d_52_separable_conv2d_readvariableop_resourceB
>separable_conv2d_52_separable_conv2d_readvariableop_1_resource7
3separable_conv2d_52_biasadd_readvariableop_resource2
.batch_normalization_58_readvariableop_resource4
0batch_normalization_58_readvariableop_1_resourceC
?batch_normalization_58_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource@
<separable_conv2d_53_separable_conv2d_readvariableop_resourceB
>separable_conv2d_53_separable_conv2d_readvariableop_1_resource7
3separable_conv2d_53_biasadd_readvariableop_resource2
.batch_normalization_59_readvariableop_resource4
0batch_normalization_59_readvariableop_1_resourceC
?batch_normalization_59_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource+
'dense_37_matmul_readvariableop_resource,
(dense_37_biasadd_readvariableop_resource+
'dense_38_matmul_readvariableop_resource,
(dense_38_biasadd_readvariableop_resource+
'dense_39_matmul_readvariableop_resource,
(dense_39_biasadd_readvariableop_resource+
'dense_40_matmul_readvariableop_resource,
(dense_40_biasadd_readvariableop_resource
identity??%batch_normalization_55/AssignNewValue?'batch_normalization_55/AssignNewValue_1?6batch_normalization_55/FusedBatchNormV3/ReadVariableOp?8batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_55/ReadVariableOp?'batch_normalization_55/ReadVariableOp_1?%batch_normalization_56/AssignNewValue?'batch_normalization_56/AssignNewValue_1?6batch_normalization_56/FusedBatchNormV3/ReadVariableOp?8batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_56/ReadVariableOp?'batch_normalization_56/ReadVariableOp_1?%batch_normalization_57/AssignNewValue?'batch_normalization_57/AssignNewValue_1?6batch_normalization_57/FusedBatchNormV3/ReadVariableOp?8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_57/ReadVariableOp?'batch_normalization_57/ReadVariableOp_1?%batch_normalization_58/AssignNewValue?'batch_normalization_58/AssignNewValue_1?6batch_normalization_58/FusedBatchNormV3/ReadVariableOp?8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_58/ReadVariableOp?'batch_normalization_58/ReadVariableOp_1?%batch_normalization_59/AssignNewValue?'batch_normalization_59/AssignNewValue_1?6batch_normalization_59/FusedBatchNormV3/ReadVariableOp?8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_59/ReadVariableOp?'batch_normalization_59/ReadVariableOp_1?dense_37/BiasAdd/ReadVariableOp?dense_37/MatMul/ReadVariableOp?dense_38/BiasAdd/ReadVariableOp?dense_38/MatMul/ReadVariableOp?dense_39/BiasAdd/ReadVariableOp?dense_39/MatMul/ReadVariableOp?dense_40/BiasAdd/ReadVariableOp?dense_40/MatMul/ReadVariableOp?*separable_conv2d_49/BiasAdd/ReadVariableOp?3separable_conv2d_49/separable_conv2d/ReadVariableOp?5separable_conv2d_49/separable_conv2d/ReadVariableOp_1?*separable_conv2d_50/BiasAdd/ReadVariableOp?3separable_conv2d_50/separable_conv2d/ReadVariableOp?5separable_conv2d_50/separable_conv2d/ReadVariableOp_1?*separable_conv2d_51/BiasAdd/ReadVariableOp?3separable_conv2d_51/separable_conv2d/ReadVariableOp?5separable_conv2d_51/separable_conv2d/ReadVariableOp_1?*separable_conv2d_52/BiasAdd/ReadVariableOp?3separable_conv2d_52/separable_conv2d/ReadVariableOp?5separable_conv2d_52/separable_conv2d/ReadVariableOp_1?*separable_conv2d_53/BiasAdd/ReadVariableOp?3separable_conv2d_53/separable_conv2d/ReadVariableOp?5separable_conv2d_53/separable_conv2d/ReadVariableOp_1?
3separable_conv2d_49/separable_conv2d/ReadVariableOpReadVariableOp<separable_conv2d_49_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype025
3separable_conv2d_49/separable_conv2d/ReadVariableOp?
5separable_conv2d_49/separable_conv2d/ReadVariableOp_1ReadVariableOp>separable_conv2d_49_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:*
dtype027
5separable_conv2d_49/separable_conv2d/ReadVariableOp_1?
*separable_conv2d_49/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2,
*separable_conv2d_49/separable_conv2d/Shape?
2separable_conv2d_49/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      24
2separable_conv2d_49/separable_conv2d/dilation_rate?
.separable_conv2d_49/separable_conv2d/depthwiseDepthwiseConv2dNativeinputs;separable_conv2d_49/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????>>*
paddingSAME*
strides
20
.separable_conv2d_49/separable_conv2d/depthwise?
$separable_conv2d_49/separable_conv2dConv2D7separable_conv2d_49/separable_conv2d/depthwise:output:0=separable_conv2d_49/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????>>*
paddingVALID*
strides
2&
$separable_conv2d_49/separable_conv2d?
*separable_conv2d_49/BiasAdd/ReadVariableOpReadVariableOp3separable_conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*separable_conv2d_49/BiasAdd/ReadVariableOp?
separable_conv2d_49/BiasAddBiasAdd-separable_conv2d_49/separable_conv2d:output:02separable_conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????>>2
separable_conv2d_49/BiasAdd?
separable_conv2d_49/EluElu$separable_conv2d_49/BiasAdd:output:0*
T0*/
_output_shapes
:?????????>>2
separable_conv2d_49/Elu?
%batch_normalization_55/ReadVariableOpReadVariableOp.batch_normalization_55_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_55/ReadVariableOp?
'batch_normalization_55/ReadVariableOp_1ReadVariableOp0batch_normalization_55_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_55/ReadVariableOp_1?
6batch_normalization_55/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_55_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_55/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_55_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_55/FusedBatchNormV3FusedBatchNormV3%separable_conv2d_49/Elu:activations:0-batch_normalization_55/ReadVariableOp:value:0/batch_normalization_55/ReadVariableOp_1:value:0>batch_normalization_55/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????>>:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_55/FusedBatchNormV3?
%batch_normalization_55/AssignNewValueAssignVariableOp?batch_normalization_55_fusedbatchnormv3_readvariableop_resource4batch_normalization_55/FusedBatchNormV3:batch_mean:07^batch_normalization_55/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*R
_classH
FDloc:@batch_normalization_55/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_55/AssignNewValue?
'batch_normalization_55/AssignNewValue_1AssignVariableOpAbatch_normalization_55_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_55/FusedBatchNormV3:batch_variance:09^batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*T
_classJ
HFloc:@batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_55/AssignNewValue_1?
3separable_conv2d_50/separable_conv2d/ReadVariableOpReadVariableOp<separable_conv2d_50_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype025
3separable_conv2d_50/separable_conv2d/ReadVariableOp?
5separable_conv2d_50/separable_conv2d/ReadVariableOp_1ReadVariableOp>separable_conv2d_50_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:$*
dtype027
5separable_conv2d_50/separable_conv2d/ReadVariableOp_1?
*separable_conv2d_50/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2,
*separable_conv2d_50/separable_conv2d/Shape?
2separable_conv2d_50/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      24
2separable_conv2d_50/separable_conv2d/dilation_rate?
.separable_conv2d_50/separable_conv2d/depthwiseDepthwiseConv2dNative+batch_normalization_55/FusedBatchNormV3:y:0;separable_conv2d_50/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
20
.separable_conv2d_50/separable_conv2d/depthwise?
$separable_conv2d_50/separable_conv2dConv2D7separable_conv2d_50/separable_conv2d/depthwise:output:0=separable_conv2d_50/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????$*
paddingVALID*
strides
2&
$separable_conv2d_50/separable_conv2d?
*separable_conv2d_50/BiasAdd/ReadVariableOpReadVariableOp3separable_conv2d_50_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02,
*separable_conv2d_50/BiasAdd/ReadVariableOp?
separable_conv2d_50/BiasAddBiasAdd-separable_conv2d_50/separable_conv2d:output:02separable_conv2d_50/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$2
separable_conv2d_50/BiasAdd?
separable_conv2d_50/EluElu$separable_conv2d_50/BiasAdd:output:0*
T0*/
_output_shapes
:?????????$2
separable_conv2d_50/Elu?
%batch_normalization_56/ReadVariableOpReadVariableOp.batch_normalization_56_readvariableop_resource*
_output_shapes
:$*
dtype02'
%batch_normalization_56/ReadVariableOp?
'batch_normalization_56/ReadVariableOp_1ReadVariableOp0batch_normalization_56_readvariableop_1_resource*
_output_shapes
:$*
dtype02)
'batch_normalization_56/ReadVariableOp_1?
6batch_normalization_56/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_56_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:$*
dtype028
6batch_normalization_56/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_56_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:$*
dtype02:
8batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_56/FusedBatchNormV3FusedBatchNormV3%separable_conv2d_50/Elu:activations:0-batch_normalization_56/ReadVariableOp:value:0/batch_normalization_56/ReadVariableOp_1:value:0>batch_normalization_56/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????$:$:$:$:$:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_56/FusedBatchNormV3?
%batch_normalization_56/AssignNewValueAssignVariableOp?batch_normalization_56_fusedbatchnormv3_readvariableop_resource4batch_normalization_56/FusedBatchNormV3:batch_mean:07^batch_normalization_56/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*R
_classH
FDloc:@batch_normalization_56/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_56/AssignNewValue?
'batch_normalization_56/AssignNewValue_1AssignVariableOpAbatch_normalization_56_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_56/FusedBatchNormV3:batch_variance:09^batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*T
_classJ
HFloc:@batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_56/AssignNewValue_1?
3separable_conv2d_51/separable_conv2d/ReadVariableOpReadVariableOp<separable_conv2d_51_separable_conv2d_readvariableop_resource*&
_output_shapes
:$*
dtype025
3separable_conv2d_51/separable_conv2d/ReadVariableOp?
5separable_conv2d_51/separable_conv2d/ReadVariableOp_1ReadVariableOp>separable_conv2d_51_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:$0*
dtype027
5separable_conv2d_51/separable_conv2d/ReadVariableOp_1?
*separable_conv2d_51/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      $      2,
*separable_conv2d_51/separable_conv2d/Shape?
2separable_conv2d_51/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      24
2separable_conv2d_51/separable_conv2d/dilation_rate?
.separable_conv2d_51/separable_conv2d/depthwiseDepthwiseConv2dNative+batch_normalization_56/FusedBatchNormV3:y:0;separable_conv2d_51/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$*
paddingSAME*
strides
20
.separable_conv2d_51/separable_conv2d/depthwise?
$separable_conv2d_51/separable_conv2dConv2D7separable_conv2d_51/separable_conv2d/depthwise:output:0=separable_conv2d_51/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
2&
$separable_conv2d_51/separable_conv2d?
*separable_conv2d_51/BiasAdd/ReadVariableOpReadVariableOp3separable_conv2d_51_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02,
*separable_conv2d_51/BiasAdd/ReadVariableOp?
separable_conv2d_51/BiasAddBiasAdd-separable_conv2d_51/separable_conv2d:output:02separable_conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02
separable_conv2d_51/BiasAdd?
separable_conv2d_51/EluElu$separable_conv2d_51/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02
separable_conv2d_51/Elu?
%batch_normalization_57/ReadVariableOpReadVariableOp.batch_normalization_57_readvariableop_resource*
_output_shapes
:0*
dtype02'
%batch_normalization_57/ReadVariableOp?
'batch_normalization_57/ReadVariableOp_1ReadVariableOp0batch_normalization_57_readvariableop_1_resource*
_output_shapes
:0*
dtype02)
'batch_normalization_57/ReadVariableOp_1?
6batch_normalization_57/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_57_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype028
6batch_normalization_57/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02:
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_57/FusedBatchNormV3FusedBatchNormV3%separable_conv2d_51/Elu:activations:0-batch_normalization_57/ReadVariableOp:value:0/batch_normalization_57/ReadVariableOp_1:value:0>batch_normalization_57/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????0:0:0:0:0:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_57/FusedBatchNormV3?
%batch_normalization_57/AssignNewValueAssignVariableOp?batch_normalization_57_fusedbatchnormv3_readvariableop_resource4batch_normalization_57/FusedBatchNormV3:batch_mean:07^batch_normalization_57/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*R
_classH
FDloc:@batch_normalization_57/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_57/AssignNewValue?
'batch_normalization_57/AssignNewValue_1AssignVariableOpAbatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_57/FusedBatchNormV3:batch_variance:09^batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*T
_classJ
HFloc:@batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_57/AssignNewValue_1?
3separable_conv2d_52/separable_conv2d/ReadVariableOpReadVariableOp<separable_conv2d_52_separable_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype025
3separable_conv2d_52/separable_conv2d/ReadVariableOp?
5separable_conv2d_52/separable_conv2d/ReadVariableOp_1ReadVariableOp>separable_conv2d_52_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:0@*
dtype027
5separable_conv2d_52/separable_conv2d/ReadVariableOp_1?
*separable_conv2d_52/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      0      2,
*separable_conv2d_52/separable_conv2d/Shape?
2separable_conv2d_52/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      24
2separable_conv2d_52/separable_conv2d/dilation_rate?
.separable_conv2d_52/separable_conv2d/depthwiseDepthwiseConv2dNative+batch_normalization_57/FusedBatchNormV3:y:0;separable_conv2d_52/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
20
.separable_conv2d_52/separable_conv2d/depthwise?
$separable_conv2d_52/separable_conv2dConv2D7separable_conv2d_52/separable_conv2d/depthwise:output:0=separable_conv2d_52/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2&
$separable_conv2d_52/separable_conv2d?
*separable_conv2d_52/BiasAdd/ReadVariableOpReadVariableOp3separable_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*separable_conv2d_52/BiasAdd/ReadVariableOp?
separable_conv2d_52/BiasAddBiasAdd-separable_conv2d_52/separable_conv2d:output:02separable_conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
separable_conv2d_52/BiasAdd?
separable_conv2d_52/EluElu$separable_conv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
separable_conv2d_52/Elu?
%batch_normalization_58/ReadVariableOpReadVariableOp.batch_normalization_58_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_58/ReadVariableOp?
'batch_normalization_58/ReadVariableOp_1ReadVariableOp0batch_normalization_58_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_58/ReadVariableOp_1?
6batch_normalization_58/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_58_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_58/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_58/FusedBatchNormV3FusedBatchNormV3%separable_conv2d_52/Elu:activations:0-batch_normalization_58/ReadVariableOp:value:0/batch_normalization_58/ReadVariableOp_1:value:0>batch_normalization_58/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_58/FusedBatchNormV3?
%batch_normalization_58/AssignNewValueAssignVariableOp?batch_normalization_58_fusedbatchnormv3_readvariableop_resource4batch_normalization_58/FusedBatchNormV3:batch_mean:07^batch_normalization_58/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*R
_classH
FDloc:@batch_normalization_58/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_58/AssignNewValue?
'batch_normalization_58/AssignNewValue_1AssignVariableOpAbatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_58/FusedBatchNormV3:batch_variance:09^batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*T
_classJ
HFloc:@batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_58/AssignNewValue_1?
3separable_conv2d_53/separable_conv2d/ReadVariableOpReadVariableOp<separable_conv2d_53_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype025
3separable_conv2d_53/separable_conv2d/ReadVariableOp?
5separable_conv2d_53/separable_conv2d/ReadVariableOp_1ReadVariableOp>separable_conv2d_53_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@@*
dtype027
5separable_conv2d_53/separable_conv2d/ReadVariableOp_1?
*separable_conv2d_53/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      2,
*separable_conv2d_53/separable_conv2d/Shape?
2separable_conv2d_53/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      24
2separable_conv2d_53/separable_conv2d/dilation_rate?
.separable_conv2d_53/separable_conv2d/depthwiseDepthwiseConv2dNative+batch_normalization_58/FusedBatchNormV3:y:0;separable_conv2d_53/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
20
.separable_conv2d_53/separable_conv2d/depthwise?
$separable_conv2d_53/separable_conv2dConv2D7separable_conv2d_53/separable_conv2d/depthwise:output:0=separable_conv2d_53/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2&
$separable_conv2d_53/separable_conv2d?
*separable_conv2d_53/BiasAdd/ReadVariableOpReadVariableOp3separable_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*separable_conv2d_53/BiasAdd/ReadVariableOp?
separable_conv2d_53/BiasAddBiasAdd-separable_conv2d_53/separable_conv2d:output:02separable_conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
separable_conv2d_53/BiasAdd?
separable_conv2d_53/EluElu$separable_conv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
separable_conv2d_53/Elu?
%batch_normalization_59/ReadVariableOpReadVariableOp.batch_normalization_59_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_59/ReadVariableOp?
'batch_normalization_59/ReadVariableOp_1ReadVariableOp0batch_normalization_59_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_59/ReadVariableOp_1?
6batch_normalization_59/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_59_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_59/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_59/FusedBatchNormV3FusedBatchNormV3%separable_conv2d_53/Elu:activations:0-batch_normalization_59/ReadVariableOp:value:0/batch_normalization_59/ReadVariableOp_1:value:0>batch_normalization_59/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_59/FusedBatchNormV3?
%batch_normalization_59/AssignNewValueAssignVariableOp?batch_normalization_59_fusedbatchnormv3_readvariableop_resource4batch_normalization_59/FusedBatchNormV3:batch_mean:07^batch_normalization_59/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*R
_classH
FDloc:@batch_normalization_59/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_59/AssignNewValue?
'batch_normalization_59/AssignNewValue_1AssignVariableOpAbatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_59/FusedBatchNormV3:batch_variance:09^batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*T
_classJ
HFloc:@batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_59/AssignNewValue_1u
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? @  2
flatten_10/Const?
flatten_10/ReshapeReshape+batch_normalization_59/FusedBatchNormV3:y:0flatten_10/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_10/Reshape?
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource* 
_output_shapes
:
??d*
dtype02 
dense_37/MatMul/ReadVariableOp?
dense_37/MatMulMatMulflatten_10/Reshape:output:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_37/MatMul?
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_37/BiasAdd/ReadVariableOp?
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_37/BiasAddp
dense_37/EluEludense_37/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_37/Elu?
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02 
dense_38/MatMul/ReadVariableOp?
dense_38/MatMulMatMuldense_37/Elu:activations:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_38/MatMul?
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_38/BiasAdd/ReadVariableOp?
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_38/BiasAddp
dense_38/EluEludense_38/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
dense_38/Elu?
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype02 
dense_39/MatMul/ReadVariableOp?
dense_39/MatMulMatMuldense_38/Elu:activations:0&dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_39/MatMul?
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_39/BiasAdd/ReadVariableOp?
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_39/BiasAddp
dense_39/EluEludense_39/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_39/Elu?
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02 
dense_40/MatMul/ReadVariableOp?
dense_40/MatMulMatMuldense_39/Elu:activations:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_40/MatMul?
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_40/BiasAdd/ReadVariableOp?
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_40/BiasAdd|
dense_40/SoftmaxSoftmaxdense_40/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_40/Softmax?
IdentityIdentitydense_40/Softmax:softmax:0&^batch_normalization_55/AssignNewValue(^batch_normalization_55/AssignNewValue_17^batch_normalization_55/FusedBatchNormV3/ReadVariableOp9^batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_55/ReadVariableOp(^batch_normalization_55/ReadVariableOp_1&^batch_normalization_56/AssignNewValue(^batch_normalization_56/AssignNewValue_17^batch_normalization_56/FusedBatchNormV3/ReadVariableOp9^batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_56/ReadVariableOp(^batch_normalization_56/ReadVariableOp_1&^batch_normalization_57/AssignNewValue(^batch_normalization_57/AssignNewValue_17^batch_normalization_57/FusedBatchNormV3/ReadVariableOp9^batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_57/ReadVariableOp(^batch_normalization_57/ReadVariableOp_1&^batch_normalization_58/AssignNewValue(^batch_normalization_58/AssignNewValue_17^batch_normalization_58/FusedBatchNormV3/ReadVariableOp9^batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_58/ReadVariableOp(^batch_normalization_58/ReadVariableOp_1&^batch_normalization_59/AssignNewValue(^batch_normalization_59/AssignNewValue_17^batch_normalization_59/FusedBatchNormV3/ReadVariableOp9^batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_59/ReadVariableOp(^batch_normalization_59/ReadVariableOp_1 ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp+^separable_conv2d_49/BiasAdd/ReadVariableOp4^separable_conv2d_49/separable_conv2d/ReadVariableOp6^separable_conv2d_49/separable_conv2d/ReadVariableOp_1+^separable_conv2d_50/BiasAdd/ReadVariableOp4^separable_conv2d_50/separable_conv2d/ReadVariableOp6^separable_conv2d_50/separable_conv2d/ReadVariableOp_1+^separable_conv2d_51/BiasAdd/ReadVariableOp4^separable_conv2d_51/separable_conv2d/ReadVariableOp6^separable_conv2d_51/separable_conv2d/ReadVariableOp_1+^separable_conv2d_52/BiasAdd/ReadVariableOp4^separable_conv2d_52/separable_conv2d/ReadVariableOp6^separable_conv2d_52/separable_conv2d/ReadVariableOp_1+^separable_conv2d_53/BiasAdd/ReadVariableOp4^separable_conv2d_53/separable_conv2d/ReadVariableOp6^separable_conv2d_53/separable_conv2d/ReadVariableOp_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????||:::::::::::::::::::::::::::::::::::::::::::2N
%batch_normalization_55/AssignNewValue%batch_normalization_55/AssignNewValue2R
'batch_normalization_55/AssignNewValue_1'batch_normalization_55/AssignNewValue_12p
6batch_normalization_55/FusedBatchNormV3/ReadVariableOp6batch_normalization_55/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_55/FusedBatchNormV3/ReadVariableOp_18batch_normalization_55/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_55/ReadVariableOp%batch_normalization_55/ReadVariableOp2R
'batch_normalization_55/ReadVariableOp_1'batch_normalization_55/ReadVariableOp_12N
%batch_normalization_56/AssignNewValue%batch_normalization_56/AssignNewValue2R
'batch_normalization_56/AssignNewValue_1'batch_normalization_56/AssignNewValue_12p
6batch_normalization_56/FusedBatchNormV3/ReadVariableOp6batch_normalization_56/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_56/FusedBatchNormV3/ReadVariableOp_18batch_normalization_56/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_56/ReadVariableOp%batch_normalization_56/ReadVariableOp2R
'batch_normalization_56/ReadVariableOp_1'batch_normalization_56/ReadVariableOp_12N
%batch_normalization_57/AssignNewValue%batch_normalization_57/AssignNewValue2R
'batch_normalization_57/AssignNewValue_1'batch_normalization_57/AssignNewValue_12p
6batch_normalization_57/FusedBatchNormV3/ReadVariableOp6batch_normalization_57/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_18batch_normalization_57/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_57/ReadVariableOp%batch_normalization_57/ReadVariableOp2R
'batch_normalization_57/ReadVariableOp_1'batch_normalization_57/ReadVariableOp_12N
%batch_normalization_58/AssignNewValue%batch_normalization_58/AssignNewValue2R
'batch_normalization_58/AssignNewValue_1'batch_normalization_58/AssignNewValue_12p
6batch_normalization_58/FusedBatchNormV3/ReadVariableOp6batch_normalization_58/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_18batch_normalization_58/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_58/ReadVariableOp%batch_normalization_58/ReadVariableOp2R
'batch_normalization_58/ReadVariableOp_1'batch_normalization_58/ReadVariableOp_12N
%batch_normalization_59/AssignNewValue%batch_normalization_59/AssignNewValue2R
'batch_normalization_59/AssignNewValue_1'batch_normalization_59/AssignNewValue_12p
6batch_normalization_59/FusedBatchNormV3/ReadVariableOp6batch_normalization_59/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_18batch_normalization_59/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_59/ReadVariableOp%batch_normalization_59/ReadVariableOp2R
'batch_normalization_59/ReadVariableOp_1'batch_normalization_59/ReadVariableOp_12B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp2X
*separable_conv2d_49/BiasAdd/ReadVariableOp*separable_conv2d_49/BiasAdd/ReadVariableOp2j
3separable_conv2d_49/separable_conv2d/ReadVariableOp3separable_conv2d_49/separable_conv2d/ReadVariableOp2n
5separable_conv2d_49/separable_conv2d/ReadVariableOp_15separable_conv2d_49/separable_conv2d/ReadVariableOp_12X
*separable_conv2d_50/BiasAdd/ReadVariableOp*separable_conv2d_50/BiasAdd/ReadVariableOp2j
3separable_conv2d_50/separable_conv2d/ReadVariableOp3separable_conv2d_50/separable_conv2d/ReadVariableOp2n
5separable_conv2d_50/separable_conv2d/ReadVariableOp_15separable_conv2d_50/separable_conv2d/ReadVariableOp_12X
*separable_conv2d_51/BiasAdd/ReadVariableOp*separable_conv2d_51/BiasAdd/ReadVariableOp2j
3separable_conv2d_51/separable_conv2d/ReadVariableOp3separable_conv2d_51/separable_conv2d/ReadVariableOp2n
5separable_conv2d_51/separable_conv2d/ReadVariableOp_15separable_conv2d_51/separable_conv2d/ReadVariableOp_12X
*separable_conv2d_52/BiasAdd/ReadVariableOp*separable_conv2d_52/BiasAdd/ReadVariableOp2j
3separable_conv2d_52/separable_conv2d/ReadVariableOp3separable_conv2d_52/separable_conv2d/ReadVariableOp2n
5separable_conv2d_52/separable_conv2d/ReadVariableOp_15separable_conv2d_52/separable_conv2d/ReadVariableOp_12X
*separable_conv2d_53/BiasAdd/ReadVariableOp*separable_conv2d_53/BiasAdd/ReadVariableOp2j
3separable_conv2d_53/separable_conv2d/ReadVariableOp3separable_conv2d_53/separable_conv2d/ReadVariableOp2n
5separable_conv2d_53/separable_conv2d/ReadVariableOp_15separable_conv2d_53/separable_conv2d/ReadVariableOp_1:W S
/
_output_shapes
:?????????||
 
_user_specified_nameinputs
?	
?
D__inference_dense_40_layer_call_and_return_conditional_losses_170409

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?	
?
D__inference_dense_38_layer_call_and_return_conditional_losses_172227

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????22
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_169325

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_170107

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????0:0:0:0:0:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????0::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_171711

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:$*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:$*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:$*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:$*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????$:$:$:$:$:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????$2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????$::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????$
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_169622

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????0:0:0:0:0:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????02

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????0::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????0
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_172159

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_58_layer_call_fn_171980

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1701692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_170267

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_171821

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????0:0:0:0:0:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????02

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????0::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????0
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_170249

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_171757

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:$*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:$*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:$*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:$*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????$:$:$:$:$:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????$::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
~
)__inference_dense_38_layer_call_fn_172236

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_1703552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_171629

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_40_layer_call_and_return_conditional_losses_172267

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_58_layer_call_fn_172044

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1697242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
O__inference_separable_conv2d_51_layer_call_and_return_conditional_losses_169517

inputs,
(separable_conv2d_readvariableop_resource.
*separable_conv2d_readvariableop_1_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?separable_conv2d/ReadVariableOp?!separable_conv2d/ReadVariableOp_1?
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:$*
dtype02!
separable_conv2d/ReadVariableOp?
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:$0*
dtype02#
!separable_conv2d/ReadVariableOp_1?
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      $      2
separable_conv2d/Shape?
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rate?
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????$*
paddingSAME*
strides
2
separable_conv2d/depthwise?
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+???????????????????????????0*
paddingVALID*
strides
2
separable_conv2d?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????02	
BiasAddo
EluEluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????02
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????02

Identity"
identityIdentity:output:0*L
_input_shapes;
9:+???????????????????????????$:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????$
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_56_layer_call_fn_171788

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_1700092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????$::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_59_layer_call_fn_172172

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1698572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_170089

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????0:0:0:0:0:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????0::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?	
?
D__inference_dense_39_layer_call_and_return_conditional_losses_172247

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_57_layer_call_fn_171916

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1700892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????0::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
~
)__inference_dense_40_layer_call_fn_172276

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_1704092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
??
?H
"__inference__traced_restore_173017
file_prefix9
5assignvariableop_separable_conv2d_49_depthwise_kernel;
7assignvariableop_1_separable_conv2d_49_pointwise_kernel/
+assignvariableop_2_separable_conv2d_49_bias3
/assignvariableop_3_batch_normalization_55_gamma2
.assignvariableop_4_batch_normalization_55_beta9
5assignvariableop_5_batch_normalization_55_moving_mean=
9assignvariableop_6_batch_normalization_55_moving_variance;
7assignvariableop_7_separable_conv2d_50_depthwise_kernel;
7assignvariableop_8_separable_conv2d_50_pointwise_kernel/
+assignvariableop_9_separable_conv2d_50_bias4
0assignvariableop_10_batch_normalization_56_gamma3
/assignvariableop_11_batch_normalization_56_beta:
6assignvariableop_12_batch_normalization_56_moving_mean>
:assignvariableop_13_batch_normalization_56_moving_variance<
8assignvariableop_14_separable_conv2d_51_depthwise_kernel<
8assignvariableop_15_separable_conv2d_51_pointwise_kernel0
,assignvariableop_16_separable_conv2d_51_bias4
0assignvariableop_17_batch_normalization_57_gamma3
/assignvariableop_18_batch_normalization_57_beta:
6assignvariableop_19_batch_normalization_57_moving_mean>
:assignvariableop_20_batch_normalization_57_moving_variance<
8assignvariableop_21_separable_conv2d_52_depthwise_kernel<
8assignvariableop_22_separable_conv2d_52_pointwise_kernel0
,assignvariableop_23_separable_conv2d_52_bias4
0assignvariableop_24_batch_normalization_58_gamma3
/assignvariableop_25_batch_normalization_58_beta:
6assignvariableop_26_batch_normalization_58_moving_mean>
:assignvariableop_27_batch_normalization_58_moving_variance<
8assignvariableop_28_separable_conv2d_53_depthwise_kernel<
8assignvariableop_29_separable_conv2d_53_pointwise_kernel0
,assignvariableop_30_separable_conv2d_53_bias4
0assignvariableop_31_batch_normalization_59_gamma3
/assignvariableop_32_batch_normalization_59_beta:
6assignvariableop_33_batch_normalization_59_moving_mean>
:assignvariableop_34_batch_normalization_59_moving_variance'
#assignvariableop_35_dense_37_kernel%
!assignvariableop_36_dense_37_bias'
#assignvariableop_37_dense_38_kernel%
!assignvariableop_38_dense_38_bias'
#assignvariableop_39_dense_39_kernel%
!assignvariableop_40_dense_39_bias'
#assignvariableop_41_dense_40_kernel%
!assignvariableop_42_dense_40_bias!
assignvariableop_43_adam_iter#
assignvariableop_44_adam_beta_1#
assignvariableop_45_adam_beta_2"
assignvariableop_46_adam_decay*
&assignvariableop_47_adam_learning_rate
assignvariableop_48_total
assignvariableop_49_count
assignvariableop_50_total_1
assignvariableop_51_count_1C
?assignvariableop_52_adam_separable_conv2d_49_depthwise_kernel_mC
?assignvariableop_53_adam_separable_conv2d_49_pointwise_kernel_m7
3assignvariableop_54_adam_separable_conv2d_49_bias_m;
7assignvariableop_55_adam_batch_normalization_55_gamma_m:
6assignvariableop_56_adam_batch_normalization_55_beta_mC
?assignvariableop_57_adam_separable_conv2d_50_depthwise_kernel_mC
?assignvariableop_58_adam_separable_conv2d_50_pointwise_kernel_m7
3assignvariableop_59_adam_separable_conv2d_50_bias_m;
7assignvariableop_60_adam_batch_normalization_56_gamma_m:
6assignvariableop_61_adam_batch_normalization_56_beta_mC
?assignvariableop_62_adam_separable_conv2d_51_depthwise_kernel_mC
?assignvariableop_63_adam_separable_conv2d_51_pointwise_kernel_m7
3assignvariableop_64_adam_separable_conv2d_51_bias_m;
7assignvariableop_65_adam_batch_normalization_57_gamma_m:
6assignvariableop_66_adam_batch_normalization_57_beta_mC
?assignvariableop_67_adam_separable_conv2d_52_depthwise_kernel_mC
?assignvariableop_68_adam_separable_conv2d_52_pointwise_kernel_m7
3assignvariableop_69_adam_separable_conv2d_52_bias_m;
7assignvariableop_70_adam_batch_normalization_58_gamma_m:
6assignvariableop_71_adam_batch_normalization_58_beta_mC
?assignvariableop_72_adam_separable_conv2d_53_depthwise_kernel_mC
?assignvariableop_73_adam_separable_conv2d_53_pointwise_kernel_m7
3assignvariableop_74_adam_separable_conv2d_53_bias_m;
7assignvariableop_75_adam_batch_normalization_59_gamma_m:
6assignvariableop_76_adam_batch_normalization_59_beta_m.
*assignvariableop_77_adam_dense_37_kernel_m,
(assignvariableop_78_adam_dense_37_bias_m.
*assignvariableop_79_adam_dense_38_kernel_m,
(assignvariableop_80_adam_dense_38_bias_m.
*assignvariableop_81_adam_dense_39_kernel_m,
(assignvariableop_82_adam_dense_39_bias_m.
*assignvariableop_83_adam_dense_40_kernel_m,
(assignvariableop_84_adam_dense_40_bias_mC
?assignvariableop_85_adam_separable_conv2d_49_depthwise_kernel_vC
?assignvariableop_86_adam_separable_conv2d_49_pointwise_kernel_v7
3assignvariableop_87_adam_separable_conv2d_49_bias_v;
7assignvariableop_88_adam_batch_normalization_55_gamma_v:
6assignvariableop_89_adam_batch_normalization_55_beta_vC
?assignvariableop_90_adam_separable_conv2d_50_depthwise_kernel_vC
?assignvariableop_91_adam_separable_conv2d_50_pointwise_kernel_v7
3assignvariableop_92_adam_separable_conv2d_50_bias_v;
7assignvariableop_93_adam_batch_normalization_56_gamma_v:
6assignvariableop_94_adam_batch_normalization_56_beta_vC
?assignvariableop_95_adam_separable_conv2d_51_depthwise_kernel_vC
?assignvariableop_96_adam_separable_conv2d_51_pointwise_kernel_v7
3assignvariableop_97_adam_separable_conv2d_51_bias_v;
7assignvariableop_98_adam_batch_normalization_57_gamma_v:
6assignvariableop_99_adam_batch_normalization_57_beta_vD
@assignvariableop_100_adam_separable_conv2d_52_depthwise_kernel_vD
@assignvariableop_101_adam_separable_conv2d_52_pointwise_kernel_v8
4assignvariableop_102_adam_separable_conv2d_52_bias_v<
8assignvariableop_103_adam_batch_normalization_58_gamma_v;
7assignvariableop_104_adam_batch_normalization_58_beta_vD
@assignvariableop_105_adam_separable_conv2d_53_depthwise_kernel_vD
@assignvariableop_106_adam_separable_conv2d_53_pointwise_kernel_v8
4assignvariableop_107_adam_separable_conv2d_53_bias_v<
8assignvariableop_108_adam_batch_normalization_59_gamma_v;
7assignvariableop_109_adam_batch_normalization_59_beta_v/
+assignvariableop_110_adam_dense_37_kernel_v-
)assignvariableop_111_adam_dense_37_bias_v/
+assignvariableop_112_adam_dense_38_kernel_v-
)assignvariableop_113_adam_dense_38_bias_v/
+assignvariableop_114_adam_dense_39_kernel_v-
)assignvariableop_115_adam_dense_39_bias_v/
+assignvariableop_116_adam_dense_40_kernel_v-
)assignvariableop_117_adam_dense_40_bias_v
identity_119??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_105?AssignVariableOp_106?AssignVariableOp_107?AssignVariableOp_108?AssignVariableOp_109?AssignVariableOp_11?AssignVariableOp_110?AssignVariableOp_111?AssignVariableOp_112?AssignVariableOp_113?AssignVariableOp_114?AssignVariableOp_115?AssignVariableOp_116?AssignVariableOp_117?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?E
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:w*
dtype0*?D
value?DB?DwB@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-4/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-4/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-6/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-8/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-8/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-4/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-4/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-8/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-8/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-4/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-4/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-8/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-8/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:w*
dtype0*?
value?B?wB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes{
y2w	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp5assignvariableop_separable_conv2d_49_depthwise_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp7assignvariableop_1_separable_conv2d_49_pointwise_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp+assignvariableop_2_separable_conv2d_49_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_55_gammaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp.assignvariableop_4_batch_normalization_55_betaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp5assignvariableop_5_batch_normalization_55_moving_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp9assignvariableop_6_batch_normalization_55_moving_varianceIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp7assignvariableop_7_separable_conv2d_50_depthwise_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp7assignvariableop_8_separable_conv2d_50_pointwise_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp+assignvariableop_9_separable_conv2d_50_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp0assignvariableop_10_batch_normalization_56_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_batch_normalization_56_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp6assignvariableop_12_batch_normalization_56_moving_meanIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp:assignvariableop_13_batch_normalization_56_moving_varianceIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp8assignvariableop_14_separable_conv2d_51_depthwise_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp8assignvariableop_15_separable_conv2d_51_pointwise_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp,assignvariableop_16_separable_conv2d_51_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp0assignvariableop_17_batch_normalization_57_gammaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp/assignvariableop_18_batch_normalization_57_betaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp6assignvariableop_19_batch_normalization_57_moving_meanIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp:assignvariableop_20_batch_normalization_57_moving_varianceIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp8assignvariableop_21_separable_conv2d_52_depthwise_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp8assignvariableop_22_separable_conv2d_52_pointwise_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp,assignvariableop_23_separable_conv2d_52_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp0assignvariableop_24_batch_normalization_58_gammaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp/assignvariableop_25_batch_normalization_58_betaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp6assignvariableop_26_batch_normalization_58_moving_meanIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp:assignvariableop_27_batch_normalization_58_moving_varianceIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp8assignvariableop_28_separable_conv2d_53_depthwise_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp8assignvariableop_29_separable_conv2d_53_pointwise_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp,assignvariableop_30_separable_conv2d_53_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp0assignvariableop_31_batch_normalization_59_gammaIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp/assignvariableop_32_batch_normalization_59_betaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_batch_normalization_59_moving_meanIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp:assignvariableop_34_batch_normalization_59_moving_varianceIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp#assignvariableop_35_dense_37_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp!assignvariableop_36_dense_37_biasIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp#assignvariableop_37_dense_38_kernelIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp!assignvariableop_38_dense_38_biasIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp#assignvariableop_39_dense_39_kernelIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp!assignvariableop_40_dense_39_biasIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp#assignvariableop_41_dense_40_kernelIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp!assignvariableop_42_dense_40_biasIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOpassignvariableop_43_adam_iterIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOpassignvariableop_44_adam_beta_1Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOpassignvariableop_45_adam_beta_2Identity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOpassignvariableop_46_adam_decayIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp&assignvariableop_47_adam_learning_rateIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOpassignvariableop_48_totalIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOpassignvariableop_49_countIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOpassignvariableop_50_total_1Identity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOpassignvariableop_51_count_1Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp?assignvariableop_52_adam_separable_conv2d_49_depthwise_kernel_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp?assignvariableop_53_adam_separable_conv2d_49_pointwise_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp3assignvariableop_54_adam_separable_conv2d_49_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp7assignvariableop_55_adam_batch_normalization_55_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp6assignvariableop_56_adam_batch_normalization_55_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp?assignvariableop_57_adam_separable_conv2d_50_depthwise_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp?assignvariableop_58_adam_separable_conv2d_50_pointwise_kernel_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp3assignvariableop_59_adam_separable_conv2d_50_bias_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp7assignvariableop_60_adam_batch_normalization_56_gamma_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp6assignvariableop_61_adam_batch_normalization_56_beta_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp?assignvariableop_62_adam_separable_conv2d_51_depthwise_kernel_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp?assignvariableop_63_adam_separable_conv2d_51_pointwise_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp3assignvariableop_64_adam_separable_conv2d_51_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp7assignvariableop_65_adam_batch_normalization_57_gamma_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp6assignvariableop_66_adam_batch_normalization_57_beta_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp?assignvariableop_67_adam_separable_conv2d_52_depthwise_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp?assignvariableop_68_adam_separable_conv2d_52_pointwise_kernel_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp3assignvariableop_69_adam_separable_conv2d_52_bias_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp7assignvariableop_70_adam_batch_normalization_58_gamma_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp6assignvariableop_71_adam_batch_normalization_58_beta_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp?assignvariableop_72_adam_separable_conv2d_53_depthwise_kernel_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp?assignvariableop_73_adam_separable_conv2d_53_pointwise_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp3assignvariableop_74_adam_separable_conv2d_53_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp7assignvariableop_75_adam_batch_normalization_59_gamma_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp6assignvariableop_76_adam_batch_normalization_59_beta_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp*assignvariableop_77_adam_dense_37_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp(assignvariableop_78_adam_dense_37_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp*assignvariableop_79_adam_dense_38_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp(assignvariableop_80_adam_dense_38_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp*assignvariableop_81_adam_dense_39_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOp(assignvariableop_82_adam_dense_39_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp*assignvariableop_83_adam_dense_40_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84?
AssignVariableOp_84AssignVariableOp(assignvariableop_84_adam_dense_40_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85?
AssignVariableOp_85AssignVariableOp?assignvariableop_85_adam_separable_conv2d_49_depthwise_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86?
AssignVariableOp_86AssignVariableOp?assignvariableop_86_adam_separable_conv2d_49_pointwise_kernel_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87?
AssignVariableOp_87AssignVariableOp3assignvariableop_87_adam_separable_conv2d_49_bias_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88?
AssignVariableOp_88AssignVariableOp7assignvariableop_88_adam_batch_normalization_55_gamma_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89?
AssignVariableOp_89AssignVariableOp6assignvariableop_89_adam_batch_normalization_55_beta_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90?
AssignVariableOp_90AssignVariableOp?assignvariableop_90_adam_separable_conv2d_50_depthwise_kernel_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91?
AssignVariableOp_91AssignVariableOp?assignvariableop_91_adam_separable_conv2d_50_pointwise_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92?
AssignVariableOp_92AssignVariableOp3assignvariableop_92_adam_separable_conv2d_50_bias_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93?
AssignVariableOp_93AssignVariableOp7assignvariableop_93_adam_batch_normalization_56_gamma_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94?
AssignVariableOp_94AssignVariableOp6assignvariableop_94_adam_batch_normalization_56_beta_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95?
AssignVariableOp_95AssignVariableOp?assignvariableop_95_adam_separable_conv2d_51_depthwise_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96?
AssignVariableOp_96AssignVariableOp?assignvariableop_96_adam_separable_conv2d_51_pointwise_kernel_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97?
AssignVariableOp_97AssignVariableOp3assignvariableop_97_adam_separable_conv2d_51_bias_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98?
AssignVariableOp_98AssignVariableOp7assignvariableop_98_adam_batch_normalization_57_gamma_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99?
AssignVariableOp_99AssignVariableOp6assignvariableop_99_adam_batch_normalization_57_beta_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100?
AssignVariableOp_100AssignVariableOp@assignvariableop_100_adam_separable_conv2d_52_depthwise_kernel_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101?
AssignVariableOp_101AssignVariableOp@assignvariableop_101_adam_separable_conv2d_52_pointwise_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102?
AssignVariableOp_102AssignVariableOp4assignvariableop_102_adam_separable_conv2d_52_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103?
AssignVariableOp_103AssignVariableOp8assignvariableop_103_adam_batch_normalization_58_gamma_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104?
AssignVariableOp_104AssignVariableOp7assignvariableop_104_adam_batch_normalization_58_beta_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105?
AssignVariableOp_105AssignVariableOp@assignvariableop_105_adam_separable_conv2d_53_depthwise_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106?
AssignVariableOp_106AssignVariableOp@assignvariableop_106_adam_separable_conv2d_53_pointwise_kernel_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107?
AssignVariableOp_107AssignVariableOp4assignvariableop_107_adam_separable_conv2d_53_bias_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108?
AssignVariableOp_108AssignVariableOp8assignvariableop_108_adam_batch_normalization_59_gamma_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109?
AssignVariableOp_109AssignVariableOp7assignvariableop_109_adam_batch_normalization_59_beta_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110?
AssignVariableOp_110AssignVariableOp+assignvariableop_110_adam_dense_37_kernel_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111?
AssignVariableOp_111AssignVariableOp)assignvariableop_111_adam_dense_37_bias_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112?
AssignVariableOp_112AssignVariableOp+assignvariableop_112_adam_dense_38_kernel_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_112q
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:2
Identity_113?
AssignVariableOp_113AssignVariableOp)assignvariableop_113_adam_dense_38_bias_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_113q
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:2
Identity_114?
AssignVariableOp_114AssignVariableOp+assignvariableop_114_adam_dense_39_kernel_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_114q
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:2
Identity_115?
AssignVariableOp_115AssignVariableOp)assignvariableop_115_adam_dense_39_bias_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_115q
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:2
Identity_116?
AssignVariableOp_116AssignVariableOp+assignvariableop_116_adam_dense_40_kernel_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_116q
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:2
Identity_117?
AssignVariableOp_117AssignVariableOp)assignvariableop_117_adam_dense_40_bias_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1179
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_118Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_118?
Identity_119IdentityIdentity_118:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_119"%
identity_119Identity_119:output:0*?
_input_shapes?
?: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_169458

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:$*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:$*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:$*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:$*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????$:$:$:$:$:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????$2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????$::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????$
 
_user_specified_nameinputs
?
?
4__inference_separable_conv2d_49_layer_call_fn_169263

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_49_layer_call_and_return_conditional_losses_1692512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:+???????????????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_55_layer_call_fn_171673

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_1693562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_57_layer_call_fn_171929

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1701072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????0::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
??
?-
!__inference__wrapped_model_169234
separable_conv2d_49_inputN
Jsequential_10_separable_conv2d_49_separable_conv2d_readvariableop_resourceP
Lsequential_10_separable_conv2d_49_separable_conv2d_readvariableop_1_resourceE
Asequential_10_separable_conv2d_49_biasadd_readvariableop_resource@
<sequential_10_batch_normalization_55_readvariableop_resourceB
>sequential_10_batch_normalization_55_readvariableop_1_resourceQ
Msequential_10_batch_normalization_55_fusedbatchnormv3_readvariableop_resourceS
Osequential_10_batch_normalization_55_fusedbatchnormv3_readvariableop_1_resourceN
Jsequential_10_separable_conv2d_50_separable_conv2d_readvariableop_resourceP
Lsequential_10_separable_conv2d_50_separable_conv2d_readvariableop_1_resourceE
Asequential_10_separable_conv2d_50_biasadd_readvariableop_resource@
<sequential_10_batch_normalization_56_readvariableop_resourceB
>sequential_10_batch_normalization_56_readvariableop_1_resourceQ
Msequential_10_batch_normalization_56_fusedbatchnormv3_readvariableop_resourceS
Osequential_10_batch_normalization_56_fusedbatchnormv3_readvariableop_1_resourceN
Jsequential_10_separable_conv2d_51_separable_conv2d_readvariableop_resourceP
Lsequential_10_separable_conv2d_51_separable_conv2d_readvariableop_1_resourceE
Asequential_10_separable_conv2d_51_biasadd_readvariableop_resource@
<sequential_10_batch_normalization_57_readvariableop_resourceB
>sequential_10_batch_normalization_57_readvariableop_1_resourceQ
Msequential_10_batch_normalization_57_fusedbatchnormv3_readvariableop_resourceS
Osequential_10_batch_normalization_57_fusedbatchnormv3_readvariableop_1_resourceN
Jsequential_10_separable_conv2d_52_separable_conv2d_readvariableop_resourceP
Lsequential_10_separable_conv2d_52_separable_conv2d_readvariableop_1_resourceE
Asequential_10_separable_conv2d_52_biasadd_readvariableop_resource@
<sequential_10_batch_normalization_58_readvariableop_resourceB
>sequential_10_batch_normalization_58_readvariableop_1_resourceQ
Msequential_10_batch_normalization_58_fusedbatchnormv3_readvariableop_resourceS
Osequential_10_batch_normalization_58_fusedbatchnormv3_readvariableop_1_resourceN
Jsequential_10_separable_conv2d_53_separable_conv2d_readvariableop_resourceP
Lsequential_10_separable_conv2d_53_separable_conv2d_readvariableop_1_resourceE
Asequential_10_separable_conv2d_53_biasadd_readvariableop_resource@
<sequential_10_batch_normalization_59_readvariableop_resourceB
>sequential_10_batch_normalization_59_readvariableop_1_resourceQ
Msequential_10_batch_normalization_59_fusedbatchnormv3_readvariableop_resourceS
Osequential_10_batch_normalization_59_fusedbatchnormv3_readvariableop_1_resource9
5sequential_10_dense_37_matmul_readvariableop_resource:
6sequential_10_dense_37_biasadd_readvariableop_resource9
5sequential_10_dense_38_matmul_readvariableop_resource:
6sequential_10_dense_38_biasadd_readvariableop_resource9
5sequential_10_dense_39_matmul_readvariableop_resource:
6sequential_10_dense_39_biasadd_readvariableop_resource9
5sequential_10_dense_40_matmul_readvariableop_resource:
6sequential_10_dense_40_biasadd_readvariableop_resource
identity??Dsequential_10/batch_normalization_55/FusedBatchNormV3/ReadVariableOp?Fsequential_10/batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1?3sequential_10/batch_normalization_55/ReadVariableOp?5sequential_10/batch_normalization_55/ReadVariableOp_1?Dsequential_10/batch_normalization_56/FusedBatchNormV3/ReadVariableOp?Fsequential_10/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1?3sequential_10/batch_normalization_56/ReadVariableOp?5sequential_10/batch_normalization_56/ReadVariableOp_1?Dsequential_10/batch_normalization_57/FusedBatchNormV3/ReadVariableOp?Fsequential_10/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1?3sequential_10/batch_normalization_57/ReadVariableOp?5sequential_10/batch_normalization_57/ReadVariableOp_1?Dsequential_10/batch_normalization_58/FusedBatchNormV3/ReadVariableOp?Fsequential_10/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1?3sequential_10/batch_normalization_58/ReadVariableOp?5sequential_10/batch_normalization_58/ReadVariableOp_1?Dsequential_10/batch_normalization_59/FusedBatchNormV3/ReadVariableOp?Fsequential_10/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1?3sequential_10/batch_normalization_59/ReadVariableOp?5sequential_10/batch_normalization_59/ReadVariableOp_1?-sequential_10/dense_37/BiasAdd/ReadVariableOp?,sequential_10/dense_37/MatMul/ReadVariableOp?-sequential_10/dense_38/BiasAdd/ReadVariableOp?,sequential_10/dense_38/MatMul/ReadVariableOp?-sequential_10/dense_39/BiasAdd/ReadVariableOp?,sequential_10/dense_39/MatMul/ReadVariableOp?-sequential_10/dense_40/BiasAdd/ReadVariableOp?,sequential_10/dense_40/MatMul/ReadVariableOp?8sequential_10/separable_conv2d_49/BiasAdd/ReadVariableOp?Asequential_10/separable_conv2d_49/separable_conv2d/ReadVariableOp?Csequential_10/separable_conv2d_49/separable_conv2d/ReadVariableOp_1?8sequential_10/separable_conv2d_50/BiasAdd/ReadVariableOp?Asequential_10/separable_conv2d_50/separable_conv2d/ReadVariableOp?Csequential_10/separable_conv2d_50/separable_conv2d/ReadVariableOp_1?8sequential_10/separable_conv2d_51/BiasAdd/ReadVariableOp?Asequential_10/separable_conv2d_51/separable_conv2d/ReadVariableOp?Csequential_10/separable_conv2d_51/separable_conv2d/ReadVariableOp_1?8sequential_10/separable_conv2d_52/BiasAdd/ReadVariableOp?Asequential_10/separable_conv2d_52/separable_conv2d/ReadVariableOp?Csequential_10/separable_conv2d_52/separable_conv2d/ReadVariableOp_1?8sequential_10/separable_conv2d_53/BiasAdd/ReadVariableOp?Asequential_10/separable_conv2d_53/separable_conv2d/ReadVariableOp?Csequential_10/separable_conv2d_53/separable_conv2d/ReadVariableOp_1?
Asequential_10/separable_conv2d_49/separable_conv2d/ReadVariableOpReadVariableOpJsequential_10_separable_conv2d_49_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02C
Asequential_10/separable_conv2d_49/separable_conv2d/ReadVariableOp?
Csequential_10/separable_conv2d_49/separable_conv2d/ReadVariableOp_1ReadVariableOpLsequential_10_separable_conv2d_49_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:*
dtype02E
Csequential_10/separable_conv2d_49/separable_conv2d/ReadVariableOp_1?
8sequential_10/separable_conv2d_49/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2:
8sequential_10/separable_conv2d_49/separable_conv2d/Shape?
@sequential_10/separable_conv2d_49/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_10/separable_conv2d_49/separable_conv2d/dilation_rate?
<sequential_10/separable_conv2d_49/separable_conv2d/depthwiseDepthwiseConv2dNativeseparable_conv2d_49_inputIsequential_10/separable_conv2d_49/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????>>*
paddingSAME*
strides
2>
<sequential_10/separable_conv2d_49/separable_conv2d/depthwise?
2sequential_10/separable_conv2d_49/separable_conv2dConv2DEsequential_10/separable_conv2d_49/separable_conv2d/depthwise:output:0Ksequential_10/separable_conv2d_49/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????>>*
paddingVALID*
strides
24
2sequential_10/separable_conv2d_49/separable_conv2d?
8sequential_10/separable_conv2d_49/BiasAdd/ReadVariableOpReadVariableOpAsequential_10_separable_conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_10/separable_conv2d_49/BiasAdd/ReadVariableOp?
)sequential_10/separable_conv2d_49/BiasAddBiasAdd;sequential_10/separable_conv2d_49/separable_conv2d:output:0@sequential_10/separable_conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????>>2+
)sequential_10/separable_conv2d_49/BiasAdd?
%sequential_10/separable_conv2d_49/EluElu2sequential_10/separable_conv2d_49/BiasAdd:output:0*
T0*/
_output_shapes
:?????????>>2'
%sequential_10/separable_conv2d_49/Elu?
3sequential_10/batch_normalization_55/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_55_readvariableop_resource*
_output_shapes
:*
dtype025
3sequential_10/batch_normalization_55/ReadVariableOp?
5sequential_10/batch_normalization_55/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_55_readvariableop_1_resource*
_output_shapes
:*
dtype027
5sequential_10/batch_normalization_55/ReadVariableOp_1?
Dsequential_10/batch_normalization_55/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_55_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02F
Dsequential_10/batch_normalization_55/FusedBatchNormV3/ReadVariableOp?
Fsequential_10/batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_55_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02H
Fsequential_10/batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1?
5sequential_10/batch_normalization_55/FusedBatchNormV3FusedBatchNormV33sequential_10/separable_conv2d_49/Elu:activations:0;sequential_10/batch_normalization_55/ReadVariableOp:value:0=sequential_10/batch_normalization_55/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_55/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????>>:::::*
epsilon%o?:*
is_training( 27
5sequential_10/batch_normalization_55/FusedBatchNormV3?
Asequential_10/separable_conv2d_50/separable_conv2d/ReadVariableOpReadVariableOpJsequential_10_separable_conv2d_50_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02C
Asequential_10/separable_conv2d_50/separable_conv2d/ReadVariableOp?
Csequential_10/separable_conv2d_50/separable_conv2d/ReadVariableOp_1ReadVariableOpLsequential_10_separable_conv2d_50_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:$*
dtype02E
Csequential_10/separable_conv2d_50/separable_conv2d/ReadVariableOp_1?
8sequential_10/separable_conv2d_50/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2:
8sequential_10/separable_conv2d_50/separable_conv2d/Shape?
@sequential_10/separable_conv2d_50/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_10/separable_conv2d_50/separable_conv2d/dilation_rate?
<sequential_10/separable_conv2d_50/separable_conv2d/depthwiseDepthwiseConv2dNative9sequential_10/batch_normalization_55/FusedBatchNormV3:y:0Isequential_10/separable_conv2d_50/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2>
<sequential_10/separable_conv2d_50/separable_conv2d/depthwise?
2sequential_10/separable_conv2d_50/separable_conv2dConv2DEsequential_10/separable_conv2d_50/separable_conv2d/depthwise:output:0Ksequential_10/separable_conv2d_50/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????$*
paddingVALID*
strides
24
2sequential_10/separable_conv2d_50/separable_conv2d?
8sequential_10/separable_conv2d_50/BiasAdd/ReadVariableOpReadVariableOpAsequential_10_separable_conv2d_50_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02:
8sequential_10/separable_conv2d_50/BiasAdd/ReadVariableOp?
)sequential_10/separable_conv2d_50/BiasAddBiasAdd;sequential_10/separable_conv2d_50/separable_conv2d:output:0@sequential_10/separable_conv2d_50/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$2+
)sequential_10/separable_conv2d_50/BiasAdd?
%sequential_10/separable_conv2d_50/EluElu2sequential_10/separable_conv2d_50/BiasAdd:output:0*
T0*/
_output_shapes
:?????????$2'
%sequential_10/separable_conv2d_50/Elu?
3sequential_10/batch_normalization_56/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_56_readvariableop_resource*
_output_shapes
:$*
dtype025
3sequential_10/batch_normalization_56/ReadVariableOp?
5sequential_10/batch_normalization_56/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_56_readvariableop_1_resource*
_output_shapes
:$*
dtype027
5sequential_10/batch_normalization_56/ReadVariableOp_1?
Dsequential_10/batch_normalization_56/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_56_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:$*
dtype02F
Dsequential_10/batch_normalization_56/FusedBatchNormV3/ReadVariableOp?
Fsequential_10/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_56_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:$*
dtype02H
Fsequential_10/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1?
5sequential_10/batch_normalization_56/FusedBatchNormV3FusedBatchNormV33sequential_10/separable_conv2d_50/Elu:activations:0;sequential_10/batch_normalization_56/ReadVariableOp:value:0=sequential_10/batch_normalization_56/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_56/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????$:$:$:$:$:*
epsilon%o?:*
is_training( 27
5sequential_10/batch_normalization_56/FusedBatchNormV3?
Asequential_10/separable_conv2d_51/separable_conv2d/ReadVariableOpReadVariableOpJsequential_10_separable_conv2d_51_separable_conv2d_readvariableop_resource*&
_output_shapes
:$*
dtype02C
Asequential_10/separable_conv2d_51/separable_conv2d/ReadVariableOp?
Csequential_10/separable_conv2d_51/separable_conv2d/ReadVariableOp_1ReadVariableOpLsequential_10_separable_conv2d_51_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:$0*
dtype02E
Csequential_10/separable_conv2d_51/separable_conv2d/ReadVariableOp_1?
8sequential_10/separable_conv2d_51/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      $      2:
8sequential_10/separable_conv2d_51/separable_conv2d/Shape?
@sequential_10/separable_conv2d_51/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_10/separable_conv2d_51/separable_conv2d/dilation_rate?
<sequential_10/separable_conv2d_51/separable_conv2d/depthwiseDepthwiseConv2dNative9sequential_10/batch_normalization_56/FusedBatchNormV3:y:0Isequential_10/separable_conv2d_51/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$*
paddingSAME*
strides
2>
<sequential_10/separable_conv2d_51/separable_conv2d/depthwise?
2sequential_10/separable_conv2d_51/separable_conv2dConv2DEsequential_10/separable_conv2d_51/separable_conv2d/depthwise:output:0Ksequential_10/separable_conv2d_51/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
24
2sequential_10/separable_conv2d_51/separable_conv2d?
8sequential_10/separable_conv2d_51/BiasAdd/ReadVariableOpReadVariableOpAsequential_10_separable_conv2d_51_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02:
8sequential_10/separable_conv2d_51/BiasAdd/ReadVariableOp?
)sequential_10/separable_conv2d_51/BiasAddBiasAdd;sequential_10/separable_conv2d_51/separable_conv2d:output:0@sequential_10/separable_conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02+
)sequential_10/separable_conv2d_51/BiasAdd?
%sequential_10/separable_conv2d_51/EluElu2sequential_10/separable_conv2d_51/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02'
%sequential_10/separable_conv2d_51/Elu?
3sequential_10/batch_normalization_57/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_57_readvariableop_resource*
_output_shapes
:0*
dtype025
3sequential_10/batch_normalization_57/ReadVariableOp?
5sequential_10/batch_normalization_57/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_57_readvariableop_1_resource*
_output_shapes
:0*
dtype027
5sequential_10/batch_normalization_57/ReadVariableOp_1?
Dsequential_10/batch_normalization_57/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_57_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02F
Dsequential_10/batch_normalization_57/FusedBatchNormV3/ReadVariableOp?
Fsequential_10/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_57_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02H
Fsequential_10/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1?
5sequential_10/batch_normalization_57/FusedBatchNormV3FusedBatchNormV33sequential_10/separable_conv2d_51/Elu:activations:0;sequential_10/batch_normalization_57/ReadVariableOp:value:0=sequential_10/batch_normalization_57/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_57/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????0:0:0:0:0:*
epsilon%o?:*
is_training( 27
5sequential_10/batch_normalization_57/FusedBatchNormV3?
Asequential_10/separable_conv2d_52/separable_conv2d/ReadVariableOpReadVariableOpJsequential_10_separable_conv2d_52_separable_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype02C
Asequential_10/separable_conv2d_52/separable_conv2d/ReadVariableOp?
Csequential_10/separable_conv2d_52/separable_conv2d/ReadVariableOp_1ReadVariableOpLsequential_10_separable_conv2d_52_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:0@*
dtype02E
Csequential_10/separable_conv2d_52/separable_conv2d/ReadVariableOp_1?
8sequential_10/separable_conv2d_52/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      0      2:
8sequential_10/separable_conv2d_52/separable_conv2d/Shape?
@sequential_10/separable_conv2d_52/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_10/separable_conv2d_52/separable_conv2d/dilation_rate?
<sequential_10/separable_conv2d_52/separable_conv2d/depthwiseDepthwiseConv2dNative9sequential_10/batch_normalization_57/FusedBatchNormV3:y:0Isequential_10/separable_conv2d_52/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2>
<sequential_10/separable_conv2d_52/separable_conv2d/depthwise?
2sequential_10/separable_conv2d_52/separable_conv2dConv2DEsequential_10/separable_conv2d_52/separable_conv2d/depthwise:output:0Ksequential_10/separable_conv2d_52/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
24
2sequential_10/separable_conv2d_52/separable_conv2d?
8sequential_10/separable_conv2d_52/BiasAdd/ReadVariableOpReadVariableOpAsequential_10_separable_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_10/separable_conv2d_52/BiasAdd/ReadVariableOp?
)sequential_10/separable_conv2d_52/BiasAddBiasAdd;sequential_10/separable_conv2d_52/separable_conv2d:output:0@sequential_10/separable_conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2+
)sequential_10/separable_conv2d_52/BiasAdd?
%sequential_10/separable_conv2d_52/EluElu2sequential_10/separable_conv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2'
%sequential_10/separable_conv2d_52/Elu?
3sequential_10/batch_normalization_58/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_58_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_10/batch_normalization_58/ReadVariableOp?
5sequential_10/batch_normalization_58/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_58_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5sequential_10/batch_normalization_58/ReadVariableOp_1?
Dsequential_10/batch_normalization_58/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_58_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_10/batch_normalization_58/FusedBatchNormV3/ReadVariableOp?
Fsequential_10/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_58_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_10/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1?
5sequential_10/batch_normalization_58/FusedBatchNormV3FusedBatchNormV33sequential_10/separable_conv2d_52/Elu:activations:0;sequential_10/batch_normalization_58/ReadVariableOp:value:0=sequential_10/batch_normalization_58/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_58/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 27
5sequential_10/batch_normalization_58/FusedBatchNormV3?
Asequential_10/separable_conv2d_53/separable_conv2d/ReadVariableOpReadVariableOpJsequential_10_separable_conv2d_53_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02C
Asequential_10/separable_conv2d_53/separable_conv2d/ReadVariableOp?
Csequential_10/separable_conv2d_53/separable_conv2d/ReadVariableOp_1ReadVariableOpLsequential_10_separable_conv2d_53_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@@*
dtype02E
Csequential_10/separable_conv2d_53/separable_conv2d/ReadVariableOp_1?
8sequential_10/separable_conv2d_53/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      2:
8sequential_10/separable_conv2d_53/separable_conv2d/Shape?
@sequential_10/separable_conv2d_53/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_10/separable_conv2d_53/separable_conv2d/dilation_rate?
<sequential_10/separable_conv2d_53/separable_conv2d/depthwiseDepthwiseConv2dNative9sequential_10/batch_normalization_58/FusedBatchNormV3:y:0Isequential_10/separable_conv2d_53/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2>
<sequential_10/separable_conv2d_53/separable_conv2d/depthwise?
2sequential_10/separable_conv2d_53/separable_conv2dConv2DEsequential_10/separable_conv2d_53/separable_conv2d/depthwise:output:0Ksequential_10/separable_conv2d_53/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
24
2sequential_10/separable_conv2d_53/separable_conv2d?
8sequential_10/separable_conv2d_53/BiasAdd/ReadVariableOpReadVariableOpAsequential_10_separable_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_10/separable_conv2d_53/BiasAdd/ReadVariableOp?
)sequential_10/separable_conv2d_53/BiasAddBiasAdd;sequential_10/separable_conv2d_53/separable_conv2d:output:0@sequential_10/separable_conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2+
)sequential_10/separable_conv2d_53/BiasAdd?
%sequential_10/separable_conv2d_53/EluElu2sequential_10/separable_conv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2'
%sequential_10/separable_conv2d_53/Elu?
3sequential_10/batch_normalization_59/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_59_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_10/batch_normalization_59/ReadVariableOp?
5sequential_10/batch_normalization_59/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_59_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5sequential_10/batch_normalization_59/ReadVariableOp_1?
Dsequential_10/batch_normalization_59/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_59_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_10/batch_normalization_59/FusedBatchNormV3/ReadVariableOp?
Fsequential_10/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_59_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_10/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1?
5sequential_10/batch_normalization_59/FusedBatchNormV3FusedBatchNormV33sequential_10/separable_conv2d_53/Elu:activations:0;sequential_10/batch_normalization_59/ReadVariableOp:value:0=sequential_10/batch_normalization_59/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_59/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 27
5sequential_10/batch_normalization_59/FusedBatchNormV3?
sequential_10/flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? @  2 
sequential_10/flatten_10/Const?
 sequential_10/flatten_10/ReshapeReshape9sequential_10/batch_normalization_59/FusedBatchNormV3:y:0'sequential_10/flatten_10/Const:output:0*
T0*)
_output_shapes
:???????????2"
 sequential_10/flatten_10/Reshape?
,sequential_10/dense_37/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_37_matmul_readvariableop_resource* 
_output_shapes
:
??d*
dtype02.
,sequential_10/dense_37/MatMul/ReadVariableOp?
sequential_10/dense_37/MatMulMatMul)sequential_10/flatten_10/Reshape:output:04sequential_10/dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
sequential_10/dense_37/MatMul?
-sequential_10/dense_37/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_37_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02/
-sequential_10/dense_37/BiasAdd/ReadVariableOp?
sequential_10/dense_37/BiasAddBiasAdd'sequential_10/dense_37/MatMul:product:05sequential_10/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2 
sequential_10/dense_37/BiasAdd?
sequential_10/dense_37/EluElu'sequential_10/dense_37/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
sequential_10/dense_37/Elu?
,sequential_10/dense_38/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_38_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02.
,sequential_10/dense_38/MatMul/ReadVariableOp?
sequential_10/dense_38/MatMulMatMul(sequential_10/dense_37/Elu:activations:04sequential_10/dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
sequential_10/dense_38/MatMul?
-sequential_10/dense_38/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_38_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02/
-sequential_10/dense_38/BiasAdd/ReadVariableOp?
sequential_10/dense_38/BiasAddBiasAdd'sequential_10/dense_38/MatMul:product:05sequential_10/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22 
sequential_10/dense_38/BiasAdd?
sequential_10/dense_38/EluElu'sequential_10/dense_38/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
sequential_10/dense_38/Elu?
,sequential_10/dense_39/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_39_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype02.
,sequential_10/dense_39/MatMul/ReadVariableOp?
sequential_10/dense_39/MatMulMatMul(sequential_10/dense_38/Elu:activations:04sequential_10/dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_10/dense_39/MatMul?
-sequential_10/dense_39/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_39_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02/
-sequential_10/dense_39/BiasAdd/ReadVariableOp?
sequential_10/dense_39/BiasAddBiasAdd'sequential_10/dense_39/MatMul:product:05sequential_10/dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2 
sequential_10/dense_39/BiasAdd?
sequential_10/dense_39/EluElu'sequential_10/dense_39/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
sequential_10/dense_39/Elu?
,sequential_10/dense_40/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_40_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02.
,sequential_10/dense_40/MatMul/ReadVariableOp?
sequential_10/dense_40/MatMulMatMul(sequential_10/dense_39/Elu:activations:04sequential_10/dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_10/dense_40/MatMul?
-sequential_10/dense_40/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_10/dense_40/BiasAdd/ReadVariableOp?
sequential_10/dense_40/BiasAddBiasAdd'sequential_10/dense_40/MatMul:product:05sequential_10/dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_10/dense_40/BiasAdd?
sequential_10/dense_40/SoftmaxSoftmax'sequential_10/dense_40/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_10/dense_40/Softmax?
IdentityIdentity(sequential_10/dense_40/Softmax:softmax:0E^sequential_10/batch_normalization_55/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_55/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_55/ReadVariableOp6^sequential_10/batch_normalization_55/ReadVariableOp_1E^sequential_10/batch_normalization_56/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_56/ReadVariableOp6^sequential_10/batch_normalization_56/ReadVariableOp_1E^sequential_10/batch_normalization_57/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_57/ReadVariableOp6^sequential_10/batch_normalization_57/ReadVariableOp_1E^sequential_10/batch_normalization_58/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_58/ReadVariableOp6^sequential_10/batch_normalization_58/ReadVariableOp_1E^sequential_10/batch_normalization_59/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_59/ReadVariableOp6^sequential_10/batch_normalization_59/ReadVariableOp_1.^sequential_10/dense_37/BiasAdd/ReadVariableOp-^sequential_10/dense_37/MatMul/ReadVariableOp.^sequential_10/dense_38/BiasAdd/ReadVariableOp-^sequential_10/dense_38/MatMul/ReadVariableOp.^sequential_10/dense_39/BiasAdd/ReadVariableOp-^sequential_10/dense_39/MatMul/ReadVariableOp.^sequential_10/dense_40/BiasAdd/ReadVariableOp-^sequential_10/dense_40/MatMul/ReadVariableOp9^sequential_10/separable_conv2d_49/BiasAdd/ReadVariableOpB^sequential_10/separable_conv2d_49/separable_conv2d/ReadVariableOpD^sequential_10/separable_conv2d_49/separable_conv2d/ReadVariableOp_19^sequential_10/separable_conv2d_50/BiasAdd/ReadVariableOpB^sequential_10/separable_conv2d_50/separable_conv2d/ReadVariableOpD^sequential_10/separable_conv2d_50/separable_conv2d/ReadVariableOp_19^sequential_10/separable_conv2d_51/BiasAdd/ReadVariableOpB^sequential_10/separable_conv2d_51/separable_conv2d/ReadVariableOpD^sequential_10/separable_conv2d_51/separable_conv2d/ReadVariableOp_19^sequential_10/separable_conv2d_52/BiasAdd/ReadVariableOpB^sequential_10/separable_conv2d_52/separable_conv2d/ReadVariableOpD^sequential_10/separable_conv2d_52/separable_conv2d/ReadVariableOp_19^sequential_10/separable_conv2d_53/BiasAdd/ReadVariableOpB^sequential_10/separable_conv2d_53/separable_conv2d/ReadVariableOpD^sequential_10/separable_conv2d_53/separable_conv2d/ReadVariableOp_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????||:::::::::::::::::::::::::::::::::::::::::::2?
Dsequential_10/batch_normalization_55/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_55/FusedBatchNormV3/ReadVariableOp2?
Fsequential_10/batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_55/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_55/ReadVariableOp3sequential_10/batch_normalization_55/ReadVariableOp2n
5sequential_10/batch_normalization_55/ReadVariableOp_15sequential_10/batch_normalization_55/ReadVariableOp_12?
Dsequential_10/batch_normalization_56/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_56/FusedBatchNormV3/ReadVariableOp2?
Fsequential_10/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_56/ReadVariableOp3sequential_10/batch_normalization_56/ReadVariableOp2n
5sequential_10/batch_normalization_56/ReadVariableOp_15sequential_10/batch_normalization_56/ReadVariableOp_12?
Dsequential_10/batch_normalization_57/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_57/FusedBatchNormV3/ReadVariableOp2?
Fsequential_10/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_57/ReadVariableOp3sequential_10/batch_normalization_57/ReadVariableOp2n
5sequential_10/batch_normalization_57/ReadVariableOp_15sequential_10/batch_normalization_57/ReadVariableOp_12?
Dsequential_10/batch_normalization_58/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_58/FusedBatchNormV3/ReadVariableOp2?
Fsequential_10/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_58/ReadVariableOp3sequential_10/batch_normalization_58/ReadVariableOp2n
5sequential_10/batch_normalization_58/ReadVariableOp_15sequential_10/batch_normalization_58/ReadVariableOp_12?
Dsequential_10/batch_normalization_59/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_59/FusedBatchNormV3/ReadVariableOp2?
Fsequential_10/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_59/ReadVariableOp3sequential_10/batch_normalization_59/ReadVariableOp2n
5sequential_10/batch_normalization_59/ReadVariableOp_15sequential_10/batch_normalization_59/ReadVariableOp_12^
-sequential_10/dense_37/BiasAdd/ReadVariableOp-sequential_10/dense_37/BiasAdd/ReadVariableOp2\
,sequential_10/dense_37/MatMul/ReadVariableOp,sequential_10/dense_37/MatMul/ReadVariableOp2^
-sequential_10/dense_38/BiasAdd/ReadVariableOp-sequential_10/dense_38/BiasAdd/ReadVariableOp2\
,sequential_10/dense_38/MatMul/ReadVariableOp,sequential_10/dense_38/MatMul/ReadVariableOp2^
-sequential_10/dense_39/BiasAdd/ReadVariableOp-sequential_10/dense_39/BiasAdd/ReadVariableOp2\
,sequential_10/dense_39/MatMul/ReadVariableOp,sequential_10/dense_39/MatMul/ReadVariableOp2^
-sequential_10/dense_40/BiasAdd/ReadVariableOp-sequential_10/dense_40/BiasAdd/ReadVariableOp2\
,sequential_10/dense_40/MatMul/ReadVariableOp,sequential_10/dense_40/MatMul/ReadVariableOp2t
8sequential_10/separable_conv2d_49/BiasAdd/ReadVariableOp8sequential_10/separable_conv2d_49/BiasAdd/ReadVariableOp2?
Asequential_10/separable_conv2d_49/separable_conv2d/ReadVariableOpAsequential_10/separable_conv2d_49/separable_conv2d/ReadVariableOp2?
Csequential_10/separable_conv2d_49/separable_conv2d/ReadVariableOp_1Csequential_10/separable_conv2d_49/separable_conv2d/ReadVariableOp_12t
8sequential_10/separable_conv2d_50/BiasAdd/ReadVariableOp8sequential_10/separable_conv2d_50/BiasAdd/ReadVariableOp2?
Asequential_10/separable_conv2d_50/separable_conv2d/ReadVariableOpAsequential_10/separable_conv2d_50/separable_conv2d/ReadVariableOp2?
Csequential_10/separable_conv2d_50/separable_conv2d/ReadVariableOp_1Csequential_10/separable_conv2d_50/separable_conv2d/ReadVariableOp_12t
8sequential_10/separable_conv2d_51/BiasAdd/ReadVariableOp8sequential_10/separable_conv2d_51/BiasAdd/ReadVariableOp2?
Asequential_10/separable_conv2d_51/separable_conv2d/ReadVariableOpAsequential_10/separable_conv2d_51/separable_conv2d/ReadVariableOp2?
Csequential_10/separable_conv2d_51/separable_conv2d/ReadVariableOp_1Csequential_10/separable_conv2d_51/separable_conv2d/ReadVariableOp_12t
8sequential_10/separable_conv2d_52/BiasAdd/ReadVariableOp8sequential_10/separable_conv2d_52/BiasAdd/ReadVariableOp2?
Asequential_10/separable_conv2d_52/separable_conv2d/ReadVariableOpAsequential_10/separable_conv2d_52/separable_conv2d/ReadVariableOp2?
Csequential_10/separable_conv2d_52/separable_conv2d/ReadVariableOp_1Csequential_10/separable_conv2d_52/separable_conv2d/ReadVariableOp_12t
8sequential_10/separable_conv2d_53/BiasAdd/ReadVariableOp8sequential_10/separable_conv2d_53/BiasAdd/ReadVariableOp2?
Asequential_10/separable_conv2d_53/separable_conv2d/ReadVariableOpAsequential_10/separable_conv2d_53/separable_conv2d/ReadVariableOp2?
Csequential_10/separable_conv2d_53/separable_conv2d/ReadVariableOp_1Csequential_10/separable_conv2d_53/separable_conv2d/ReadVariableOp_1:j f
/
_output_shapes
:?????????||
3
_user_specified_nameseparable_conv2d_49_input
??
?$
I__inference_sequential_10_layer_call_and_return_conditional_losses_171363

inputs@
<separable_conv2d_49_separable_conv2d_readvariableop_resourceB
>separable_conv2d_49_separable_conv2d_readvariableop_1_resource7
3separable_conv2d_49_biasadd_readvariableop_resource2
.batch_normalization_55_readvariableop_resource4
0batch_normalization_55_readvariableop_1_resourceC
?batch_normalization_55_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_55_fusedbatchnormv3_readvariableop_1_resource@
<separable_conv2d_50_separable_conv2d_readvariableop_resourceB
>separable_conv2d_50_separable_conv2d_readvariableop_1_resource7
3separable_conv2d_50_biasadd_readvariableop_resource2
.batch_normalization_56_readvariableop_resource4
0batch_normalization_56_readvariableop_1_resourceC
?batch_normalization_56_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_56_fusedbatchnormv3_readvariableop_1_resource@
<separable_conv2d_51_separable_conv2d_readvariableop_resourceB
>separable_conv2d_51_separable_conv2d_readvariableop_1_resource7
3separable_conv2d_51_biasadd_readvariableop_resource2
.batch_normalization_57_readvariableop_resource4
0batch_normalization_57_readvariableop_1_resourceC
?batch_normalization_57_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource@
<separable_conv2d_52_separable_conv2d_readvariableop_resourceB
>separable_conv2d_52_separable_conv2d_readvariableop_1_resource7
3separable_conv2d_52_biasadd_readvariableop_resource2
.batch_normalization_58_readvariableop_resource4
0batch_normalization_58_readvariableop_1_resourceC
?batch_normalization_58_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource@
<separable_conv2d_53_separable_conv2d_readvariableop_resourceB
>separable_conv2d_53_separable_conv2d_readvariableop_1_resource7
3separable_conv2d_53_biasadd_readvariableop_resource2
.batch_normalization_59_readvariableop_resource4
0batch_normalization_59_readvariableop_1_resourceC
?batch_normalization_59_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource+
'dense_37_matmul_readvariableop_resource,
(dense_37_biasadd_readvariableop_resource+
'dense_38_matmul_readvariableop_resource,
(dense_38_biasadd_readvariableop_resource+
'dense_39_matmul_readvariableop_resource,
(dense_39_biasadd_readvariableop_resource+
'dense_40_matmul_readvariableop_resource,
(dense_40_biasadd_readvariableop_resource
identity??6batch_normalization_55/FusedBatchNormV3/ReadVariableOp?8batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_55/ReadVariableOp?'batch_normalization_55/ReadVariableOp_1?6batch_normalization_56/FusedBatchNormV3/ReadVariableOp?8batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_56/ReadVariableOp?'batch_normalization_56/ReadVariableOp_1?6batch_normalization_57/FusedBatchNormV3/ReadVariableOp?8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_57/ReadVariableOp?'batch_normalization_57/ReadVariableOp_1?6batch_normalization_58/FusedBatchNormV3/ReadVariableOp?8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_58/ReadVariableOp?'batch_normalization_58/ReadVariableOp_1?6batch_normalization_59/FusedBatchNormV3/ReadVariableOp?8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_59/ReadVariableOp?'batch_normalization_59/ReadVariableOp_1?dense_37/BiasAdd/ReadVariableOp?dense_37/MatMul/ReadVariableOp?dense_38/BiasAdd/ReadVariableOp?dense_38/MatMul/ReadVariableOp?dense_39/BiasAdd/ReadVariableOp?dense_39/MatMul/ReadVariableOp?dense_40/BiasAdd/ReadVariableOp?dense_40/MatMul/ReadVariableOp?*separable_conv2d_49/BiasAdd/ReadVariableOp?3separable_conv2d_49/separable_conv2d/ReadVariableOp?5separable_conv2d_49/separable_conv2d/ReadVariableOp_1?*separable_conv2d_50/BiasAdd/ReadVariableOp?3separable_conv2d_50/separable_conv2d/ReadVariableOp?5separable_conv2d_50/separable_conv2d/ReadVariableOp_1?*separable_conv2d_51/BiasAdd/ReadVariableOp?3separable_conv2d_51/separable_conv2d/ReadVariableOp?5separable_conv2d_51/separable_conv2d/ReadVariableOp_1?*separable_conv2d_52/BiasAdd/ReadVariableOp?3separable_conv2d_52/separable_conv2d/ReadVariableOp?5separable_conv2d_52/separable_conv2d/ReadVariableOp_1?*separable_conv2d_53/BiasAdd/ReadVariableOp?3separable_conv2d_53/separable_conv2d/ReadVariableOp?5separable_conv2d_53/separable_conv2d/ReadVariableOp_1?
3separable_conv2d_49/separable_conv2d/ReadVariableOpReadVariableOp<separable_conv2d_49_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype025
3separable_conv2d_49/separable_conv2d/ReadVariableOp?
5separable_conv2d_49/separable_conv2d/ReadVariableOp_1ReadVariableOp>separable_conv2d_49_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:*
dtype027
5separable_conv2d_49/separable_conv2d/ReadVariableOp_1?
*separable_conv2d_49/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2,
*separable_conv2d_49/separable_conv2d/Shape?
2separable_conv2d_49/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      24
2separable_conv2d_49/separable_conv2d/dilation_rate?
.separable_conv2d_49/separable_conv2d/depthwiseDepthwiseConv2dNativeinputs;separable_conv2d_49/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????>>*
paddingSAME*
strides
20
.separable_conv2d_49/separable_conv2d/depthwise?
$separable_conv2d_49/separable_conv2dConv2D7separable_conv2d_49/separable_conv2d/depthwise:output:0=separable_conv2d_49/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????>>*
paddingVALID*
strides
2&
$separable_conv2d_49/separable_conv2d?
*separable_conv2d_49/BiasAdd/ReadVariableOpReadVariableOp3separable_conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*separable_conv2d_49/BiasAdd/ReadVariableOp?
separable_conv2d_49/BiasAddBiasAdd-separable_conv2d_49/separable_conv2d:output:02separable_conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????>>2
separable_conv2d_49/BiasAdd?
separable_conv2d_49/EluElu$separable_conv2d_49/BiasAdd:output:0*
T0*/
_output_shapes
:?????????>>2
separable_conv2d_49/Elu?
%batch_normalization_55/ReadVariableOpReadVariableOp.batch_normalization_55_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_55/ReadVariableOp?
'batch_normalization_55/ReadVariableOp_1ReadVariableOp0batch_normalization_55_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_55/ReadVariableOp_1?
6batch_normalization_55/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_55_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_55/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_55_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_55/FusedBatchNormV3FusedBatchNormV3%separable_conv2d_49/Elu:activations:0-batch_normalization_55/ReadVariableOp:value:0/batch_normalization_55/ReadVariableOp_1:value:0>batch_normalization_55/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????>>:::::*
epsilon%o?:*
is_training( 2)
'batch_normalization_55/FusedBatchNormV3?
3separable_conv2d_50/separable_conv2d/ReadVariableOpReadVariableOp<separable_conv2d_50_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype025
3separable_conv2d_50/separable_conv2d/ReadVariableOp?
5separable_conv2d_50/separable_conv2d/ReadVariableOp_1ReadVariableOp>separable_conv2d_50_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:$*
dtype027
5separable_conv2d_50/separable_conv2d/ReadVariableOp_1?
*separable_conv2d_50/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2,
*separable_conv2d_50/separable_conv2d/Shape?
2separable_conv2d_50/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      24
2separable_conv2d_50/separable_conv2d/dilation_rate?
.separable_conv2d_50/separable_conv2d/depthwiseDepthwiseConv2dNative+batch_normalization_55/FusedBatchNormV3:y:0;separable_conv2d_50/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
20
.separable_conv2d_50/separable_conv2d/depthwise?
$separable_conv2d_50/separable_conv2dConv2D7separable_conv2d_50/separable_conv2d/depthwise:output:0=separable_conv2d_50/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????$*
paddingVALID*
strides
2&
$separable_conv2d_50/separable_conv2d?
*separable_conv2d_50/BiasAdd/ReadVariableOpReadVariableOp3separable_conv2d_50_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02,
*separable_conv2d_50/BiasAdd/ReadVariableOp?
separable_conv2d_50/BiasAddBiasAdd-separable_conv2d_50/separable_conv2d:output:02separable_conv2d_50/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$2
separable_conv2d_50/BiasAdd?
separable_conv2d_50/EluElu$separable_conv2d_50/BiasAdd:output:0*
T0*/
_output_shapes
:?????????$2
separable_conv2d_50/Elu?
%batch_normalization_56/ReadVariableOpReadVariableOp.batch_normalization_56_readvariableop_resource*
_output_shapes
:$*
dtype02'
%batch_normalization_56/ReadVariableOp?
'batch_normalization_56/ReadVariableOp_1ReadVariableOp0batch_normalization_56_readvariableop_1_resource*
_output_shapes
:$*
dtype02)
'batch_normalization_56/ReadVariableOp_1?
6batch_normalization_56/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_56_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:$*
dtype028
6batch_normalization_56/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_56_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:$*
dtype02:
8batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_56/FusedBatchNormV3FusedBatchNormV3%separable_conv2d_50/Elu:activations:0-batch_normalization_56/ReadVariableOp:value:0/batch_normalization_56/ReadVariableOp_1:value:0>batch_normalization_56/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????$:$:$:$:$:*
epsilon%o?:*
is_training( 2)
'batch_normalization_56/FusedBatchNormV3?
3separable_conv2d_51/separable_conv2d/ReadVariableOpReadVariableOp<separable_conv2d_51_separable_conv2d_readvariableop_resource*&
_output_shapes
:$*
dtype025
3separable_conv2d_51/separable_conv2d/ReadVariableOp?
5separable_conv2d_51/separable_conv2d/ReadVariableOp_1ReadVariableOp>separable_conv2d_51_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:$0*
dtype027
5separable_conv2d_51/separable_conv2d/ReadVariableOp_1?
*separable_conv2d_51/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      $      2,
*separable_conv2d_51/separable_conv2d/Shape?
2separable_conv2d_51/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      24
2separable_conv2d_51/separable_conv2d/dilation_rate?
.separable_conv2d_51/separable_conv2d/depthwiseDepthwiseConv2dNative+batch_normalization_56/FusedBatchNormV3:y:0;separable_conv2d_51/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$*
paddingSAME*
strides
20
.separable_conv2d_51/separable_conv2d/depthwise?
$separable_conv2d_51/separable_conv2dConv2D7separable_conv2d_51/separable_conv2d/depthwise:output:0=separable_conv2d_51/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
2&
$separable_conv2d_51/separable_conv2d?
*separable_conv2d_51/BiasAdd/ReadVariableOpReadVariableOp3separable_conv2d_51_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02,
*separable_conv2d_51/BiasAdd/ReadVariableOp?
separable_conv2d_51/BiasAddBiasAdd-separable_conv2d_51/separable_conv2d:output:02separable_conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02
separable_conv2d_51/BiasAdd?
separable_conv2d_51/EluElu$separable_conv2d_51/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02
separable_conv2d_51/Elu?
%batch_normalization_57/ReadVariableOpReadVariableOp.batch_normalization_57_readvariableop_resource*
_output_shapes
:0*
dtype02'
%batch_normalization_57/ReadVariableOp?
'batch_normalization_57/ReadVariableOp_1ReadVariableOp0batch_normalization_57_readvariableop_1_resource*
_output_shapes
:0*
dtype02)
'batch_normalization_57/ReadVariableOp_1?
6batch_normalization_57/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_57_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype028
6batch_normalization_57/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02:
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_57/FusedBatchNormV3FusedBatchNormV3%separable_conv2d_51/Elu:activations:0-batch_normalization_57/ReadVariableOp:value:0/batch_normalization_57/ReadVariableOp_1:value:0>batch_normalization_57/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????0:0:0:0:0:*
epsilon%o?:*
is_training( 2)
'batch_normalization_57/FusedBatchNormV3?
3separable_conv2d_52/separable_conv2d/ReadVariableOpReadVariableOp<separable_conv2d_52_separable_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype025
3separable_conv2d_52/separable_conv2d/ReadVariableOp?
5separable_conv2d_52/separable_conv2d/ReadVariableOp_1ReadVariableOp>separable_conv2d_52_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:0@*
dtype027
5separable_conv2d_52/separable_conv2d/ReadVariableOp_1?
*separable_conv2d_52/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      0      2,
*separable_conv2d_52/separable_conv2d/Shape?
2separable_conv2d_52/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      24
2separable_conv2d_52/separable_conv2d/dilation_rate?
.separable_conv2d_52/separable_conv2d/depthwiseDepthwiseConv2dNative+batch_normalization_57/FusedBatchNormV3:y:0;separable_conv2d_52/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
20
.separable_conv2d_52/separable_conv2d/depthwise?
$separable_conv2d_52/separable_conv2dConv2D7separable_conv2d_52/separable_conv2d/depthwise:output:0=separable_conv2d_52/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2&
$separable_conv2d_52/separable_conv2d?
*separable_conv2d_52/BiasAdd/ReadVariableOpReadVariableOp3separable_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*separable_conv2d_52/BiasAdd/ReadVariableOp?
separable_conv2d_52/BiasAddBiasAdd-separable_conv2d_52/separable_conv2d:output:02separable_conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
separable_conv2d_52/BiasAdd?
separable_conv2d_52/EluElu$separable_conv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
separable_conv2d_52/Elu?
%batch_normalization_58/ReadVariableOpReadVariableOp.batch_normalization_58_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_58/ReadVariableOp?
'batch_normalization_58/ReadVariableOp_1ReadVariableOp0batch_normalization_58_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_58/ReadVariableOp_1?
6batch_normalization_58/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_58_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_58/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_58/FusedBatchNormV3FusedBatchNormV3%separable_conv2d_52/Elu:activations:0-batch_normalization_58/ReadVariableOp:value:0/batch_normalization_58/ReadVariableOp_1:value:0>batch_normalization_58/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_58/FusedBatchNormV3?
3separable_conv2d_53/separable_conv2d/ReadVariableOpReadVariableOp<separable_conv2d_53_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype025
3separable_conv2d_53/separable_conv2d/ReadVariableOp?
5separable_conv2d_53/separable_conv2d/ReadVariableOp_1ReadVariableOp>separable_conv2d_53_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@@*
dtype027
5separable_conv2d_53/separable_conv2d/ReadVariableOp_1?
*separable_conv2d_53/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      2,
*separable_conv2d_53/separable_conv2d/Shape?
2separable_conv2d_53/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      24
2separable_conv2d_53/separable_conv2d/dilation_rate?
.separable_conv2d_53/separable_conv2d/depthwiseDepthwiseConv2dNative+batch_normalization_58/FusedBatchNormV3:y:0;separable_conv2d_53/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
20
.separable_conv2d_53/separable_conv2d/depthwise?
$separable_conv2d_53/separable_conv2dConv2D7separable_conv2d_53/separable_conv2d/depthwise:output:0=separable_conv2d_53/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2&
$separable_conv2d_53/separable_conv2d?
*separable_conv2d_53/BiasAdd/ReadVariableOpReadVariableOp3separable_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*separable_conv2d_53/BiasAdd/ReadVariableOp?
separable_conv2d_53/BiasAddBiasAdd-separable_conv2d_53/separable_conv2d:output:02separable_conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
separable_conv2d_53/BiasAdd?
separable_conv2d_53/EluElu$separable_conv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
separable_conv2d_53/Elu?
%batch_normalization_59/ReadVariableOpReadVariableOp.batch_normalization_59_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_59/ReadVariableOp?
'batch_normalization_59/ReadVariableOp_1ReadVariableOp0batch_normalization_59_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_59/ReadVariableOp_1?
6batch_normalization_59/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_59_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_59/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_59/FusedBatchNormV3FusedBatchNormV3%separable_conv2d_53/Elu:activations:0-batch_normalization_59/ReadVariableOp:value:0/batch_normalization_59/ReadVariableOp_1:value:0>batch_normalization_59/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_59/FusedBatchNormV3u
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? @  2
flatten_10/Const?
flatten_10/ReshapeReshape+batch_normalization_59/FusedBatchNormV3:y:0flatten_10/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_10/Reshape?
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource* 
_output_shapes
:
??d*
dtype02 
dense_37/MatMul/ReadVariableOp?
dense_37/MatMulMatMulflatten_10/Reshape:output:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_37/MatMul?
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_37/BiasAdd/ReadVariableOp?
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_37/BiasAddp
dense_37/EluEludense_37/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_37/Elu?
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02 
dense_38/MatMul/ReadVariableOp?
dense_38/MatMulMatMuldense_37/Elu:activations:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_38/MatMul?
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_38/BiasAdd/ReadVariableOp?
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_38/BiasAddp
dense_38/EluEludense_38/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
dense_38/Elu?
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype02 
dense_39/MatMul/ReadVariableOp?
dense_39/MatMulMatMuldense_38/Elu:activations:0&dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_39/MatMul?
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_39/BiasAdd/ReadVariableOp?
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_39/BiasAddp
dense_39/EluEludense_39/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_39/Elu?
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02 
dense_40/MatMul/ReadVariableOp?
dense_40/MatMulMatMuldense_39/Elu:activations:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_40/MatMul?
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_40/BiasAdd/ReadVariableOp?
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_40/BiasAdd|
dense_40/SoftmaxSoftmaxdense_40/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_40/Softmax?
IdentityIdentitydense_40/Softmax:softmax:07^batch_normalization_55/FusedBatchNormV3/ReadVariableOp9^batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_55/ReadVariableOp(^batch_normalization_55/ReadVariableOp_17^batch_normalization_56/FusedBatchNormV3/ReadVariableOp9^batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_56/ReadVariableOp(^batch_normalization_56/ReadVariableOp_17^batch_normalization_57/FusedBatchNormV3/ReadVariableOp9^batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_57/ReadVariableOp(^batch_normalization_57/ReadVariableOp_17^batch_normalization_58/FusedBatchNormV3/ReadVariableOp9^batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_58/ReadVariableOp(^batch_normalization_58/ReadVariableOp_17^batch_normalization_59/FusedBatchNormV3/ReadVariableOp9^batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_59/ReadVariableOp(^batch_normalization_59/ReadVariableOp_1 ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp+^separable_conv2d_49/BiasAdd/ReadVariableOp4^separable_conv2d_49/separable_conv2d/ReadVariableOp6^separable_conv2d_49/separable_conv2d/ReadVariableOp_1+^separable_conv2d_50/BiasAdd/ReadVariableOp4^separable_conv2d_50/separable_conv2d/ReadVariableOp6^separable_conv2d_50/separable_conv2d/ReadVariableOp_1+^separable_conv2d_51/BiasAdd/ReadVariableOp4^separable_conv2d_51/separable_conv2d/ReadVariableOp6^separable_conv2d_51/separable_conv2d/ReadVariableOp_1+^separable_conv2d_52/BiasAdd/ReadVariableOp4^separable_conv2d_52/separable_conv2d/ReadVariableOp6^separable_conv2d_52/separable_conv2d/ReadVariableOp_1+^separable_conv2d_53/BiasAdd/ReadVariableOp4^separable_conv2d_53/separable_conv2d/ReadVariableOp6^separable_conv2d_53/separable_conv2d/ReadVariableOp_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????||:::::::::::::::::::::::::::::::::::::::::::2p
6batch_normalization_55/FusedBatchNormV3/ReadVariableOp6batch_normalization_55/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_55/FusedBatchNormV3/ReadVariableOp_18batch_normalization_55/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_55/ReadVariableOp%batch_normalization_55/ReadVariableOp2R
'batch_normalization_55/ReadVariableOp_1'batch_normalization_55/ReadVariableOp_12p
6batch_normalization_56/FusedBatchNormV3/ReadVariableOp6batch_normalization_56/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_56/FusedBatchNormV3/ReadVariableOp_18batch_normalization_56/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_56/ReadVariableOp%batch_normalization_56/ReadVariableOp2R
'batch_normalization_56/ReadVariableOp_1'batch_normalization_56/ReadVariableOp_12p
6batch_normalization_57/FusedBatchNormV3/ReadVariableOp6batch_normalization_57/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_18batch_normalization_57/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_57/ReadVariableOp%batch_normalization_57/ReadVariableOp2R
'batch_normalization_57/ReadVariableOp_1'batch_normalization_57/ReadVariableOp_12p
6batch_normalization_58/FusedBatchNormV3/ReadVariableOp6batch_normalization_58/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_18batch_normalization_58/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_58/ReadVariableOp%batch_normalization_58/ReadVariableOp2R
'batch_normalization_58/ReadVariableOp_1'batch_normalization_58/ReadVariableOp_12p
6batch_normalization_59/FusedBatchNormV3/ReadVariableOp6batch_normalization_59/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_18batch_normalization_59/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_59/ReadVariableOp%batch_normalization_59/ReadVariableOp2R
'batch_normalization_59/ReadVariableOp_1'batch_normalization_59/ReadVariableOp_12B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp2X
*separable_conv2d_49/BiasAdd/ReadVariableOp*separable_conv2d_49/BiasAdd/ReadVariableOp2j
3separable_conv2d_49/separable_conv2d/ReadVariableOp3separable_conv2d_49/separable_conv2d/ReadVariableOp2n
5separable_conv2d_49/separable_conv2d/ReadVariableOp_15separable_conv2d_49/separable_conv2d/ReadVariableOp_12X
*separable_conv2d_50/BiasAdd/ReadVariableOp*separable_conv2d_50/BiasAdd/ReadVariableOp2j
3separable_conv2d_50/separable_conv2d/ReadVariableOp3separable_conv2d_50/separable_conv2d/ReadVariableOp2n
5separable_conv2d_50/separable_conv2d/ReadVariableOp_15separable_conv2d_50/separable_conv2d/ReadVariableOp_12X
*separable_conv2d_51/BiasAdd/ReadVariableOp*separable_conv2d_51/BiasAdd/ReadVariableOp2j
3separable_conv2d_51/separable_conv2d/ReadVariableOp3separable_conv2d_51/separable_conv2d/ReadVariableOp2n
5separable_conv2d_51/separable_conv2d/ReadVariableOp_15separable_conv2d_51/separable_conv2d/ReadVariableOp_12X
*separable_conv2d_52/BiasAdd/ReadVariableOp*separable_conv2d_52/BiasAdd/ReadVariableOp2j
3separable_conv2d_52/separable_conv2d/ReadVariableOp3separable_conv2d_52/separable_conv2d/ReadVariableOp2n
5separable_conv2d_52/separable_conv2d/ReadVariableOp_15separable_conv2d_52/separable_conv2d/ReadVariableOp_12X
*separable_conv2d_53/BiasAdd/ReadVariableOp*separable_conv2d_53/BiasAdd/ReadVariableOp2j
3separable_conv2d_53/separable_conv2d/ReadVariableOp3separable_conv2d_53/separable_conv2d/ReadVariableOp2n
5separable_conv2d_53/separable_conv2d/ReadVariableOp_15separable_conv2d_53/separable_conv2d/ReadVariableOp_1:W S
/
_output_shapes
:?????????||
 
_user_specified_nameinputs
?
?
O__inference_separable_conv2d_52_layer_call_and_return_conditional_losses_169650

inputs,
(separable_conv2d_readvariableop_resource.
*separable_conv2d_readvariableop_1_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?separable_conv2d/ReadVariableOp?!separable_conv2d/ReadVariableOp_1?
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype02!
separable_conv2d/ReadVariableOp?
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:0@*
dtype02#
!separable_conv2d/ReadVariableOp_1?
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      0      2
separable_conv2d/Shape?
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rate?
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????0*
paddingSAME*
strides
2
separable_conv2d/depthwise?
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
2
separable_conv2d?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@2	
BiasAddo
EluEluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:+???????????????????????????0:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????0
 
_user_specified_nameinputs
?
b
F__inference_flatten_10_layer_call_and_return_conditional_losses_170309

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? @  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_171949

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_58_layer_call_fn_172057

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_1697552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_172013

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_57_layer_call_fn_171852

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_1695912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????02

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????0::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????0
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_172031

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
.__inference_sequential_10_layer_call_fn_171545

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*M
_read_only_resource_inputs/
-+	
 !"#$%&'()*+*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_1708352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????||:::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????||
 
_user_specified_nameinputs
?
~
)__inference_dense_37_layer_call_fn_172216

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_1703282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
O__inference_separable_conv2d_53_layer_call_and_return_conditional_losses_169783

inputs,
(separable_conv2d_readvariableop_resource.
*separable_conv2d_readvariableop_1_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?separable_conv2d/ReadVariableOp?!separable_conv2d/ReadVariableOp_1?
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
separable_conv2d/ReadVariableOp?
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@@*
dtype02#
!separable_conv2d/ReadVariableOp_1?
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      2
separable_conv2d/Shape?
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rate?
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
separable_conv2d/depthwise?
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
2
separable_conv2d?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@2	
BiasAddo
EluEluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:+???????????????????????????@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
4__inference_separable_conv2d_51_layer_call_fn_169529

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_separable_conv2d_51_layer_call_and_return_conditional_losses_1695172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????02

Identity"
identityIdentity:output:0*L
_input_shapes;
9:+???????????????????????????$:::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????$
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_171903

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:0*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:0*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:0*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:0*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????0:0:0:0:0:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????0::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_55_layer_call_fn_171609

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_1699472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????>>2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????>>::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????>>
 
_user_specified_nameinputs
?
?
.__inference_sequential_10_layer_call_fn_170728
separable_conv2d_49_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallseparable_conv2d_49_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*C
_read_only_resource_inputs%
#!	
 !$%&'()*+*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_1706392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????||:::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
/
_output_shapes
:?????????||
3
_user_specified_nameseparable_conv2d_49_input
?
?
7__inference_batch_normalization_59_layer_call_fn_172108

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_1702492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
g
separable_conv2d_49_inputJ
+serving_default_separable_conv2d_49_input:0?????????||<
dense_400
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
Ϊ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
layer_with_weights-6
layer-6
layer_with_weights-7
layer-7
	layer_with_weights-8
	layer-8

layer_with_weights-9

layer-9
layer-10
layer_with_weights-10
layer-11
layer_with_weights-11
layer-12
layer_with_weights-12
layer-13
layer_with_weights-13
layer-14
	optimizer

signatures
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"??
_tf_keras_sequential??{"class_name": "Sequential", "name": "sequential_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 124, 124, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "separable_conv2d_49_input"}}, {"class_name": "SeparableConv2D", "config": {"name": "separable_conv2d_49", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 124, 124, 3]}, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_55", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "SeparableConv2D", "config": {"name": "separable_conv2d_50", "trainable": true, "dtype": "float32", "filters": 36, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_56", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "SeparableConv2D", "config": {"name": "separable_conv2d_51", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_57", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "SeparableConv2D", "config": {"name": "separable_conv2d_52", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_58", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "SeparableConv2D", "config": {"name": "separable_conv2d_53", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_59", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_10", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_37", "trainable": true, "dtype": "float32", "units": 100, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_38", "trainable": true, "dtype": "float32", "units": 50, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_39", "trainable": true, "dtype": "float32", "units": 10, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_40", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 124, 124, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 124, 124, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "separable_conv2d_49_input"}}, {"class_name": "SeparableConv2D", "config": {"name": "separable_conv2d_49", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 124, 124, 3]}, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_55", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "SeparableConv2D", "config": {"name": "separable_conv2d_50", "trainable": true, "dtype": "float32", "filters": 36, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_56", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "SeparableConv2D", "config": {"name": "separable_conv2d_51", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_57", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "SeparableConv2D", "config": {"name": "separable_conv2d_52", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_58", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "SeparableConv2D", "config": {"name": "separable_conv2d_53", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_59", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_10", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_37", "trainable": true, "dtype": "float32", "units": 100, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_38", "trainable": true, "dtype": "float32", "units": 50, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_39", "trainable": true, "dtype": "float32", "units": 10, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_40", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "acc", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
depthwise_kernel
pointwise_kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "SeparableConv2D", "name": "separable_conv2d_49", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 124, 124, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "separable_conv2d_49", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 124, 124, 3]}, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 124, 124, 3]}}
?	
axis
	 gamma
!beta
"moving_mean
#moving_variance
#$_self_saveable_object_factories
%	variables
&trainable_variables
'regularization_losses
(	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_55", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_55", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 24}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 62, 62, 24]}}
?
)depthwise_kernel
*pointwise_kernel
+bias
#,_self_saveable_object_factories
-	variables
.trainable_variables
/regularization_losses
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "SeparableConv2D", "name": "separable_conv2d_50", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "separable_conv2d_50", "trainable": true, "dtype": "float32", "filters": 36, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 24}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 62, 62, 24]}}
?	
1axis
	2gamma
3beta
4moving_mean
5moving_variance
#6_self_saveable_object_factories
7	variables
8trainable_variables
9regularization_losses
:	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_56", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_56", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 36}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 31, 31, 36]}}
?
;depthwise_kernel
<pointwise_kernel
=bias
#>_self_saveable_object_factories
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "SeparableConv2D", "name": "separable_conv2d_51", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "separable_conv2d_51", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 36}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 31, 31, 36]}}
?	
Caxis
	Dgamma
Ebeta
Fmoving_mean
Gmoving_variance
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_57", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_57", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 48}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 48]}}
?
Mdepthwise_kernel
Npointwise_kernel
Obias
#P_self_saveable_object_factories
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "SeparableConv2D", "name": "separable_conv2d_52", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "separable_conv2d_52", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 48}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 48]}}
?	
Uaxis
	Vgamma
Wbeta
Xmoving_mean
Ymoving_variance
#Z_self_saveable_object_factories
[	variables
\trainable_variables
]regularization_losses
^	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_58", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_58", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
?
_depthwise_kernel
`pointwise_kernel
abias
#b_self_saveable_object_factories
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "SeparableConv2D", "name": "separable_conv2d_53", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "separable_conv2d_53", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
?	
gaxis
	hgamma
ibeta
jmoving_mean
kmoving_variance
#l_self_saveable_object_factories
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_59", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_59", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
?
#q_self_saveable_object_factories
r	variables
strainable_variables
tregularization_losses
u	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_10", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

vkernel
wbias
#x_self_saveable_object_factories
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_37", "trainable": true, "dtype": "float32", "units": 100, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16384}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16384]}}
?

}kernel
~bias
#_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_38", "trainable": true, "dtype": "float32", "units": 50, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_39", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_39", "trainable": true, "dtype": "float32", "units": 10, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_40", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_40", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
?
	?iter
?beta_1
?beta_2

?decay
?learning_ratem?m?m? m?!m?)m?*m?+m?2m?3m?;m?<m?=m?Dm?Em?Mm?Nm?Om?Vm?Wm?_m?`m?am?hm?im?vm?wm?}m?~m?	?m?	?m?	?m?	?m?v?v?v? v?!v?)v?*v?+v?2v?3v?;v?<v?=v?Dv?Ev?Mv?Nv?Ov?Vv?Wv?_v?`v?av?hv?iv?vv?wv?}v?~v?	?v?	?v?	?v?	?v?"
	optimizer
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
?
0
1
2
 3
!4
)5
*6
+7
28
39
;10
<11
=12
D13
E14
M15
N16
O17
V18
W19
_20
`21
a22
h23
i24
v25
w26
}27
~28
?29
?30
?31
?32"
trackable_list_wrapper
?
0
1
2
 3
!4
"5
#6
)7
*8
+9
210
311
412
513
;14
<15
=16
D17
E18
F19
G20
M21
N22
O23
V24
W25
X26
Y27
_28
`29
a30
h31
i32
j33
k34
v35
w36
}37
~38
?39
?40
?41
?42"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
	variables
?layers
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
>:<2$separable_conv2d_49/depthwise_kernel
>:<2$separable_conv2d_49/pointwise_kernel
&:$2separable_conv2d_49/bias
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
	variables
trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_55/gamma
):'2batch_normalization_55/beta
2:0 (2"batch_normalization_55/moving_mean
6:4 (2&batch_normalization_55/moving_variance
 "
trackable_dict_wrapper
<
 0
!1
"2
#3"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
%	variables
&trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
'regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
>:<2$separable_conv2d_50/depthwise_kernel
>:<$2$separable_conv2d_50/pointwise_kernel
&:$$2separable_conv2d_50/bias
 "
trackable_dict_wrapper
5
)0
*1
+2"
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
-	variables
.trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
/regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:($2batch_normalization_56/gamma
):'$2batch_normalization_56/beta
2:0$ (2"batch_normalization_56/moving_mean
6:4$ (2&batch_normalization_56/moving_variance
 "
trackable_dict_wrapper
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
?
?layer_metrics
7	variables
8trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
9regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
>:<$2$separable_conv2d_51/depthwise_kernel
>:<$02$separable_conv2d_51/pointwise_kernel
&:$02separable_conv2d_51/bias
 "
trackable_dict_wrapper
5
;0
<1
=2"
trackable_list_wrapper
5
;0
<1
=2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?	variables
@trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
Aregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(02batch_normalization_57/gamma
):'02batch_normalization_57/beta
2:00 (2"batch_normalization_57/moving_mean
6:40 (2&batch_normalization_57/moving_variance
 "
trackable_dict_wrapper
<
D0
E1
F2
G3"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
I	variables
Jtrainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
Kregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
>:<02$separable_conv2d_52/depthwise_kernel
>:<0@2$separable_conv2d_52/pointwise_kernel
&:$@2separable_conv2d_52/bias
 "
trackable_dict_wrapper
5
M0
N1
O2"
trackable_list_wrapper
5
M0
N1
O2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
Q	variables
Rtrainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
Sregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_58/gamma
):'@2batch_normalization_58/beta
2:0@ (2"batch_normalization_58/moving_mean
6:4@ (2&batch_normalization_58/moving_variance
 "
trackable_dict_wrapper
<
V0
W1
X2
Y3"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
[	variables
\trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
]regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
>:<@2$separable_conv2d_53/depthwise_kernel
>:<@@2$separable_conv2d_53/pointwise_kernel
&:$@2separable_conv2d_53/bias
 "
trackable_dict_wrapper
5
_0
`1
a2"
trackable_list_wrapper
5
_0
`1
a2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
c	variables
dtrainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
eregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_59/gamma
):'@2batch_normalization_59/beta
2:0@ (2"batch_normalization_59/moving_mean
6:4@ (2&batch_normalization_59/moving_variance
 "
trackable_dict_wrapper
<
h0
i1
j2
k3"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
m	variables
ntrainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
oregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
r	variables
strainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
tregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??d2dense_37/kernel
:d2dense_37/bias
 "
trackable_dict_wrapper
.
v0
w1"
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
y	variables
ztrainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
{regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:d22dense_38/kernel
:22dense_38/bias
 "
trackable_dict_wrapper
.
}0
~1"
trackable_list_wrapper
.
}0
~1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:2
2dense_39/kernel
:
2dense_39/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:
2dense_40/kernel
:2dense_40/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?	variables
?trainable_variables
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?layers
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
f
"0
#1
42
53
F4
G5
X6
Y7
j8
k9"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
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
14"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "acc", "dtype": "float32", "config": {"name": "acc", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
C:A2+Adam/separable_conv2d_49/depthwise_kernel/m
C:A2+Adam/separable_conv2d_49/pointwise_kernel/m
+:)2Adam/separable_conv2d_49/bias/m
/:-2#Adam/batch_normalization_55/gamma/m
.:,2"Adam/batch_normalization_55/beta/m
C:A2+Adam/separable_conv2d_50/depthwise_kernel/m
C:A$2+Adam/separable_conv2d_50/pointwise_kernel/m
+:)$2Adam/separable_conv2d_50/bias/m
/:-$2#Adam/batch_normalization_56/gamma/m
.:,$2"Adam/batch_normalization_56/beta/m
C:A$2+Adam/separable_conv2d_51/depthwise_kernel/m
C:A$02+Adam/separable_conv2d_51/pointwise_kernel/m
+:)02Adam/separable_conv2d_51/bias/m
/:-02#Adam/batch_normalization_57/gamma/m
.:,02"Adam/batch_normalization_57/beta/m
C:A02+Adam/separable_conv2d_52/depthwise_kernel/m
C:A0@2+Adam/separable_conv2d_52/pointwise_kernel/m
+:)@2Adam/separable_conv2d_52/bias/m
/:-@2#Adam/batch_normalization_58/gamma/m
.:,@2"Adam/batch_normalization_58/beta/m
C:A@2+Adam/separable_conv2d_53/depthwise_kernel/m
C:A@@2+Adam/separable_conv2d_53/pointwise_kernel/m
+:)@2Adam/separable_conv2d_53/bias/m
/:-@2#Adam/batch_normalization_59/gamma/m
.:,@2"Adam/batch_normalization_59/beta/m
(:&
??d2Adam/dense_37/kernel/m
 :d2Adam/dense_37/bias/m
&:$d22Adam/dense_38/kernel/m
 :22Adam/dense_38/bias/m
&:$2
2Adam/dense_39/kernel/m
 :
2Adam/dense_39/bias/m
&:$
2Adam/dense_40/kernel/m
 :2Adam/dense_40/bias/m
C:A2+Adam/separable_conv2d_49/depthwise_kernel/v
C:A2+Adam/separable_conv2d_49/pointwise_kernel/v
+:)2Adam/separable_conv2d_49/bias/v
/:-2#Adam/batch_normalization_55/gamma/v
.:,2"Adam/batch_normalization_55/beta/v
C:A2+Adam/separable_conv2d_50/depthwise_kernel/v
C:A$2+Adam/separable_conv2d_50/pointwise_kernel/v
+:)$2Adam/separable_conv2d_50/bias/v
/:-$2#Adam/batch_normalization_56/gamma/v
.:,$2"Adam/batch_normalization_56/beta/v
C:A$2+Adam/separable_conv2d_51/depthwise_kernel/v
C:A$02+Adam/separable_conv2d_51/pointwise_kernel/v
+:)02Adam/separable_conv2d_51/bias/v
/:-02#Adam/batch_normalization_57/gamma/v
.:,02"Adam/batch_normalization_57/beta/v
C:A02+Adam/separable_conv2d_52/depthwise_kernel/v
C:A0@2+Adam/separable_conv2d_52/pointwise_kernel/v
+:)@2Adam/separable_conv2d_52/bias/v
/:-@2#Adam/batch_normalization_58/gamma/v
.:,@2"Adam/batch_normalization_58/beta/v
C:A@2+Adam/separable_conv2d_53/depthwise_kernel/v
C:A@@2+Adam/separable_conv2d_53/pointwise_kernel/v
+:)@2Adam/separable_conv2d_53/bias/v
/:-@2#Adam/batch_normalization_59/gamma/v
.:,@2"Adam/batch_normalization_59/beta/v
(:&
??d2Adam/dense_37/kernel/v
 :d2Adam/dense_37/bias/v
&:$d22Adam/dense_38/kernel/v
 :22Adam/dense_38/bias/v
&:$2
2Adam/dense_39/kernel/v
 :
2Adam/dense_39/bias/v
&:$
2Adam/dense_40/kernel/v
 :2Adam/dense_40/bias/v
?2?
.__inference_sequential_10_layer_call_fn_170728
.__inference_sequential_10_layer_call_fn_171454
.__inference_sequential_10_layer_call_fn_170924
.__inference_sequential_10_layer_call_fn_171545?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_sequential_10_layer_call_and_return_conditional_losses_170531
I__inference_sequential_10_layer_call_and_return_conditional_losses_171199
I__inference_sequential_10_layer_call_and_return_conditional_losses_171363
I__inference_sequential_10_layer_call_and_return_conditional_losses_170426?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_169234?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?8
separable_conv2d_49_input?????????||
?2?
4__inference_separable_conv2d_49_layer_call_fn_169263?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
O__inference_separable_conv2d_49_layer_call_and_return_conditional_losses_169251?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
7__inference_batch_normalization_55_layer_call_fn_171673
7__inference_batch_normalization_55_layer_call_fn_171609
7__inference_batch_normalization_55_layer_call_fn_171596
7__inference_batch_normalization_55_layer_call_fn_171660?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_171647
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_171565
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_171629
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_171583?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
4__inference_separable_conv2d_50_layer_call_fn_169396?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
O__inference_separable_conv2d_50_layer_call_and_return_conditional_losses_169384?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
7__inference_batch_normalization_56_layer_call_fn_171724
7__inference_batch_normalization_56_layer_call_fn_171788
7__inference_batch_normalization_56_layer_call_fn_171801
7__inference_batch_normalization_56_layer_call_fn_171737?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_171711
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_171775
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_171693
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_171757?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
4__inference_separable_conv2d_51_layer_call_fn_169529?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????$
?2?
O__inference_separable_conv2d_51_layer_call_and_return_conditional_losses_169517?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????$
?2?
7__inference_batch_normalization_57_layer_call_fn_171865
7__inference_batch_normalization_57_layer_call_fn_171916
7__inference_batch_normalization_57_layer_call_fn_171852
7__inference_batch_normalization_57_layer_call_fn_171929?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_171839
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_171821
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_171903
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_171885?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
4__inference_separable_conv2d_52_layer_call_fn_169662?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????0
?2?
O__inference_separable_conv2d_52_layer_call_and_return_conditional_losses_169650?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????0
?2?
7__inference_batch_normalization_58_layer_call_fn_171993
7__inference_batch_normalization_58_layer_call_fn_171980
7__inference_batch_normalization_58_layer_call_fn_172044
7__inference_batch_normalization_58_layer_call_fn_172057?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_171967
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_172031
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_172013
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_171949?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
4__inference_separable_conv2d_53_layer_call_fn_169795?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????@
?2?
O__inference_separable_conv2d_53_layer_call_and_return_conditional_losses_169783?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????@
?2?
7__inference_batch_normalization_59_layer_call_fn_172185
7__inference_batch_normalization_59_layer_call_fn_172121
7__inference_batch_normalization_59_layer_call_fn_172108
7__inference_batch_normalization_59_layer_call_fn_172172?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_172077
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_172141
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_172095
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_172159?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_flatten_10_layer_call_fn_172196?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_10_layer_call_and_return_conditional_losses_172191?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_37_layer_call_fn_172216?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_37_layer_call_and_return_conditional_losses_172207?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_38_layer_call_fn_172236?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_38_layer_call_and_return_conditional_losses_172227?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_39_layer_call_fn_172256?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_39_layer_call_and_return_conditional_losses_172247?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_40_layer_call_fn_172276?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_40_layer_call_and_return_conditional_losses_172267?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_171025separable_conv2d_49_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_169234?/ !"#)*+2345;<=DEFGMNOVWXY_`ahijkvw}~????J?G
@?=
;?8
separable_conv2d_49_input?????????||
? "3?0
.
dense_40"?
dense_40??????????
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_171565r !"#;?8
1?.
(?%
inputs?????????>>
p
? "-?*
#? 
0?????????>>
? ?
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_171583r !"#;?8
1?.
(?%
inputs?????????>>
p 
? "-?*
#? 
0?????????>>
? ?
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_171629? !"#M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
R__inference_batch_normalization_55_layer_call_and_return_conditional_losses_171647? !"#M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
7__inference_batch_normalization_55_layer_call_fn_171596e !"#;?8
1?.
(?%
inputs?????????>>
p
? " ??????????>>?
7__inference_batch_normalization_55_layer_call_fn_171609e !"#;?8
1?.
(?%
inputs?????????>>
p 
? " ??????????>>?
7__inference_batch_normalization_55_layer_call_fn_171660? !"#M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
7__inference_batch_normalization_55_layer_call_fn_171673? !"#M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_171693?2345M?J
C?@
:?7
inputs+???????????????????????????$
p
? "??<
5?2
0+???????????????????????????$
? ?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_171711?2345M?J
C?@
:?7
inputs+???????????????????????????$
p 
? "??<
5?2
0+???????????????????????????$
? ?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_171757r2345;?8
1?.
(?%
inputs?????????$
p
? "-?*
#? 
0?????????$
? ?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_171775r2345;?8
1?.
(?%
inputs?????????$
p 
? "-?*
#? 
0?????????$
? ?
7__inference_batch_normalization_56_layer_call_fn_171724?2345M?J
C?@
:?7
inputs+???????????????????????????$
p
? "2?/+???????????????????????????$?
7__inference_batch_normalization_56_layer_call_fn_171737?2345M?J
C?@
:?7
inputs+???????????????????????????$
p 
? "2?/+???????????????????????????$?
7__inference_batch_normalization_56_layer_call_fn_171788e2345;?8
1?.
(?%
inputs?????????$
p
? " ??????????$?
7__inference_batch_normalization_56_layer_call_fn_171801e2345;?8
1?.
(?%
inputs?????????$
p 
? " ??????????$?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_171821?DEFGM?J
C?@
:?7
inputs+???????????????????????????0
p
? "??<
5?2
0+???????????????????????????0
? ?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_171839?DEFGM?J
C?@
:?7
inputs+???????????????????????????0
p 
? "??<
5?2
0+???????????????????????????0
? ?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_171885rDEFG;?8
1?.
(?%
inputs?????????0
p
? "-?*
#? 
0?????????0
? ?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_171903rDEFG;?8
1?.
(?%
inputs?????????0
p 
? "-?*
#? 
0?????????0
? ?
7__inference_batch_normalization_57_layer_call_fn_171852?DEFGM?J
C?@
:?7
inputs+???????????????????????????0
p
? "2?/+???????????????????????????0?
7__inference_batch_normalization_57_layer_call_fn_171865?DEFGM?J
C?@
:?7
inputs+???????????????????????????0
p 
? "2?/+???????????????????????????0?
7__inference_batch_normalization_57_layer_call_fn_171916eDEFG;?8
1?.
(?%
inputs?????????0
p
? " ??????????0?
7__inference_batch_normalization_57_layer_call_fn_171929eDEFG;?8
1?.
(?%
inputs?????????0
p 
? " ??????????0?
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_171949rVWXY;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_171967rVWXY;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_172013?VWXYM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_172031?VWXYM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
7__inference_batch_normalization_58_layer_call_fn_171980eVWXY;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
7__inference_batch_normalization_58_layer_call_fn_171993eVWXY;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
7__inference_batch_normalization_58_layer_call_fn_172044?VWXYM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
7__inference_batch_normalization_58_layer_call_fn_172057?VWXYM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_172077rhijk;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_172095rhijk;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_172141?hijkM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_172159?hijkM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
7__inference_batch_normalization_59_layer_call_fn_172108ehijk;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
7__inference_batch_normalization_59_layer_call_fn_172121ehijk;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
7__inference_batch_normalization_59_layer_call_fn_172172?hijkM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
7__inference_batch_normalization_59_layer_call_fn_172185?hijkM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
D__inference_dense_37_layer_call_and_return_conditional_losses_172207^vw1?.
'?$
"?
inputs???????????
? "%?"
?
0?????????d
? ~
)__inference_dense_37_layer_call_fn_172216Qvw1?.
'?$
"?
inputs???????????
? "??????????d?
D__inference_dense_38_layer_call_and_return_conditional_losses_172227\}~/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????2
? |
)__inference_dense_38_layer_call_fn_172236O}~/?,
%?"
 ?
inputs?????????d
? "??????????2?
D__inference_dense_39_layer_call_and_return_conditional_losses_172247^??/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????

? ~
)__inference_dense_39_layer_call_fn_172256Q??/?,
%?"
 ?
inputs?????????2
? "??????????
?
D__inference_dense_40_layer_call_and_return_conditional_losses_172267^??/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
)__inference_dense_40_layer_call_fn_172276Q??/?,
%?"
 ?
inputs?????????

? "???????????
F__inference_flatten_10_layer_call_and_return_conditional_losses_172191b7?4
-?*
(?%
inputs?????????@
? "'?$
?
0???????????
? ?
+__inference_flatten_10_layer_call_fn_172196U7?4
-?*
(?%
inputs?????????@
? "?????????????
O__inference_separable_conv2d_49_layer_call_and_return_conditional_losses_169251?I?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+???????????????????????????
? ?
4__inference_separable_conv2d_49_layer_call_fn_169263?I?F
??<
:?7
inputs+???????????????????????????
? "2?/+????????????????????????????
O__inference_separable_conv2d_50_layer_call_and_return_conditional_losses_169384?)*+I?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+???????????????????????????$
? ?
4__inference_separable_conv2d_50_layer_call_fn_169396?)*+I?F
??<
:?7
inputs+???????????????????????????
? "2?/+???????????????????????????$?
O__inference_separable_conv2d_51_layer_call_and_return_conditional_losses_169517?;<=I?F
??<
:?7
inputs+???????????????????????????$
? "??<
5?2
0+???????????????????????????0
? ?
4__inference_separable_conv2d_51_layer_call_fn_169529?;<=I?F
??<
:?7
inputs+???????????????????????????$
? "2?/+???????????????????????????0?
O__inference_separable_conv2d_52_layer_call_and_return_conditional_losses_169650?MNOI?F
??<
:?7
inputs+???????????????????????????0
? "??<
5?2
0+???????????????????????????@
? ?
4__inference_separable_conv2d_52_layer_call_fn_169662?MNOI?F
??<
:?7
inputs+???????????????????????????0
? "2?/+???????????????????????????@?
O__inference_separable_conv2d_53_layer_call_and_return_conditional_losses_169783?_`aI?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
4__inference_separable_conv2d_53_layer_call_fn_169795?_`aI?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
I__inference_sequential_10_layer_call_and_return_conditional_losses_170426?/ !"#)*+2345;<=DEFGMNOVWXY_`ahijkvw}~????R?O
H?E
;?8
separable_conv2d_49_input?????????||
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_10_layer_call_and_return_conditional_losses_170531?/ !"#)*+2345;<=DEFGMNOVWXY_`ahijkvw}~????R?O
H?E
;?8
separable_conv2d_49_input?????????||
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_10_layer_call_and_return_conditional_losses_171199?/ !"#)*+2345;<=DEFGMNOVWXY_`ahijkvw}~??????<
5?2
(?%
inputs?????????||
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_10_layer_call_and_return_conditional_losses_171363?/ !"#)*+2345;<=DEFGMNOVWXY_`ahijkvw}~??????<
5?2
(?%
inputs?????????||
p 

 
? "%?"
?
0?????????
? ?
.__inference_sequential_10_layer_call_fn_170728?/ !"#)*+2345;<=DEFGMNOVWXY_`ahijkvw}~????R?O
H?E
;?8
separable_conv2d_49_input?????????||
p

 
? "???????????
.__inference_sequential_10_layer_call_fn_170924?/ !"#)*+2345;<=DEFGMNOVWXY_`ahijkvw}~????R?O
H?E
;?8
separable_conv2d_49_input?????????||
p 

 
? "???????????
.__inference_sequential_10_layer_call_fn_171454?/ !"#)*+2345;<=DEFGMNOVWXY_`ahijkvw}~??????<
5?2
(?%
inputs?????????||
p

 
? "???????????
.__inference_sequential_10_layer_call_fn_171545?/ !"#)*+2345;<=DEFGMNOVWXY_`ahijkvw}~??????<
5?2
(?%
inputs?????????||
p 

 
? "???????????
$__inference_signature_wrapper_171025?/ !"#)*+2345;<=DEFGMNOVWXY_`ahijkvw}~????g?d
? 
]?Z
X
separable_conv2d_49_input;?8
separable_conv2d_49_input?????????||"3?0
.
dense_40"?
dense_40?????????