??	
??
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
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
~
toReshape/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?? *!
shared_nametoReshape/kernel
w
$toReshape/kernel/Read/ReadVariableOpReadVariableOptoReshape/kernel* 
_output_shapes
:
?? *
dtype0
u
toReshape/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:? *
shared_nametoReshape/bias
n
"toReshape/bias/Read/ReadVariableOpReadVariableOptoReshape/bias*
_output_shapes	
:? *
dtype0
~
conv_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv_0/kernel
w
!conv_0/kernel/Read/ReadVariableOpReadVariableOpconv_0/kernel*&
_output_shapes
:@@*
dtype0
n
conv_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv_0/bias
g
conv_0/bias/Read/ReadVariableOpReadVariableOpconv_0/bias*
_output_shapes
:@*
dtype0
~
conv_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv_1/kernel
w
!conv_1/kernel/Read/ReadVariableOpReadVariableOpconv_1/kernel*&
_output_shapes
:@@*
dtype0
n
conv_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv_1/bias
g
conv_1/bias/Read/ReadVariableOpReadVariableOpconv_1/bias*
_output_shapes
:@*
dtype0
~
conv_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv_2/kernel
w
!conv_2/kernel/Read/ReadVariableOpReadVariableOpconv_2/kernel*&
_output_shapes
:@@*
dtype0
n
conv_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv_2/bias
g
conv_2/bias/Read/ReadVariableOpReadVariableOpconv_2/bias*
_output_shapes
:@*
dtype0
~
conv_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv_4/kernel
w
!conv_4/kernel/Read/ReadVariableOpReadVariableOpconv_4/kernel*&
_output_shapes
:@*
dtype0
n
conv_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv_4/bias
g
conv_4/bias/Read/ReadVariableOpReadVariableOpconv_4/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
 
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
 	variables
!regularization_losses
"	keras_api
h

#kernel
$bias
%trainable_variables
&	variables
'regularization_losses
(	keras_api
h

)kernel
*bias
+trainable_variables
,	variables
-regularization_losses
.	keras_api
F
0
1
2
3
4
5
#6
$7
)8
*9
F
0
1
2
3
4
5
#6
$7
)8
*9
 
?
/layer_regularization_losses
	variables
	trainable_variables
0non_trainable_variables

regularization_losses

1layers
2layer_metrics
3metrics
 
\Z
VARIABLE_VALUEtoReshape/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEtoReshape/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
4layer_regularization_losses
5non_trainable_variables
trainable_variables
	variables
regularization_losses

6layers
7layer_metrics
8metrics
 
 
 
?
9layer_regularization_losses
:non_trainable_variables
trainable_variables
	variables
regularization_losses

;layers
<layer_metrics
=metrics
YW
VARIABLE_VALUEconv_0/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv_0/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
>layer_regularization_losses
?non_trainable_variables
trainable_variables
	variables
regularization_losses

@layers
Alayer_metrics
Bmetrics
YW
VARIABLE_VALUEconv_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Clayer_regularization_losses
Dnon_trainable_variables
trainable_variables
 	variables
!regularization_losses

Elayers
Flayer_metrics
Gmetrics
YW
VARIABLE_VALUEconv_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

#0
$1

#0
$1
 
?
Hlayer_regularization_losses
Inon_trainable_variables
%trainable_variables
&	variables
'regularization_losses

Jlayers
Klayer_metrics
Lmetrics
YW
VARIABLE_VALUEconv_4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv_4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

)0
*1
 
?
Mlayer_regularization_losses
Nnon_trainable_variables
+trainable_variables
,	variables
-regularization_losses

Olayers
Player_metrics
Qmetrics
 
 
1
0
1
2
3
4
5
6
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
 
 
 
 
z
serving_default_inputPlaceholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputtoReshape/kerneltoReshape/biasconv_0/kernelconv_0/biasconv_1/kernelconv_1/biasconv_2/kernelconv_2/biasconv_4/kernelconv_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_71261
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$toReshape/kernel/Read/ReadVariableOp"toReshape/bias/Read/ReadVariableOp!conv_0/kernel/Read/ReadVariableOpconv_0/bias/Read/ReadVariableOp!conv_1/kernel/Read/ReadVariableOpconv_1/bias/Read/ReadVariableOp!conv_2/kernel/Read/ReadVariableOpconv_2/bias/Read/ReadVariableOp!conv_4/kernel/Read/ReadVariableOpconv_4/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_71602
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenametoReshape/kerneltoReshape/biasconv_0/kernelconv_0/biasconv_1/kernelconv_1/biasconv_2/kernelconv_2/biasconv_4/kernelconv_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_71642??
?
?
B__inference_model_1_layer_call_and_return_conditional_losses_71204	
input#
toreshape_71177:
?? 
toreshape_71179:	? &
conv_0_71183:@@
conv_0_71185:@&
conv_1_71188:@@
conv_1_71190:@&
conv_2_71193:@@
conv_2_71195:@&
conv_4_71198:@
conv_4_71200:
identity??conv_0/StatefulPartitionedCall?conv_1/StatefulPartitionedCall?conv_2/StatefulPartitionedCall?conv_4/StatefulPartitionedCall?!toReshape/StatefulPartitionedCall?
!toReshape/StatefulPartitionedCallStatefulPartitionedCallinputtoreshape_71177toreshape_71179*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_toReshape_layer_call_and_return_conditional_losses_709872#
!toReshape/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCall*toReshape/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_710072
reshape/PartitionedCall?
conv_0/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv_0_71183conv_0_71185*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_0_layer_call_and_return_conditional_losses_708252 
conv_0/StatefulPartitionedCall?
conv_1/StatefulPartitionedCallStatefulPartitionedCall'conv_0/StatefulPartitionedCall:output:0conv_1_71188conv_1_71190*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_1_layer_call_and_return_conditional_losses_708702 
conv_1/StatefulPartitionedCall?
conv_2/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0conv_2_71193conv_2_71195*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_2_layer_call_and_return_conditional_losses_709152 
conv_2/StatefulPartitionedCall?
conv_4/StatefulPartitionedCallStatefulPartitionedCall'conv_2/StatefulPartitionedCall:output:0conv_4_71198conv_4_71200*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_4_layer_call_and_return_conditional_losses_709602 
conv_4/StatefulPartitionedCall?
IdentityIdentity'conv_4/StatefulPartitionedCall:output:0^conv_0/StatefulPartitionedCall^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_4/StatefulPartitionedCall"^toReshape/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2@
conv_0/StatefulPartitionedCallconv_0/StatefulPartitionedCall2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_4/StatefulPartitionedCallconv_4/StatefulPartitionedCall2F
!toReshape/StatefulPartitionedCall!toReshape/StatefulPartitionedCall:O K
(
_output_shapes
:??????????

_user_specified_nameinput
?
?
)__inference_toReshape_layer_call_fn_71530

inputs
unknown:
?? 
	unknown_0:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_toReshape_layer_call_and_return_conditional_losses_709872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
B__inference_model_1_layer_call_and_return_conditional_losses_71461

inputs<
(toreshape_matmul_readvariableop_resource:
?? 8
)toreshape_biasadd_readvariableop_resource:	? I
/conv_0_conv2d_transpose_readvariableop_resource:@@4
&conv_0_biasadd_readvariableop_resource:@I
/conv_1_conv2d_transpose_readvariableop_resource:@@4
&conv_1_biasadd_readvariableop_resource:@I
/conv_2_conv2d_transpose_readvariableop_resource:@@4
&conv_2_biasadd_readvariableop_resource:@I
/conv_4_conv2d_transpose_readvariableop_resource:@4
&conv_4_biasadd_readvariableop_resource:
identity??conv_0/BiasAdd/ReadVariableOp?&conv_0/conv2d_transpose/ReadVariableOp?conv_1/BiasAdd/ReadVariableOp?&conv_1/conv2d_transpose/ReadVariableOp?conv_2/BiasAdd/ReadVariableOp?&conv_2/conv2d_transpose/ReadVariableOp?conv_4/BiasAdd/ReadVariableOp?&conv_4/conv2d_transpose/ReadVariableOp? toReshape/BiasAdd/ReadVariableOp?toReshape/MatMul/ReadVariableOp?
toReshape/MatMul/ReadVariableOpReadVariableOp(toreshape_matmul_readvariableop_resource* 
_output_shapes
:
?? *
dtype02!
toReshape/MatMul/ReadVariableOp?
toReshape/MatMulMatMulinputs'toReshape/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? 2
toReshape/MatMul?
 toReshape/BiasAdd/ReadVariableOpReadVariableOp)toreshape_biasadd_readvariableop_resource*
