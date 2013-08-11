module UnrealScript.GameFramework.MobilePlayerInput;

import ScriptClasses;
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
	public static immutable auto NumTouchDataEntries = 5;
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
		public @property final bool bInUse() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x1) != 0; }
		public @property final bool bInUse(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x1; } return val; }
		private ubyte __bInUse[4];
		// WARNING: Property 'State' has the same name as a defined type!
		public @property final auto ref MobileInputZone Zone() { return *cast(MobileInputZone*)(cast(size_t)&this + 44); }
		private ubyte __Zone[4];
		public @property final auto ref int Handle() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Handle[4];
		public @property final auto ref ScriptArray!(MobilePlayerInput.TouchDataEvent) Events() { return *cast(ScriptArray!(MobilePlayerInput.TouchDataEvent)*)(cast(size_t)&this + 52); }
		private ubyte __Events[12];
		public @property final auto ref float LastActiveTime() { return *cast(float*)(cast(size_t)&this + 64); }
		private ubyte __LastActiveTime[4];
		public @property final auto ref float MoveDeltaTime() { return *cast(float*)(cast(size_t)&this + 36); }
		private ubyte __MoveDeltaTime[4];
		public @property final auto ref UObject.Double MoveEventDeviceTime() { return *cast(UObject.Double*)(cast(size_t)&this + 28); }
		private ubyte __MoveEventDeviceTime[8];
		public @property final auto ref float TouchDuration() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __TouchDuration[4];
		public @property final auto ref UObject.Double InitialDeviceTime() { return *cast(UObject.Double*)(cast(size_t)&this + 16); }
		private ubyte __InitialDeviceTime[8];
		public @property final auto ref float TotalMoveDistance() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __TotalMoveDistance[4];
		public @property final auto ref UObject.Vector2D Location() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 4); }
		private ubyte __Location[8];
	}
	struct MobileInputGroup
	{
		public @property final auto ref ScriptArray!(MobileInputZone) AssociatedZones() { return *cast(ScriptArray!(MobileInputZone)*)(cast(size_t)&this + 12); }
		private ubyte __AssociatedZones[12];
		public @property final auto ref ScriptString GroupName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __GroupName[12];
	}
	struct MobileInputZoneClassMap
	{
		public @property final auto ref ScriptClass ClassType() { return *cast(ScriptClass*)(cast(size_t)&this + 12); }
		private ubyte __ClassType[4];
		public @property final auto ref ScriptString Name() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __Name[12];
	}
	struct TouchDataEvent
	{
		public @property final auto ref UObject.Double DeviceTime() { return *cast(UObject.Double*)(cast(size_t)&this + 12); }
		private ubyte __DeviceTime[8];
		public @property final auto ref UObject.Vector2D Location() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 4); }
		private ubyte __Location[8];
		public @property final auto ref MobileInputZone.EZoneTouchEvent EventType() { return *cast(MobileInputZone.EZoneTouchEvent*)(cast(size_t)&this + 0); }
		private ubyte __EventType[1];
	}
	public @property final auto ref Vector DeviceAccelerometerRawData() { return *cast(Vector*)(cast(size_t)cast(void*)this + 928); }
	public @property final bool bDeviceHasGyroscope() { return (*cast(uint*)(cast(size_t)cast(void*)this + 764) & 0x10) != 0; }
	public @property final bool bDeviceHasGyroscope(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 764) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 764) &= ~0x10; } return val; }
	public @property final auto ref Vector DeviceGyroRawData() { return *cast(Vector*)(cast(size_t)cast(void*)this + 916); }
	public @property final auto ref Vector DeviceMotionAttitude() { return *cast(Vector*)(cast(size_t)cast(void*)this + 844); }
	public @property final auto ref Vector DeviceMotionRotationRate() { return *cast(Vector*)(cast(size_t)cast(void*)this + 856); }
	public @property final auto ref Vector DeviceMotionGravity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 868); }
	public @property final auto ref Vector DeviceMotionAcceleration() { return *cast(Vector*)(cast(size_t)cast(void*)this + 880); }
	public @property final auto ref MobilePlayerInput.TouchData Touches() { return *cast(MobilePlayerInput.TouchData*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref float MobileYaw() { return *cast(float*)(cast(size_t)cast(void*)this + 780); }
	public @property final auto ref float MobileYawCenter() { return *cast(float*)(cast(size_t)cast(void*)this + 784); }
	public @property final auto ref float MobileYawMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 788); }
	public @property final auto ref float MobilePitch() { return *cast(float*)(cast(size_t)cast(void*)this + 768); }
	public @property final auto ref float MobilePitchCenter() { return *cast(float*)(cast(size_t)cast(void*)this + 772); }
	public @property final auto ref float MobilePitchMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 776); }
	public @property final auto ref ScriptArray!(MobilePlayerInput.MobileInputGroup) MobileInputGroups() { return *cast(ScriptArray!(MobilePlayerInput.MobileInputGroup)*)(cast(size_t)cast(void*)this + 724); }
	public @property final auto ref ScriptArray!(MobileInputZone) MobileInputZones() { return *cast(ScriptArray!(MobileInputZone)*)(cast(size_t)cast(void*)this + 740); }
	public @property final auto ref ScriptArray!(MobilePlayerInput.MobileInputZoneClassMap) MobileInputZoneClasses() { return *cast(ScriptArray!(MobilePlayerInput.MobileInputZoneClassMap)*)(cast(size_t)cast(void*)this + 752); }
	public @property final auto ref ScriptArray!(MobileMenuScene) MobileMenuStack() { return *cast(ScriptArray!(MobileMenuScene)*)(cast(size_t)cast(void*)this + 816); }
	public @property final auto ref ScriptArray!(SeqEvent_MobileBase) MobileSeqEventHandlers() { return *cast(ScriptArray!(SeqEvent_MobileBase)*)(cast(size_t)cast(void*)this + 892); }
	public @property final auto ref ScriptArray!(SeqEvent_MobileRawInput) MobileRawInputSeqEventHandlers() { return *cast(ScriptArray!(SeqEvent_MobileRawInput)*)(cast(size_t)cast(void*)this + 904); }
	public @property final auto ref float MobileInactiveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 840); }
	public @property final auto ref ScriptString NativeDebugString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 828); }
	public @property final auto ref float ZoneTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 812); }
	public @property final auto ref float MobileTapRepeatTime() { return *cast(float*)(cast(size_t)cast(void*)this + 808); }
	public @property final auto ref float MobileMinHoldForTap() { return *cast(float*)(cast(size_t)cast(void*)this + 804); }
	public @property final auto ref float MobileDoubleTapTime() { return *cast(float*)(cast(size_t)cast(void*)this + 800); }
	public @property final auto ref float MobileYawDeadzoneSize() { return *cast(float*)(cast(size_t)cast(void*)this + 796); }
	public @property final auto ref float MobilePitchDeadzoneSize() { return *cast(float*)(cast(size_t)cast(void*)this + 792); }
	public @property final bool bDeviceHasAccelerometer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 764) & 0x20) != 0; }
	public @property final bool bDeviceHasAccelerometer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 764) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 764) &= ~0x20; } return val; }
	public @property final bool bFakeMobileTouches() { return (*cast(uint*)(cast(size_t)cast(void*)this + 764) & 0x8) != 0; }
	public @property final bool bFakeMobileTouches(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 764) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 764) &= ~0x8; } return val; }
	public @property final bool bDisableTouchInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 764) & 0x4) != 0; }
	public @property final bool bDisableTouchInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 764) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 764) &= ~0x4; } return val; }
	public @property final bool bAllowTouchesInCinematic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 764) & 0x2) != 0; }
	public @property final bool bAllowTouchesInCinematic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 764) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 764) &= ~0x2; } return val; }
	public @property final bool bSupportsAccelerometer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 764) & 0x1) != 0; }
	public @property final bool bSupportsAccelerometer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 764) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 764) &= ~0x1; } return val; }
	public @property final auto ref int CurrentMobileGroup() { return *cast(int*)(cast(size_t)cast(void*)this + 736); }
	public @property final auto ref MobileMenuObject InteractiveObject() { return *cast(MobileMenuObject*)(cast(size_t)cast(void*)this + 720); }
	final bool HasZones()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32366], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final ScriptArray!(MobileInputZone) GetCurrentZones()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32368], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(MobileInputZone)*)params.ptr;
	}
	final MobileMenuScene OpenMenuScene(ScriptClass SceneClass, ScriptString Mode)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = SceneClass;
		*cast(ScriptString*)&params[4] = Mode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32638], params.ptr, cast(void*)0);
		return *cast(MobileMenuScene*)&params[16];
	}
	final void OnInputTouch(int Handle, MobileInputZone.EZoneTouchEvent Type, UObject.Vector2D TouchLocation, float DeviceTimestamp)
	{
		ubyte params[17];
		params[] = 0;
		*cast(int*)params.ptr = Handle;
		*cast(MobileInputZone.EZoneTouchEvent*)&params[4] = Type;
		*cast(UObject.Vector2D*)&params[8] = TouchLocation;
		*cast(float*)&params[16] = DeviceTimestamp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32759], params.ptr, cast(void*)0);
	}
	final bool OnPreviewTouch(float X, float Y)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32761], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void OnTouchNotHandledInMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32763], cast(void*)0, cast(void*)0);
	}
	final void OnMobileMotion(PlayerInput pPlayerInput, Vector CurrentAttitude, Vector CurrentRotationRate, Vector CurrentGravity, Vector CurrentAcceleration)
	{
		ubyte params[52];
		params[] = 0;
		*cast(PlayerInput*)params.ptr = pPlayerInput;
		*cast(Vector*)&params[4] = CurrentAttitude;
		*cast(Vector*)&params[16] = CurrentRotationRate;
		*cast(Vector*)&params[28] = CurrentGravity;
		*cast(Vector*)&params[40] = CurrentAcceleration;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32765], params.ptr, cast(void*)0);
	}
	final void NativeInitializeInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32798], cast(void*)0, cast(void*)0);
	}
	final void NativeInitializeInputZones()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32799], cast(void*)0, cast(void*)0);
	}
	final void SendInputKey(ScriptName Key, UObject.EInputEvent Event, float AmountDepressed)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Key;
		*cast(UObject.EInputEvent*)&params[8] = Event;
		*cast(float*)&params[12] = AmountDepressed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32800], params.ptr, cast(void*)0);
	}
	final void SendInputAxis(ScriptName Key, float Delta, float DeltaTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Key;
		*cast(float*)&params[8] = Delta;
		*cast(float*)&params[12] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32804], params.ptr, cast(void*)0);
	}
	final void InitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32808], cast(void*)0, cast(void*)0);
	}
	final void ClientInitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32809], cast(void*)0, cast(void*)0);
	}
	final void InitTouchSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32810], cast(void*)0, cast(void*)0);
	}
	final void InitializeInputZones()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32811], cast(void*)0, cast(void*)0);
	}
	final void RefreshKismetLinks()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32816], cast(void*)0, cast(void*)0);
	}
	final void AddKismetEventHandler(SeqEvent_MobileBase NewHandler)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqEvent_MobileBase*)params.ptr = NewHandler;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32821], params.ptr, cast(void*)0);
	}
	final void AddKismetRawInputEventHandler(SeqEvent_MobileRawInput NewHandler)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqEvent_MobileRawInput*)params.ptr = NewHandler;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32824], params.ptr, cast(void*)0);
	}
	final MobileInputZone FindZone(ScriptString ZoneName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ZoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32827], params.ptr, cast(void*)0);
		return *cast(MobileInputZone*)&params[12];
	}
	final MobileInputZone FindorAddZone(ScriptString ZoneName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ZoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32831], params.ptr, cast(void*)0);
		return *cast(MobileInputZone*)&params[12];
	}
	final void CloseMenuScene(MobileMenuScene SceneToClose)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobileMenuScene*)params.ptr = SceneToClose;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32842], params.ptr, cast(void*)0);
	}
	final void CloseAllMenus()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32847], cast(void*)0, cast(void*)0);
	}
	final void RenderMenus(Canvas pCanvas, float RenderDelta)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(float*)&params[4] = RenderDelta;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32848], params.ptr, cast(void*)0);
	}
	final void PreClientTravel(ScriptString PendingURL, Actor.ETravelType TravelType, bool bIsSeamlessTravel)
	{
		ubyte params[17];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PendingURL;
		*cast(Actor.ETravelType*)&params[12] = TravelType;
		*cast(bool*)&params[16] = bIsSeamlessTravel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32852], params.ptr, cast(void*)0);
	}
}
