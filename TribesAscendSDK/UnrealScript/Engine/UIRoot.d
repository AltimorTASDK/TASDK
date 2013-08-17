module UnrealScript.Engine.UIRoot;

import ScriptClasses;
import UnrealScript.Helpers;
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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIRoot")()); }
	private static __gshared UIRoot mDefaultProperties;
	@property final static UIRoot DefaultProperties() { mixin(MGDPC!(UIRoot, "UIRoot Engine.Default__UIRoot")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetDataStoreStringValue;
			ScriptFunction mSetDataStoreStringValue;
			ScriptFunction mGetInputPlatformType;
			ScriptFunction mGetCurrentUIController;
			ScriptFunction mGetSceneClient;
			ScriptFunction mStaticResolveDataStore;
			ScriptFunction mSetDataStoreFieldValue;
			ScriptFunction mGetDataStoreFieldValue;
			ScriptFunction mGetOnlineGameInterface;
			ScriptFunction mGetOnlinePlayerInterface;
			ScriptFunction mGetOnlinePlayerInterfaceEx;
		}
		public @property static final
		{
			ScriptFunction GetDataStoreStringValue() { mixin(MGF!("mGetDataStoreStringValue", "Function Engine.UIRoot.GetDataStoreStringValue")()); }
			ScriptFunction SetDataStoreStringValue() { mixin(MGF!("mSetDataStoreStringValue", "Function Engine.UIRoot.SetDataStoreStringValue")()); }
			ScriptFunction GetInputPlatformType() { mixin(MGF!("mGetInputPlatformType", "Function Engine.UIRoot.GetInputPlatformType")()); }
			ScriptFunction GetCurrentUIController() { mixin(MGF!("mGetCurrentUIController", "Function Engine.UIRoot.GetCurrentUIController")()); }
			ScriptFunction GetSceneClient() { mixin(MGF!("mGetSceneClient", "Function Engine.UIRoot.GetSceneClient")()); }
			ScriptFunction StaticResolveDataStore() { mixin(MGF!("mStaticResolveDataStore", "Function Engine.UIRoot.StaticResolveDataStore")()); }
			ScriptFunction SetDataStoreFieldValue() { mixin(MGF!("mSetDataStoreFieldValue", "Function Engine.UIRoot.SetDataStoreFieldValue")()); }
			ScriptFunction GetDataStoreFieldValue() { mixin(MGF!("mGetDataStoreFieldValue", "Function Engine.UIRoot.GetDataStoreFieldValue")()); }
			ScriptFunction GetOnlineGameInterface() { mixin(MGF!("mGetOnlineGameInterface", "Function Engine.UIRoot.GetOnlineGameInterface")()); }
			ScriptFunction GetOnlinePlayerInterface() { mixin(MGF!("mGetOnlinePlayerInterface", "Function Engine.UIRoot.GetOnlinePlayerInterface")()); }
			ScriptFunction GetOnlinePlayerInterfaceEx() { mixin(MGF!("mGetOnlinePlayerInterfaceEx", "Function Engine.UIRoot.GetOnlinePlayerInterfaceEx")()); }
		}
	}
	static struct Constants
	{
		enum
		{
			DEFAULT_SIZE_X = 1024,
			DEFAULT_SIZE_Y = 768,
			MAX_SUPPORTED_GAMEPADS = 4,
		}
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIRoot.UIRangeData")()); }
		@property final
		{
			auto ref
			{
				float NudgeValue() { mixin(MGPS!(float, 12)()); }
				float MaxValue() { mixin(MGPS!(float, 8)()); }
				float MinValue() { mixin(MGPS!(float, 4)()); }
				float CurrentValue() { mixin(MGPS!(float, 0)()); }
			}
			bool bIntRange() { mixin(MGBPS!(16, 0x1)()); }
			bool bIntRange(bool val) { mixin(MSBPS!(16, 0x1)()); }
		}
	}
	struct TextureCoordinates
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIRoot.TextureCoordinates")()); }
		@property final auto ref
		{
			float VL() { mixin(MGPS!(float, 12)()); }
			float UL() { mixin(MGPS!(float, 8)()); }
			float V() { mixin(MGPS!(float, 4)()); }
			float U() { mixin(MGPS!(float, 0)()); }
		}
	}
	struct UIProviderScriptFieldValue
	{
		private ubyte __buffer__[84];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIRoot.UIProviderScriptFieldValue")()); }
		@property final auto ref
		{
			ScriptArray!(int) ArrayValue() { mixin(MGPS!(ScriptArray!(int), 28)()); }
			UIRoot.TextureCoordinates AtlasCoordinates() { mixin(MGPS!(UIRoot.TextureCoordinates, 68)()); }
			OnlineSubsystem.UniqueNetId NetIdValue() { mixin(MGPS!(OnlineSubsystem.UniqueNetId, 60)()); }
			UIRoot.UIRangeData RangeValue() { mixin(MGPS!(UIRoot.UIRangeData, 40)()); }
			Surface ImageValue() { mixin(MGPS!(Surface, 24)()); }
			ScriptString StringValue() { mixin(MGPS!(ScriptString, 12)()); }
			UIRoot.EUIDataProviderFieldType PropertyType() { mixin(MGPS!(UIRoot.EUIDataProviderFieldType, 8)()); }
			ScriptName PropertyTag() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	struct UIProviderFieldValue
	{
		private ubyte __buffer__[88];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIRoot.UIProviderFieldValue")()); }
		@property final auto ref
		{
			ScriptArray!(int) ArrayValue() { mixin(MGPS!(ScriptArray!(int), 28)()); }
			UIRoot.TextureCoordinates AtlasCoordinates() { mixin(MGPS!(UIRoot.TextureCoordinates, 68)()); }
			OnlineSubsystem.UniqueNetId NetIdValue() { mixin(MGPS!(OnlineSubsystem.UniqueNetId, 60)()); }
			UIRoot.UIRangeData RangeValue() { mixin(MGPS!(UIRoot.UIRangeData, 40)()); }
			Surface ImageValue() { mixin(MGPS!(Surface, 24)()); }
			ScriptString StringValue() { mixin(MGPS!(ScriptString, 12)()); }
			UIRoot.EUIDataProviderFieldType PropertyType() { mixin(MGPS!(UIRoot.EUIDataProviderFieldType, 8)()); }
			ScriptName PropertyTag() { mixin(MGPS!(ScriptName, 0)()); }
		}
		@property final auto ref UObject.Pointer CustomStringNode() { mixin(MGPS!(UObject.Pointer, 84)()); }
	}
	struct InputKeyAction
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIRoot.InputKeyAction")()); }
		@property final auto ref
		{
			ScriptArray!(SequenceOp.SeqOpOutputInputLink) TriggeredOps() { mixin(MGPS!(ScriptArray!(SequenceOp.SeqOpOutputInputLink), 12)()); }
			ScriptArray!(SequenceOp) ActionsToExecute() { mixin(MGPS!(ScriptArray!(SequenceOp), 24)()); }
			UObject.EInputEvent InputKeyState() { mixin(MGPS!(UObject.EInputEvent, 8)()); }
			ScriptName InputKeyName() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	struct UIDataStoreBinding
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIRoot.UIDataStoreBinding")()); }
		@property final auto ref
		{
			UIDataStore ResolvedDataStore() { mixin(MGPS!(UIDataStore, 44)()); }
			ScriptName DataStoreField() { mixin(MGPS!(ScriptName, 36)()); }
			ScriptName DataStoreName() { mixin(MGPS!(ScriptName, 28)()); }
			int BindingIndex() { mixin(MGPS!(int, 24)()); }
			ScriptString MarkupString() { mixin(MGPS!(ScriptString, 12)()); }
			UIRoot.EUIDataProviderFieldType RequiredFieldType() { mixin(MGPS!(UIRoot.EUIDataProviderFieldType, 8)()); }
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'Subscriber'!
		}
	}
	struct InputEventParameters
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIRoot.InputEventParameters")()); }
		@property final
		{
			auto ref
			{
				float DeltaTime() { mixin(MGPS!(float, 24)()); }
				float InputDelta() { mixin(MGPS!(float, 20)()); }
				UObject.EInputEvent EventType() { mixin(MGPS!(UObject.EInputEvent, 16)()); }
				ScriptName InputKeyName() { mixin(MGPS!(ScriptName, 8)()); }
				int ControllerId() { mixin(MGPS!(int, 4)()); }
				int PlayerIndex() { mixin(MGPS!(int, 0)()); }
			}
			bool bShiftPressed() { mixin(MGBPS!(28, 0x4)()); }
			bool bShiftPressed(bool val) { mixin(MSBPS!(28, 0x4)()); }
			bool bCtrlPressed() { mixin(MGBPS!(28, 0x2)()); }
			bool bCtrlPressed(bool val) { mixin(MSBPS!(28, 0x2)()); }
			bool bAltPressed() { mixin(MGBPS!(28, 0x1)()); }
			bool bAltPressed(bool val) { mixin(MSBPS!(28, 0x1)()); }
		}
	}
	struct SubscribedInputEventParameters
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIRoot.SubscribedInputEventParameters")()); }
		@property final
		{
			auto ref
			{
				float DeltaTime() { mixin(MGPS!(float, 24)()); }
				float InputDelta() { mixin(MGPS!(float, 20)()); }
				UObject.EInputEvent EventType() { mixin(MGPS!(UObject.EInputEvent, 16)()); }
				ScriptName InputKeyName() { mixin(MGPS!(ScriptName, 8)()); }
				int ControllerId() { mixin(MGPS!(int, 4)()); }
				int PlayerIndex() { mixin(MGPS!(int, 0)()); }
			}
			bool bShiftPressed() { mixin(MGBPS!(28, 0x4)()); }
			bool bShiftPressed(bool val) { mixin(MSBPS!(28, 0x4)()); }
			bool bCtrlPressed() { mixin(MGBPS!(28, 0x2)()); }
			bool bCtrlPressed(bool val) { mixin(MSBPS!(28, 0x2)()); }
			bool bAltPressed() { mixin(MGBPS!(28, 0x1)()); }
			bool bAltPressed(bool val) { mixin(MSBPS!(28, 0x1)()); }
		}
		@property final auto ref ScriptName InputAliasName() { mixin(MGPS!(ScriptName, 32)()); }
	}
	struct UIAxisEmulationDefinition
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIRoot.UIAxisEmulationDefinition")()); }
		@property final
		{
			auto ref
			{
				ScriptName InputKeyToEmulate() { mixin(MGPS!(ScriptName, 20)()); }
				ScriptName AdjacentAxisInputKey() { mixin(MGPS!(ScriptName, 8)()); }
				ScriptName AxisInputKey() { mixin(MGPS!(ScriptName, 0)()); }
			}
			bool bEmulateButtonPress() { mixin(MGBPS!(16, 0x1)()); }
			bool bEmulateButtonPress(bool val) { mixin(MSBPS!(16, 0x1)()); }
		}
	}
	struct RawInputKeyEventData
	{
		private ubyte __buffer__[9];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIRoot.RawInputKeyEventData")()); }
		@property final auto ref
		{
			ubyte ModifierKeyFlags() { mixin(MGPS!(ubyte, 8)()); }
			ScriptName InputKeyName() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
final:
	static bool GetDataStoreStringValue(ScriptString InDataStoreMarkup, ref ScriptString OutStringValue, LocalPlayer OwnerPlayer)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InDataStoreMarkup;
		*cast(ScriptString*)&params[12] = OutStringValue;
		*cast(LocalPlayer*)&params[24] = OwnerPlayer;
		StaticClass.ProcessEvent(Functions.GetDataStoreStringValue, params.ptr, cast(void*)0);
		*OutStringValue = *cast(ScriptString*)&params[12];
		return *cast(bool*)&params[28];
	}
	static bool SetDataStoreStringValue(ScriptString InDataStoreMarkup, ScriptString InStringValue, LocalPlayer OwnerPlayer)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InDataStoreMarkup;
		*cast(ScriptString*)&params[12] = InStringValue;
		*cast(LocalPlayer*)&params[24] = OwnerPlayer;
		StaticClass.ProcessEvent(Functions.SetDataStoreStringValue, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	static UIRoot.EInputPlatformType GetInputPlatformType(LocalPlayer OwningPlayer)
	{
		ubyte params[5];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = OwningPlayer;
		StaticClass.ProcessEvent(Functions.GetInputPlatformType, params.ptr, cast(void*)0);
		return *cast(UIRoot.EInputPlatformType*)&params[4];
	}
	static UIInteraction GetCurrentUIController()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetCurrentUIController, params.ptr, cast(void*)0);
		return *cast(UIInteraction*)params.ptr;
	}
	static GameUISceneClient GetSceneClient()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetSceneClient, params.ptr, cast(void*)0);
		return *cast(GameUISceneClient*)params.ptr;
	}
	static UIDataStore StaticResolveDataStore(ScriptName DataStoreTag, LocalPlayer InPlayerOwner)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DataStoreTag;
		*cast(LocalPlayer*)&params[8] = InPlayerOwner;
		StaticClass.ProcessEvent(Functions.StaticResolveDataStore, params.ptr, cast(void*)0);
		return *cast(UIDataStore*)&params[12];
	}
	static bool SetDataStoreFieldValue(ScriptString InDataStoreMarkup, ref const UIRoot.UIProviderFieldValue InFieldValue, LocalPlayer OwnerPlayer)
	{
		ubyte params[108];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InDataStoreMarkup;
		*cast(UIRoot.UIProviderFieldValue*)&params[12] = InFieldValue;
		*cast(LocalPlayer*)&params[100] = OwnerPlayer;
		StaticClass.ProcessEvent(Functions.SetDataStoreFieldValue, params.ptr, cast(void*)0);
		*InFieldValue = *cast(UIRoot.UIProviderFieldValue*)&params[12];
		return *cast(bool*)&params[104];
	}
	static bool GetDataStoreFieldValue(ScriptString InDataStoreMarkup, ref UIRoot.UIProviderFieldValue OutFieldValue, LocalPlayer OwnerPlayer)
	{
		ubyte params[108];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InDataStoreMarkup;
		*cast(UIRoot.UIProviderFieldValue*)&params[12] = OutFieldValue;
		*cast(LocalPlayer*)&params[100] = OwnerPlayer;
		StaticClass.ProcessEvent(Functions.GetDataStoreFieldValue, params.ptr, cast(void*)0);
		*OutFieldValue = *cast(UIRoot.UIProviderFieldValue*)&params[12];
		return *cast(bool*)&params[104];
	}
	static 
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* GetOnlineGameInterface()
	{
		ubyte params[8];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetOnlineGameInterface, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)params.ptr;
	}
	static 
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* GetOnlinePlayerInterface()
	{
		ubyte params[8];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetOnlinePlayerInterface, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)params.ptr;
	}
	static 
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* GetOnlinePlayerInterfaceEx()
	{
		ubyte params[8];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetOnlinePlayerInterfaceEx, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)params.ptr;
	}
}