_output_shapes	
:? *
dtype02"
 toReshape/BiasAdd/ReadVariableOp?
toReshape/BiasAddBiasAddtoReshape/MatMul:product:0(toReshape/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? 2
toReshape/BiasAddh
reshape/ShapeShapetoReshape/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2t
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape/Reshape/shape/3?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapetoReshape/BiasAdd:output:0reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????@2
reshape/Reshaped
conv_0/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:2
conv_0/Shape?
conv_0/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv_0/strided_slice/stack?
conv_0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
conv_0/strided_slice/stack_1?
conv_0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
conv_0/strided_slice/stack_2?
conv_0/strided_sliceStridedSliceconv_0/Shape:output:0#conv_0/strided_slice/stack:output:0%conv_0/strided_slice/stack_1:output:0%conv_0/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_0/strided_sliceb
conv_0/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv_0/stack/1b
conv_0/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv_0/stack/2b
conv_0/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv_0/stack/3?
conv_0/stackPackconv_0/strided_slice:output:0conv_0/stack/1:output:0conv_0/stack/2:output:0conv_0/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv_0/stack?
conv_0/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv_0/strided_slice_1/stack?
conv_0/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
conv_0/strided_slice_1/stack_1?
conv_0/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
conv_0/strided_slice_1/stack_2?
conv_0/strided_slice_1StridedSliceconv_0/stack:output:0%conv_0/strided_slice_1/stack:output:0'conv_0/strided_slice_1/stack_1:output:0'conv_0/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_0/strided_slice_1?
&conv_0/conv2d_transpose/ReadVariableOpReadVariableOp/conv_0_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02(
&conv_0/conv2d_transpose/ReadVariableOp?
conv_0/conv2d_transposeConv2DBackpropInputconv_0/stack:output:0.conv_0/conv2d_transpose/ReadVariableOp:value:0reshape/Reshape:output:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv_0/conv2d_transpose?
conv_0/BiasAdd/ReadVariableOpReadVariableOp&conv_0_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv_0/BiasAdd/ReadVariableOp?
conv_0/BiasAddBiasAdd conv_0/conv2d_transpose:output:0%conv_0/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv_0/BiasAddu
conv_0/ReluReluconv_0/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv_0/Relue
conv_1/ShapeShapeconv_0/Relu:activations:0*
T0*
_output_shapes
:2
conv_1/Shape?
conv_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv_1/strided_slice/stack?
conv_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
conv_1/strided_slice/stack_1?
conv_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
conv_1/strided_slice/stack_2?
conv_1/strided_sliceStridedSliceconv_1/Shape:output:0#conv_1/strided_slice/stack:output:0%conv_1/strided_slice/stack_1:output:0%conv_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_1/strided_sliceb
conv_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv_1/stack/1b
conv_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv_1/stack/2b
conv_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv_1/stack/3?
conv_1/stackPackconv_1/strided_slice:output:0conv_1/stack/1:output:0conv_1/stack/2:output:0conv_1/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv_1/stack?
conv_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv_1/strided_slice_1/stack?
conv_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
conv_1/strided_slice_1/stack_1?
conv_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
conv_1/strided_slice_1/stack_2?
conv_1/strided_slice_1StridedSliceconv_1/stack:output:0%conv_1/strided_slice_1/stack:output:0'conv_1/strided_slice_1/stack_1:output:0'conv_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_1/strided_slice_1?
&conv_1/conv2d_transpose/ReadVariableOpReadVariableOp/conv_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02(
&conv_1/conv2d_transpose/ReadVariableOp?
conv_1/conv2d_transposeConv2DBackpropInputconv_1/stack:output:0.conv_1/conv2d_transpose/ReadVariableOp:value:0conv_0/Relu:activations:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2
conv_1/conv2d_transpose?
conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv_1/BiasAdd/ReadVariableOp?
conv_1/BiasAddBiasAdd conv_1/conv2d_transpose:output:0%conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2
conv_1/BiasAddu
conv_1/ReluReluconv_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @2
conv_1/Relue
conv_2/ShapeShapeconv_1/Relu:activations:0*
T0*
_output_shapes
:2
conv_2/Shape?
conv_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv_2/strided_slice/stack?
conv_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
conv_2/strided_slice/stack_1?
conv_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
conv_2/strided_slice/stack_2?
conv_2/strided_sliceStridedSliceconv_2/Shape:output:0#conv_2/strided_slice/stack:output:0%conv_2/strided_slice/stack_1:output:0%conv_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_2/strided_sliceb
conv_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv_2/stack/1b
conv_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv_2/stack/2b
conv_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv_2/stack/3?
conv_2/stackPackconv_2/strided_slice:output:0conv_2/stack/1:output:0conv_2/stack/2:output:0conv_2/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv_2/stack?
conv_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv_2/strided_slice_1/stack?
conv_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
conv_2/strided_slice_1/stack_1?
conv_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
conv_2/strided_slice_1/stack_2?
conv_2/strided_slice_1StridedSliceconv_2/stack:output:0%conv_2/strided_slice_1/stack:output:0'conv_2/strided_slice_1/stack_1:output:0'conv_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_2/strided_slice_1?
&conv_2/conv2d_transpose/ReadVariableOpReadVariableOp/conv_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02(
&conv_2/conv2d_transpose/ReadVariableOp?
conv_2/conv2d_transposeConv2DBackpropInputconv_2/stack:output:0.conv_2/conv2d_transpose/ReadVariableOp:value:0conv_1/Relu:activations:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
conv_2/conv2d_transpose?
conv_2/BiasAdd/ReadVariableOpReadVariableOp&conv_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv_2/BiasAdd/ReadVariableOp?
conv_2/BiasAddBiasAdd conv_2/conv2d_transpose:output:0%conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
conv_2/BiasAddu
conv_2/ReluReluconv_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@2
conv_2/Relue
conv_4/ShapeShapeconv_2/Relu:activations:0*
T0*
_output_shapes
:2
conv_4/Shape?
conv_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv_4/strided_slice/stack?
conv_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
conv_4/strided_slice/stack_1?
conv_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
conv_4/strided_slice/stack_2?
conv_4/strided_sliceStridedSliceconv_4/Shape:output:0#conv_4/strided_slice/stack:output:0%conv_4/strided_slice/stack_1:output:0%conv_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_4/strided_slicec
conv_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2
conv_4/stack/1c
conv_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv_4/stack/2b
conv_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv_4/stack/3?
conv_4/stackPackconv_4/strided_slice:output:0conv_4/stack/1:output:0conv_4/stack/2:output:0conv_4/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv_4/stack?
conv_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv_4/strided_slice_1/stack?
conv_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
conv_4/strided_slice_1/stack_1?
conv_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
conv_4/strided_slice_1/stack_2?
conv_4/strided_slice_1StridedSliceconv_4/stack:output:0%conv_4/strided_slice_1/stack:output:0'conv_4/strided_slice_1/stack_1:output:0'conv_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_4/strided_slice_1?
&conv_4/conv2d_transpose/ReadVariableOpReadVariableOp/conv_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02(
&conv_4/conv2d_transpose/ReadVariableOp?
conv_4/conv2d_transposeConv2DBackpropInputconv_4/stack:output:0.conv_4/conv2d_transpose/ReadVariableOp:value:0conv_2/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv_4/conv2d_transpose?
conv_4/BiasAdd/ReadVariableOpReadVariableOp&conv_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv_4/BiasAdd/ReadVariableOp?
conv_4/BiasAddBiasAdd conv_4/conv2d_transpose:output:0%conv_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv_4/BiasAdd?
conv_4/SigmoidSigmoidconv_4/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv_4/Sigmoid?
IdentityIdentityconv_4/Sigmoid:y:0^conv_0/BiasAdd/ReadVariableOp'^conv_0/conv2d_transpose/ReadVariableOp^conv_1/BiasAdd/ReadVariableOp'^conv_1/conv2d_transpose/ReadVariableOp^conv_2/BiasAdd/ReadVariableOp'^conv_2/conv2d_transpose/ReadVariableOp^conv_4/BiasAdd/ReadVariableOp'^conv_4/conv2d_transpose/ReadVariableOp!^toReshape/BiasAdd/ReadVariableOp ^toReshape/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2>
conv_0/BiasAdd/ReadVariableOpconv_0/BiasAdd/ReadVariableOp2P
&conv_0/conv2d_transpose/ReadVariableOp&conv_0/conv2d_transpose/ReadVariableOp2>
conv_1/BiasAdd/ReadVariableOpconv_1/BiasAdd/ReadVariableOp2P
&conv_1/conv2d_transpose/ReadVariableOp&conv_1/conv2d_transpose/ReadVariableOp2>
conv_2/BiasAdd/ReadVariableOpconv_2/BiasAdd/ReadVariableOp2P
&conv_2/conv2d_transpose/ReadVariableOp&conv_2/conv2d_transpose/ReadVariableOp2>
conv_4/BiasAdd/ReadVariableOpconv_4/BiasAdd/ReadVariableOp2P
&conv_4/conv2d_transpose/ReadVariableOp&conv_4/conv2d_transpose/ReadVariableOp2D
 toReshape/BiasAdd/ReadVariableOp toReshape/BiasAdd/ReadVariableOp2B
toReshape/MatMul/ReadVariableOptoReshape/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_conv_4_layer_call_fn_70970

inputs!
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_4_layer_call_and_return_conditional_losses_709602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?%
?
A__inference_conv_2_layer_call_and_return_conditional_losses_70915

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
B__inference_model_1_layer_call_and_return_conditional_losses_71234	
input#
toreshape_71207:
?? 
toreshape_71209:	? &
conv_0_71213:@@
conv_0_71215:@&
conv_1_71218:@@
conv_1_71220:@&
conv_2_71223:@@
conv_2_71225:@&
conv_4_71228:@
conv_4_71230:
identity??conv_0/StatefulPartitionedCall?conv_1/StatefulPartitionedCall?conv_2/StatefulPartitionedCall?conv_4/StatefulPartitionedCall?!toReshape/StatefulPartitionedCall?
!toReshape/StatefulPartitionedCallStatefulPartitionedCallinputtoreshape_71207toreshape_71209*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_toReshape_layer_call_and_return_conditional_losses_709872#
!toReshape/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCall*toReshape/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_710072
reshape/PartitionedCall?
conv_0/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv_0_71213conv_0_71215*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_0_layer_call_and_return_conditional_losses_708252 
conv_0/StatefulPartitionedCall?
conv_1/StatefulPartitionedCallStatefulPartitionedCall'conv_0/StatefulPartitionedCall:output:0conv_1_71218conv_1_71220*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_1_layer_call_and_return_conditional_losses_708702 
conv_1/StatefulPartitionedCall?
conv_2/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0conv_2_71223conv_2_71225*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_2_layer_call_and_return_conditional_losses_709152 
conv_2/StatefulPartitionedCall?
conv_4/StatefulPartitionedCallStatefulPartitionedCall'conv_2/StatefulPartitionedCall:output:0conv_4_71228conv_4_71230*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_4_layer_call_and_return_conditional_losses_709602 
conv_4/StatefulPartitionedCall?
IdentityIdentity'conv_4/StatefulPartitionedCall:output:0^conv_0/StatefulPartitionedCall^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_4/StatefulPartitionedCall"^toReshape/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2@
conv_0/StatefulPartitionedCallconv_0/StatefulPartitionedCall2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_4/StatefulPartitionedCallconv_4/StatefulPartitionedCall2F
!toReshape/StatefulPartitionedCall!toReshape/StatefulPartitionedCall:O K
(
_output_shapes
:??????????

_user_specified_nameinput
?%
?
A__inference_conv_1_layer_call_and_return_conditional_losses_70870

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
'__inference_model_1_layer_call_fn_71053	
input
unknown:
?? 
	unknown_0:	? #
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_710302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
(
_output_shapes
:??????????

_user_specified_nameinput
?
C
'__inference_reshape_layer_call_fn_71549

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_710072
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????? :P L
(
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?	
?
D__inference_toReshape_layer_call_and_return_conditional_losses_71521

inputs2
matmul_readvariableop_resource:
?? .
biasadd_readvariableop_resource:	? 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?? *
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:? *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?.
?
!__inference__traced_restore_71642
file_prefix5
!assignvariableop_toreshape_kernel:
?? 0
!assignvariableop_1_toreshape_bias:	? :
 assignvariableop_2_conv_0_kernel:@@,
assignvariableop_3_conv_0_bias:@:
 assignvariableop_4_conv_1_kernel:@@,
assignvariableop_5_conv_1_bias:@:
 assignvariableop_6_conv_2_kernel:@@,
assignvariableop_7_conv_2_bias:@:
 assignvariableop_8_conv_4_kernel:@,
assignvariableop_9_conv_4_bias:
identity_11??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_toreshape_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_toreshape_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv_0_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv_0_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp assignvariableop_4_conv_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_conv_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp assignvariableop_6_conv_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp assignvariableop_8_conv_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_conv_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_10?
Identity_11IdentityIdentity_10:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_11"#
identity_11Identity_11:output:0*)
_input_shapes
: : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
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
?%
?
A__inference_conv_0_layer_call_and_return_conditional_losses_70825

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
&__inference_conv_1_layer_call_fn_70880

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_1_layer_call_and_return_conditional_losses_708702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
&__inference_conv_2_layer_call_fn_70925

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_2_layer_call_and_return_conditional_losses_709152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
#__inference_signature_wrapper_71261	
input
unknown:
?? 
	unknown_0:	? #
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_707902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
(
_output_shapes
:??????????

_user_specified_nameinput
??
?	
 __inference__wrapped_model_70790	
inputD
0model_1_toreshape_matmul_readvariableop_resource:
?? @
1model_1_toreshape_biasadd_readvariableop_resource:	? Q
7model_1_conv_0_conv2d_transpose_readvariableop_resource:@@<
.model_1_conv_0_biasadd_readvariableop_resource:@Q
7model_1_conv_1_conv2d_transpose_readvariableop_resource:@@<
.model_1_conv_1_biasadd_readvariableop_resource:@Q
7model_1_conv_2_conv2d_transpose_readvariableop_resource:@@<
.model_1_conv_2_biasadd_readvariableop_resource:@Q
7model_1_conv_4_conv2d_transpose_readvariableop_resource:@<
.model_1_conv_4_biasadd_readvariableop_resource:
identity??%model_1/conv_0/BiasAdd/ReadVariableOp?.model_1/conv_0/conv2d_transpose/ReadVariableOp?%model_1/conv_1/BiasAdd/ReadVariableOp?.model_1/conv_1/conv2d_transpose/ReadVariableOp?%model_1/conv_2/BiasAdd/ReadVariableOp?.model_1/conv_2/conv2d_transpose/ReadVariableOp?%model_1/conv_4/BiasAdd/ReadVariableOp?.model_1/conv_4/conv2d_transpose/ReadVariableOp?(model_1/toReshape/BiasAdd/ReadVariableOp?'model_1/toReshape/MatMul/ReadVariableOp?
'model_1/toReshape/MatMul/ReadVariableOpReadVariableOp0model_1_toreshape_matmul_readvariableop_resource* 
_output_shapes
:
?? *
dtype02)
'model_1/toReshape/MatMul/ReadVariableOp?
model_1/toReshape/MatMulMatMulinput/model_1/toReshape/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? 2
model_1/toReshape/MatMul?
(model_1/toReshape/BiasAdd/ReadVariableOpReadVariableOp1model_1_toreshape_biasadd_readvariableop_resource*
_output_shapes	
:? *
dtype02*
(model_1/toReshape/BiasAdd/ReadVariableOp?
model_1/toReshape/BiasAddBiasAdd"model_1/toReshape/MatMul:product:00model_1/toReshape/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? 2
model_1/toReshape/BiasAdd?
model_1/reshape/ShapeShape"model_1/toReshape/BiasAdd:output:0*
T0*
_output_shapes
:2
model_1/reshape/Shape?
#model_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#model_1/reshape/strided_slice/stack?
%model_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%model_1/reshape/strided_slice/stack_1?
%model_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%model_1/reshape/strided_slice/stack_2?
model_1/reshape/strided_sliceStridedSlicemodel_1/reshape/Shape:output:0,model_1/reshape/strided_slice/stack:output:0.model_1/reshape/strided_slice/stack_1:output:0.model_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model_1/reshape/strided_slice?
model_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
model_1/reshape/Reshape/shape/1?
model_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2!
model_1/reshape/Reshape/shape/2?
model_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2!
model_1/reshape/Reshape/shape/3?
model_1/reshape/Reshape/shapePack&model_1/reshape/strided_slice:output:0(model_1/reshape/Reshape/shape/1:output:0(model_1/reshape/Reshape/shape/2:output:0(model_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
model_1/reshape/Reshape/shape?
model_1/reshape/ReshapeReshape"model_1/toReshape/BiasAdd:output:0&model_1/reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????@2
model_1/reshape/Reshape|
model_1/conv_0/ShapeShape model_1/reshape/Reshape:output:0*
T0*
_output_shapes
:2
model_1/conv_0/Shape?
"model_1/conv_0/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"model_1/conv_0/strided_slice/stack?
$model_1/conv_0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$model_1/conv_0/strided_slice/stack_1?
$model_1/conv_0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$model_1/conv_0/strided_slice/stack_2?
model_1/conv_0/strided_sliceStridedSlicemodel_1/conv_0/Shape:output:0+model_1/conv_0/strided_slice/stack:output:0-model_1/conv_0/strided_slice/stack_1:output:0-model_1/conv_0/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model_1/conv_0/strided_slicer
model_1/conv_0/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
model_1/conv_0/stack/1r
model_1/conv_0/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
model_1/conv_0/stack/2r
model_1/conv_0/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
model_1/conv_0/stack/3?
model_1/conv_0/stackPack%model_1/conv_0/strided_slice:output:0model_1/conv_0/stack/1:output:0model_1/conv_0/stack/2:output:0model_1/conv_0/stack/3:output:0*
N*
T0*
_output_shapes
:2
model_1/conv_0/stack?
$model_1/conv_0/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$model_1/conv_0/strided_slice_1/stack?
&model_1/conv_0/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&model_1/conv_0/strided_slice_1/stack_1?
&model_1/conv_0/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&model_1/conv_0/strided_slice_1/stack_2?
model_1/conv_0/strided_slice_1StridedSlicemodel_1/conv_0/stack:output:0-model_1/conv_0/strided_slice_1/stack:output:0/model_1/conv_0/strided_slice_1/stack_1:output:0/model_1/conv_0/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
model_1/conv_0/strided_slice_1?
.model_1/conv_0/conv2d_transpose/ReadVariableOpReadVariableOp7model_1_conv_0_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype020
.model_1/conv_0/conv2d_transpose/ReadVariableOp?
model_1/conv_0/conv2d_transposeConv2DBackpropInputmodel_1/conv_0/stack:output:06model_1/conv_0/conv2d_transpose/ReadVariableOp:value:0 model_1/reshape/Reshape:output:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2!
model_1/conv_0/conv2d_transpose?
%model_1/conv_0/BiasAdd/ReadVariableOpReadVariableOp.model_1_conv_0_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%model_1/conv_0/BiasAdd/ReadVariableOp?
model_1/conv_0/BiasAddBiasAdd(model_1/conv_0/conv2d_transpose:output:0-model_1/conv_0/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
model_1/conv_0/BiasAdd?
model_1/conv_0/ReluRelumodel_1/conv_0/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
model_1/conv_0/Relu}
model_1/conv_1/ShapeShape!model_1/conv_0/Relu:activations:0*
T0*
_output_shapes
:2
model_1/conv_1/Shape?
"model_1/conv_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"model_1/conv_1/strided_slice/stack?
$model_1/conv_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$model_1/conv_1/strided_slice/stack_1?
$model_1/conv_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$model_1/conv_1/strided_slice/stack_2?
model_1/conv_1/strided_sliceStridedSlicemodel_1/conv_1/Shape:output:0+model_1/conv_1/strided_slice/stack:output:0-model_1/conv_1/strided_slice/stack_1:output:0-model_1/conv_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model_1/conv_1/strided_slicer
model_1/conv_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
model_1/conv_1/stack/1r
model_1/conv_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
model_1/conv_1/stack/2r
model_1/conv_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
model_1/conv_1/stack/3?
model_1/conv_1/stackPack%model_1/conv_1/strided_slice:output:0model_1/conv_1/stack/1:output:0model_1/conv_1/stack/2:output:0model_1/conv_1/stack/3:output:0*
N*
T0*
_output_shapes
:2
model_1/conv_1/stack?
$model_1/conv_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$model_1/conv_1/strided_slice_1/stack?
&model_1/conv_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&model_1/conv_1/strided_slice_1/stack_1?
&model_1/conv_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&model_1/conv_1/strided_slice_1/stack_2?
model_1/conv_1/strided_slice_1StridedSlicemodel_1/conv_1/stack:output:0-model_1/conv_1/strided_slice_1/stack:output:0/model_1/conv_1/strided_slice_1/stack_1:output:0/model_1/conv_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
model_1/conv_1/strided_slice_1?
.model_1/conv_1/conv2d_transpose/ReadVariableOpReadVariableOp7model_1_conv_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype020
.model_1/conv_1/conv2d_transpose/ReadVariableOp?
model_1/conv_1/conv2d_transposeConv2DBackpropInputmodel_1/conv_1/stack:output:06model_1/conv_1/conv2d_transpose/ReadVariableOp:value:0!model_1/conv_0/Relu:activations:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2!
model_1/conv_1/conv2d_transpose?
%model_1/conv_1/BiasAdd/ReadVariableOpReadVariableOp.model_1_conv_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%model_1/conv_1/BiasAdd/ReadVariableOp?
model_1/conv_1/BiasAddBiasAdd(model_1/conv_1/conv2d_transpose:output:0-model_1/conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2
model_1/conv_1/BiasAdd?
model_1/conv_1/ReluRelumodel_1/conv_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @2
model_1/conv_1/Relu}
model_1/conv_2/ShapeShape!model_1/conv_1/Relu:activations:0*
T0*
_output_shapes
:2
model_1/conv_2/Shape?
"model_1/conv_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"model_1/conv_2/strided_slice/stack?
$model_1/conv_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$model_1/conv_2/strided_slice/stack_1?
$model_1/conv_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$model_1/conv_2/strided_slice/stack_2?
model_1/conv_2/strided_sliceStridedSlicemodel_1/conv_2/Shape:output:0+model_1/conv_2/strided_slice/stack:output:0-model_1/conv_2/strided_slice/stack_1:output:0-model_1/conv_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model_1/conv_2/strided_slicer
model_1/conv_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
model_1/conv_2/stack/1r
model_1/conv_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
model_1/conv_2/stack/2r
model_1/conv_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
model_1/conv_2/stack/3?
model_1/conv_2/stackPack%model_1/conv_2/strided_slice:output:0model_1/conv_2/stack/1:output:0model_1/conv_2/stack/2:output:0model_1/conv_2/stack/3:output:0*
N*
T0*
_output_shapes
:2
model_1/conv_2/stack?
$model_1/conv_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$model_1/conv_2/strided_slice_1/stack?
&model_1/conv_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&model_1/conv_2/strided_slice_1/stack_1?
&model_1/conv_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&model_1/conv_2/strided_slice_1/stack_2?
model_1/conv_2/strided_slice_1StridedSlicemodel_1/conv_2/stack:output:0-model_1/conv_2/strided_slice_1/stack:output:0/model_1/conv_2/strided_slice_1/stack_1:output:0/model_1/conv_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
model_1/conv_2/strided_slice_1?
.model_1/conv_2/conv2d_transpose/ReadVariableOpReadVariableOp7model_1_conv_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype020
.model_1/conv_2/conv2d_transpose/ReadVariableOp?
model_1/conv_2/conv2d_transposeConv2DBackpropInputmodel_1/conv_2/stack:output:06model_1/conv_2/conv2d_transpose/ReadVariableOp:value:0!model_1/conv_1/Relu:activations:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2!
model_1/conv_2/conv2d_transpose?
%model_1/conv_2/BiasAdd/ReadVariableOpReadVariableOp.model_1_conv_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%model_1/conv_2/BiasAdd/ReadVariableOp?
model_1/conv_2/BiasAddBiasAdd(model_1/conv_2/conv2d_transpose:output:0-model_1/conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
model_1/conv_2/BiasAdd?
model_1/conv_2/ReluRelumodel_1/conv_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@2
model_1/conv_2/Relu}
model_1/conv_4/ShapeShape!model_1/conv_2/Relu:activations:0*
T0*
_output_shapes
:2
model_1/conv_4/Shape?
"model_1/conv_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"model_1/conv_4/strided_slice/stack?
$model_1/conv_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$model_1/conv_4/strided_slice/stack_1?
$model_1/conv_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$model_1/conv_4/strided_slice/stack_2?
model_1/conv_4/strided_sliceStridedSlicemodel_1/conv_4/Shape:output:0+model_1/conv_4/strided_slice/stack:output:0-model_1/conv_4/strided_slice/stack_1:output:0-model_1/conv_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model_1/conv_4/strided_slices
model_1/conv_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2
model_1/conv_4/stack/1s
model_1/conv_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
model_1/conv_4/stack/2r
model_1/conv_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
model_1/conv_4/stack/3?
model_1/conv_4/stackPack%model_1/conv_4/strided_slice:output:0model_1/conv_4/stack/1:output:0model_1/conv_4/stack/2:output:0model_1/conv_4/stack/3:output:0*
N*
T0*
_output_shapes
:2
model_1/conv_4/stack?
$model_1/conv_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$model_1/conv_4/strided_slice_1/stack?
&model_1/conv_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&model_1/conv_4/strided_slice_1/stack_1?
&model_1/conv_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&model_1/conv_4/strided_slice_1/stack_2?
model_1/conv_4/strided_slice_1StridedSlicemodel_1/conv_4/stack:output:0-model_1/conv_4/strided_slice_1/stack:output:0/model_1/conv_4/strided_slice_1/stack_1:output:0/model_1/conv_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
model_1/conv_4/strided_slice_1?
.model_1/conv_4/conv2d_transpose/ReadVariableOpReadVariableOp7model_1_conv_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype020
.model_1/conv_4/conv2d_transpose/ReadVariableOp?
model_1/conv_4/conv2d_transposeConv2DBackpropInputmodel_1/conv_4/stack:output:06model_1/conv_4/conv2d_transpose/ReadVariableOp:value:0!model_1/conv_2/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2!
model_1/conv_4/conv2d_transpose?
%model_1/conv_4/BiasAdd/ReadVariableOpReadVariableOp.model_1_conv_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model_1/conv_4/BiasAdd/ReadVariableOp?
model_1/conv_4/BiasAddBiasAdd(model_1/conv_4/conv2d_transpose:output:0-model_1/conv_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
model_1/conv_4/BiasAdd?
model_1/conv_4/SigmoidSigmoidmodel_1/conv_4/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
model_1/conv_4/Sigmoid?
IdentityIdentitymodel_1/conv_4/Sigmoid:y:0&^model_1/conv_0/BiasAdd/ReadVariableOp/^model_1/conv_0/conv2d_transpose/ReadVariableOp&^model_1/conv_1/BiasAdd/ReadVariableOp/^model_1/conv_1/conv2d_transpose/ReadVariableOp&^model_1/conv_2/BiasAdd/ReadVariableOp/^model_1/conv_2/conv2d_transpose/ReadVariableOp&^model_1/conv_4/BiasAdd/ReadVariableOp/^model_1/conv_4/conv2d_transpose/ReadVariableOp)^model_1/toReshape/BiasAdd/ReadVariableOp(^model_1/toReshape/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2N
%model_1/conv_0/BiasAdd/ReadVariableOp%model_1/conv_0/BiasAdd/ReadVariableOp2`
.model_1/conv_0/conv2d_transpose/ReadVariableOp.model_1/conv_0/conv2d_transpose/ReadVariableOp2N
%model_1/conv_1/BiasAdd/ReadVariableOp%model_1/conv_1/BiasAdd/ReadVariableOp2`
.model_1/conv_1/conv2d_transpose/ReadVariableOp.model_1/conv_1/conv2d_transpose/ReadVariableOp2N
%model_1/conv_2/BiasAdd/ReadVariableOp%model_1/conv_2/BiasAdd/ReadVariableOp2`
.model_1/conv_2/conv2d_transpose/ReadVariableOp.model_1/conv_2/conv2d_transpose/ReadVariableOp2N
%model_1/conv_4/BiasAdd/ReadVariableOp%model_1/conv_4/BiasAdd/ReadVariableOp2`
.model_1/conv_4/conv2d_transpose/ReadVariableOp.model_1/conv_4/conv2d_transpose/ReadVariableOp2T
(model_1/toReshape/BiasAdd/ReadVariableOp(model_1/toReshape/BiasAdd/ReadVariableOp2R
'model_1/toReshape/MatMul/ReadVariableOp'model_1/toReshape/MatMul/ReadVariableOp:O K
(
_output_shapes
:??????????

_user_specified_nameinput
?"
?
__inference__traced_save_71602
file_prefix/
+savev2_toreshape_kernel_read_readvariableop-
)savev2_toreshape_bias_read_readvariableop,
(savev2_conv_0_kernel_read_readvariableop*
&savev2_conv_0_bias_read_readvariableop,
(savev2_conv_1_kernel_read_readvariableop*
&savev2_conv_1_bias_read_readvariableop,
(savev2_conv_2_kernel_read_readvariableop*
&savev2_conv_2_bias_read_readvariableop,
(savev2_conv_4_kernel_read_readvariableop*
&savev2_conv_4_bias_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_toreshape_kernel_read_readvariableop)savev2_toreshape_bias_read_readvariableop(savev2_conv_0_kernel_read_readvariableop&savev2_conv_0_bias_read_readvariableop(savev2_conv_1_kernel_read_readvariableop&savev2_conv_1_bias_read_readvariableop(savev2_conv_2_kernel_read_readvariableop&savev2_conv_2_bias_read_readvariableop(savev2_conv_4_kernel_read_readvariableop&savev2_conv_4_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
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

identity_1Identity_1:output:0*?
_input_shapesy
w: :
?? :? :@@:@:@@:@:@@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
?? :!

_output_shapes	
:? :,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,	(
&
_output_shapes
:@: 


_output_shapes
::

_output_shapes
: 
?	
?
D__inference_toReshape_layer_call_and_return_conditional_losses_70987

inputs2
matmul_readvariableop_resource:
?? .
biasadd_readvariableop_resource:	? 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?? *
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:? *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
? 
?
B__inference_model_1_layer_call_and_return_conditional_losses_71030

inputs#
toreshape_70988:
?? 
toreshape_70990:	? &
conv_0_71009:@@
conv_0_71011:@&
conv_1_71014:@@
conv_1_71016:@&
conv_2_71019:@@
conv_2_71021:@&
conv_4_71024:@
conv_4_71026:
identity??conv_0/StatefulPartitionedCall?conv_1/StatefulPartitionedCall?conv_2/StatefulPartitionedCall?conv_4/StatefulPartitionedCall?!toReshape/StatefulPartitionedCall?
!toReshape/StatefulPartitionedCallStatefulPartitionedCallinputstoreshape_70988toreshape_70990*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_toReshape_layer_call_and_return_conditional_losses_709872#
!toReshape/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCall*toReshape/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_710072
reshape/PartitionedCall?
conv_0/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv_0_71009conv_0_71011*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_0_layer_call_and_return_conditional_losses_708252 
conv_0/StatefulPartitionedCall?
conv_1/StatefulPartitionedCallStatefulPartitionedCall'conv_0/StatefulPartitionedCall:output:0conv_1_71014conv_1_71016*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_1_layer_call_and_return_conditional_losses_708702 
conv_1/StatefulPartitionedCall?
conv_2/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0conv_2_71019conv_2_71021*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_2_layer_call_and_return_conditional_losses_709152 
conv_2/StatefulPartitionedCall?
conv_4/StatefulPartitionedCallStatefulPartitionedCall'conv_2/StatefulPartitionedCall:output:0conv_4_71024conv_4_71026*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_4_layer_call_and_return_conditional_losses_709602 
conv_4/StatefulPartitionedCall?
IdentityIdentity'conv_4/StatefulPartitionedCall:output:0^conv_0/StatefulPartitionedCall^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_4/StatefulPartitionedCall"^toReshape/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2@
conv_0/StatefulPartitionedCallconv_0/StatefulPartitionedCall2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_4/StatefulPartitionedCallconv_4/StatefulPartitionedCall2F
!toReshape/StatefulPartitionedCall!toReshape/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
B__inference_model_1_layer_call_and_return_conditional_losses_71361

inputs<
(toreshape_matmul_readvariableop_resource:
?? 8
)toreshape_biasadd_readvariableop_resource:	? I
/conv_0_conv2d_transpose_readvariableop_resource:@@4
&conv_0_biasadd_readvariableop_resource:@I
/conv_1_conv2d_transpose_readvariableop_resource:@@4
&conv_1_biasadd_readvariableop_resource:@I
/conv_2_conv2d_transpose_readvariableop_resource:@@4
&conv_2_biasadd_readvariableop_resource:@I
/conv_4_conv2d_transpose_readvariableop_resource:@4
&conv_4_biasadd_readvariableop_resource:
identity??conv_0/BiasAdd/ReadVariableOp?&conv_0/conv2d_transpose/ReadVariableOp?conv_1/BiasAdd/ReadVariableOp?&conv_1/conv2d_transpose/ReadVariableOp?conv_2/BiasAdd/ReadVariableOp?&conv_2/conv2d_transpose/ReadVariableOp?conv_4/BiasAdd/ReadVariableOp?&conv_4/conv2d_transpose/ReadVariableOp? toReshape/BiasAdd/ReadVariableOp?toReshape/MatMul/ReadVariableOp?
toReshape/MatMul/ReadVariableOpReadVariableOp(toreshape_matmul_readvariableop_resource* 
_output_shapes
:
?? *
dtype02!
toReshape/MatMul/ReadVariableOp?
toReshape/MatMulMatMulinputs'toReshape/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? 2
toReshape/MatMul?
 toReshape/BiasAdd/ReadVariableOpReadVariableOp)toreshape_biasadd_readvariableop_resource*
_output_shapes	
:? *
dtype02"
 toReshape/BiasAdd/ReadVariableOp?
toReshape/BiasAddBiasAddtoReshape/MatMul:product:0(toReshape/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????? 2
toReshape/BiasAddh
reshape/ShapeShapetoReshape/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2t
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape/Reshape/shape/3?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapetoReshape/BiasAdd:output:0reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????@2
reshape/Reshaped
conv_0/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:2
conv_0/Shape?
conv_0/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv_0/strided_slice/stack?
conv_0/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
conv_0/strided_slice/stack_1?
conv_0/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
conv_0/strided_slice/stack_2?
conv_0/strided_sliceStridedSliceconv_0/Shape:output:0#conv_0/strided_slice/stack:output:0%conv_0/strided_slice/stack_1:output:0%conv_0/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_0/strided_sliceb
conv_0/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv_0/stack/1b
conv_0/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv_0/stack/2b
conv_0/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv_0/stack/3?
conv_0/stackPackconv_0/strided_slice:output:0conv_0/stack/1:output:0conv_0/stack/2:output:0conv_0/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv_0/stack?
conv_0/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv_0/strided_slice_1/stack?
conv_0/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
conv_0/strided_slice_1/stack_1?
conv_0/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
conv_0/strided_slice_1/stack_2?
conv_0/strided_slice_1StridedSliceconv_0/stack:output:0%conv_0/strided_slice_1/stack:output:0'conv_0/strided_slice_1/stack_1:output:0'conv_0/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_0/strided_slice_1?
&conv_0/conv2d_transpose/ReadVariableOpReadVariableOp/conv_0_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02(
&conv_0/conv2d_transpose/ReadVariableOp?
conv_0/conv2d_transposeConv2DBackpropInputconv_0/stack:output:0.conv_0/conv2d_transpose/ReadVariableOp:value:0reshape/Reshape:output:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv_0/conv2d_transpose?
conv_0/BiasAdd/ReadVariableOpReadVariableOp&conv_0_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv_0/BiasAdd/ReadVariableOp?
conv_0/BiasAddBiasAdd conv_0/conv2d_transpose:output:0%conv_0/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv_0/BiasAddu
conv_0/ReluReluconv_0/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv_0/Relue
conv_1/ShapeShapeconv_0/Relu:activations:0*
T0*
_output_shapes
:2
conv_1/Shape?
conv_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv_1/strided_slice/stack?
conv_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
conv_1/strided_slice/stack_1?
conv_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
conv_1/strided_slice/stack_2?
conv_1/strided_sliceStridedSliceconv_1/Shape:output:0#conv_1/strided_slice/stack:output:0%conv_1/strided_slice/stack_1:output:0%conv_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_1/strided_sliceb
conv_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv_1/stack/1b
conv_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv_1/stack/2b
conv_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv_1/stack/3?
conv_1/stackPackconv_1/strided_slice:output:0conv_1/stack/1:output:0conv_1/stack/2:output:0conv_1/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv_1/stack?
conv_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv_1/strided_slice_1/stack?
conv_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
conv_1/strided_slice_1/stack_1?
conv_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
conv_1/strided_slice_1/stack_2?
conv_1/strided_slice_1StridedSliceconv_1/stack:output:0%conv_1/strided_slice_1/stack:output:0'conv_1/strided_slice_1/stack_1:output:0'conv_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_1/strided_slice_1?
&conv_1/conv2d_transpose/ReadVariableOpReadVariableOp/conv_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02(
&conv_1/conv2d_transpose/ReadVariableOp?
conv_1/conv2d_transposeConv2DBackpropInputconv_1/stack:output:0.conv_1/conv2d_transpose/ReadVariableOp:value:0conv_0/Relu:activations:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2
conv_1/conv2d_transpose?
conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv_1/BiasAdd/ReadVariableOp?
conv_1/BiasAddBiasAdd conv_1/conv2d_transpose:output:0%conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2
conv_1/BiasAddu
conv_1/ReluReluconv_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @2
conv_1/Relue
conv_2/ShapeShapeconv_1/Relu:activations:0*
T0*
_output_shapes
:2
conv_2/Shape?
conv_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv_2/strided_slice/stack?
conv_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
conv_2/strided_slice/stack_1?
conv_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
conv_2/strided_slice/stack_2?
conv_2/strided_sliceStridedSliceconv_2/Shape:output:0#conv_2/strided_slice/stack:output:0%conv_2/strided_slice/stack_1:output:0%conv_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_2/strided_sliceb
conv_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv_2/stack/1b
conv_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv_2/stack/2b
conv_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv_2/stack/3?
conv_2/stackPackconv_2/strided_slice:output:0conv_2/stack/1:output:0conv_2/stack/2:output:0conv_2/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv_2/stack?
conv_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv_2/strided_slice_1/stack?
conv_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
conv_2/strided_slice_1/stack_1?
conv_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
conv_2/strided_slice_1/stack_2?
conv_2/strided_slice_1StridedSliceconv_2/stack:output:0%conv_2/strided_slice_1/stack:output:0'conv_2/strided_slice_1/stack_1:output:0'conv_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_2/strided_slice_1?
&conv_2/conv2d_transpose/ReadVariableOpReadVariableOp/conv_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02(
&conv_2/conv2d_transpose/ReadVariableOp?
conv_2/conv2d_transposeConv2DBackpropInputconv_2/stack:output:0.conv_2/conv2d_transpose/ReadVariableOp:value:0conv_1/Relu:activations:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
conv_2/conv2d_transpose?
conv_2/BiasAdd/ReadVariableOpReadVariableOp&conv_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv_2/BiasAdd/ReadVariableOp?
conv_2/BiasAddBiasAdd conv_2/conv2d_transpose:output:0%conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
conv_2/BiasAddu
conv_2/ReluReluconv_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@2
conv_2/Relue
conv_4/ShapeShapeconv_2/Relu:activations:0*
T0*
_output_shapes
:2
conv_4/Shape?
conv_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv_4/strided_slice/stack?
conv_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
conv_4/strided_slice/stack_1?
conv_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
conv_4/strided_slice/stack_2?
conv_4/strided_sliceStridedSliceconv_4/Shape:output:0#conv_4/strided_slice/stack:output:0%conv_4/strided_slice/stack_1:output:0%conv_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_4/strided_slicec
conv_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2
conv_4/stack/1c
conv_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv_4/stack/2b
conv_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv_4/stack/3?
conv_4/stackPackconv_4/strided_slice:output:0conv_4/stack/1:output:0conv_4/stack/2:output:0conv_4/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv_4/stack?
conv_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv_4/strided_slice_1/stack?
conv_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
conv_4/strided_slice_1/stack_1?
conv_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
conv_4/strided_slice_1/stack_2?
conv_4/strided_slice_1StridedSliceconv_4/stack:output:0%conv_4/strided_slice_1/stack:output:0'conv_4/strided_slice_1/stack_1:output:0'conv_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
conv_4/strided_slice_1?
&conv_4/conv2d_transpose/ReadVariableOpReadVariableOp/conv_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02(
&conv_4/conv2d_transpose/ReadVariableOp?
conv_4/conv2d_transposeConv2DBackpropInputconv_4/stack:output:0.conv_4/conv2d_transpose/ReadVariableOp:value:0conv_2/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv_4/conv2d_transpose?
conv_4/BiasAdd/ReadVariableOpReadVariableOp&conv_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv_4/BiasAdd/ReadVariableOp?
conv_4/BiasAddBiasAdd conv_4/conv2d_transpose:output:0%conv_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv_4/BiasAdd?
conv_4/SigmoidSigmoidconv_4/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv_4/Sigmoid?
IdentityIdentityconv_4/Sigmoid:y:0^conv_0/BiasAdd/ReadVariableOp'^conv_0/conv2d_transpose/ReadVariableOp^conv_1/BiasAdd/ReadVariableOp'^conv_1/conv2d_transpose/ReadVariableOp^conv_2/BiasAdd/ReadVariableOp'^conv_2/conv2d_transpose/ReadVariableOp^conv_4/BiasAdd/ReadVariableOp'^conv_4/conv2d_transpose/ReadVariableOp!^toReshape/BiasAdd/ReadVariableOp ^toReshape/MatMul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2>
conv_0/BiasAdd/ReadVariableOpconv_0/BiasAdd/ReadVariableOp2P
&conv_0/conv2d_transpose/ReadVariableOp&conv_0/conv2d_transpose/ReadVariableOp2>
conv_1/BiasAdd/ReadVariableOpconv_1/BiasAdd/ReadVariableOp2P
&conv_1/conv2d_transpose/ReadVariableOp&conv_1/conv2d_transpose/ReadVariableOp2>
conv_2/BiasAdd/ReadVariableOpconv_2/BiasAdd/ReadVariableOp2P
&conv_2/conv2d_transpose/ReadVariableOp&conv_2/conv2d_transpose/ReadVariableOp2>
conv_4/BiasAdd/ReadVariableOpconv_4/BiasAdd/ReadVariableOp2P
&conv_4/conv2d_transpose/ReadVariableOp&conv_4/conv2d_transpose/ReadVariableOp2D
 toReshape/BiasAdd/ReadVariableOp toReshape/BiasAdd/ReadVariableOp2B
toReshape/MatMul/ReadVariableOptoReshape/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
'__inference_model_1_layer_call_fn_71486

inputs
unknown:
?? 
	unknown_0:	? #
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_710302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
'__inference_model_1_layer_call_fn_71511

inputs
unknown:
?? 
	unknown_0:	? #
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_711262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
? 
?
B__inference_model_1_layer_call_and_return_conditional_losses_71126

inputs#
toreshape_71099:
?? 
toreshape_71101:	? &
conv_0_71105:@@
conv_0_71107:@&
conv_1_71110:@@
conv_1_71112:@&
conv_2_71115:@@
conv_2_71117:@&
conv_4_71120:@
conv_4_71122:
identity??conv_0/StatefulPartitionedCall?conv_1/StatefulPartitionedCall?conv_2/StatefulPartitionedCall?conv_4/StatefulPartitionedCall?!toReshape/StatefulPartitionedCall?
!toReshape/StatefulPartitionedCallStatefulPartitionedCallinputstoreshape_71099toreshape_71101*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_toReshape_layer_call_and_return_conditional_losses_709872#
!toReshape/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCall*toReshape/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_710072
reshape/PartitionedCall?
conv_0/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv_0_71105conv_0_71107*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_0_layer_call_and_return_conditional_losses_708252 
conv_0/StatefulPartitionedCall?
conv_1/StatefulPartitionedCallStatefulPartitionedCall'conv_0/StatefulPartitionedCall:output:0conv_1_71110conv_1_71112*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_1_layer_call_and_return_conditional_losses_708702 
conv_1/StatefulPartitionedCall?
conv_2/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0conv_2_71115conv_2_71117*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_2_layer_call_and_return_conditional_losses_709152 
conv_2/StatefulPartitionedCall?
conv_4/StatefulPartitionedCallStatefulPartitionedCall'conv_2/StatefulPartitionedCall:output:0conv_4_71120conv_4_71122*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_4_layer_call_and_return_conditional_losses_709602 
conv_4/StatefulPartitionedCall?
IdentityIdentity'conv_4/StatefulPartitionedCall:output:0^conv_0/StatefulPartitionedCall^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_4/StatefulPartitionedCall"^toReshape/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 2@
conv_0/StatefulPartitionedCallconv_0/StatefulPartitionedCall2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_4/StatefulPartitionedCallconv_4/StatefulPartitionedCall2F
!toReshape/StatefulPartitionedCall!toReshape/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_reshape_layer_call_and_return_conditional_losses_71544

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:?????????@2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????? :P L
(
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
&__inference_conv_0_layer_call_fn_70835

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv_0_layer_call_and_return_conditional_losses_708252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
^
B__inference_reshape_layer_call_and_return_conditional_losses_71007

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:?????????@2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????? :P L
(
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?%
?
A__inference_conv_4_layer_call_and_return_conditional_losses_70960

inputsB
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAdd{
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
'__inference_model_1_layer_call_fn_71174	
input
unknown:
?? 
	unknown_0:	? #
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_711262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
(
_output_shapes
:??????????

_user_specified_nameinput"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
8
input/
serving_default_input:0??????????D
conv_4:
StatefulPartitionedCall:0???????????tensorflow/serving/predict:??
?L
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
*R&call_and_return_all_conditional_losses
S__call__
T_default_save_signature"?I
_tf_keras_network?I{"name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "toReshape", "trainable": true, "dtype": "float32", "units": 4096, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "toReshape", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [8, 8, 64]}}, "name": "reshape", "inbound_nodes": [[["toReshape", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv_0", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv_0", "inbound_nodes": [[["reshape", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv_1", "inbound_nodes": [[["conv_0", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv_2", "inbound_nodes": [[["conv_1", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv_4", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv_4", "inbound_nodes": [[["conv_2", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["conv_4", 0, 0]]}, "shared_object_id": 17, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 200]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 200]}, "float32", "input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "toReshape", "trainable": true, "dtype": "float32", "units": 4096, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "toReshape", "inbound_nodes": [[["input", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [8, 8, 64]}}, "name": "reshape", "inbound_nodes": [[["toReshape", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "Conv2DTranspose", "config": {"name": "conv_0", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv_0", "inbound_nodes": [[["reshape", 0, 0, {}]]], "shared_object_id": 7}, {"class_name": "Conv2DTranspose", "config": {"name": "conv_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv_1", "inbound_nodes": [[["conv_0", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Conv2DTranspose", "config": {"name": "conv_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv_2", "inbound_nodes": [[["conv_1", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "Conv2DTranspose", "config": {"name": "conv_4", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv_4", "inbound_nodes": [[["conv_2", 0, 0, {}]]], "shared_object_id": 16}], "input_layers": [["input", 0, 0]], "output_layers": [["conv_4", 0, 0]]}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}}
?	

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*U&call_and_return_all_conditional_losses
V__call__"?
_tf_keras_layer?{"name": "toReshape", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "toReshape", "trainable": true, "dtype": "float32", "units": 4096, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?
trainable_variables
	variables
regularization_losses
	keras_api
*W&call_and_return_all_conditional_losses
X__call__"?
_tf_keras_layer?{"name": "reshape", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [8, 8, 64]}}, "inbound_nodes": [[["toReshape", 0, 0, {}]]], "shared_object_id": 4}
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*Y&call_and_return_all_conditional_losses
Z__call__"?	
_tf_keras_layer?	{"name": "conv_0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv_0", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["reshape", 0, 0, {}]]], "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}, "shared_object_id": 20}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?

kernel
bias
trainable_variables
 	variables
!regularization_losses
"	keras_api
*[&call_and_return_all_conditional_losses
\__call__"?	
_tf_keras_layer?	{"name": "conv_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["conv_0", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
?

#kernel
$bias
%trainable_variables
&	variables
'regularization_losses
(	keras_api
*]&call_and_return_all_conditional_losses
^__call__"?	
_tf_keras_layer?	{"name": "conv_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["conv_1", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 64]}}
?

)kernel
*bias
+trainable_variables
,	variables
-regularization_losses
.	keras_api
*_&call_and_return_all_conditional_losses
`__call__"?	
_tf_keras_layer?	{"name": "conv_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv_4", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["conv_2", 0, 0, {}]]], "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 64]}}
f
0
1
2
3
4
5
#6
$7
)8
*9"
trackable_list_wrapper
f
0
1
2
3
4
5
#6
$7
)8
*9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
/layer_regularization_losses
	variables
	trainable_variables
0non_trainable_variables

regularization_losses

1layers
2layer_metrics
3metrics
S__call__
T_default_save_signature
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
,
aserving_default"
signature_map
$:"
?? 2toReshape/kernel
:? 2toReshape/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
4layer_regularization_losses
5non_trainable_variables
trainable_variables
	variables
regularization_losses

6layers
7layer_metrics
8metrics
V__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
9layer_regularization_losses
:non_trainable_variables
trainable_variables
	variables
regularization_losses

;layers
<layer_metrics
=metrics
X__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
':%@@2conv_0/kernel
:@2conv_0/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
>layer_regularization_losses
?non_trainable_variables
trainable_variables
	variables
regularization_losses

@layers
Alayer_metrics
Bmetrics
Z__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
':%@@2conv_1/kernel
:@2conv_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Clayer_regularization_losses
Dnon_trainable_variables
trainable_variables
 	variables
!regularization_losses

Elayers
Flayer_metrics
Gmetrics
\__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
':%@@2conv_2/kernel
:@2conv_2/bias
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Hlayer_regularization_losses
Inon_trainable_variables
%trainable_variables
&	variables
'regularization_losses

Jlayers
Klayer_metrics
Lmetrics
^__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
':%@2conv_4/kernel
:2conv_4/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Mlayer_regularization_losses
Nnon_trainable_variables
+trainable_variables
,	variables
-regularization_losses

Olayers
Player_metrics
Qmetrics
`__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
?2?
B__inference_model_1_layer_call_and_return_conditional_losses_71361
B__inference_model_1_layer_call_and_return_conditional_losses_71461
B__inference_model_1_layer_call_and_return_conditional_losses_71204
B__inference_model_1_layer_call_and_return_conditional_losses_71234?
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
?2?
'__inference_model_1_layer_call_fn_71053
'__inference_model_1_layer_call_fn_71486
'__inference_model_1_layer_call_fn_71511
'__inference_model_1_layer_call_fn_71174?
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
 __inference__wrapped_model_70790?
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
annotations? *%?"
 ?
input??????????
?2?
D__inference_toReshape_layer_call_and_return_conditional_losses_71521?
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
)__inference_toReshape_layer_call_fn_71530?
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
B__inference_reshape_layer_call_and_return_conditional_losses_71544?
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
'__inference_reshape_layer_call_fn_71549?
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
?2?
A__inference_conv_0_layer_call_and_return_conditional_losses_70825?
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
&__inference_conv_0_layer_call_fn_70835?
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
A__inference_conv_1_layer_call_and_return_conditional_losses_70870?
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
&__inference_conv_1_layer_call_fn_70880?
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
A__inference_conv_2_layer_call_and_return_conditional_losses_70915?
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
&__inference_conv_2_layer_call_fn_70925?
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
A__inference_conv_4_layer_call_and_return_conditional_losses_70960?
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
&__inference_conv_4_layer_call_fn_70970?
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
?B?
#__inference_signature_wrapper_71261input"?
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
 __inference__wrapped_model_70790x
#$)*/?,
%?"
 ?
input??????????
? "9?6
4
conv_4*?'
conv_4????????????
A__inference_conv_0_layer_call_and_return_conditional_losses_70825?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
&__inference_conv_0_layer_call_fn_70835?I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
A__inference_conv_1_layer_call_and_return_conditional_losses_70870?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
&__inference_conv_1_layer_call_fn_70880?I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
A__inference_conv_2_layer_call_and_return_conditional_losses_70915?#$I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
&__inference_conv_2_layer_call_fn_70925?#$I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
A__inference_conv_4_layer_call_and_return_conditional_losses_70960?)*I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????
? ?
&__inference_conv_4_layer_call_fn_70970?)*I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+????????????????????????????
B__inference_model_1_layer_call_and_return_conditional_losses_71204?
#$)*7?4
-?*
 ?
input??????????
p 

 
? "??<
5?2
0+???????????????????????????
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_71234?
#$)*7?4
-?*
 ?
input??????????
p

 
? "??<
5?2
0+???????????????????????????
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_71361w
#$)*8?5
.?+
!?
inputs??????????
p 

 
? "/?,
%?"
0???????????
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_71461w
#$)*8?5
.?+
!?
inputs??????????
p

 
? "/?,
%?"
0???????????
? ?
'__inference_model_1_layer_call_fn_71053y
#$)*7?4
-?*
 ?
input??????????
p 

 
? "2?/+????????????????????????????
'__inference_model_1_layer_call_fn_71174y
#$)*7?4
-?*
 ?
input??????????
p

 
? "2?/+????????????????????????????
'__inference_model_1_layer_call_fn_71486z
#$)*8?5
.?+
!?
inputs??????????
p 

 
? "2?/+????????????????????????????
'__inference_model_1_layer_call_fn_71511z
#$)*8?5
.?+
!?
inputs??????????
p

 
? "2?/+????????????????????????????
B__inference_reshape_layer_call_and_return_conditional_losses_71544a0?-
&?#
!?
inputs?????????? 
? "-?*
#? 
0?????????@
? 
'__inference_reshape_layer_call_fn_71549T0?-
&?#
!?
inputs?????????? 
? " ??????????@?
#__inference_signature_wrapper_71261?
#$)*8?5
? 
.?+
)
input ?
input??????????"9?6
4
conv_4*?'
conv_4????????????
D__inference_toReshape_layer_call_and_return_conditional_losses_71521^0?-
&?#
!?
inputs??????????
? "&?#
?
0?????????? 
? ~
)__inference_toReshape_layer_call_fn_71530Q0?-
&?#
!?
inputs??????????
? "??????????? 