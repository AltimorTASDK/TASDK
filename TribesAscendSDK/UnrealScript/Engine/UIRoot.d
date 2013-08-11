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
public extern(D):
	enum
	{
		DEFAULT_SIZE_X = 1024,
		DEFAULT_SIZE_Y = 768,
		MAX_SUPPORTED_GAMEPADS = 4,
	}
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
		private ubyte __buffer__[20];
	public extern(D):
		@property final
		{
			auto ref
			{
				float NudgeValue() { return *cast(float*)(cast(size_t)&this + 12); }
				float MaxValue() { return *cast(float*)(cast(size_t)&this + 8); }
				float MinValue() { return *cast(float*)(cast(size_t)&this + 4); }
				float CurrentValue() { return *cast(float*)(cast(size_t)&this + 0); }
			}
			bool bIntRange() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
			bool bIntRange(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		}
	}
	struct TextureCoordinates
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			float VL() { return *cast(float*)(cast(size_t)&this + 12); }
			float UL() { return *cast(float*)(cast(size_t)&this + 8); }
			float V() { return *cast(float*)(cast(size_t)&this + 4); }
			float U() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	struct UIProviderScriptFieldValue
	{
		private ubyte __buffer__[84];
	public extern(D):
		@property final auto ref
		{
			ScriptArray!(int) ArrayValue() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 28); }
			UIRoot.TextureCoordinates AtlasCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)&this + 68); }
			OnlineSubsystem.UniqueNetId NetIdValue() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 60); }
			UIRoot.UIRangeData RangeValue() { return *cast(UIRoot.UIRangeData*)(cast(size_t)&this + 40); }
			Surface ImageValue() { return *cast(Surface*)(cast(size_t)&this + 24); }
			ScriptString StringValue() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			UIRoot.EUIDataProviderFieldType PropertyType() { return *cast(UIRoot.EUIDataProviderFieldType*)(cast(size_t)&this + 8); }
			ScriptName PropertyTag() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct UIProviderFieldValue
	{
		private ubyte __buffer__[88];
	public extern(D):
		@property final auto ref
		{
			ScriptArray!(int) ArrayValue() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 28); }
			UIRoot.TextureCoordinates AtlasCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)&this + 68); }
			OnlineSubsystem.UniqueNetId NetIdValue() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 60); }
			UIRoot.UIRangeData RangeValue() { return *cast(UIRoot.UIRangeData*)(cast(size_t)&this + 40); }
			Surface ImageValue() { return *cast(Surface*)(cast(size_t)&this + 24); }
			ScriptString StringValue() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			UIRoot.EUIDataProviderFieldType PropertyType() { return *cast(UIRoot.EUIDataProviderFieldType*)(cast(size_t)&this + 8); }
			ScriptName PropertyTag() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
		@property final auto ref UObject.Pointer CustomStringNode() { return *cast(UObject.Pointer*)(cast(size_t)&this + 84); }
	}
	struct InputKeyAction
	{
		private ubyte __buffer__[36];
	public extern(D):
		@property final auto ref
		{
			ScriptArray!(SequenceOp.SeqOpOutputInputLink) TriggeredOps() { return *cast(ScriptArray!(SequenceOp.SeqOpOutputInputLink)*)(cast(size_t)&this + 12); }
			ScriptArray!(SequenceOp) ActionsToExecute() { return *cast(ScriptArray!(SequenceOp)*)(cast(size_t)&this + 24); }
			UObject.EInputEvent InputKeyState() { return *cast(UObject.EInputEvent*)(cast(size_t)&this + 8); }
			ScriptName InputKeyName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct UIDataStoreBinding
	{
		private ubyte __buffer__[48];
	public extern(D):
		@property final auto ref
		{
			UIDataStore ResolvedDataStore() { return *cast(UIDataStore*)(cast(size_t)&this + 44); }
			ScriptName DataStoreField() { return *cast(ScriptName*)(cast(size_t)&this + 36); }
			ScriptName DataStoreName() { return *cast(ScriptName*)(cast(size_t)&this + 28); }
			int BindingIndex() { return *cast(int*)(cast(size_t)&this + 24); }
			ScriptString MarkupString() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			UIRoot.EUIDataProviderFieldType RequiredFieldType() { return *cast(UIRoot.EUIDataProviderFieldType*)(cast(size_t)&this + 8); }
		}
	}
	struct InputEventParameters
	{
		private ubyte __buffer__[32];
	public extern(D):
		@property final
		{
			auto ref
			{
				float DeltaTime() { return *cast(float*)(cast(size_t)&this + 24); }
				float InputDelta() { return *cast(float*)(cast(size_t)&this + 20); }
				UObject.EInputEvent EventType() { return *cast(UObject.EInputEvent*)(cast(size_t)&this + 16); }
				ScriptName InputKeyName() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
				int ControllerId() { return *cast(int*)(cast(size_t)&this + 4); }
				int PlayerIndex() { return *cast(int*)(cast(size_t)&this + 0); }
			}
			bool bShiftPressed() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x4) != 0; }
			bool bShiftPressed(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x4; } return val; }
			bool bCtrlPressed() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
			bool bCtrlPressed(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
			bool bAltPressed() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
			bool bAltPressed(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		}
	}
	struct SubscribedInputEventParameters
	{
		private ubyte __buffer__[40];
	public extern(D):
		@property final
		{
			auto ref
			{
				float DeltaTime() { return *cast(float*)(cast(size_t)&this + 24); }
				float InputDelta() { return *cast(float*)(cast(size_t)&this + 20); }
				UObject.EInputEvent EventType() { return *cast(UObject.EInputEvent*)(cast(size_t)&this + 16); }
				ScriptName InputKeyName() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
				int ControllerId() { return *cast(int*)(cast(size_t)&this + 4); }
				int PlayerIndex() { return *cast(int*)(cast(size_t)&this + 0); }
			}
			bool bShiftPressed() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x4) != 0; }
			bool bShiftPressed(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x4; } return val; }
			bool bCtrlPressed() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
			bool bCtrlPressed(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
			bool bAltPressed() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
			bool bAltPressed(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		}
		@property final auto ref ScriptName InputAliasName() { return *cast(ScriptName*)(cast(size_t)&this + 32); }
	}
	struct UIAxisEmulationDefinition
	{
		private ubyte __buffer__[36];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptName InputKeyToEmulate() { return *cast(ScriptName*)(cast(size_t)&this + 20); }
				ScriptName AdjacentAxisInputKey() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
				ScriptName AxisInputKey() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			}
			bool bEmulateButtonPress() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
			bool bEmulateButtonPress(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		}
	}
	struct RawInputKeyEventData
	{
		private ubyte __buffer__[9];
	public extern(D):
		@property final auto ref
		{
			ubyte ModifierKeyFlags() { return *cast(ubyte*)(cast(size_t)&this + 8); }
			ScriptName InputKeyName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
final:
	bool GetDataStoreStringValue(ScriptString InDataStoreMarkup, ScriptString* OutStringValue, LocalPlayer OwnerPlayer)
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
	bool SetDataStoreStringValue(ScriptString InDataStoreMarkup, ScriptString InStringValue, LocalPlayer OwnerPlayer)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InDataStoreMarkup;
		*cast(ScriptString*)&params[12] = InStringValue;
		*cast(LocalPlayer*)&params[24] = OwnerPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9287], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	UIRoot.EInputPlatformType GetInputPlatformType(LocalPlayer OwningPlayer)
	{
		ubyte params[5];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = OwningPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12858], params.ptr, cast(void*)0);
		return *cast(UIRoot.EInputPlatformType*)&params[4];
	}
	UIInteraction GetCurrentUIController()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12861], params.ptr, cast(void*)0);
		return *cast(UIInteraction*)params.ptr;
	}
	GameUISceneClient GetSceneClient()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12863], params.ptr, cast(void*)0);
		return *cast(GameUISceneClient*)params.ptr;
	}
	UIDataStore StaticResolveDataStore(ScriptName DataStoreTag, LocalPlayer InPlayerOwner)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DataStoreTag;
		*cast(LocalPlayer*)&params[8] = InPlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12865], params.ptr, cast(void*)0);
		return *cast(UIDataStore*)&params[12];
	}
	bool SetDataStoreFieldValue(ScriptString InDataStoreMarkup, UIRoot.UIProviderFieldValue* InFieldValue, LocalPlayer OwnerPlayer)
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
	bool GetDataStoreFieldValue(ScriptString InDataStoreMarkup, UIRoot.UIProviderFieldValue* OutFieldValue, LocalPlayer OwnerPlayer)
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
	
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* GetOnlineGameInterface()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12890], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)params.ptr;
	}
	
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* GetOnlinePlayerInterface()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12894], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)params.ptr;
	}
	
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* GetOnlinePlayerInterfaceEx()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12898], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)params.ptr;
	}
}
