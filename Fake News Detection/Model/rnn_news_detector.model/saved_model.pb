й8
ь
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
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
:
Less
x"T
y"T
z
"
Ttype:
2	
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
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
Г
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
О
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
executor_typestring 

StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8ип5

embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
рд(*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
рд(*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:d@*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
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

lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	(*&
shared_namelstm/lstm_cell/kernel

)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes
:	(*
dtype0

lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*0
shared_name!lstm/lstm_cell/recurrent_kernel

3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:*
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

Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
рд(*,
shared_nameAdam/embedding/embeddings/m

/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m* 
_output_shapes
:
рд(*
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d@*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:d@*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0

Adam/lstm/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	(*-
shared_nameAdam/lstm/lstm_cell/kernel/m

0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/m*
_output_shapes
:	(*
dtype0
Љ
&Adam/lstm/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/m
Ђ
:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

Adam/lstm/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/lstm/lstm_cell/bias/m

.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/m*
_output_shapes	
:*
dtype0

Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
рд(*,
shared_nameAdam/embedding/embeddings/v

/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v* 
_output_shapes
:
рд(*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d@*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:d@*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

Adam/lstm/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	(*-
shared_nameAdam/lstm/lstm_cell/kernel/v

0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/v*
_output_shapes
:	(*
dtype0
Љ
&Adam/lstm/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/v
Ђ
:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

Adam/lstm/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/lstm/lstm_cell/bias/v

.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
Ж8
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ё7
valueч7Bф7 Bн7
Д
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
b

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
l
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
 	keras_api
h

!kernel
"bias
#trainable_variables
$	variables
%regularization_losses
&	keras_api
R
'trainable_variables
(	variables
)regularization_losses
*	keras_api
h

+kernel
,bias
-trainable_variables
.	variables
/regularization_losses
0	keras_api
ж
1iter

2beta_1

3beta_2
	4decay
5learning_ratemv!mw"mx+my,mz6m{7m|8m}v~!v"v+v,v6v7v8v
8
0
61
72
83
!4
"5
+6
,7
8
0
61
72
83
!4
"5
+6
,7
 
­
9layer_regularization_losses
	trainable_variables

:layers

	variables
;metrics
<layer_metrics
regularization_losses
=non_trainable_variables
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
­
>layer_regularization_losses
trainable_variables

?layers
	variables
@metrics
Alayer_metrics
regularization_losses
Bnon_trainable_variables
 
 
 
­
Clayer_regularization_losses
trainable_variables

Dlayers
	variables
Emetrics
Flayer_metrics
regularization_losses
Gnon_trainable_variables
~

6kernel
7recurrent_kernel
8bias
Htrainable_variables
I	variables
Jregularization_losses
K	keras_api
 

60
71
82

60
71
82
 
Й
Llayer_regularization_losses
trainable_variables

Mlayers
	variables
Nmetrics

Ostates
Player_metrics
regularization_losses
Qnon_trainable_variables
 
 
 
­
Rlayer_regularization_losses
trainable_variables

Slayers
	variables
Tmetrics
Ulayer_metrics
regularization_losses
Vnon_trainable_variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

!0
"1

!0
"1
 
­
Wlayer_regularization_losses
#trainable_variables

Xlayers
$	variables
Ymetrics
Zlayer_metrics
%regularization_losses
[non_trainable_variables
 
 
 
­
\layer_regularization_losses
'trainable_variables

]layers
(	variables
^metrics
_layer_metrics
)regularization_losses
`non_trainable_variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1

+0
,1
 
­
alayer_regularization_losses
-trainable_variables

blayers
.	variables
cmetrics
dlayer_metrics
/regularization_losses
enon_trainable_variables
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
[Y
VARIABLE_VALUElstm/lstm_cell/kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm/lstm_cell/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
 
1
0
1
2
3
4
5
6

f0
g1
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

60
71
82

60
71
82
 
­
hlayer_regularization_losses
Htrainable_variables

ilayers
I	variables
jmetrics
klayer_metrics
Jregularization_losses
lnon_trainable_variables
 

0
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
4
	mtotal
	ncount
o	variables
p	keras_api
D
	qtotal
	rcount
s
_fn_kwargs
t	variables
u	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

m0
n1

o	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

q0
r1

t	variables

VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_embedding_inputPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
ф
StatefulPartitionedCallStatefulPartitionedCallserving_default_embedding_inputembedding/embeddingslstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_19631
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ѕ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_22684
м
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biastotalcounttotal_1count_1Adam/embedding/embeddings/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/mAdam/embedding/embeddings/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/v*-
Tin&
$2"*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_22793ЎЬ4
Ќ"

?__inference_lstm_layer_call_and_return_conditional_losses_22446

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ЂRead/ReadVariableOpЂRead_1/ReadVariableOpЂRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	(*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	(2

Identity
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d2

Identity_1
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2

Identity_2Ф
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_221702
PartitionedCallЖ

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3"!

identity_3Identity_3:output:0*6
_input_shapes%
#:џџџџџџџџџ(:::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
СJ
Ы
(__inference_gpu_lstm_with_fallback_18208

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рЛ2

concat_1п
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:џџџџџџџџџџџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_e06caf72-07f5-43ce-84a9-ab278837b010*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
ЌA
П
__inference_standard_lstm_16320

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ(*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџd2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:* 
_read_only_resource_inputs
 *
bodyR
while_body_16234*
condR
while_cond_16233*b
output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_cde74411-3f03-41a9-9ffd-46f3f8489957*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
ф
ё
9__inference___backward_gpu_lstm_with_fallback_16418_16594
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesв
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationп
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:џџџџџџџџџd2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like­
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationі
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ(2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
: 2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d(2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
: 2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	(2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	(2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*щ
_input_shapesз
д:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: :џџџџџџџџџd::џџџџџџџџџd:џџџџџџџџџd::џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ::џџџџџџџџџd:џџџџџџџџџd: ::::::::: : : : *=
api_implements+)lstm_cde74411-3f03-41a9-9ffd-46f3f8489957*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_16593*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :1-
+
_output_shapes
:џџџџџџџџџd: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:	

_output_shapes
::1
-
+
_output_shapes
:џџџџџџџџџ(:1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:"

_output_shapes

:рЛ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

л
#__inference_signature_wrapper_19631
embedding_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityЂStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_166122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameembedding_input

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_19373

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeД
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџd:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
J
Ы
(__inference_gpu_lstm_with_fallback_20383

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рЛ2

concat_1ж
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_fe5481a3-43fa-4d11-80a1-210c7df898af*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
	
М
while_cond_16233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_16233___redundant_placeholder03
/while_while_cond_16233___redundant_placeholder13
/while_while_cond_16233___redundant_placeholder23
/while_while_cond_16233___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
	
М
while_cond_18528
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_18528___redundant_placeholder03
/while_while_cond_18528___redundant_placeholder13
/while_while_cond_18528___redundant_placeholder23
/while_while_cond_18528___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Љ_
Ё
E__inference_sequential_layer_call_and_return_conditional_losses_20115

inputs$
 embedding_embedding_lookup_19635%
!lstm_read_readvariableop_resource'
#lstm_read_1_readvariableop_resource'
#lstm_read_2_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂembedding/embedding_lookupЂlstm/Read/ReadVariableOpЂlstm/Read_1/ReadVariableOpЂlstm/Read_2/ReadVariableOpq
embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ2
embedding/Cast­
embedding/embedding_lookupResourceGather embedding_embedding_lookup_19635embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/19635*+
_output_shapes
:џџџџџџџџџ(*
dtype02
embedding/embedding_lookup
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/19635*+
_output_shapes
:џџџџџџџџџ(2%
#embedding/embedding_lookup/IdentityО
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2'
%embedding/embedding_lookup/Identity_1s
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout/dropout/ConstЗ
dropout/dropout/MulMul.embedding/embedding_lookup/Identity_1:output:0dropout/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
dropout/dropout/Mul
dropout/dropout/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shapeа
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(*
dtype02.
,dropout/dropout/random_uniform/RandomUniform
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2 
dropout/dropout/GreaterEqual/yт
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
dropout/dropout/GreaterEqual
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ(2
dropout/dropout/Cast
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
dropout/dropout/Mul_1a

lstm/ShapeShapedropout/dropout/Mul_1:z:0*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stack
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slicef
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm/zeros/mul/y
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessl
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm/zeros/packed/1
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/Const

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

lstm/zerosj
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm/zeros_1/mul/y
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm/zeros_1/Less/y
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessp
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm/zeros_1/packed/1
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/Const
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm/zeros_1
lstm/Read/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource*
_output_shapes
:	(*
dtype02
lstm/Read/ReadVariableOpv
lstm/IdentityIdentity lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	(2
lstm/Identity
lstm/Read_1/ReadVariableOpReadVariableOp#lstm_read_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm/Read_1/ReadVariableOp|
lstm/Identity_1Identity"lstm/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d2
lstm/Identity_1
lstm/Read_2/ReadVariableOpReadVariableOp#lstm_read_2_readvariableop_resource*
_output_shapes	
:*
dtype02
lstm/Read_2/ReadVariableOpx
lstm/Identity_2Identity"lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
lstm/Identity_2њ
lstm/PartitionedCallPartitionedCalldropout/dropout/Mul_1:z:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/Identity:output:0lstm/Identity_1:output:0lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_198092
lstm/PartitionedCallw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout_1/dropout/ConstЈ
dropout_1/dropout/MulMullstm/PartitionedCall:output:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_1/dropout/Mul
dropout_1/dropout/ShapeShapelstm/PartitionedCall:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shapeв
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2"
 dropout_1/dropout/GreaterEqual/yц
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
dropout_1/dropout/GreaterEqual
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout_1/dropout/CastЂ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_1/dropout/Mul_1
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:d@*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMuldropout_1/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

dense/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout_2/dropout/ConstЃ
dropout_2/dropout/MulMuldense/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_2/dropout/Mulz
dropout_2/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shapeв
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2"
 dropout_2/dropout/GreaterEqual/yц
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
dropout_2/dropout/GreaterEqual
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
dropout_2/dropout/CastЂ
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_2/dropout/Mul_1Ѕ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_1/MatMul/ReadVariableOp 
dense_1/MatMulMatMuldropout_2/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/MatMulЄ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpЁ
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/Sigmoidз
IdentityIdentitydense_1/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/Read/ReadVariableOp^lstm/Read_1/ReadVariableOp^lstm/Read_2/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup24
lstm/Read/ReadVariableOplstm/Read/ReadVariableOp28
lstm/Read_1/ReadVariableOplstm/Read_1/ReadVariableOp28
lstm/Read_2/ReadVariableOplstm/Read_2/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

E
)__inference_dropout_1_layer_call_fn_22495

inputs
identityТ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_193782
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџd:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
х
ё
9__inference___backward_gpu_lstm_with_fallback_17758_17934
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_0
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesл
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationш
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeЖ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationџ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
: 2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d(2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
: 2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	(2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	(2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*
_input_shapesђ
я:џџџџџџџџџd:џџџџџџџџџџџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: :џџџџџџџџџџџџџџџџџџd::џџџџџџџџџd:џџџџџџџџџd::џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ::џџџџџџџџџd:џџџџџџџџџd: ::::::::: : : : *=
api_implements+)lstm_e4985a6c-822c-49c4-adbf-903b3f7ffaf0*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_17933*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџd::6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: ::6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:	

_output_shapes
:::
6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(:1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:"

_output_shapes

:рЛ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Љ
і
E__inference_sequential_layer_call_and_return_conditional_losses_19581

inputs
embedding_19557

lstm_19561

lstm_19563

lstm_19565
dense_19569
dense_19571
dense_1_19575
dense_1_19577
identityЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂ!embedding/StatefulPartitionedCallЂlstm/StatefulPartitionedCall
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_19557*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_184102#
!embedding/StatefulPartitionedCallј
dropout/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_184392
dropout/PartitionedCallЅ
lstm/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0
lstm_19561
lstm_19563
lstm_19565*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_193312
lstm/StatefulPartitionedCallѕ
dropout_1/PartitionedCallPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_193782
dropout_1/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_19569dense_19571*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_194022
dense/StatefulPartitionedCallі
dropout_2/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_194352
dropout_2/PartitionedCallЈ
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_1_19575dense_1_19577*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_194592!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_19430

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeД
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
е
`
B__inference_dropout_layer_call_and_return_conditional_losses_18439

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:џџџџџџџџџ(:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
ЌA
П
__inference_standard_lstm_20286

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ(*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџd2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:* 
_read_only_resource_inputs
 *
bodyR
while_body_20200*
condR
while_cond_20199*b
output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_fe5481a3-43fa-4d11-80a1-210c7df898af*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
уA
П
__inference_standard_lstm_21268

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ(*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџd2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:* 
_read_only_resource_inputs
 *
bodyR
while_body_21182*
condR
while_cond_21181*b
output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_4a448a72-3574-49b8-877d-36c7b741c3d3*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Я"

?__inference_lstm_layer_call_and_return_conditional_losses_21544
inputs_0 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ЂRead/ReadVariableOpЂRead_1/ReadVariableOpЂRead_2/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	(*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	(2

Identity
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d2

Identity_1
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2

Identity_2Я
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:џџџџџџџџџd:џџџџџџџџџџџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_212682
PartitionedCallЖ

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3"!

identity_3Identity_3:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ(:::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
"
_user_specified_name
inputs/0
Ѓ-
Ю
while_body_21182
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*b
_input_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	(:%	!

_output_shapes
:	d:!


_output_shapes	
:
х
ё
9__inference___backward_gpu_lstm_with_fallback_21366_21542
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_0
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesл
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationш
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeЖ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationџ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
: 2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d(2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
: 2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	(2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	(2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*
_input_shapesђ
я:џџџџџџџџџd:џџџџџџџџџџџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: :џџџџџџџџџџџџџџџџџџd::џџџџџџџџџd:џџџџџџџџџd::џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ::џџџџџџџџџd:џџџџџџџџџd: ::::::::: : : : *=
api_implements+)lstm_4a448a72-3574-49b8-877d-36c7b741c3d3*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_21541*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџd::6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: ::6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:	

_output_shapes
:::
6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(:1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:"

_output_shapes

:рЛ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ЌA
П
__inference_standard_lstm_18615

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ(*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџd2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:* 
_read_only_resource_inputs
 *
bodyR
while_body_18529*
condR
while_cond_18528*b
output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_ca005e8c-d761-49ff-a537-793276c37afc*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias

a
B__inference_dropout_layer_call_and_return_conditional_losses_18434

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeИ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yТ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ(2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ(:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
чU
Ѓ
&__forward_gpu_lstm_with_fallback_19328

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1к
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_4fd32a9d-89c2-47ba-8582-9ffccb27f886*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_19153_19329*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ч"

?__inference_lstm_layer_call_and_return_conditional_losses_18387

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ЂRead/ReadVariableOpЂRead_1/ReadVariableOpЂRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	(*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	(2

Identity
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d2

Identity_1
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2

Identity_2Э
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:џџџџџџџџџd:џџџџџџџџџџџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_181112
PartitionedCallЖ

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3"!

identity_3Identity_3:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ(:::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs
чU
Ѓ
&__forward_gpu_lstm_with_fallback_18888

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1к
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_ca005e8c-d761-49ff-a537-793276c37afc*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_18713_18889*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
J
Ы
(__inference_gpu_lstm_with_fallback_16417

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рЛ2

concat_1ж
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_cde74411-3f03-41a9-9ffd-46f3f8489957*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias

b
)__inference_dropout_1_layer_call_fn_22490

inputs
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_193732
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџd22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
Ѓ-
Ю
while_body_20742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*b
_input_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	(:%	!

_output_shapes
:	d:!


_output_shapes	
:
с
Ф
!__inference__traced_restore_22793
file_prefix)
%assignvariableop_embedding_embeddings#
assignvariableop_1_dense_kernel!
assignvariableop_2_dense_bias%
!assignvariableop_3_dense_1_kernel#
assignvariableop_4_dense_1_bias 
assignvariableop_5_adam_iter"
assignvariableop_6_adam_beta_1"
assignvariableop_7_adam_beta_2!
assignvariableop_8_adam_decay)
%assignvariableop_9_adam_learning_rate-
)assignvariableop_10_lstm_lstm_cell_kernel7
3assignvariableop_11_lstm_lstm_cell_recurrent_kernel+
'assignvariableop_12_lstm_lstm_cell_bias
assignvariableop_13_total
assignvariableop_14_count
assignvariableop_15_total_1
assignvariableop_16_count_13
/assignvariableop_17_adam_embedding_embeddings_m+
'assignvariableop_18_adam_dense_kernel_m)
%assignvariableop_19_adam_dense_bias_m-
)assignvariableop_20_adam_dense_1_kernel_m+
'assignvariableop_21_adam_dense_1_bias_m4
0assignvariableop_22_adam_lstm_lstm_cell_kernel_m>
:assignvariableop_23_adam_lstm_lstm_cell_recurrent_kernel_m2
.assignvariableop_24_adam_lstm_lstm_cell_bias_m3
/assignvariableop_25_adam_embedding_embeddings_v+
'assignvariableop_26_adam_dense_kernel_v)
%assignvariableop_27_adam_dense_bias_v-
)assignvariableop_28_adam_dense_1_kernel_v+
'assignvariableop_29_adam_dense_1_bias_v4
0assignvariableop_30_adam_lstm_lstm_cell_kernel_v>
:assignvariableop_31_adam_lstm_lstm_cell_recurrent_kernel_v2
.assignvariableop_32_adam_lstm_lstm_cell_bias_v
identity_34ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Ў
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*К
valueАB­"B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesв
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesи
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЄ
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Є
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ђ
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3І
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Є
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_5Ё
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ѓ
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ѓ
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ђ
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Њ
AssignVariableOp_9AssignVariableOp%assignvariableop_9_adam_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Б
AssignVariableOp_10AssignVariableOp)assignvariableop_10_lstm_lstm_cell_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Л
AssignVariableOp_11AssignVariableOp3assignvariableop_11_lstm_lstm_cell_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Џ
AssignVariableOp_12AssignVariableOp'assignvariableop_12_lstm_lstm_cell_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ё
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ё
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ѓ
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ѓ
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17З
AssignVariableOp_17AssignVariableOp/assignvariableop_17_adam_embedding_embeddings_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Џ
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19­
AssignVariableOp_19AssignVariableOp%assignvariableop_19_adam_dense_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Б
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_1_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Џ
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_1_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22И
AssignVariableOp_22AssignVariableOp0assignvariableop_22_adam_lstm_lstm_cell_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Т
AssignVariableOp_23AssignVariableOp:assignvariableop_23_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Ж
AssignVariableOp_24AssignVariableOp.assignvariableop_24_adam_lstm_lstm_cell_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25З
AssignVariableOp_25AssignVariableOp/assignvariableop_25_adam_embedding_embeddings_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Џ
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27­
AssignVariableOp_27AssignVariableOp%assignvariableop_27_adam_dense_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Б
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_1_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Џ
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_1_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30И
AssignVariableOp_30AssignVariableOp0assignvariableop_30_adam_lstm_lstm_cell_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Т
AssignVariableOp_31AssignVariableOp:assignvariableop_31_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Ж
AssignVariableOp_32AssignVariableOp.assignvariableop_32_adam_lstm_lstm_cell_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpД
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33Ї
Identity_34IdentityIdentity_33:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_34"#
identity_34Identity_34:output:0*
_input_shapes
: :::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ћ

$__inference_lstm_layer_call_fn_22468

inputs
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_193312
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ(:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
ЌA
П
__inference_standard_lstm_19809

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ(*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџd2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:* 
_read_only_resource_inputs
 *
bodyR
while_body_19723*
condR
while_cond_19722*b
output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_f04488f0-ee43-4b41-90b0-70a56eb2b6ac*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
чU
Ѓ
&__forward_gpu_lstm_with_fallback_20082

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1к
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_f04488f0-ee43-4b41-90b0-70a56eb2b6ac*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_19907_20083*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
#
щ
E__inference_sequential_layer_call_and_return_conditional_losses_19476
embedding_input
embedding_18419

lstm_19354

lstm_19356

lstm_19358
dense_19413
dense_19415
dense_1_19470
dense_1_19472
identityЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdropout/StatefulPartitionedCallЂ!dropout_1/StatefulPartitionedCallЂ!dropout_2/StatefulPartitionedCallЂ!embedding/StatefulPartitionedCallЂlstm/StatefulPartitionedCall
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_18419*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_184102#
!embedding/StatefulPartitionedCall
dropout/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_184342!
dropout/StatefulPartitionedCall­
lstm/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0
lstm_19354
lstm_19356
lstm_19358*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_188912
lstm/StatefulPartitionedCallЏ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_193732#
!dropout_1/StatefulPartitionedCallІ
dense/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_19413dense_19415*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_194022
dense/StatefulPartitionedCallВ
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_194302#
!dropout_2/StatefulPartitionedCallА
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_1_19470dense_1_19472*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_194592!
dense_1/StatefulPartitionedCallы
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:X T
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameembedding_input
ћ

$__inference_lstm_layer_call_fn_22457

inputs
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_188912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ(:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
Ѓ-
Ю
while_body_16234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*b
_input_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	(:%	!

_output_shapes
:	d:!


_output_shapes	
:
Ч
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_19435

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
уA
П
__inference_standard_lstm_20828

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ(*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџd2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:* 
_read_only_resource_inputs
 *
bodyR
while_body_20742*
condR
while_cond_20741*b
output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_5b3ae2ac-f4a1-497d-bba2-930a74fcbd87*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
е
`
B__inference_dropout_layer_call_and_return_conditional_losses_20654

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:џџџџџџџџџ(:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
СJ
Ы
(__inference_gpu_lstm_with_fallback_20925

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рЛ2

concat_1п
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:џџџџџџџџџџџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_5b3ae2ac-f4a1-497d-bba2-930a74fcbd87*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
ЌA
П
__inference_standard_lstm_22170

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ(*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџd2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:* 
_read_only_resource_inputs
 *
bodyR
while_body_22084*
condR
while_cond_22083*b
output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_225632df-fdd3-4b61-9bfc-4123736f7d19*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ѓ-
Ю
while_body_22084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*b
_input_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	(:%	!

_output_shapes
:	d:!


_output_shapes	
:

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_22527

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeД
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
х
ё
9__inference___backward_gpu_lstm_with_fallback_18209_18385
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_0
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesл
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationш
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeЖ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationџ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
: 2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d(2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
: 2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	(2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	(2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*
_input_shapesђ
я:џџџџџџџџџd:џџџџџџџџџџџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: :џџџџџџџџџџџџџџџџџџd::џџџџџџџџџd:џџџџџџџџџd::џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ::џџџџџџџџџd:џџџџџџџџџd: ::::::::: : : : *=
api_implements+)lstm_e06caf72-07f5-43ce-84a9-ab278837b010*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_18384*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџd::6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: ::6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:	

_output_shapes
:::
6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(:1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:"

_output_shapes

:рЛ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
J
Ы
(__inference_gpu_lstm_with_fallback_18712

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рЛ2

concat_1ж
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_ca005e8c-d761-49ff-a537-793276c37afc*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
J
Ы
(__inference_gpu_lstm_with_fallback_19906

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рЛ2

concat_1ж
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_f04488f0-ee43-4b41-90b0-70a56eb2b6ac*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
	
М
while_cond_20199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_20199___redundant_placeholder03
/while_while_cond_20199___redundant_placeholder13
/while_while_cond_20199___redundant_placeholder23
/while_while_cond_20199___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:

й
*__inference_sequential_layer_call_fn_20620

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityЂStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_195812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ч
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_19378

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:џџџџџџџџџd:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs


$__inference_lstm_layer_call_fn_21566
inputs_0
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_183872
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ(:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
"
_user_specified_name
inputs/0
Ѓ-
Ю
while_body_17574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*b
_input_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	(:%	!

_output_shapes
:	d:!


_output_shapes	
:

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_22480

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeД
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџd:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
ЌA
П
__inference_standard_lstm_21730

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ(*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџd2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:* 
_read_only_resource_inputs
 *
bodyR
while_body_21644*
condR
while_cond_21643*b
output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_5c2a9add-6747-48fd-82e7-9bcdbc37e878*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
	
М
while_cond_21643
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_21643___redundant_placeholder03
/while_while_cond_21643___redundant_placeholder13
/while_while_cond_21643___redundant_placeholder23
/while_while_cond_21643___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:

a
B__inference_dropout_layer_call_and_return_conditional_losses_20649

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeИ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yТ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ(2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ(:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
СJ
Ы
(__inference_gpu_lstm_with_fallback_21365

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рЛ2

concat_1п
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:џџџџџџџџџџџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_4a448a72-3574-49b8-877d-36c7b741c3d3*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias


$__inference_lstm_layer_call_fn_21555
inputs_0
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_179362
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ(:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
"
_user_specified_name
inputs/0
I

__inference__traced_save_22684
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
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
Const_1
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
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЈ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*К
valueАB­"B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЬ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesќ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
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

identity_1Identity_1:output:0*
_input_shapesє
ё: :
рд(:d@:@:@:: : : : : :	(:	d:: : : : :
рд(:d@:@:@::	(:	d::
рд(:d@:@:@::	(:	d:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
рд(:$ 

_output_shapes

:d@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :%!

_output_shapes
:	(:%!

_output_shapes
:	d:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
рд(:$ 

_output_shapes

:d@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	(:%!

_output_shapes
:	d:!

_output_shapes	
::&"
 
_output_shapes
:
рд(:$ 

_output_shapes

:d@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	(:% !

_output_shapes
:	d:!!

_output_shapes	
::"

_output_shapes
: 
ъ	
й
@__inference_dense_layer_call_and_return_conditional_losses_19402

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџd::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
Ф
џ
E__inference_sequential_layer_call_and_return_conditional_losses_19503
embedding_input
embedding_19479

lstm_19483

lstm_19485

lstm_19487
dense_19491
dense_19493
dense_1_19497
dense_1_19499
identityЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂ!embedding/StatefulPartitionedCallЂlstm/StatefulPartitionedCall
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_19479*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_184102#
!embedding/StatefulPartitionedCallј
dropout/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_184392
dropout/PartitionedCallЅ
lstm/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0
lstm_19483
lstm_19485
lstm_19487*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_193312
lstm/StatefulPartitionedCallѕ
dropout_1/PartitionedCallPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_193782
dropout_1/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_19491dense_19493*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_194022
dense/StatefulPartitionedCallі
dropout_2/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_194352
dropout_2/PartitionedCallЈ
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_1_19497dense_1_19499*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_194592!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:X T
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameembedding_input
ф
ё
9__inference___backward_gpu_lstm_with_fallback_20384_20560
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesв
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationп
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:џџџџџџџџџd2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like­
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationі
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ(2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
: 2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d(2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
: 2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	(2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	(2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*щ
_input_shapesз
д:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: :џџџџџџџџџd::џџџџџџџџџd:џџџџџџџџџd::џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ::џџџџџџџџџd:џџџџџџџџџd: ::::::::: : : : *=
api_implements+)lstm_fe5481a3-43fa-4d11-80a1-210c7df898af*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_20559*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :1-
+
_output_shapes
:џџџџџџџџџd: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:	

_output_shapes
::1
-
+
_output_shapes
:џџџџџџџџџ(:1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:"

_output_shapes

:рЛ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
V
Ѓ
&__forward_gpu_lstm_with_fallback_21101

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1у
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:џџџџџџџџџџџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_5b3ae2ac-f4a1-497d-bba2-930a74fcbd87*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_20926_21102*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
х
ё
9__inference___backward_gpu_lstm_with_fallback_20926_21102
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_0
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesл
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationш
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeЖ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationџ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
: 2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d(2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
: 2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	(2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	(2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*
_input_shapesђ
я:џџџџџџџџџd:џџџџџџџџџџџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: :џџџџџџџџџџџџџџџџџџd::џџџџџџџџџd:џџџџџџџџџd::џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ::џџџџџџџџџd:џџџџџџџџџd: ::::::::: : : : *=
api_implements+)lstm_5b3ae2ac-f4a1-497d-bba2-930a74fcbd87*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_21101*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџd::6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: ::6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:	

_output_shapes
:::
6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(:1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:"

_output_shapes

:рЛ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
чU
Ѓ
&__forward_gpu_lstm_with_fallback_20559

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1к
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_fe5481a3-43fa-4d11-80a1-210c7df898af*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_20384_20560*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ч
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_22485

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:џџџџџџџџџd:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs

b
)__inference_dropout_2_layer_call_fn_22537

inputs
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_194302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
	
М
while_cond_21181
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_21181___redundant_placeholder03
/while_while_cond_21181___redundant_placeholder13
/while_while_cond_21181___redundant_placeholder23
/while_while_cond_21181___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ф
ё
9__inference___backward_gpu_lstm_with_fallback_22268_22444
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesв
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationп
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:џџџџџџџџџd2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like­
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationі
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ(2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
: 2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d(2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
: 2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	(2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	(2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*щ
_input_shapesз
д:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: :џџџџџџџџџd::џџџџџџџџџd:џџџџџџџџџd::џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ::џџџџџџџџџd:џџџџџџџџџd: ::::::::: : : : *=
api_implements+)lstm_225632df-fdd3-4b61-9bfc-4123736f7d19*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_22443*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :1-
+
_output_shapes
:џџџџџџџџџd: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:	

_output_shapes
::1
-
+
_output_shapes
:џџџџџџџџџ(:1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:"

_output_shapes

:рЛ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
К
т
*__inference_sequential_layer_call_fn_19600
embedding_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityЂStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_195812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameembedding_input
ю	
л
B__inference_dense_1_layer_call_and_return_conditional_losses_22553

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Sigmoid
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
и
|
'__inference_dense_1_layer_call_fn_22562

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_194592
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ВC
Ё
E__inference_sequential_layer_call_and_return_conditional_losses_20578

inputs$
 embedding_embedding_lookup_20119%
!lstm_read_readvariableop_resource'
#lstm_read_1_readvariableop_resource'
#lstm_read_2_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂembedding/embedding_lookupЂlstm/Read/ReadVariableOpЂlstm/Read_1/ReadVariableOpЂlstm/Read_2/ReadVariableOpq
embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ2
embedding/Cast­
embedding/embedding_lookupResourceGather embedding_embedding_lookup_20119embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/20119*+
_output_shapes
:џџџџџџџџџ(*
dtype02
embedding/embedding_lookup
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/20119*+
_output_shapes
:џџџџџџџџџ(2%
#embedding/embedding_lookup/IdentityО
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2'
%embedding/embedding_lookup/Identity_1
dropout/IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
dropout/Identitya

lstm/ShapeShapedropout/Identity:output:0*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stack
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slicef
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm/zeros/mul/y
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessl
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm/zeros/packed/1
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/Const

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

lstm/zerosj
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm/zeros_1/mul/y
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm/zeros_1/Less/y
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessp
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm/zeros_1/packed/1
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/Const
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm/zeros_1
lstm/Read/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource*
_output_shapes
:	(*
dtype02
lstm/Read/ReadVariableOpv
lstm/IdentityIdentity lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	(2
lstm/Identity
lstm/Read_1/ReadVariableOpReadVariableOp#lstm_read_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm/Read_1/ReadVariableOp|
lstm/Identity_1Identity"lstm/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d2
lstm/Identity_1
lstm/Read_2/ReadVariableOpReadVariableOp#lstm_read_2_readvariableop_resource*
_output_shapes	
:*
dtype02
lstm/Read_2/ReadVariableOpx
lstm/Identity_2Identity"lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
lstm/Identity_2њ
lstm/PartitionedCallPartitionedCalldropout/Identity:output:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/Identity:output:0lstm/Identity_1:output:0lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_202862
lstm/PartitionedCall
dropout_1/IdentityIdentitylstm/PartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_1/Identity
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:d@*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMuldropout_1/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

dense/Relu
dropout_2/IdentityIdentitydense/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_2/IdentityЅ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_1/MatMul/ReadVariableOp 
dense_1/MatMulMatMuldropout_2/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/MatMulЄ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpЁ
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/Sigmoidз
IdentityIdentitydense_1/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/Read/ReadVariableOp^lstm/Read_1/ReadVariableOp^lstm/Read_2/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup24
lstm/Read/ReadVariableOplstm/Read/ReadVariableOp28
lstm/Read_1/ReadVariableOplstm/Read_1/ReadVariableOp28
lstm/Read_2/ReadVariableOplstm/Read_2/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ѓ-
Ю
while_body_18529
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*b
_input_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	(:%	!

_output_shapes
:	d:!


_output_shapes	
:
ф
ё
9__inference___backward_gpu_lstm_with_fallback_18713_18889
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesв
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationп
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:џџџџџџџџџd2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like­
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationі
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ(2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
: 2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d(2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
: 2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	(2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	(2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*щ
_input_shapesз
д:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: :џџџџџџџџџd::џџџџџџџџџd:џџџџџџџџџd::џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ::џџџџџџџџџd:џџџџџџџџџd: ::::::::: : : : *=
api_implements+)lstm_ca005e8c-d761-49ff-a537-793276c37afc*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_18888*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :1-
+
_output_shapes
:џџџџџџџџџd: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:	

_output_shapes
::1
-
+
_output_shapes
:џџџџџџџџџ(:1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:"

_output_shapes

:рЛ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ѓ-
Ю
while_body_19723
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*b
_input_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	(:%	!

_output_shapes
:	d:!


_output_shapes	
:
V
Ѓ
&__forward_gpu_lstm_with_fallback_17933

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1у
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:џџџџџџџџџџџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_e4985a6c-822c-49c4-adbf-903b3f7ffaf0*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_17758_17934*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Я"

?__inference_lstm_layer_call_and_return_conditional_losses_21104
inputs_0 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ЂRead/ReadVariableOpЂRead_1/ReadVariableOpЂRead_2/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	(*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	(2

Identity
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d2

Identity_1
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2

Identity_2Я
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:џџџџџџџџџd:џџџџџџџџџџџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_208282
PartitionedCallЖ

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3"!

identity_3Identity_3:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ(:::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
"
_user_specified_name
inputs/0
Њ
`
'__inference_dropout_layer_call_fn_20659

inputs
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_184342
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ(22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
СJ
Ы
(__inference_gpu_lstm_with_fallback_17757

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рЛ2

concat_1п
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:џџџџџџџџџџџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_e4985a6c-822c-49c4-adbf-903b3f7ffaf0*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
чU
Ѓ
&__forward_gpu_lstm_with_fallback_22003

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1к
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_5c2a9add-6747-48fd-82e7-9bcdbc37e878*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_21828_22004*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias

E
)__inference_dropout_2_layer_call_fn_22542

inputs
identityТ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_194352
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
уA
П
__inference_standard_lstm_17660

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ(*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџd2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:* 
_read_only_resource_inputs
 *
bodyR
while_body_17574*
condR
while_cond_17573*b
output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_e4985a6c-822c-49c4-adbf-903b3f7ffaf0*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ќ"

?__inference_lstm_layer_call_and_return_conditional_losses_22006

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ЂRead/ReadVariableOpЂRead_1/ReadVariableOpЂRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	(*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	(2

Identity
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d2

Identity_1
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2

Identity_2Ф
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_217302
PartitionedCallЖ

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3"!

identity_3Identity_3:output:0*6
_input_shapes%
#:џџџџџџџџџ(:::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
Ѓ-
Ю
while_body_20200
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*b
_input_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	(:%	!

_output_shapes
:	d:!


_output_shapes	
:
ъ	
й
@__inference_dense_layer_call_and_return_conditional_losses_22506

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџd::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
J
Ы
(__inference_gpu_lstm_with_fallback_22267

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рЛ2

concat_1ж
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_225632df-fdd3-4b61-9bfc-4123736f7d19*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
и	

D__inference_embedding_layer_call_and_return_conditional_losses_20630

inputs
embedding_lookup_20624
identityЂembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ2
Castћ
embedding_lookupResourceGatherembedding_lookup_20624Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/20624*+
_output_shapes
:џџџџџџџџџ(*
dtype02
embedding_lookupь
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/20624*+
_output_shapes
:џџџџџџџџџ(2
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ЌA
П
__inference_standard_lstm_19055

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ(*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџd2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:* 
_read_only_resource_inputs
 *
bodyR
while_body_18969*
condR
while_cond_18968*b
output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_4fd32a9d-89c2-47ba-8582-9ffccb27f886*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
ф
ё
9__inference___backward_gpu_lstm_with_fallback_19153_19329
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesв
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationп
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:џџџџџџџџџd2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like­
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationі
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ(2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
: 2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d(2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
: 2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	(2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	(2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*щ
_input_shapesз
д:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: :џџџџџџџџџd::џџџџџџџџџd:џџџџџџџџџd::џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ::џџџџџџџџџd:џџџџџџџџџd: ::::::::: : : : *=
api_implements+)lstm_4fd32a9d-89c2-47ba-8582-9ffccb27f886*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_19328*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :1-
+
_output_shapes
:џџџџџџџџџd: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:	

_output_shapes
::1
-
+
_output_shapes
:џџџџџџџџџ(:1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:"

_output_shapes

:рЛ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	
М
while_cond_19722
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_19722___redundant_placeholder03
/while_while_cond_19722___redundant_placeholder13
/while_while_cond_19722___redundant_placeholder23
/while_while_cond_19722___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
	
М
while_cond_18024
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_18024___redundant_placeholder03
/while_while_cond_18024___redundant_placeholder13
/while_while_cond_18024___redundant_placeholder23
/while_while_cond_18024___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ќ"

?__inference_lstm_layer_call_and_return_conditional_losses_19331

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ЂRead/ReadVariableOpЂRead_1/ReadVariableOpЂRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	(*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	(2

Identity
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d2

Identity_1
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2

Identity_2Ф
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_190552
PartitionedCallЖ

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3"!

identity_3Identity_3:output:0*6
_input_shapes%
#:џџџџџџџџџ(:::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
Ч
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_22532

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ПS
Е
 __inference__wrapped_model_16612
embedding_input/
+sequential_embedding_embedding_lookup_161530
,sequential_lstm_read_readvariableop_resource2
.sequential_lstm_read_1_readvariableop_resource2
.sequential_lstm_read_2_readvariableop_resource3
/sequential_dense_matmul_readvariableop_resource4
0sequential_dense_biasadd_readvariableop_resource5
1sequential_dense_1_matmul_readvariableop_resource6
2sequential_dense_1_biasadd_readvariableop_resource
identityЂ'sequential/dense/BiasAdd/ReadVariableOpЂ&sequential/dense/MatMul/ReadVariableOpЂ)sequential/dense_1/BiasAdd/ReadVariableOpЂ(sequential/dense_1/MatMul/ReadVariableOpЂ%sequential/embedding/embedding_lookupЂ#sequential/lstm/Read/ReadVariableOpЂ%sequential/lstm/Read_1/ReadVariableOpЂ%sequential/lstm/Read_2/ReadVariableOp
sequential/embedding/CastCastembedding_input*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ2
sequential/embedding/Castф
%sequential/embedding/embedding_lookupResourceGather+sequential_embedding_embedding_lookup_16153sequential/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*>
_class4
20loc:@sequential/embedding/embedding_lookup/16153*+
_output_shapes
:џџџџџџџџџ(*
dtype02'
%sequential/embedding/embedding_lookupР
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@sequential/embedding/embedding_lookup/16153*+
_output_shapes
:џџџџџџџџџ(20
.sequential/embedding/embedding_lookup/Identityп
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(22
0sequential/embedding/embedding_lookup/Identity_1З
sequential/dropout/IdentityIdentity9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
sequential/dropout/Identity
sequential/lstm/ShapeShape$sequential/dropout/Identity:output:0*
T0*
_output_shapes
:2
sequential/lstm/Shape
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#sequential/lstm/strided_slice/stack
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_1
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_2Т
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sequential/lstm/strided_slice|
sequential/lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
sequential/lstm/zeros/mul/yЌ
sequential/lstm/zeros/mulMul&sequential/lstm/strided_slice:output:0$sequential/lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros/mul
sequential/lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
sequential/lstm/zeros/Less/yЇ
sequential/lstm/zeros/LessLesssequential/lstm/zeros/mul:z:0%sequential/lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros/Less
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2 
sequential/lstm/zeros/packed/1У
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
sequential/lstm/zeros/packed
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/zeros/ConstЕ
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
sequential/lstm/zeros
sequential/lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
sequential/lstm/zeros_1/mul/yВ
sequential/lstm/zeros_1/mulMul&sequential/lstm/strided_slice:output:0&sequential/lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/mul
sequential/lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2 
sequential/lstm/zeros_1/Less/yЏ
sequential/lstm/zeros_1/LessLesssequential/lstm/zeros_1/mul:z:0'sequential/lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/Less
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2"
 sequential/lstm/zeros_1/packed/1Щ
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2 
sequential/lstm/zeros_1/packed
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/zeros_1/ConstН
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
sequential/lstm/zeros_1И
#sequential/lstm/Read/ReadVariableOpReadVariableOp,sequential_lstm_read_readvariableop_resource*
_output_shapes
:	(*
dtype02%
#sequential/lstm/Read/ReadVariableOp
sequential/lstm/IdentityIdentity+sequential/lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	(2
sequential/lstm/IdentityО
%sequential/lstm/Read_1/ReadVariableOpReadVariableOp.sequential_lstm_read_1_readvariableop_resource*
_output_shapes
:	d*
dtype02'
%sequential/lstm/Read_1/ReadVariableOp
sequential/lstm/Identity_1Identity-sequential/lstm/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d2
sequential/lstm/Identity_1К
%sequential/lstm/Read_2/ReadVariableOpReadVariableOp.sequential_lstm_read_2_readvariableop_resource*
_output_shapes	
:*
dtype02'
%sequential/lstm/Read_2/ReadVariableOp
sequential/lstm/Identity_2Identity-sequential/lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
sequential/lstm/Identity_2в
sequential/lstm/PartitionedCallPartitionedCall$sequential/dropout/Identity:output:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0!sequential/lstm/Identity:output:0#sequential/lstm/Identity_1:output:0#sequential/lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_163202!
sequential/lstm/PartitionedCallІ
sequential/dropout_1/IdentityIdentity(sequential/lstm/PartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
sequential/dropout_1/IdentityР
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:d@*
dtype02(
&sequential/dense/MatMul/ReadVariableOpЦ
sequential/dense/MatMulMatMul&sequential/dropout_1/Identity:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
sequential/dense/MatMulП
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOpХ
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
sequential/dense/BiasAdd
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
sequential/dense/ReluЁ
sequential/dropout_2/IdentityIdentity#sequential/dense/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
sequential/dropout_2/IdentityЦ
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02*
(sequential/dense_1/MatMul/ReadVariableOpЬ
sequential/dense_1/MatMulMatMul&sequential/dropout_2/Identity:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential/dense_1/MatMulХ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpЭ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential/dense_1/BiasAdd
sequential/dense_1/SigmoidSigmoid#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential/dense_1/SigmoidК
IdentityIdentitysequential/dense_1/Sigmoid:y:0(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup$^sequential/lstm/Read/ReadVariableOp&^sequential/lstm/Read_1/ReadVariableOp&^sequential/lstm/Read_2/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::::2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2J
#sequential/lstm/Read/ReadVariableOp#sequential/lstm/Read/ReadVariableOp2N
%sequential/lstm/Read_1/ReadVariableOp%sequential/lstm/Read_1/ReadVariableOp2N
%sequential/lstm/Read_2/ReadVariableOp%sequential/lstm/Read_2/ReadVariableOp:X T
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameembedding_input
и	

D__inference_embedding_layer_call_and_return_conditional_losses_18410

inputs
embedding_lookup_18404
identityЂembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ2
Castћ
embedding_lookupResourceGatherembedding_lookup_18404Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/18404*+
_output_shapes
:џџџџџџџџџ(*
dtype02
embedding_lookupь
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/18404*+
_output_shapes
:џџџџџџџџџ(2
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
	
М
while_cond_18968
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_18968___redundant_placeholder03
/while_while_cond_18968___redundant_placeholder13
/while_while_cond_18968___redundant_placeholder23
/while_while_cond_18968___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
К
т
*__inference_sequential_layer_call_fn_19552
embedding_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityЂStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_195332
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameembedding_input
ю	
л
B__inference_dense_1_layer_call_and_return_conditional_losses_19459

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Sigmoid
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ї"
р
E__inference_sequential_layer_call_and_return_conditional_losses_19533

inputs
embedding_19509

lstm_19513

lstm_19515

lstm_19517
dense_19521
dense_19523
dense_1_19527
dense_1_19529
identityЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdropout/StatefulPartitionedCallЂ!dropout_1/StatefulPartitionedCallЂ!dropout_2/StatefulPartitionedCallЂ!embedding/StatefulPartitionedCallЂlstm/StatefulPartitionedCall
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_19509*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_184102#
!embedding/StatefulPartitionedCall
dropout/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_184342!
dropout/StatefulPartitionedCall­
lstm/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0
lstm_19513
lstm_19515
lstm_19517*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_188912
lstm/StatefulPartitionedCallЏ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_193732#
!dropout_1/StatefulPartitionedCallІ
dense/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_19521dense_19523*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_194022
dense/StatefulPartitionedCallВ
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_194302#
!dropout_2/StatefulPartitionedCallА
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_1_19527dense_1_19529*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_194592!
dense_1/StatefulPartitionedCallы
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќ"

?__inference_lstm_layer_call_and_return_conditional_losses_18891

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ЂRead/ReadVariableOpЂRead_1/ReadVariableOpЂRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	(*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	(2

Identity
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d2

Identity_1
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2

Identity_2Ф
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_186152
PartitionedCallЖ

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3"!

identity_3Identity_3:output:0*6
_input_shapes%
#:џџџџџџџџџ(:::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
J
Ы
(__inference_gpu_lstm_with_fallback_19152

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рЛ2

concat_1ж
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_4fd32a9d-89c2-47ba-8582-9ffccb27f886*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ѓ-
Ю
while_body_18025
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*b
_input_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	(:%	!

_output_shapes
:	d:!


_output_shapes	
:
V
Ѓ
&__forward_gpu_lstm_with_fallback_18384

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1у
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:џџџџџџџџџџџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_e06caf72-07f5-43ce-84a9-ab278837b010*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_18209_18385*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ч"

?__inference_lstm_layer_call_and_return_conditional_losses_17936

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ЂRead/ReadVariableOpЂRead_1/ReadVariableOpЂRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	(*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	(2

Identity
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	d*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	d2

Identity_1
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2

Identity_2Э
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:џџџџџџџџџd:џџџџџџџџџџџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_176602
PartitionedCallЖ

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3"!

identity_3Identity_3:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ(:::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs
ф
ё
9__inference___backward_gpu_lstm_with_fallback_19907_20083
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesв
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationп
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:џџџџџџџџџd2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like­
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationі
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ(2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
: 2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d(2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
: 2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	(2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	(2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*щ
_input_shapesз
д:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: :џџџџџџџџџd::џџџџџџџџџd:џџџџџџџџџd::џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ::џџџџџџџџџd:џџџџџџџџџd: ::::::::: : : : *=
api_implements+)lstm_f04488f0-ee43-4b41-90b0-70a56eb2b6ac*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_20082*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :1-
+
_output_shapes
:џџџџџџџџџd: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:	

_output_shapes
::1
-
+
_output_shapes
:џџџџџџџџџ(:1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:"

_output_shapes

:рЛ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
чU
Ѓ
&__forward_gpu_lstm_with_fallback_16593

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1к
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_cde74411-3f03-41a9-9ffd-46f3f8489957*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_16418_16594*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
	
М
while_cond_20741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_20741___redundant_placeholder03
/while_while_cond_20741___redundant_placeholder13
/while_while_cond_20741___redundant_placeholder23
/while_while_cond_20741___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
J
Ы
(__inference_gpu_lstm_with_fallback_21827

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:рЛ2

concat_1ж
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_5c2a9add-6747-48fd-82e7-9bcdbc37e878*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias

й
*__inference_sequential_layer_call_fn_20599

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityЂStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_195332
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ф
o
)__inference_embedding_layer_call_fn_20637

inputs
unknown
identityЂStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_184102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
д
z
%__inference_dense_layer_call_fn_22515

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_194022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџd::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
Ѓ-
Ю
while_body_18969
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*b
_input_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	(:%	!

_output_shapes
:	d:!


_output_shapes	
:
чU
Ѓ
&__forward_gpu_lstm_with_fallback_22443

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1к
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*m
_input_shapes\
Z:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_225632df-fdd3-4b61-9bfc-4123736f7d19*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_22268_22444*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ѓ-
Ю
while_body_21644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ(*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*b
_input_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	(:%	!

_output_shapes
:	d:!


_output_shapes	
:
уA
П
__inference_standard_lstm_18111

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ(*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџd2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:* 
_read_only_resource_inputs
 *
bodyR
while_body_18025*
condR
while_cond_18024*b
output_shapesQ
O: : : : :џџџџџџџџџd:џџџџџџџџџd: : :	(:	d:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_e06caf72-07f5-43ce-84a9-ab278837b010*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
	
М
while_cond_17573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_17573___redundant_placeholder03
/while_while_cond_17573___redundant_placeholder13
/while_while_cond_17573___redundant_placeholder23
/while_while_cond_17573___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
V
Ѓ
&__forward_gpu_lstm_with_fallback_21541

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:(d:(d:(d:(d*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
: 2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d(2
transpose_1f
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes	
: 2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d(2
transpose_2j
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d(2
transpose_3j
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d(2
transpose_4j
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
: 2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:N2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:d2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:d2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1у
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:џџџџџџџџџџџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџd*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:	(:	d:*=
api_implements+)lstm_4a448a72-3574-49b8-877d-36c7b741c3d3*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_21366_21542*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinit_c:GC

_output_shapes
:	(
 
_user_specified_namekernel:QM

_output_shapes
:	d
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
	
М
while_cond_22083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_22083___redundant_placeholder03
/while_while_cond_22083___redundant_placeholder13
/while_while_cond_22083___redundant_placeholder23
/while_while_cond_22083___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:

C
'__inference_dropout_layer_call_fn_20664

inputs
identityФ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_184392
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ(:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
ф
ё
9__inference___backward_gpu_lstm_with_fallback_21828_22004
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesв
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationп
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџd2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:џџџџџџџџџd2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like­
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationі
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ(2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:N2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
: 2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:N2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:d2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:d2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d(2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   (   2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d(2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:dd2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:d2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:d2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:(d2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:dd2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
: 2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	(2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	d2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:џџџџџџџџџ(2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	(2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	d2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*щ
_input_shapesз
д:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd: :џџџџџџџџџd::џџџџџџџџџd:џџџџџџџџџd::џџџџџџџџџ(:џџџџџџџџџd:џџџџџџџџџd:рЛ::џџџџџџџџџd:џџџџџџџџџd: ::::::::: : : : *=
api_implements+)lstm_5c2a9add-6747-48fd-82e7-9bcdbc37e878*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_22003*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :1-
+
_output_shapes
:џџџџџџџџџd: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:	

_output_shapes
::1
-
+
_output_shapes
:џџџџџџџџџ(:1-
+
_output_shapes
:џџџџџџџџџd:1-
+
_output_shapes
:џџџџџџџџџd:"

_output_shapes

:рЛ: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: "БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*К
serving_defaultІ
K
embedding_input8
!serving_default_embedding_input:0џџџџџџџџџ;
dense_10
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:я
№5
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
_default_save_signature
__call__
+&call_and_return_all_conditional_losses"п2
_tf_keras_sequentialР2{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 25]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_input"}}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 25]}, "dtype": "float32", "input_dim": 60000, "output_dim": 40, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 25}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 100, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 25]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 25]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_input"}}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 25]}, "dtype": "float32", "input_dim": 60000, "output_dim": 40, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 25}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 100, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Ї

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerь{"class_name": "Embedding", "name": "embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 25]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 25]}, "dtype": "float32", "input_dim": 60000, "output_dim": 40, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 25]}}
у
trainable_variables
	variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"в
_tf_keras_layerИ{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
М
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"

_tf_keras_rnn_layerѓ	{"class_name": "LSTM", "name": "lstm", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 100, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 40]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 25, 40]}}
ч
trainable_variables
	variables
regularization_losses
 	keras_api
__call__
+&call_and_return_all_conditional_losses"ж
_tf_keras_layerМ{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
№

!kernel
"bias
#trainable_variables
$	variables
%regularization_losses
&	keras_api
__call__
+&call_and_return_all_conditional_losses"Щ
_tf_keras_layerЏ{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
ч
'trainable_variables
(	variables
)regularization_losses
*	keras_api
__call__
+&call_and_return_all_conditional_losses"ж
_tf_keras_layerМ{"class_name": "Dropout", "name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
є

+kernel
,bias
-trainable_variables
.	variables
/regularization_losses
0	keras_api
__call__
+&call_and_return_all_conditional_losses"Э
_tf_keras_layerГ{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
щ
1iter

2beta_1

3beta_2
	4decay
5learning_ratemv!mw"mx+my,mz6m{7m|8m}v~!v"v+v,v6v7v8v"
	optimizer
X
0
61
72
83
!4
"5
+6
,7"
trackable_list_wrapper
X
0
61
72
83
!4
"5
+6
,7"
trackable_list_wrapper
 "
trackable_list_wrapper
Ю
9layer_regularization_losses
	trainable_variables

:layers

	variables
;metrics
<layer_metrics
regularization_losses
=non_trainable_variables
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
(:&
рд(2embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
А
>layer_regularization_losses
trainable_variables

?layers
	variables
@metrics
Alayer_metrics
regularization_losses
Bnon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
Clayer_regularization_losses
trainable_variables

Dlayers
	variables
Emetrics
Flayer_metrics
regularization_losses
Gnon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ї

6kernel
7recurrent_kernel
8bias
Htrainable_variables
I	variables
Jregularization_losses
K	keras_api
__call__
+&call_and_return_all_conditional_losses"ъ
_tf_keras_layerа{"class_name": "LSTMCell", "name": "lstm_cell", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell", "trainable": true, "dtype": "float32", "units": 100, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
 "
trackable_list_wrapper
М
Llayer_regularization_losses
trainable_variables

Mlayers
	variables
Nmetrics

Ostates
Player_metrics
regularization_losses
Qnon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
Rlayer_regularization_losses
trainable_variables

Slayers
	variables
Tmetrics
Ulayer_metrics
regularization_losses
Vnon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:d@2dense/kernel
:@2
dense/bias
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
А
Wlayer_regularization_losses
#trainable_variables

Xlayers
$	variables
Ymetrics
Zlayer_metrics
%regularization_losses
[non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
\layer_regularization_losses
'trainable_variables

]layers
(	variables
^metrics
_layer_metrics
)regularization_losses
`non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 :@2dense_1/kernel
:2dense_1/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
А
alayer_regularization_losses
-trainable_variables

blayers
.	variables
cmetrics
dlayer_metrics
/regularization_losses
enon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
(:&	(2lstm/lstm_cell/kernel
2:0	d2lstm/lstm_cell/recurrent_kernel
": 2lstm/lstm_cell/bias
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
.
f0
g1"
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
5
60
71
82"
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
 "
trackable_list_wrapper
А
hlayer_regularization_losses
Htrainable_variables

ilayers
I	variables
jmetrics
klayer_metrics
Jregularization_losses
lnon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
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
Л
	mtotal
	ncount
o	variables
p	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
њ
	qtotal
	rcount
s
_fn_kwargs
t	variables
u	keras_api"Г
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
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
:  (2total
:  (2count
.
m0
n1"
trackable_list_wrapper
-
o	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
q0
r1"
trackable_list_wrapper
-
t	variables"
_generic_user_object
-:+
рд(2Adam/embedding/embeddings/m
#:!d@2Adam/dense/kernel/m
:@2Adam/dense/bias/m
%:#@2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
-:+	(2Adam/lstm/lstm_cell/kernel/m
7:5	d2&Adam/lstm/lstm_cell/recurrent_kernel/m
':%2Adam/lstm/lstm_cell/bias/m
-:+
рд(2Adam/embedding/embeddings/v
#:!d@2Adam/dense/kernel/v
:@2Adam/dense/bias/v
%:#@2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
-:+	(2Adam/lstm/lstm_cell/kernel/v
7:5	d2&Adam/lstm/lstm_cell/recurrent_kernel/v
':%2Adam/lstm/lstm_cell/bias/v
ц2у
 __inference__wrapped_model_16612О
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *.Ђ+
)&
embedding_inputџџџџџџџџџ
і2ѓ
*__inference_sequential_layer_call_fn_19600
*__inference_sequential_layer_call_fn_19552
*__inference_sequential_layer_call_fn_20620
*__inference_sequential_layer_call_fn_20599Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
т2п
E__inference_sequential_layer_call_and_return_conditional_losses_19503
E__inference_sequential_layer_call_and_return_conditional_losses_20115
E__inference_sequential_layer_call_and_return_conditional_losses_19476
E__inference_sequential_layer_call_and_return_conditional_losses_20578Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
г2а
)__inference_embedding_layer_call_fn_20637Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_embedding_layer_call_and_return_conditional_losses_20630Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
'__inference_dropout_layer_call_fn_20664
'__inference_dropout_layer_call_fn_20659Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Т2П
B__inference_dropout_layer_call_and_return_conditional_losses_20649
B__inference_dropout_layer_call_and_return_conditional_losses_20654Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ѓ2№
$__inference_lstm_layer_call_fn_21566
$__inference_lstm_layer_call_fn_22468
$__inference_lstm_layer_call_fn_21555
$__inference_lstm_layer_call_fn_22457е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
п2м
?__inference_lstm_layer_call_and_return_conditional_losses_22006
?__inference_lstm_layer_call_and_return_conditional_losses_21544
?__inference_lstm_layer_call_and_return_conditional_losses_21104
?__inference_lstm_layer_call_and_return_conditional_losses_22446е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
)__inference_dropout_1_layer_call_fn_22490
)__inference_dropout_1_layer_call_fn_22495Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ц2У
D__inference_dropout_1_layer_call_and_return_conditional_losses_22480
D__inference_dropout_1_layer_call_and_return_conditional_losses_22485Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Я2Ь
%__inference_dense_layer_call_fn_22515Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъ2ч
@__inference_dense_layer_call_and_return_conditional_losses_22506Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
)__inference_dropout_2_layer_call_fn_22537
)__inference_dropout_2_layer_call_fn_22542Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ц2У
D__inference_dropout_2_layer_call_and_return_conditional_losses_22532
D__inference_dropout_2_layer_call_and_return_conditional_losses_22527Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
б2Ю
'__inference_dense_1_layer_call_fn_22562Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ь2щ
B__inference_dense_1_layer_call_and_return_conditional_losses_22553Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
вBЯ
#__inference_signature_wrapper_19631embedding_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ф2СО
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ф2СО
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
 __inference__wrapped_model_16612w678!"+,8Ђ5
.Ђ+
)&
embedding_inputџџџџџџџџџ
Њ "1Њ.
,
dense_1!
dense_1џџџџџџџџџЂ
B__inference_dense_1_layer_call_and_return_conditional_losses_22553\+,/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "%Ђ"

0џџџџџџџџџ
 z
'__inference_dense_1_layer_call_fn_22562O+,/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "џџџџџџџџџ 
@__inference_dense_layer_call_and_return_conditional_losses_22506\!"/Ђ,
%Ђ"
 
inputsџџџџџџџџџd
Њ "%Ђ"

0џџџџџџџџџ@
 x
%__inference_dense_layer_call_fn_22515O!"/Ђ,
%Ђ"
 
inputsџџџџџџџџџd
Њ "џџџџџџџџџ@Є
D__inference_dropout_1_layer_call_and_return_conditional_losses_22480\3Ђ0
)Ђ&
 
inputsџџџџџџџџџd
p
Њ "%Ђ"

0џџџџџџџџџd
 Є
D__inference_dropout_1_layer_call_and_return_conditional_losses_22485\3Ђ0
)Ђ&
 
inputsџџџџџџџџџd
p 
Њ "%Ђ"

0џџџџџџџџџd
 |
)__inference_dropout_1_layer_call_fn_22490O3Ђ0
)Ђ&
 
inputsџџџџџџџџџd
p
Њ "џџџџџџџџџd|
)__inference_dropout_1_layer_call_fn_22495O3Ђ0
)Ђ&
 
inputsџџџџџџџџџd
p 
Њ "џџџџџџџџџdЄ
D__inference_dropout_2_layer_call_and_return_conditional_losses_22527\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ@
p
Њ "%Ђ"

0џџџџџџџџџ@
 Є
D__inference_dropout_2_layer_call_and_return_conditional_losses_22532\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ@
p 
Њ "%Ђ"

0џџџџџџџџџ@
 |
)__inference_dropout_2_layer_call_fn_22537O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ@
p
Њ "џџџџџџџџџ@|
)__inference_dropout_2_layer_call_fn_22542O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ@
p 
Њ "џџџџџџџџџ@Њ
B__inference_dropout_layer_call_and_return_conditional_losses_20649d7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ(
p
Њ ")Ђ&

0џџџџџџџџџ(
 Њ
B__inference_dropout_layer_call_and_return_conditional_losses_20654d7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ(
p 
Њ ")Ђ&

0џџџџџџџџџ(
 
'__inference_dropout_layer_call_fn_20659W7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ(
p
Њ "џџџџџџџџџ(
'__inference_dropout_layer_call_fn_20664W7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ(
p 
Њ "џџџџџџџџџ(Ї
D__inference_embedding_layer_call_and_return_conditional_losses_20630_/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ ")Ђ&

0џџџџџџџџџ(
 
)__inference_embedding_layer_call_fn_20637R/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџ(Р
?__inference_lstm_layer_call_and_return_conditional_losses_21104}678OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ(

 
p

 
Њ "%Ђ"

0џџџџџџџџџd
 Р
?__inference_lstm_layer_call_and_return_conditional_losses_21544}678OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ(

 
p 

 
Њ "%Ђ"

0џџџџџџџџџd
 А
?__inference_lstm_layer_call_and_return_conditional_losses_22006m678?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ(

 
p

 
Њ "%Ђ"

0џџџџџџџџџd
 А
?__inference_lstm_layer_call_and_return_conditional_losses_22446m678?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ(

 
p 

 
Њ "%Ђ"

0џџџџџџџџџd
 
$__inference_lstm_layer_call_fn_21555p678OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ(

 
p

 
Њ "џџџџџџџџџd
$__inference_lstm_layer_call_fn_21566p678OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ(

 
p 

 
Њ "џџџџџџџџџd
$__inference_lstm_layer_call_fn_22457`678?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ(

 
p

 
Њ "џџџџџџџџџd
$__inference_lstm_layer_call_fn_22468`678?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ(

 
p 

 
Њ "џџџџџџџџџdМ
E__inference_sequential_layer_call_and_return_conditional_losses_19476s678!"+,@Ђ=
6Ђ3
)&
embedding_inputџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 М
E__inference_sequential_layer_call_and_return_conditional_losses_19503s678!"+,@Ђ=
6Ђ3
)&
embedding_inputџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Г
E__inference_sequential_layer_call_and_return_conditional_losses_20115j678!"+,7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Г
E__inference_sequential_layer_call_and_return_conditional_losses_20578j678!"+,7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 
*__inference_sequential_layer_call_fn_19552f678!"+,@Ђ=
6Ђ3
)&
embedding_inputџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
*__inference_sequential_layer_call_fn_19600f678!"+,@Ђ=
6Ђ3
)&
embedding_inputџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
*__inference_sequential_layer_call_fn_20599]678!"+,7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
*__inference_sequential_layer_call_fn_20620]678!"+,7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџВ
#__inference_signature_wrapper_19631678!"+,KЂH
Ђ 
AЊ>
<
embedding_input)&
embedding_inputџџџџџџџџџ"1Њ.
,
dense_1!
dense_1џџџџџџџџџ