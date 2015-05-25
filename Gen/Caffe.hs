{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
module Gen.Caffe (protoInfo, fileDescriptorProto) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import Text.DescriptorProtos.FileDescriptorProto (FileDescriptorProto)
import Text.ProtocolBuffers.Reflections (ProtoInfo)
import qualified Text.ProtocolBuffers.WireMessage as P' (wireGet,getFromBS)
 
protoInfo :: ProtoInfo
protoInfo
 = Prelude'.read
    "ProtoInfo {protoMod = ProtoName {protobufName = FIName \".caffe\", haskellPrefix = [MName \"Gen\"], parentModule = [], baseName = MName \"Caffe\"}, protoFilePath = [\"Gen\",\"Caffe.hs\"], protoSource = \"purine.proto\", extensionKeys = fromList [], messages = [DescriptorInfo {descName = ProtoName {protobufName = FIName \".caffe.PurineNetParameter\", haskellPrefix = [MName \"Gen\"], parentModule = [MName \"Caffe\"], baseName = MName \"PurineNetParameter\"}, descFilePath = [\"Gen\",\"Caffe\",\"PurineNetParameter.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".caffe.PurineNetParameter.nodes\", haskellPrefix' = [MName \"Gen\"], parentModule' = [MName \"Caffe\",MName \"PurineNetParameter\"], baseName' = FName \"nodes\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".caffe.PurineNetParameter.Node\", haskellPrefix = [MName \"Gen\"], parentModule = [MName \"Caffe\",MName \"PurineNetParameter\"], baseName = MName \"Node\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".caffe.PurineNetParameter.edges\", haskellPrefix' = [MName \"Gen\"], parentModule' = [MName \"Caffe\",MName \"PurineNetParameter\"], baseName' = FName \"edges\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".caffe.PurineNetParameter.Edge\", haskellPrefix = [MName \"Gen\"], parentModule = [MName \"Caffe\",MName \"PurineNetParameter\"], baseName = MName \"Edge\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".caffe.PurineNetParameter.LayerNode\", haskellPrefix = [MName \"Gen\"], parentModule = [MName \"Caffe\",MName \"PurineNetParameter\"], baseName = MName \"LayerNode\"}, descFilePath = [\"Gen\",\"Caffe\",\"PurineNetParameter\",\"LayerNode.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".caffe.PurineNetParameter.LayerNode.nodeId\", haskellPrefix' = [MName \"Gen\"], parentModule' = [MName \"Caffe\",MName \"PurineNetParameter\",MName \"LayerNode\"], baseName' = FName \"nodeId\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".caffe.PurineNetParameter.Node\", haskellPrefix = [MName \"Gen\"], parentModule = [MName \"Caffe\",MName \"PurineNetParameter\"], baseName = MName \"Node\"}, descFilePath = [\"Gen\",\"Caffe\",\"PurineNetParameter\",\"Node.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".caffe.PurineNetParameter.Node.nodeId\", haskellPrefix' = [MName \"Gen\"], parentModule' = [MName \"Caffe\",MName \"PurineNetParameter\",MName \"Node\"], baseName' = FName \"nodeId\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".caffe.PurineNetParameter.Node.layerParameter\", haskellPrefix' = [MName \"Gen\"], parentModule' = [MName \"Caffe\",MName \"PurineNetParameter\",MName \"Node\"], baseName' = FName \"layerParameter\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".caffe.LayerParameter\", haskellPrefix = [MName \"Gen\"], parentModule = [MName \"Caffe\"], baseName = MName \"LayerParameter\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".caffe.PurineNetParameter.Node.direction\", haskellPrefix' = [MName \"Gen\"], parentModule' = [MName \"Caffe\",MName \"PurineNetParameter\",MName \"Node\"], baseName' = FName \"direction\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".caffe.PurineNetParameter.Direction\", haskellPrefix = [MName \"Gen\"], parentModule = [MName \"Caffe\",MName \"PurineNetParameter\"], baseName = MName \"Direction\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".caffe.PurineNetParameter.Node.operation\", haskellPrefix' = [MName \"Gen\"], parentModule' = [MName \"Caffe\",MName \"PurineNetParameter\",MName \"Node\"], baseName' = FName \"operation\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".caffe.PurineNetParameter.Operation\", haskellPrefix = [MName \"Gen\"], parentModule = [MName \"Caffe\",MName \"PurineNetParameter\"], baseName = MName \"Operation\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".caffe.PurineNetParameter.Edge\", haskellPrefix = [MName \"Gen\"], parentModule = [MName \"Caffe\",MName \"PurineNetParameter\"], baseName = MName \"Edge\"}, descFilePath = [\"Gen\",\"Caffe\",\"PurineNetParameter\",\"Edge.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".caffe.PurineNetParameter.Edge.fromId\", haskellPrefix' = [MName \"Gen\"], parentModule' = [MName \"Caffe\",MName \"PurineNetParameter\",MName \"Edge\"], baseName' = FName \"fromId\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".caffe.PurineNetParameter.Edge.toId\", haskellPrefix' = [MName \"Gen\"], parentModule' = [MName \"Caffe\",MName \"PurineNetParameter\",MName \"Edge\"], baseName' = FName \"toId\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False}], enums = [EnumInfo {enumName = ProtoName {protobufName = FIName \".caffe.PurineNetParameter.Direction\", haskellPrefix = [MName \"Gen\"], parentModule = [MName \"Caffe\",MName \"PurineNetParameter\"], baseName = MName \"Direction\"}, enumFilePath = [\"Gen\",\"Caffe\",\"PurineNetParameter\",\"Direction.hs\"], enumValues = [(EnumCode {getEnumCode = 1},\"UpdateOutput\"),(EnumCode {getEnumCode = 2},\"UpdateGradInput\"),(EnumCode {getEnumCode = 3},\"AccGradParameters\")]},EnumInfo {enumName = ProtoName {protobufName = FIName \".caffe.PurineNetParameter.Operation\", haskellPrefix = [MName \"Gen\"], parentModule = [MName \"Caffe\",MName \"PurineNetParameter\"], baseName = MName \"Operation\"}, enumFilePath = [\"Gen\",\"Caffe\",\"PurineNetParameter\",\"Operation.hs\"], enumValues = [(EnumCode {getEnumCode = 1},\"Computation\"),(EnumCode {getEnumCode = 2},\"Optim\"),(EnumCode {getEnumCode = 3},\"Copy\")]}], knownKeyMap = fromList []}"
 
fileDescriptorProto :: FileDescriptorProto
fileDescriptorProto
 = P'.getFromBS (P'.wireGet 11)
    (P'.pack
      "\144\EOT\n\fpurine.proto\DC2\ENQcaffe\SUB\vcaffe.proto\"\235\ETX\n\DC2PurineNetParameter\DC2-\n\ENQnodes\CAN\STX \ETX(\v2\RS.caffe.PurineNetParameter.Node\DC2-\n\ENQedges\CAN\ETX \ETX(\v2\RS.caffe.PurineNetParameter.Edge\SUB\ESC\n\tLayerNode\DC2\SO\n\ACKnodeId\CAN\SOH \SOH(\ENQ\SUB\181\SOH\n\EOTNode\DC2\SO\n\ACKnodeId\CAN\SOH \SOH(\ENQ\DC2-\n\SOlayerParameter\CAN\STX \SOH(\v2\NAK.caffe.LayerParameter\DC26\n\tdirection\CAN\ETX \SOH(\SO2#.caffe.PurineNetParameter.Direction\DC26\n\toperation\CAN\EOT \SOH(\SO2#.caffe.PurineNetParameter.Operation\SUB$\n\EOTEdge\DC2\SO\n\ACKfromId\CAN\SOH \SOH(\ENQ\DC2\f\n\EOTtoId\CAN\STX \SOH(\ENQ\"I\n\tDirection\DC2\DLE\n\fUpdateOutput\DLE\SOH\DC2\DC3\n\SIUpdateGradInput\DLE\STX\DC2\NAK\n\DC1AccGradParameters\DLE\ETX\"1\n\tOperation\DC2\SI\n\vComputation\DLE\SOH\DC2\t\n\ENQOptim\DLE\STX\DC2\b\n\EOTCopy\DLE\ETX")