ůŘ
Ĺ*§*
:
Add
x"T
y"T
z"T"
Ttype:
2	
î
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ě
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
î
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
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
2
StopGradient

input"T
output"T"	
Ttype
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.13.12
b'unknown'Ń
f
xPlaceholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
y_Placeholder*
shape:˙˙˙˙˙˙˙˙˙
*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

o
truncated_normal/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
Z
truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
\
truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
˘
 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape*

seed *
T0*
dtype0*&
_output_shapes
: *
seed2 

truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev*
T0*&
_output_shapes
: 
u
truncated_normalAddtruncated_normal/multruncated_normal/mean*
T0*&
_output_shapes
: 

Variable
VariableV2*
shape: *
shared_name *
dtype0*&
_output_shapes
: *
	container 
Ź
Variable/AssignAssignVariabletruncated_normal*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: 
q
Variable/readIdentityVariable*
T0*
_class
loc:@Variable*&
_output_shapes
: 
R
ConstConst*
valueB *ÍĚĚ=*
dtype0*
_output_shapes
: 
v

Variable_1
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 

Variable_1/AssignAssign
Variable_1Const*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
k
Variable_1/readIdentity
Variable_1*
T0*
_class
loc:@Variable_1*
_output_shapes
: 
f
Reshape/shapeConst*%
valueB"˙˙˙˙         *
dtype0*
_output_shapes
:
l
ReshapeReshapexReshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
Đ
Conv2DConv2DReshapeVariable/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
]
addAddConv2DVariable_1/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
K
ReluReluadd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
¤
MaxPoolMaxPoolRelu*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
q
truncated_normal_1/shapeConst*%
valueB"          @   *
dtype0*
_output_shapes
:
\
truncated_normal_1/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_1/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
Ś
"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape*

seed *
T0*
dtype0*&
_output_shapes
: @*
seed2 

truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev*
T0*&
_output_shapes
: @
{
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean*
T0*&
_output_shapes
: @


Variable_2
VariableV2*
shape: @*
shared_name *
dtype0*&
_output_shapes
: @*
	container 
´
Variable_2/AssignAssign
Variable_2truncated_normal_1*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @
w
Variable_2/readIdentity
Variable_2*
T0*
_class
loc:@Variable_2*&
_output_shapes
: @
T
Const_1Const*
valueB@*ÍĚĚ=*
dtype0*
_output_shapes
:@
v

Variable_3
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 

Variable_3/AssignAssign
Variable_3Const_1*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@
k
Variable_3/readIdentity
Variable_3*
T0*
_class
loc:@Variable_3*
_output_shapes
:@
Ô
Conv2D_1Conv2DMaxPoolVariable_2/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
a
add_1AddConv2D_1Variable_3/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
O
Relu_1Reluadd_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
¨
	MaxPool_1MaxPoolRelu_1*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
i
truncated_normal_2/shapeConst*
valueB"@     *
dtype0*
_output_shapes
:
\
truncated_normal_2/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_2/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
 
"truncated_normal_2/TruncatedNormalTruncatedNormaltruncated_normal_2/shape*

seed *
T0*
dtype0* 
_output_shapes
:
Ŕ*
seed2 

truncated_normal_2/mulMul"truncated_normal_2/TruncatedNormaltruncated_normal_2/stddev*
T0* 
_output_shapes
:
Ŕ
u
truncated_normal_2Addtruncated_normal_2/multruncated_normal_2/mean*
T0* 
_output_shapes
:
Ŕ


Variable_4
VariableV2*
shape:
Ŕ*
shared_name *
dtype0* 
_output_shapes
:
Ŕ*
	container 
Ž
Variable_4/AssignAssign
Variable_4truncated_normal_2*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(* 
_output_shapes
:
Ŕ
q
Variable_4/readIdentity
Variable_4*
T0*
_class
loc:@Variable_4* 
_output_shapes
:
Ŕ
V
Const_2Const*
valueB*ÍĚĚ=*
dtype0*
_output_shapes	
:
x

Variable_5
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 

Variable_5/AssignAssign
Variable_5Const_2*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes	
:
l
Variable_5/readIdentity
Variable_5*
T0*
_class
loc:@Variable_5*
_output_shapes	
:
`
Reshape_1/shapeConst*
valueB"˙˙˙˙@  *
dtype0*
_output_shapes
:
q
	Reshape_1Reshape	MaxPool_1Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ

MatMulMatMul	Reshape_1Variable_4/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
X
add_2AddMatMulVariable_5/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
H
Relu_2Reluadd_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
	keep_probPlaceholder*
shape:*
dtype0*
_output_shapes
:
J
sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
subSubsub/x	keep_prob*
T0*
_output_shapes
:
S
dropout/ShapeShapeRelu_2*
T0*
out_type0*
_output_shapes
:
R
dropout/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
I
dropout/subSubdropout/sub/xsub*
T0*
_output_shapes
:
_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape*

seed *
T0*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 
z
dropout/random_uniform/subSubdropout/random_uniform/maxdropout/random_uniform/min*
T0*
_output_shapes
: 

dropout/random_uniform/mulMul$dropout/random_uniform/RandomUniformdropout/random_uniform/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

dropout/random_uniformAdddropout/random_uniform/muldropout/random_uniform/min*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
dropout/addAdddropout/subdropout/random_uniform*
T0*
_output_shapes
:
F
dropout/FloorFloordropout/add*
T0*
_output_shapes
:
R
dropout/truedivRealDivRelu_2dropout/sub*
T0*
_output_shapes
:
e
dropout/mulMuldropout/truedivdropout/Floor*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
truncated_normal_3/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
\
truncated_normal_3/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_3/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_3/TruncatedNormalTruncatedNormaltruncated_normal_3/shape*

seed *
T0*
dtype0*
_output_shapes
:	
*
seed2 

truncated_normal_3/mulMul"truncated_normal_3/TruncatedNormaltruncated_normal_3/stddev*
T0*
_output_shapes
:	

t
truncated_normal_3Addtruncated_normal_3/multruncated_normal_3/mean*
T0*
_output_shapes
:	



Variable_6
VariableV2*
shape:	
*
shared_name *
dtype0*
_output_shapes
:	
*
	container 
­
Variable_6/AssignAssign
Variable_6truncated_normal_3*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes
:	

p
Variable_6/readIdentity
Variable_6*
T0*
_class
loc:@Variable_6*
_output_shapes
:	

T
Const_3Const*
valueB
*ÍĚĚ=*
dtype0*
_output_shapes
:

v

Variable_7
VariableV2*
shape:
*
shared_name *
dtype0*
_output_shapes
:
*
	container 

Variable_7/AssignAssign
Variable_7Const_3*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:

k
Variable_7/readIdentity
Variable_7*
T0*
_class
loc:@Variable_7*
_output_shapes
:


MatMul_1MatMuldropout/mulVariable_6/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_a( 
Z
y_convAddMatMul_1Variable_7/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


9softmax_cross_entropy_with_logits_sg/labels_stop_gradientStopGradienty_*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

k
)softmax_cross_entropy_with_logits_sg/RankConst*
value	B :*
dtype0*
_output_shapes
: 
p
*softmax_cross_entropy_with_logits_sg/ShapeShapey_conv*
T0*
out_type0*
_output_shapes
:
m
+softmax_cross_entropy_with_logits_sg/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
r
,softmax_cross_entropy_with_logits_sg/Shape_1Shapey_conv*
T0*
out_type0*
_output_shapes
:
l
*softmax_cross_entropy_with_logits_sg/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Š
(softmax_cross_entropy_with_logits_sg/SubSub+softmax_cross_entropy_with_logits_sg/Rank_1*softmax_cross_entropy_with_logits_sg/Sub/y*
T0*
_output_shapes
: 

0softmax_cross_entropy_with_logits_sg/Slice/beginPack(softmax_cross_entropy_with_logits_sg/Sub*
T0*

axis *
N*
_output_shapes
:
y
/softmax_cross_entropy_with_logits_sg/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ö
*softmax_cross_entropy_with_logits_sg/SliceSlice,softmax_cross_entropy_with_logits_sg/Shape_10softmax_cross_entropy_with_logits_sg/Slice/begin/softmax_cross_entropy_with_logits_sg/Slice/size*
T0*
Index0*
_output_shapes
:

4softmax_cross_entropy_with_logits_sg/concat/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
r
0softmax_cross_entropy_with_logits_sg/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

+softmax_cross_entropy_with_logits_sg/concatConcatV24softmax_cross_entropy_with_logits_sg/concat/values_0*softmax_cross_entropy_with_logits_sg/Slice0softmax_cross_entropy_with_logits_sg/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
ľ
,softmax_cross_entropy_with_logits_sg/ReshapeReshapey_conv+softmax_cross_entropy_with_logits_sg/concat*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
m
+softmax_cross_entropy_with_logits_sg/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
Ľ
,softmax_cross_entropy_with_logits_sg/Shape_2Shape9softmax_cross_entropy_with_logits_sg/labels_stop_gradient*
T0*
out_type0*
_output_shapes
:
n
,softmax_cross_entropy_with_logits_sg/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
­
*softmax_cross_entropy_with_logits_sg/Sub_1Sub+softmax_cross_entropy_with_logits_sg/Rank_2,softmax_cross_entropy_with_logits_sg/Sub_1/y*
T0*
_output_shapes
: 
 
2softmax_cross_entropy_with_logits_sg/Slice_1/beginPack*softmax_cross_entropy_with_logits_sg/Sub_1*
T0*

axis *
N*
_output_shapes
:
{
1softmax_cross_entropy_with_logits_sg/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ü
,softmax_cross_entropy_with_logits_sg/Slice_1Slice,softmax_cross_entropy_with_logits_sg/Shape_22softmax_cross_entropy_with_logits_sg/Slice_1/begin1softmax_cross_entropy_with_logits_sg/Slice_1/size*
T0*
Index0*
_output_shapes
:

6softmax_cross_entropy_with_logits_sg/concat_1/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
t
2softmax_cross_entropy_with_logits_sg/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

-softmax_cross_entropy_with_logits_sg/concat_1ConcatV26softmax_cross_entropy_with_logits_sg/concat_1/values_0,softmax_cross_entropy_with_logits_sg/Slice_12softmax_cross_entropy_with_logits_sg/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
ě
.softmax_cross_entropy_with_logits_sg/Reshape_1Reshape9softmax_cross_entropy_with_logits_sg/labels_stop_gradient-softmax_cross_entropy_with_logits_sg/concat_1*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
í
$softmax_cross_entropy_with_logits_sgSoftmaxCrossEntropyWithLogits,softmax_cross_entropy_with_logits_sg/Reshape.softmax_cross_entropy_with_logits_sg/Reshape_1*
T0*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
n
,softmax_cross_entropy_with_logits_sg/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ť
*softmax_cross_entropy_with_logits_sg/Sub_2Sub)softmax_cross_entropy_with_logits_sg/Rank,softmax_cross_entropy_with_logits_sg/Sub_2/y*
T0*
_output_shapes
: 
|
2softmax_cross_entropy_with_logits_sg/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:

1softmax_cross_entropy_with_logits_sg/Slice_2/sizePack*softmax_cross_entropy_with_logits_sg/Sub_2*
T0*

axis *
N*
_output_shapes
:
ú
,softmax_cross_entropy_with_logits_sg/Slice_2Slice*softmax_cross_entropy_with_logits_sg/Shape2softmax_cross_entropy_with_logits_sg/Slice_2/begin1softmax_cross_entropy_with_logits_sg/Slice_2/size*
T0*
Index0*
_output_shapes
:
É
.softmax_cross_entropy_with_logits_sg/Reshape_2Reshape$softmax_cross_entropy_with_logits_sg,softmax_cross_entropy_with_logits_sg/Slice_2*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Q
Const_4Const*
valueB: *
dtype0*
_output_shapes
:

MeanMean.softmax_cross_entropy_with_logits_sg/Reshape_2Const_4*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

gradients/Mean_grad/ShapeShape.softmax_cross_entropy_with_logits_sg/Reshape_2*
T0*
out_type0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Mean_grad/Shape_1Shape.softmax_cross_entropy_with_logits_sg/Reshape_2*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
Cgradients/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ShapeShape$softmax_cross_entropy_with_logits_sg*
T0*
out_type0*
_output_shapes
:
î
Egradients/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeReshapegradients/Mean_grad/truedivCgradients/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/zeros_like	ZerosLike&softmax_cross_entropy_with_logits_sg:1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

Bgradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

>gradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims
ExpandDimsEgradients/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeBgradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
á
7gradients/softmax_cross_entropy_with_logits_sg_grad/mulMul>gradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims&softmax_cross_entropy_with_logits_sg:1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ľ
>gradients/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax
LogSoftmax,softmax_cross_entropy_with_logits_sg/Reshape*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
š
7gradients/softmax_cross_entropy_with_logits_sg_grad/NegNeg>gradients/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

Dgradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

@gradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1
ExpandDimsEgradients/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeDgradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ö
9gradients/softmax_cross_entropy_with_logits_sg_grad/mul_1Mul@gradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_17gradients/softmax_cross_entropy_with_logits_sg_grad/Neg*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Â
Dgradients/softmax_cross_entropy_with_logits_sg_grad/tuple/group_depsNoOp8^gradients/softmax_cross_entropy_with_logits_sg_grad/mul:^gradients/softmax_cross_entropy_with_logits_sg_grad/mul_1
ß
Lgradients/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependencyIdentity7gradients/softmax_cross_entropy_with_logits_sg_grad/mulE^gradients/softmax_cross_entropy_with_logits_sg_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/softmax_cross_entropy_with_logits_sg_grad/mul*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ĺ
Ngradients/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependency_1Identity9gradients/softmax_cross_entropy_with_logits_sg_grad/mul_1E^gradients/softmax_cross_entropy_with_logits_sg_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/softmax_cross_entropy_with_logits_sg_grad/mul_1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

Agradients/softmax_cross_entropy_with_logits_sg/Reshape_grad/ShapeShapey_conv*
T0*
out_type0*
_output_shapes
:

Cgradients/softmax_cross_entropy_with_logits_sg/Reshape_grad/ReshapeReshapeLgradients/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependencyAgradients/softmax_cross_entropy_with_logits_sg/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

c
gradients/y_conv_grad/ShapeShapeMatMul_1*
T0*
out_type0*
_output_shapes
:
g
gradients/y_conv_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
˝
+gradients/y_conv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/y_conv_grad/Shapegradients/y_conv_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ň
gradients/y_conv_grad/SumSumCgradients/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape+gradients/y_conv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
 
gradients/y_conv_grad/ReshapeReshapegradients/y_conv_grad/Sumgradients/y_conv_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ö
gradients/y_conv_grad/Sum_1SumCgradients/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape-gradients/y_conv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/y_conv_grad/Reshape_1Reshapegradients/y_conv_grad/Sum_1gradients/y_conv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

p
&gradients/y_conv_grad/tuple/group_depsNoOp^gradients/y_conv_grad/Reshape ^gradients/y_conv_grad/Reshape_1
ć
.gradients/y_conv_grad/tuple/control_dependencyIdentitygradients/y_conv_grad/Reshape'^gradients/y_conv_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/y_conv_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ß
0gradients/y_conv_grad/tuple/control_dependency_1Identitygradients/y_conv_grad/Reshape_1'^gradients/y_conv_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/y_conv_grad/Reshape_1*
_output_shapes
:

Â
gradients/MatMul_1_grad/MatMulMatMul.gradients/y_conv_grad/tuple/control_dependencyVariable_6/read*
transpose_b(*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
ˇ
 gradients/MatMul_1_grad/MatMul_1MatMuldropout/mul.gradients/y_conv_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	
*
transpose_a(
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
í
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1*
_output_shapes
:	

x
 gradients/dropout/mul_grad/ShapeShapedropout/truediv*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
"gradients/dropout/mul_grad/Shape_1Shapedropout/Floor*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
0gradients/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/mul_grad/Shape"gradients/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

gradients/dropout/mul_grad/MulMul0gradients/MatMul_1_grad/tuple/control_dependencydropout/Floor*
T0*
_output_shapes
:
ˇ
gradients/dropout/mul_grad/SumSumgradients/dropout/mul_grad/Mul0gradients/dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
 
"gradients/dropout/mul_grad/ReshapeReshapegradients/dropout/mul_grad/Sum gradients/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:

 gradients/dropout/mul_grad/Mul_1Muldropout/truediv0gradients/MatMul_1_grad/tuple/control_dependency*
T0*
_output_shapes
:
˝
 gradients/dropout/mul_grad/Sum_1Sum gradients/dropout/mul_grad/Mul_12gradients/dropout/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ś
$gradients/dropout/mul_grad/Reshape_1Reshape gradients/dropout/mul_grad/Sum_1"gradients/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

+gradients/dropout/mul_grad/tuple/group_depsNoOp#^gradients/dropout/mul_grad/Reshape%^gradients/dropout/mul_grad/Reshape_1
ë
3gradients/dropout/mul_grad/tuple/control_dependencyIdentity"gradients/dropout/mul_grad/Reshape,^gradients/dropout/mul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dropout/mul_grad/Reshape*
_output_shapes
:
ń
5gradients/dropout/mul_grad/tuple/control_dependency_1Identity$gradients/dropout/mul_grad/Reshape_1,^gradients/dropout/mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout/mul_grad/Reshape_1*
_output_shapes
:
j
$gradients/dropout/truediv_grad/ShapeShapeRelu_2*
T0*
out_type0*
_output_shapes
:
z
&gradients/dropout/truediv_grad/Shape_1Shapedropout/sub*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
4gradients/dropout/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/dropout/truediv_grad/Shape&gradients/dropout/truediv_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

&gradients/dropout/truediv_grad/RealDivRealDiv3gradients/dropout/mul_grad/tuple/control_dependencydropout/sub*
T0*
_output_shapes
:
Ç
"gradients/dropout/truediv_grad/SumSum&gradients/dropout/truediv_grad/RealDiv4gradients/dropout/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ź
&gradients/dropout/truediv_grad/ReshapeReshape"gradients/dropout/truediv_grad/Sum$gradients/dropout/truediv_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
"gradients/dropout/truediv_grad/NegNegRelu_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

(gradients/dropout/truediv_grad/RealDiv_1RealDiv"gradients/dropout/truediv_grad/Negdropout/sub*
T0*
_output_shapes
:

(gradients/dropout/truediv_grad/RealDiv_2RealDiv(gradients/dropout/truediv_grad/RealDiv_1dropout/sub*
T0*
_output_shapes
:
Ť
"gradients/dropout/truediv_grad/mulMul3gradients/dropout/mul_grad/tuple/control_dependency(gradients/dropout/truediv_grad/RealDiv_2*
T0*
_output_shapes
:
Ç
$gradients/dropout/truediv_grad/Sum_1Sum"gradients/dropout/truediv_grad/mul6gradients/dropout/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
˛
(gradients/dropout/truediv_grad/Reshape_1Reshape$gradients/dropout/truediv_grad/Sum_1&gradients/dropout/truediv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

/gradients/dropout/truediv_grad/tuple/group_depsNoOp'^gradients/dropout/truediv_grad/Reshape)^gradients/dropout/truediv_grad/Reshape_1

7gradients/dropout/truediv_grad/tuple/control_dependencyIdentity&gradients/dropout/truediv_grad/Reshape0^gradients/dropout/truediv_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dropout/truediv_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

9gradients/dropout/truediv_grad/tuple/control_dependency_1Identity(gradients/dropout/truediv_grad/Reshape_10^gradients/dropout/truediv_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dropout/truediv_grad/Reshape_1*
_output_shapes
:

gradients/Relu_2_grad/ReluGradReluGrad7gradients/dropout/truediv_grad/tuple/control_dependencyRelu_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
gradients/add_2_grad/ShapeShapeMatMul*
T0*
out_type0*
_output_shapes
:
g
gradients/add_2_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
ş
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ť
gradients/add_2_grad/SumSumgradients/Relu_2_grad/ReluGrad*gradients/add_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
gradients/add_2_grad/Sum_1Sumgradients/Relu_2_grad/ReluGrad,gradients/add_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
ă
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_2_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ü
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1*
_output_shapes	
:
ż
gradients/MatMul_grad/MatMulMatMul-gradients/add_2_grad/tuple/control_dependencyVariable_4/read*
transpose_b(*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ*
transpose_a( 
ł
gradients/MatMul_grad/MatMul_1MatMul	Reshape_1-gradients/add_2_grad/tuple/control_dependency*
transpose_b( *
T0* 
_output_shapes
:
Ŕ*
transpose_a(
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
ĺ
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
ă
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1* 
_output_shapes
:
Ŕ
g
gradients/Reshape_1_grad/ShapeShape	MaxPool_1*
T0*
out_type0*
_output_shapes
:
Ă
 gradients/Reshape_1_grad/ReshapeReshape.gradients/MatMul_grad/tuple/control_dependencygradients/Reshape_1_grad/Shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ô
$gradients/MaxPool_1_grad/MaxPoolGradMaxPoolGradRelu_1	MaxPool_1 gradients/Reshape_1_grad/Reshape*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

gradients/Relu_1_grad/ReluGradReluGrad$gradients/MaxPool_1_grad/MaxPoolGradRelu_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
b
gradients/add_1_grad/ShapeShapeConv2D_1*
T0*
out_type0*
_output_shapes
:
f
gradients/add_1_grad/Shape_1Const*
valueB:@*
dtype0*
_output_shapes
:
ş
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ť
gradients/add_1_grad/SumSumgradients/Relu_1_grad/ReluGrad*gradients/add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ľ
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ż
gradients/add_1_grad/Sum_1Sumgradients/Relu_1_grad/ReluGrad,gradients/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:@
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
ę
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ű
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
_output_shapes
:@

gradients/Conv2D_1_grad/ShapeNShapeNMaxPoolVariable_2/read*
T0*
out_type0*
N* 
_output_shapes
::
Ę
+gradients/Conv2D_1_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_1_grad/ShapeNVariable_2/read-gradients/add_1_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
˝
,gradients/Conv2D_1_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool gradients/Conv2D_1_grad/ShapeN:1-gradients/add_1_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: @

(gradients/Conv2D_1_grad/tuple/group_depsNoOp-^gradients/Conv2D_1_grad/Conv2DBackpropFilter,^gradients/Conv2D_1_grad/Conv2DBackpropInput

0gradients/Conv2D_1_grad/tuple/control_dependencyIdentity+gradients/Conv2D_1_grad/Conv2DBackpropInput)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Conv2D_1_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

2gradients/Conv2D_1_grad/tuple/control_dependency_1Identity,gradients/Conv2D_1_grad/Conv2DBackpropFilter)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Conv2D_1_grad/Conv2DBackpropFilter*&
_output_shapes
: @
ţ
"gradients/MaxPool_grad/MaxPoolGradMaxPoolGradReluMaxPool0gradients/Conv2D_1_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

gradients/Relu_grad/ReluGradReluGrad"gradients/MaxPool_grad/MaxPoolGradRelu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
^
gradients/add_grad/ShapeShapeConv2D*
T0*
out_type0*
_output_shapes
:
d
gradients/add_grad/Shape_1Const*
valueB: *
dtype0*
_output_shapes
:
´
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ľ
gradients/add_grad/SumSumgradients/Relu_grad/ReluGrad(gradients/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Š
gradients/add_grad/Sum_1Sumgradients/Relu_grad/ReluGrad*gradients/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
â
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ó
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
_output_shapes
: 

gradients/Conv2D_grad/ShapeNShapeNReshapeVariable/read*
T0*
out_type0*
N* 
_output_shapes
::
Â
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNVariable/read+gradients/add_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
ˇ
*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshapegradients/Conv2D_grad/ShapeN:1+gradients/add_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: 

&gradients/Conv2D_grad/tuple/group_depsNoOp+^gradients/Conv2D_grad/Conv2DBackpropFilter*^gradients/Conv2D_grad/Conv2DBackpropInput

.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
{
beta1_power/initial_valueConst*
_class
loc:@Variable*
valueB
 *fff?*
dtype0*
_output_shapes
: 

beta1_power
VariableV2*
shared_name *
_class
loc:@Variable*
	container *
shape: *
dtype0*
_output_shapes
: 
Ť
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
g
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@Variable*
_output_shapes
: 
{
beta2_power/initial_valueConst*
_class
loc:@Variable*
valueB
 *wž?*
dtype0*
_output_shapes
: 

beta2_power
VariableV2*
shared_name *
_class
loc:@Variable*
	container *
shape: *
dtype0*
_output_shapes
: 
Ť
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
g
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@Variable*
_output_shapes
: 
Ą
Variable/Adam/Initializer/zerosConst*
_class
loc:@Variable*%
valueB *    *
dtype0*&
_output_shapes
: 
Ž
Variable/Adam
VariableV2*
shared_name *
_class
loc:@Variable*
	container *
shape: *
dtype0*&
_output_shapes
: 
Ĺ
Variable/Adam/AssignAssignVariable/AdamVariable/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: 
{
Variable/Adam/readIdentityVariable/Adam*
T0*
_class
loc:@Variable*&
_output_shapes
: 
Ł
!Variable/Adam_1/Initializer/zerosConst*
_class
loc:@Variable*%
valueB *    *
dtype0*&
_output_shapes
: 
°
Variable/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable*
	container *
shape: *
dtype0*&
_output_shapes
: 
Ë
Variable/Adam_1/AssignAssignVariable/Adam_1!Variable/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: 

Variable/Adam_1/readIdentityVariable/Adam_1*
T0*
_class
loc:@Variable*&
_output_shapes
: 

!Variable_1/Adam/Initializer/zerosConst*
_class
loc:@Variable_1*
valueB *    *
dtype0*
_output_shapes
: 

Variable_1/Adam
VariableV2*
shared_name *
_class
loc:@Variable_1*
	container *
shape: *
dtype0*
_output_shapes
: 
Á
Variable_1/Adam/AssignAssignVariable_1/Adam!Variable_1/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
u
Variable_1/Adam/readIdentityVariable_1/Adam*
T0*
_class
loc:@Variable_1*
_output_shapes
: 

#Variable_1/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_1*
valueB *    *
dtype0*
_output_shapes
: 

Variable_1/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_1*
	container *
shape: *
dtype0*
_output_shapes
: 
Ç
Variable_1/Adam_1/AssignAssignVariable_1/Adam_1#Variable_1/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
y
Variable_1/Adam_1/readIdentityVariable_1/Adam_1*
T0*
_class
loc:@Variable_1*
_output_shapes
: 
Š
1Variable_2/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_2*%
valueB"          @   *
dtype0*
_output_shapes
:

'Variable_2/Adam/Initializer/zeros/ConstConst*
_class
loc:@Variable_2*
valueB
 *    *
dtype0*
_output_shapes
: 
ç
!Variable_2/Adam/Initializer/zerosFill1Variable_2/Adam/Initializer/zeros/shape_as_tensor'Variable_2/Adam/Initializer/zeros/Const*
T0*
_class
loc:@Variable_2*

index_type0*&
_output_shapes
: @
˛
Variable_2/Adam
VariableV2*
shared_name *
_class
loc:@Variable_2*
	container *
shape: @*
dtype0*&
_output_shapes
: @
Í
Variable_2/Adam/AssignAssignVariable_2/Adam!Variable_2/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @

Variable_2/Adam/readIdentityVariable_2/Adam*
T0*
_class
loc:@Variable_2*&
_output_shapes
: @
Ť
3Variable_2/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_2*%
valueB"          @   *
dtype0*
_output_shapes
:

)Variable_2/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@Variable_2*
valueB
 *    *
dtype0*
_output_shapes
: 
í
#Variable_2/Adam_1/Initializer/zerosFill3Variable_2/Adam_1/Initializer/zeros/shape_as_tensor)Variable_2/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@Variable_2*

index_type0*&
_output_shapes
: @
´
Variable_2/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_2*
	container *
shape: @*
dtype0*&
_output_shapes
: @
Ó
Variable_2/Adam_1/AssignAssignVariable_2/Adam_1#Variable_2/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @

Variable_2/Adam_1/readIdentityVariable_2/Adam_1*
T0*
_class
loc:@Variable_2*&
_output_shapes
: @

!Variable_3/Adam/Initializer/zerosConst*
_class
loc:@Variable_3*
valueB@*    *
dtype0*
_output_shapes
:@

Variable_3/Adam
VariableV2*
shared_name *
_class
loc:@Variable_3*
	container *
shape:@*
dtype0*
_output_shapes
:@
Á
Variable_3/Adam/AssignAssignVariable_3/Adam!Variable_3/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@
u
Variable_3/Adam/readIdentityVariable_3/Adam*
T0*
_class
loc:@Variable_3*
_output_shapes
:@

#Variable_3/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_3*
valueB@*    *
dtype0*
_output_shapes
:@

Variable_3/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_3*
	container *
shape:@*
dtype0*
_output_shapes
:@
Ç
Variable_3/Adam_1/AssignAssignVariable_3/Adam_1#Variable_3/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@
y
Variable_3/Adam_1/readIdentityVariable_3/Adam_1*
T0*
_class
loc:@Variable_3*
_output_shapes
:@
Ą
1Variable_4/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_4*
valueB"@     *
dtype0*
_output_shapes
:

'Variable_4/Adam/Initializer/zeros/ConstConst*
_class
loc:@Variable_4*
valueB
 *    *
dtype0*
_output_shapes
: 
á
!Variable_4/Adam/Initializer/zerosFill1Variable_4/Adam/Initializer/zeros/shape_as_tensor'Variable_4/Adam/Initializer/zeros/Const*
T0*
_class
loc:@Variable_4*

index_type0* 
_output_shapes
:
Ŕ
Ś
Variable_4/Adam
VariableV2*
shared_name *
_class
loc:@Variable_4*
	container *
shape:
Ŕ*
dtype0* 
_output_shapes
:
Ŕ
Ç
Variable_4/Adam/AssignAssignVariable_4/Adam!Variable_4/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(* 
_output_shapes
:
Ŕ
{
Variable_4/Adam/readIdentityVariable_4/Adam*
T0*
_class
loc:@Variable_4* 
_output_shapes
:
Ŕ
Ł
3Variable_4/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_4*
valueB"@     *
dtype0*
_output_shapes
:

)Variable_4/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@Variable_4*
valueB
 *    *
dtype0*
_output_shapes
: 
ç
#Variable_4/Adam_1/Initializer/zerosFill3Variable_4/Adam_1/Initializer/zeros/shape_as_tensor)Variable_4/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@Variable_4*

index_type0* 
_output_shapes
:
Ŕ
¨
Variable_4/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_4*
	container *
shape:
Ŕ*
dtype0* 
_output_shapes
:
Ŕ
Í
Variable_4/Adam_1/AssignAssignVariable_4/Adam_1#Variable_4/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(* 
_output_shapes
:
Ŕ

Variable_4/Adam_1/readIdentityVariable_4/Adam_1*
T0*
_class
loc:@Variable_4* 
_output_shapes
:
Ŕ

1Variable_5/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_5*
valueB:*
dtype0*
_output_shapes
:

'Variable_5/Adam/Initializer/zeros/ConstConst*
_class
loc:@Variable_5*
valueB
 *    *
dtype0*
_output_shapes
: 
Ü
!Variable_5/Adam/Initializer/zerosFill1Variable_5/Adam/Initializer/zeros/shape_as_tensor'Variable_5/Adam/Initializer/zeros/Const*
T0*
_class
loc:@Variable_5*

index_type0*
_output_shapes	
:

Variable_5/Adam
VariableV2*
shared_name *
_class
loc:@Variable_5*
	container *
shape:*
dtype0*
_output_shapes	
:
Â
Variable_5/Adam/AssignAssignVariable_5/Adam!Variable_5/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes	
:
v
Variable_5/Adam/readIdentityVariable_5/Adam*
T0*
_class
loc:@Variable_5*
_output_shapes	
:

3Variable_5/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_5*
valueB:*
dtype0*
_output_shapes
:

)Variable_5/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@Variable_5*
valueB
 *    *
dtype0*
_output_shapes
: 
â
#Variable_5/Adam_1/Initializer/zerosFill3Variable_5/Adam_1/Initializer/zeros/shape_as_tensor)Variable_5/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@Variable_5*

index_type0*
_output_shapes	
:

Variable_5/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_5*
	container *
shape:*
dtype0*
_output_shapes	
:
Č
Variable_5/Adam_1/AssignAssignVariable_5/Adam_1#Variable_5/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes	
:
z
Variable_5/Adam_1/readIdentityVariable_5/Adam_1*
T0*
_class
loc:@Variable_5*
_output_shapes	
:
Ą
1Variable_6/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_6*
valueB"   
   *
dtype0*
_output_shapes
:

'Variable_6/Adam/Initializer/zeros/ConstConst*
_class
loc:@Variable_6*
valueB
 *    *
dtype0*
_output_shapes
: 
ŕ
!Variable_6/Adam/Initializer/zerosFill1Variable_6/Adam/Initializer/zeros/shape_as_tensor'Variable_6/Adam/Initializer/zeros/Const*
T0*
_class
loc:@Variable_6*

index_type0*
_output_shapes
:	

¤
Variable_6/Adam
VariableV2*
shared_name *
_class
loc:@Variable_6*
	container *
shape:	
*
dtype0*
_output_shapes
:	

Ć
Variable_6/Adam/AssignAssignVariable_6/Adam!Variable_6/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes
:	

z
Variable_6/Adam/readIdentityVariable_6/Adam*
T0*
_class
loc:@Variable_6*
_output_shapes
:	

Ł
3Variable_6/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_6*
valueB"   
   *
dtype0*
_output_shapes
:

)Variable_6/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@Variable_6*
valueB
 *    *
dtype0*
_output_shapes
: 
ć
#Variable_6/Adam_1/Initializer/zerosFill3Variable_6/Adam_1/Initializer/zeros/shape_as_tensor)Variable_6/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@Variable_6*

index_type0*
_output_shapes
:	

Ś
Variable_6/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_6*
	container *
shape:	
*
dtype0*
_output_shapes
:	

Ě
Variable_6/Adam_1/AssignAssignVariable_6/Adam_1#Variable_6/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes
:	

~
Variable_6/Adam_1/readIdentityVariable_6/Adam_1*
T0*
_class
loc:@Variable_6*
_output_shapes
:	


!Variable_7/Adam/Initializer/zerosConst*
_class
loc:@Variable_7*
valueB
*    *
dtype0*
_output_shapes
:


Variable_7/Adam
VariableV2*
shared_name *
_class
loc:@Variable_7*
	container *
shape:
*
dtype0*
_output_shapes
:

Á
Variable_7/Adam/AssignAssignVariable_7/Adam!Variable_7/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:

u
Variable_7/Adam/readIdentityVariable_7/Adam*
T0*
_class
loc:@Variable_7*
_output_shapes
:


#Variable_7/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_7*
valueB
*    *
dtype0*
_output_shapes
:


Variable_7/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_7*
	container *
shape:
*
dtype0*
_output_shapes
:

Ç
Variable_7/Adam_1/AssignAssignVariable_7/Adam_1#Variable_7/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:

y
Variable_7/Adam_1/readIdentityVariable_7/Adam_1*
T0*
_class
loc:@Variable_7*
_output_shapes
:

W
Adam/learning_rateConst*
valueB
 *ˇŃ8*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *wž?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
Ú
Adam/update_Variable/ApplyAdam	ApplyAdamVariableVariable/AdamVariable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable*
use_nesterov( *&
_output_shapes
: 
Ő
 Adam/update_Variable_1/ApplyAdam	ApplyAdam
Variable_1Variable_1/AdamVariable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon-gradients/add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_1*
use_nesterov( *
_output_shapes
: 
ć
 Adam/update_Variable_2/ApplyAdam	ApplyAdam
Variable_2Variable_2/AdamVariable_2/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/Conv2D_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_2*
use_nesterov( *&
_output_shapes
: @
×
 Adam/update_Variable_3/ApplyAdam	ApplyAdam
Variable_3Variable_3/AdamVariable_3/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_3*
use_nesterov( *
_output_shapes
:@
Ţ
 Adam/update_Variable_4/ApplyAdam	ApplyAdam
Variable_4Variable_4/AdamVariable_4/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_4*
use_nesterov( * 
_output_shapes
:
Ŕ
Ř
 Adam/update_Variable_5/ApplyAdam	ApplyAdam
Variable_5Variable_5/AdamVariable_5/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_2_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_5*
use_nesterov( *
_output_shapes	
:
ß
 Adam/update_Variable_6/ApplyAdam	ApplyAdam
Variable_6Variable_6/AdamVariable_6/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_6*
use_nesterov( *
_output_shapes
:	

Ř
 Adam/update_Variable_7/ApplyAdam	ApplyAdam
Variable_7Variable_7/AdamVariable_7/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/y_conv_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_7*
use_nesterov( *
_output_shapes
:


Adam/mulMulbeta1_power/read
Adam/beta1^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam*
T0*
_class
loc:@Variable*
_output_shapes
: 

Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 


Adam/mul_1Mulbeta2_power/read
Adam/beta2^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam*
T0*
_class
loc:@Variable*
_output_shapes
: 

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ŕ
AdamNoOp^Adam/Assign^Adam/Assign_1^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
w
ArgMaxArgMaxy_convArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
w
ArgMax_1ArgMaxy_ArgMax_1/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
EqualEqualArgMaxArgMax_1*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
CastCastEqual*

SrcT0
*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
Q
Const_5Const*
valueB: *
dtype0*
_output_shapes
:
[
Mean_1MeanCastConst_5*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
đ
initNoOp^Variable/Adam/Assign^Variable/Adam_1/Assign^Variable/Assign^Variable_1/Adam/Assign^Variable_1/Adam_1/Assign^Variable_1/Assign^Variable_2/Adam/Assign^Variable_2/Adam_1/Assign^Variable_2/Assign^Variable_3/Adam/Assign^Variable_3/Adam_1/Assign^Variable_3/Assign^Variable_4/Adam/Assign^Variable_4/Adam_1/Assign^Variable_4/Assign^Variable_5/Adam/Assign^Variable_5/Adam_1/Assign^Variable_5/Assign^Variable_6/Adam/Assign^Variable_6/Adam_1/Assign^Variable_6/Assign^Variable_7/Adam/Assign^Variable_7/Adam_1/Assign^Variable_7/Assign^beta1_power/Assign^beta2_power/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_082ee029e1194b658a76c226a1b7eff5/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*Š
valueBBVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:
Ś
save/SaveV2/shape_and_slicesConst"/device:CPU:0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
°
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariableVariable/AdamVariable/Adam_1
Variable_1Variable_1/AdamVariable_1/Adam_1
Variable_2Variable_2/AdamVariable_2/Adam_1
Variable_3Variable_3/AdamVariable_3/Adam_1
Variable_4Variable_4/AdamVariable_4/Adam_1
Variable_5Variable_5/AdamVariable_5/Adam_1
Variable_6Variable_6/AdamVariable_6/Adam_1
Variable_7Variable_7/AdamVariable_7/Adam_1beta1_powerbeta2_power"/device:CPU:0*(
dtypes
2
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*Š
valueBBVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:
Š
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*(
dtypes
2*|
_output_shapesj
h::::::::::::::::::::::::::
Ś
save/AssignAssignVariablesave/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: 
Ż
save/Assign_1AssignVariable/Adamsave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: 
ą
save/Assign_2AssignVariable/Adam_1save/RestoreV2:2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: 
˘
save/Assign_3Assign
Variable_1save/RestoreV2:3*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
§
save/Assign_4AssignVariable_1/Adamsave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
Š
save/Assign_5AssignVariable_1/Adam_1save/RestoreV2:5*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
Ž
save/Assign_6Assign
Variable_2save/RestoreV2:6*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @
ł
save/Assign_7AssignVariable_2/Adamsave/RestoreV2:7*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @
ľ
save/Assign_8AssignVariable_2/Adam_1save/RestoreV2:8*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @
˘
save/Assign_9Assign
Variable_3save/RestoreV2:9*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@
Š
save/Assign_10AssignVariable_3/Adamsave/RestoreV2:10*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@
Ť
save/Assign_11AssignVariable_3/Adam_1save/RestoreV2:11*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@
Ş
save/Assign_12Assign
Variable_4save/RestoreV2:12*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(* 
_output_shapes
:
Ŕ
Ż
save/Assign_13AssignVariable_4/Adamsave/RestoreV2:13*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(* 
_output_shapes
:
Ŕ
ą
save/Assign_14AssignVariable_4/Adam_1save/RestoreV2:14*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(* 
_output_shapes
:
Ŕ
Ľ
save/Assign_15Assign
Variable_5save/RestoreV2:15*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes	
:
Ş
save/Assign_16AssignVariable_5/Adamsave/RestoreV2:16*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes	
:
Ź
save/Assign_17AssignVariable_5/Adam_1save/RestoreV2:17*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes	
:
Š
save/Assign_18Assign
Variable_6save/RestoreV2:18*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes
:	

Ž
save/Assign_19AssignVariable_6/Adamsave/RestoreV2:19*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes
:	

°
save/Assign_20AssignVariable_6/Adam_1save/RestoreV2:20*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes
:	

¤
save/Assign_21Assign
Variable_7save/RestoreV2:21*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:

Š
save/Assign_22AssignVariable_7/Adamsave/RestoreV2:22*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:

Ť
save/Assign_23AssignVariable_7/Adam_1save/RestoreV2:23*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:


save/Assign_24Assignbeta1_powersave/RestoreV2:24*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 

save/Assign_25Assignbeta2_powersave/RestoreV2:25*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Č
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"Ő
trainable_variables˝ş
D

Variable:0Variable/AssignVariable/read:02truncated_normal:08
?
Variable_1:0Variable_1/AssignVariable_1/read:02Const:08
L
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_1:08
A
Variable_3:0Variable_3/AssignVariable_3/read:02	Const_1:08
L
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_2:08
A
Variable_5:0Variable_5/AssignVariable_5/read:02	Const_2:08
L
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_3:08
A
Variable_7:0Variable_7/AssignVariable_7/read:02	Const_3:08"
train_op

Adam"Ç
	variablesšś
D

Variable:0Variable/AssignVariable/read:02truncated_normal:08
?
Variable_1:0Variable_1/AssignVariable_1/read:02Const:08
L
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_1:08
A
Variable_3:0Variable_3/AssignVariable_3/read:02	Const_1:08
L
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_2:08
A
Variable_5:0Variable_5/AssignVariable_5/read:02	Const_2:08
L
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_3:08
A
Variable_7:0Variable_7/AssignVariable_7/read:02	Const_3:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
`
Variable/Adam:0Variable/Adam/AssignVariable/Adam/read:02!Variable/Adam/Initializer/zeros:0
h
Variable/Adam_1:0Variable/Adam_1/AssignVariable/Adam_1/read:02#Variable/Adam_1/Initializer/zeros:0
h
Variable_1/Adam:0Variable_1/Adam/AssignVariable_1/Adam/read:02#Variable_1/Adam/Initializer/zeros:0
p
Variable_1/Adam_1:0Variable_1/Adam_1/AssignVariable_1/Adam_1/read:02%Variable_1/Adam_1/Initializer/zeros:0
h
Variable_2/Adam:0Variable_2/Adam/AssignVariable_2/Adam/read:02#Variable_2/Adam/Initializer/zeros:0
p
Variable_2/Adam_1:0Variable_2/Adam_1/AssignVariable_2/Adam_1/read:02%Variable_2/Adam_1/Initializer/zeros:0
h
Variable_3/Adam:0Variable_3/Adam/AssignVariable_3/Adam/read:02#Variable_3/Adam/Initializer/zeros:0
p
Variable_3/Adam_1:0Variable_3/Adam_1/AssignVariable_3/Adam_1/read:02%Variable_3/Adam_1/Initializer/zeros:0
h
Variable_4/Adam:0Variable_4/Adam/AssignVariable_4/Adam/read:02#Variable_4/Adam/Initializer/zeros:0
p
Variable_4/Adam_1:0Variable_4/Adam_1/AssignVariable_4/Adam_1/read:02%Variable_4/Adam_1/Initializer/zeros:0
h
Variable_5/Adam:0Variable_5/Adam/AssignVariable_5/Adam/read:02#Variable_5/Adam/Initializer/zeros:0
p
Variable_5/Adam_1:0Variable_5/Adam_1/AssignVariable_5/Adam_1/read:02%Variable_5/Adam_1/Initializer/zeros:0
h
Variable_6/Adam:0Variable_6/Adam/AssignVariable_6/Adam/read:02#Variable_6/Adam/Initializer/zeros:0
p
Variable_6/Adam_1:0Variable_6/Adam_1/AssignVariable_6/Adam_1/read:02%Variable_6/Adam_1/Initializer/zeros:0
h
Variable_7/Adam:0Variable_7/Adam/AssignVariable_7/Adam/read:02#Variable_7/Adam/Initializer/zeros:0
p
Variable_7/Adam_1:0Variable_7/Adam_1/AssignVariable_7/Adam_1/read:02%Variable_7/Adam_1/Initializer/zeros:0*d
serving_defaultQ
$
input
x:0˙˙˙˙˙˙˙˙˙)
output
y_conv:0˙˙˙˙˙˙˙˙˙
