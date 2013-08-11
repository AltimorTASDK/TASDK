module UnrealScript.Engine.UIRoot;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Surface;
import UnrealScript.Engine.GameUISceneClient;
import UnrealScript.Engine.SequenceOp;
import UnrealScript.Engine.UIInteraction;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIRoot : UObject
{
	public static immutable auto DEFAULT_SIZE_X = 1024;
	public static immutable auto DEFAULT_SIZE_Y = 768;
	public static immutable auto MAX_SUPPORTED_GAMEPADS = 4;
	enum EInputPlatformType : ubyte
	{
		IPT_PC = 0,
		IPT_360 = 1,
		IPT_PS3 = 2,
		IPT_MAX = 3,
	}
	enum EUIDataProviderFieldType : ubyte
	{
		DATATYPE_Property = 0,
		DATATYPE_Provider = 1,
		DATATYPE_RangeProperty = 2,
		DATATYPE_NetIdProperty = 3,
		DATATYPE_Collection = 4,
		DATATYPE_ProviderCollection = 5,
		DATATYPE_MAX = 6,
	}
	struct UIRangeData
	{
		public @property final bool bIntRange() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
		public @property final bool bIntRange(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		private ubyte __bIntRange[4];
		public @property final auto ref float NudgeValue() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __NudgeValue[4];
		public @property final auto ref float MaxValue() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __MaxValue[4];
		public @property final auto ref float MinValue() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __MinValue[4];
		public @property final auto ref float CurrentValue() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __CurrentValue[4];
	}
	struct TextureCoordinates
	{
		public @property final auto ref float VL() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __VL[4];
		public @property final auto ref float UL() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __UL[4];
		public @property final auto ref float V() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __V[4];
		public @property final auto ref float U() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __U[4];
	}
	struct UIProviderScriptFieldValue
	{
		public @property final auto ref ScriptArray!(int) ArrayValue() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 28); }
		private ubyte __ArrayValue[12];
		public @property final auto ref UIRoot.TextureCoordinates AtlasCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)&this + 68); }
		private ubyte __AtlasCoordinates[16];
		public @property final auto ref OnlineSubsystem.UniqueNetId NetIdValue() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 60); }
		private ubyte __NetIdValue[8];
		public @property final auto ref UIRoot.UIRangeData RangeValue() { return *cast(UIRoot.UIRangeData*)(cast(size_t)&this + 40); }
		private ubyte __RangeValue[20];
		public @property final auto ref Surface ImageValue() { return *cast(Surface*)(cast(size_t)&this + 24); }
		private ubyte __ImageValue[4];
		public @property final auto ref ScriptString StringValue() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __StringValue[12];
		public @property final auto ref UIRoot.EUIDataProviderFieldType PropertyType() { return *cast(UIRoot.EUIDataProviderFieldType*)(cast(size_t)&this + 8); }
		private ubyte __PropertyType[1];
		public @property final auto ref ScriptName PropertyTag() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __PropertyTag[8];
	}
	struct UIProviderFieldValue
	{
		public @property final auto ref ScriptArray!(int) ArrayValue() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 28); }
		private ubyte __ArrayValue[12];
		public @property final auto ref UIRoot.TextureCoordinates AtlasCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)&this + 68); }
		private ubyte __AtlasCoordinates[16];
		public @property final auto ref OnlineSubsystem.UniqueNetId NetIdValue() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 60); }
		private ubyte __NetIdValue[8];
		public @property final auto ref UIRoot.UIRangeData RangeValue() { return *cast(UIRoot.UIRangeData*)(cast(size_t)&this + 40); }
		private ubyte __RangeValue[20];
		public @property final auto ref Surface ImageValue() { return *cast(Surface*)(cast(size_t)&this + 24); }
		private ubyte __ImageValue[4];
		public @property final auto ref ScriptString StringValue() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __StringValue[12];
		public @property final auto ref UIRoot.EUIDataProviderFieldType PropertyType() { return *cast(UIRoot.EUIDataProviderFieldType*)(cast(size_t)&this + 8); }
		private ubyte __PropertyType[1];
		public @property final auto ref ScriptName PropertyTag() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __PropertyTag[8];
		public @property final auto ref UObject.Pointer CustomStringNode() { return *cast(UObject.Pointer*)(cast(size_t)&this + 84); }
		private ubyte __CustomStringNode[4];
	}
	struct InputKeyAction
	{
		public @property final auto ref ScriptArray!(SequenceOp.SeqOpOutputInputLink) TriggeredOps() { return *cast(ScriptArray!(SequenceOp.SeqOpOutputInputLink)*)(cast(size_t)&this + 12); }
		private ubyte __TriggeredOps[12];
		public @property final auto ref ScriptArray!(SequenceOp) ActionsToExecute() { return *cast(ScriptArray!(SequenceOp)*)(cast(size_t)&this + 24); }
		private ubyte __ActionsToExecute[12];
		public @property final auto ref UObject.EInputEvent InputKeyState() { return *cast(UObject.EInputEvent*)(cast(size_t)&this + 8); }
		private ubyte __InputKeyState[1];
		public @property final auto ref ScriptName InputKeyName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __InputKeyName[8];
	}
	struct UIDataStoreBinding
	{
		public @property final auto ref UIDataStore ResolvedDataStore() { return *cast(UIDataStore*)(cast(size_t)&this + 44); }
		private ubyte __ResolvedDataStore[4];
		public @property final auto ref ScriptName DataStoreField() { return *cast(ScriptName*)(cast(size_t)&this + 36); }
		private ubyte __DataStoreField[8];
		public @property final auto ref ScriptName DataStoreName() { return *cast(ScriptName*)(cast(size_t)&this + 28); }
		private ubyte __DataStoreName[8];
		public @property final auto ref int BindingIndex() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __BindingIndex[4];
		public @property final auto ref ScriptString MarkupString() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __MarkupString[12];
		public @property final auto ref UIRoot.EUIDataProviderFieldType RequiredFieldType() { return *cast(UIRoot.EUIDataProviderFieldType*)(cast(size_t)&this + 8); }
		private ubyte __RequiredFieldType[1];
	}
	struct InputEventParameters
	{
		public @property final bool bShiftPressed() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x4) != 0; }
		public @property final bool bShiftPressed(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x4; } return val; }
		private ubyte __bShiftPressed[4];
		public @property final bool bCtrlPressed() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
		public @property final bool bCtrlPressed(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
		private ubyte __bCtrlPressed[4];
		public @property final bool bAltPressed() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
		public @property final bool bAltPressed(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		private ubyte __bAltPressed[4];
		public @property final auto ref float DeltaTime() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __DeltaTime[4];
		public @property final auto ref float InputDelta() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __InputDelta[4];
		public @property final auto ref UObject.EInputEvent EventType() { return *cast(UObject.EInputEvent*)(cast(size_t)&this + 16); }
		private ubyte __EventType[1];
		public @property final auto ref ScriptName InputKeyName() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
		private ubyte __InputKeyName[8];
		public @property final auto ref int ControllerId() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __ControllerId[4];
		public @property final auto ref int PlayerIndex() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __PlayerIndex[4];
	}
	struct SubscribedInputEventParameters
	{
		public @property final bool bShiftPressed() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x4) != 0; }
		public @property final bool bShiftPressed(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x4; } return val; }
		private ubyte __bShiftPressed[4];
		public @property final bool bCtrlPressed() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
		public @property final bool bCtrlPressed(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
		private ubyte __bCtrlPressed[4];
		public @property final bool bAltPressed() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
		public @property final bool bAltPressed(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		private ubyte __bAltPressed[4];
		public @property final auto ref float DeltaTime() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __DeltaTime[4];
		public @property final auto ref float InputDelta() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __InputDelta[4];
		public @property final auto ref UObject.EInputEvent EventType() { return *cast(UObject.EInputEvent*)(cast(size_t)&this + 16); }
		private ubyte __EventType[1];
		public @property final auto ref ScriptName InputKeyName() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
		private ubyte __InputKeyName[8];
		public @property final auto ref int ControllerId() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __ControllerId[4];
		public @property final auto ref int PlayerIndex() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __PlayerIndex[4];
		public @property final auto ref ScriptName InputAliasName() { return *cast(ScriptName*)(cast(size_t)&this + 32); }
		private ubyte __InputAliasName[8];
	}
	struct UIAxisEmulationDefinition
	{
		public @property final auto ref ScriptName InputKeyToEmulate() { return *cast(ScriptName*)(cast(size_t)&this + 20); }
		private ubyte __InputKeyToEmulate[8];
		public @property final bool bEmulateButtonPress() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
		public @property final bool bEmulateButtonPress(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		private ubyte __bEmulateButtonPress[4];
		public @property final auto ref ScriptName AdjacentAxisInputKey() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
		private ubyte __AdjacentAxisInputKey[8];
		public @property final auto ref ScriptName AxisInputKey() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __AxisInputKey[8];
	}
	struct RawInputKeyEventData
	{
		public @property final auto ref ubyte ModifierKeyFlags() { return *cast(ubyte*)(cast(size_t)&this + 8); }
		private ubyte __ModifierKeyFlags[1];
		public @property final auto ref ScriptName InputKeyName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __InputKeyName[8];
	}
	final bool GetDataStoreStringValue(ScriptString InDataStoreMarkup, ScriptString* OutStringValue, LocalPlayer OwnerPlayer)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InDataStoreMarkup;
		*cast(ScriptString*)&params[12] = *OutStringValue;
		*cast(LocalPlayer*)&params[24] = OwnerPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9285], params.ptr, cast(void*)0);
		*OutStringValue = *cast(ScriptString*)&params[12];
		return *cast(bool*)&params[28];
	}
	final bool SetDataStoreStringValue(ScriptString InDataStoreMarkup, ScriptString InStringValue, LocalPlayer OwnerPlayer)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InDataStoreMarkup;
		*cast(ScriptString*)&params[12] = InStringValue;
		*cast(LocalPlayer*)&params[24] = OwnerPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9287], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final UIRoot.EInputPlatformType GetInputPlatformType(LocalPlayer OwningPlayer)
	{
		ubyte params[5];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = OwningPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12858], params.ptr, cast(void*)0);
		return *cast(UIRoot.EInputPlatformType*)&params[4];
	}
	final UIInteraction GetCurrentUIController()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12861], params.ptr, cast(void*)0);
		return *cast(UIInteraction*)params.ptr;
	}
	final GameUISceneClient GetSceneClient()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12863], params.ptr, cast(void*)0);
		return *cast(GameUISceneClient*)params.ptr;
	}
	final UIDataStore StaticResolveDataStore(ScriptName DataStoreTag, LocalPlayer InPlayerOwner)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DataStoreTag;
		*cast(LocalPlayer*)&params[8] = InPlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12865], params.ptr, cast(void*)0);
		return *cast(UIDataStore*)&params[12];
	}
	final bool SetDataStoreFieldValue(ScriptString InDataStoreMarkup, UIRoot.UIProviderFieldValue* InFieldValue, LocalPlayer OwnerPlayer)
	{
		ubyte params[108];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InDataStoreMarkup;
		*cast(UIRoot.UIProviderFieldValue*)&params[12] = *InFieldValue;
		*cast(LocalPlayer*)&params[100] = OwnerPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12871], params.ptr, cast(void*)0);
		*InFieldValue = *cast(UIRoot.UIProviderFieldValue*)&params[12];
		return *cast(bool*)&params[104];
	}
	final bool GetDataStoreFieldValue(ScriptString InDataStoreMarkup, UIRoot.UIProviderFieldValue* OutFieldValue, LocalPlayer OwnerPlayer)
	{
		ubyte params[108];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InDataStoreMarkup;
		*cast(UIRoot.UIProviderFieldValue*)&params[12] = *OutFieldValue;
		*cast(LocalPlayer*)&params[100] = OwnerPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12880], params.ptr, cast(void*)0);
		*OutFieldValue = *cast(UIRoot.UIProviderFieldValue*)&params[12];
		return *cast(bool*)&params[104];
	}
	final 
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void* GetOnlineGameInterface()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12890], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void**)params.ptr;
	}
	final 
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void* GetOnlinePlayerInterface()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12894], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void**)params.ptr;
	}
	final 
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void* GetOnlinePlayerInterfaceEx()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12898], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void**)params.ptr;
	}
}
