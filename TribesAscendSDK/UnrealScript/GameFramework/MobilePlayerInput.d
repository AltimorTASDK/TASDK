module UnrealScript.GameFramework.MobilePlayerInput;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.PlayerInput;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.MobileMenuScene;
import UnrealScript.GameFramework.SeqEvent_MobileBase;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.MobileInputZone;
import UnrealScript.GameFramework.SeqEvent_MobileRawInput;
import UnrealScript.GameFramework.MobileMenuObject;

extern(C++) interface MobilePlayerInput : PlayerInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.MobilePlayerInput")); }
	private static __gshared MobilePlayerInput mDefaultProperties;
	@property final static MobilePlayerInput DefaultProperties() { mixin(MGDPC("MobilePlayerInput", "MobilePlayerInput GameFramework.Default__MobilePlayerInput")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mHasZones;
			ScriptFunction mGetCurrentZones;
			ScriptFunction mOpenMenuScene;
			ScriptFunction mOnInputTouch;
			ScriptFunction mOnPreviewTouch;
			ScriptFunction mOnTouchNotHandledInMenu;
			ScriptFunction mOnMobileMotion;
			ScriptFunction mNativeInitializeInputSystem;
			ScriptFunction mNativeInitializeInputZones;
			ScriptFunction mSendInputKey;
			ScriptFunction mSendInputAxis;
			ScriptFunction mInitInputSystem;
			ScriptFunction mClientInitInputSystem;
			ScriptFunction mInitTouchSystem;
			ScriptFunction mInitializeInputZones;
			ScriptFunction mRefreshKismetLinks;
			ScriptFunction mAddKismetEventHandler;
			ScriptFunction mAddKismetRawInputEventHandler;
			ScriptFunction mFindZone;
			ScriptFunction mFindorAddZone;
			ScriptFunction mCloseMenuScene;
			ScriptFunction mCloseAllMenus;
			ScriptFunction mRenderMenus;
			ScriptFunction mPreClientTravel;
		}
		public @property static final
		{
			ScriptFunction HasZones() { mixin(MGF("mHasZones", "Function GameFramework.MobilePlayerInput.HasZones")); }
			ScriptFunction GetCurrentZones() { mixin(MGF("mGetCurrentZones", "Function GameFramework.MobilePlayerInput.GetCurrentZones")); }
			ScriptFunction OpenMenuScene() { mixin(MGF("mOpenMenuScene", "Function GameFramework.MobilePlayerInput.OpenMenuScene")); }
			ScriptFunction OnInputTouch() { mixin(MGF("mOnInputTouch", "Function GameFramework.MobilePlayerInput.OnInputTouch")); }
			ScriptFunction OnPreviewTouch() { mixin(MGF("mOnPreviewTouch", "Function GameFramework.MobilePlayerInput.OnPreviewTouch")); }
			ScriptFunction OnTouchNotHandledInMenu() { mixin(MGF("mOnTouchNotHandledInMenu", "Function GameFramework.MobilePlayerInput.OnTouchNotHandledInMenu")); }
			ScriptFunction OnMobileMotion() { mixin(MGF("mOnMobileMotion", "Function GameFramework.MobilePlayerInput.OnMobileMotion")); }
			ScriptFunction NativeInitializeInputSystem() { mixin(MGF("mNativeInitializeInputSystem", "Function GameFramework.MobilePlayerInput.NativeInitializeInputSystem")); }
			ScriptFunction NativeInitializeInputZones() { mixin(MGF("mNativeInitializeInputZones", "Function GameFramework.MobilePlayerInput.NativeInitializeInputZones")); }
			ScriptFunction SendInputKey() { mixin(MGF("mSendInputKey", "Function GameFramework.MobilePlayerInput.SendInputKey")); }
			ScriptFunction SendInputAxis() { mixin(MGF("mSendInputAxis", "Function GameFramework.MobilePlayerInput.SendInputAxis")); }
			ScriptFunction InitInputSystem() { mixin(MGF("mInitInputSystem", "Function GameFramework.MobilePlayerInput.InitInputSystem")); }
			ScriptFunction ClientInitInputSystem() { mixin(MGF("mClientInitInputSystem", "Function GameFramework.MobilePlayerInput.ClientInitInputSystem")); }
			ScriptFunction InitTouchSystem() { mixin(MGF("mInitTouchSystem", "Function GameFramework.MobilePlayerInput.InitTouchSystem")); }
			ScriptFunction InitializeInputZones() { mixin(MGF("mInitializeInputZones", "Function GameFramework.MobilePlayerInput.InitializeInputZones")); }
			ScriptFunction RefreshKismetLinks() { mixin(MGF("mRefreshKismetLinks", "Function GameFramework.MobilePlayerInput.RefreshKismetLinks")); }
			ScriptFunction AddKismetEventHandler() { mixin(MGF("mAddKismetEventHandler", "Function GameFramework.MobilePlayerInput.AddKismetEventHandler")); }
			ScriptFunction AddKismetRawInputEventHandler() { mixin(MGF("mAddKismetRawInputEventHandler", "Function GameFramework.MobilePlayerInput.AddKismetRawInputEventHandler")); }
			ScriptFunction FindZone() { mixin(MGF("mFindZone", "Function GameFramework.MobilePlayerInput.FindZone")); }
			ScriptFunction FindorAddZone() { mixin(MGF("mFindorAddZone", "Function GameFramework.MobilePlayerInput.FindorAddZone")); }
			ScriptFunction CloseMenuScene() { mixin(MGF("mCloseMenuScene", "Function GameFramework.MobilePlayerInput.CloseMenuScene")); }
			ScriptFunction CloseAllMenus() { mixin(MGF("mCloseAllMenus", "Function GameFramework.MobilePlayerInput.CloseAllMenus")); }
			ScriptFunction RenderMenus() { mixin(MGF("mRenderMenus", "Function GameFramework.MobilePlayerInput.RenderMenus")); }
			ScriptFunction PreClientTravel() { mixin(MGF("mPreClientTravel", "Function GameFramework.MobilePlayerInput.PreClientTravel")); }
		}
	}
	static struct Constants
	{
		enum NumTouchDataEntries = 5;
	}
	enum EUIOrientation : ubyte
	{
		UI_Unknown = 0,
		UI_Portait = 1,
		UI_PortaitUpsideDown = 2,
		UI_LandscapeRight = 3,
		UI_LandscapeLeft = 4,
		UI_MAX = 5,
	}
	struct TouchData
	{
		private ubyte __buffer__[68];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GameFramework.MobilePlayerInput.TouchData")); }
		@property final
		{
			auto ref
			{
				// WARNING: Property 'State' has the same name as a defined type!
				MobileInputZone Zone() { mixin(MGPS("MobileInputZone", 44)); }
				int Handle() { mixin(MGPS("int", 0)); }
				ScriptArray!(MobilePlayerInput.TouchDataEvent) Events() { mixin(MGPS("ScriptArray!(MobilePlayerInput.TouchDataEvent)", 52)); }
				float LastActiveTime() { mixin(MGPS("float", 64)); }
				float MoveDeltaTime() { mixin(MGPS("float", 36)); }
				UObject.Double MoveEventDeviceTime() { mixin(MGPS("UObject.Double", 28)); }
				float TouchDuration() { mixin(MGPS("float", 24)); }
				UObject.Double InitialDeviceTime() { mixin(MGPS("UObject.Double", 16)); }
				float TotalMoveDistance() { mixin(MGPS("float", 12)); }
				UObject.Vector2D Location() { mixin(MGPS("UObject.Vector2D", 4)); }
			}
			bool bInUse() { mixin(MGBPS(40, 0x1)); }
			bool bInUse(bool val) { mixin(MSBPS(40, 0x1)); }
		}
	}
	struct MobileInputGroup
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GameFramework.MobilePlayerInput.MobileInputGroup")); }
		@property final auto ref
		{
			ScriptArray!(MobileInputZone) AssociatedZones() { mixin(MGPS("ScriptArray!(MobileInputZone)", 12)); }
			ScriptString GroupName() { mixin(MGPS("ScriptString", 0)); }
		}
	}
	struct MobileInputZoneClassMap
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GameFramework.MobilePlayerInput.MobileInputZoneClassMap")); }
		@property final auto ref
		{
			ScriptClass ClassType() { mixin(MGPS("ScriptClass", 12)); }
			ScriptString Name() { mixin(MGPS("ScriptString", 0)); }
		}
	}
	struct TouchDataEvent
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GameFramework.MobilePlayerInput.TouchDataEvent")); }
		@property final auto ref
		{
			UObject.Double DeviceTime() { mixin(MGPS("UObject.Double", 12)); }
			UObject.Vector2D Location() { mixin(MGPS("UObject.Vector2D", 4)); }
			MobileInputZone.EZoneTouchEvent EventType() { mixin(MGPS("MobileInputZone.EZoneTouchEvent", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector DeviceAccelerometerRawData() { mixin(MGPC("Vector", 928)); }
			Vector DeviceGyroRawData() { mixin(MGPC("Vector", 916)); }
			Vector DeviceMotionAttitude() { mixin(MGPC("Vector", 844)); }
			Vector DeviceMotionRotationRate() { mixin(MGPC("Vector", 856)); }
			Vector DeviceMotionGravity() { mixin(MGPC("Vector", 868)); }
			Vector DeviceMotionAcceleration() { mixin(MGPC("Vector", 880)); }
			MobilePlayerInput.TouchData Touches() { mixin(MGPC("MobilePlayerInput.TouchData", 380)); }
			float MobileYaw() { mixin(MGPC("float", 780)); }
			float MobileYawCenter() { mixin(MGPC("float", 784)); }
			float MobileYawMultiplier() { mixin(MGPC("float", 788)); }
			float MobilePitch() { mixin(MGPC("float", 768)); }
			float MobilePitchCenter() { mixin(MGPC("float", 772)); }
			float MobilePitchMultiplier() { mixin(MGPC("float", 776)); }
			ScriptArray!(MobilePlayerInput.MobileInputGroup) MobileInputGroups() { mixin(MGPC("ScriptArray!(MobilePlayerInput.MobileInputGroup)", 724)); }
			ScriptArray!(MobileInputZone) MobileInputZones() { mixin(MGPC("ScriptArray!(MobileInputZone)", 740)); }
			ScriptArray!(MobilePlayerInput.MobileInputZoneClassMap) MobileInputZoneClasses() { mixin(MGPC("ScriptArray!(MobilePlayerInput.MobileInputZoneClassMap)", 752)); }
			ScriptArray!(MobileMenuScene) MobileMenuStack() { mixin(MGPC("ScriptArray!(MobileMenuScene)", 816)); }
			ScriptArray!(SeqEvent_MobileBase) MobileSeqEventHandlers() { mixin(MGPC("ScriptArray!(SeqEvent_MobileBase)", 892)); }
			ScriptArray!(SeqEvent_MobileRawInput) MobileRawInputSeqEventHandlers() { mixin(MGPC("ScriptArray!(SeqEvent_MobileRawInput)", 904)); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnInputTouch__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnPreviewTouch__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnTouchNotHandledInMenu__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnMobileMotion__Delegate'!
			float MobileInactiveTime() { mixin(MGPC("float", 840)); }
			ScriptString NativeDebugString() { mixin(MGPC("ScriptString", 828)); }
			float ZoneTimeout() { mixin(MGPC("float", 812)); }
			float MobileTapRepeatTime() { mixin(MGPC("float", 808)); }
			float MobileMinHoldForTap() { mixin(MGPC("float", 804)); }
			float MobileDoubleTapTime() { mixin(MGPC("float", 800)); }
			float MobileYawDeadzoneSize() { mixin(MGPC("float", 796)); }
			float MobilePitchDeadzoneSize() { mixin(MGPC("float", 792)); }
			int CurrentMobileGroup() { mixin(MGPC("int", 736)); }
			MobileMenuObject InteractiveObject() { mixin(MGPC("MobileMenuObject", 720)); }
		}
		bool bDeviceHasGyroscope() { mixin(MGBPC(764, 0x10)); }
		bool bDeviceHasGyroscope(bool val) { mixin(MSBPC(764, 0x10)); }
		bool bDeviceHasAccelerometer() { mixin(MGBPC(764, 0x20)); }
		bool bDeviceHasAccelerometer(bool val) { mixin(MSBPC(764, 0x20)); }
		bool bFakeMobileTouches() { mixin(MGBPC(764, 0x8)); }
		bool bFakeMobileTouches(bool val) { mixin(MSBPC(764, 0x8)); }
		bool bDisableTouchInput() { mixin(MGBPC(764, 0x4)); }
		bool bDisableTouchInput(bool val) { mixin(MSBPC(764, 0x4)); }
		bool bAllowTouchesInCinematic() { mixin(MGBPC(764, 0x2)); }
		bool bAllowTouchesInCinematic(bool val) { mixin(MSBPC(764, 0x2)); }
		bool bSupportsAccelerometer() { mixin(MGBPC(764, 0x1)); }
		bool bSupportsAccelerometer(bool val) { mixin(MSBPC(764, 0x1)); }
	}
final:
	bool HasZones()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasZones, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	ScriptArray!(MobileInputZone) GetCurrentZones()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentZones, params.ptr, cast(void*)0);
		return *cast(ScriptArray!(MobileInputZone)*)params.ptr;
	}
	MobileMenuScene OpenMenuScene(ScriptClass SceneClass, ScriptString* Mode = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = SceneClass;
		if (Mode !is null)
			*cast(ScriptString*)&params[4] = *Mode;
		(cast(ScriptObject)this).ProcessEvent(Functions.OpenMenuScene, params.ptr, cast(void*)0);
		return *cast(MobileMenuScene*)&params[16];
	}
	void OnInputTouch(int Handle, MobileInputZone.EZoneTouchEvent Type, UObject.Vector2D TouchLocation, float DeviceTimestamp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Handle;
		*cast(MobileInputZone.EZoneTouchEvent*)&params[4] = Type;
		*cast(UObject.Vector2D*)&params[8] = TouchLocation;
		*cast(float*)&params[16] = DeviceTimestamp;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnInputTouch, params.ptr, cast(void*)0);
	}
	bool OnPreviewTouch(float X, float Y)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPreviewTouch, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void OnTouchNotHandledInMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTouchNotHandledInMenu, cast(void*)0, cast(void*)0);
	}
	void OnMobileMotion(PlayerInput pPlayerInput, Vector CurrentAttitude, Vector CurrentRotationRate, Vector CurrentGravity, Vector CurrentAcceleration)
	{
		ubyte params[52];
		params[] = 0;
		*cast(PlayerInput*)params.ptr = pPlayerInput;
		*cast(Vector*)&params[4] = CurrentAttitude;
		*cast(Vector*)&params[16] = CurrentRotationRate;
		*cast(Vector*)&params[28] = CurrentGravity;
		*cast(Vector*)&params[40] = CurrentAcceleration;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnMobileMotion, params.ptr, cast(void*)0);
	}
	void NativeInitializeInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NativeInitializeInputSystem, cast(void*)0, cast(void*)0);
	}
	void NativeInitializeInputZones()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NativeInitializeInputZones, cast(void*)0, cast(void*)0);
	}
	void SendInputKey(ScriptName Key, UObject.EInputEvent Event, float AmountDepressed)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Key;
		*cast(UObject.EInputEvent*)&params[8] = Event;
		*cast(float*)&params[12] = AmountDepressed;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendInputKey, params.ptr, cast(void*)0);
	}
	void SendInputAxis(ScriptName Key, float Delta, float DeltaTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Key;
		*cast(float*)&params[8] = Delta;
		*cast(float*)&params[12] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendInputAxis, params.ptr, cast(void*)0);
	}
	void InitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitInputSystem, cast(void*)0, cast(void*)0);
	}
	void ClientInitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientInitInputSystem, cast(void*)0, cast(void*)0);
	}
	void InitTouchSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitTouchSystem, cast(void*)0, cast(void*)0);
	}
	void InitializeInputZones()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeInputZones, cast(void*)0, cast(void*)0);
	}
	void RefreshKismetLinks()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshKismetLinks, cast(void*)0, cast(void*)0);
	}
	void AddKismetEventHandler(SeqEvent_MobileBase NewHandler)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqEvent_MobileBase*)params.ptr = NewHandler;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddKismetEventHandler, params.ptr, cast(void*)0);
	}
	void AddKismetRawInputEventHandler(SeqEvent_MobileRawInput NewHandler)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqEvent_MobileRawInput*)params.ptr = NewHandler;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddKismetRawInputEventHandler, params.ptr, cast(void*)0);
	}
	MobileInputZone FindZone(ScriptString ZoneName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ZoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindZone, params.ptr, cast(void*)0);
		return *cast(MobileInputZone*)&params[12];
	}
	MobileInputZone FindorAddZone(ScriptString ZoneName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ZoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindorAddZone, params.ptr, cast(void*)0);
		return *cast(MobileInputZone*)&params[12];
	}
	void CloseMenuScene(MobileMenuScene SceneToClose)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobileMenuScene*)params.ptr = SceneToClose;
		(cast(ScriptObject)this).ProcessEvent(Functions.CloseMenuScene, params.ptr, cast(void*)0);
	}
	void CloseAllMenus()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CloseAllMenus, cast(void*)0, cast(void*)0);
	}
	void RenderMenus(Canvas pCanvas, float RenderDelta)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(float*)&params[4] = RenderDelta;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderMenus, params.ptr, cast(void*)0);
	}
	void PreClientTravel(ScriptString PendingURL, Actor.ETravelType TravelType, bool bIsSeamlessTravel)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PendingURL;
		*cast(Actor.ETravelType*)&params[12] = TravelType;
		*cast(bool*)&params[16] = bIsSeamlessTravel;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreClientTravel, params.ptr, cast(void*)0);
	}
}
