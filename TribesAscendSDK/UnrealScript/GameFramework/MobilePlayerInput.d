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
public extern(D):
	enum NumTouchDataEntries = 5;
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
		@property final
		{
			auto ref
			{
				// WARNING: Property 'State' has the same name as a defined type!
				MobileInputZone Zone() { return *cast(MobileInputZone*)(cast(size_t)&this + 44); }
				int Handle() { return *cast(int*)(cast(size_t)&this + 0); }
				ScriptArray!(MobilePlayerInput.TouchDataEvent) Events() { return *cast(ScriptArray!(MobilePlayerInput.TouchDataEvent)*)(cast(size_t)&this + 52); }
				float LastActiveTime() { return *cast(float*)(cast(size_t)&this + 64); }
				float MoveDeltaTime() { return *cast(float*)(cast(size_t)&this + 36); }
				UObject.Double MoveEventDeviceTime() { return *cast(UObject.Double*)(cast(size_t)&this + 28); }
				float TouchDuration() { return *cast(float*)(cast(size_t)&this + 24); }
				UObject.Double InitialDeviceTime() { return *cast(UObject.Double*)(cast(size_t)&this + 16); }
				float TotalMoveDistance() { return *cast(float*)(cast(size_t)&this + 12); }
				UObject.Vector2D Location() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 4); }
			}
			bool bInUse() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x1) != 0; }
			bool bInUse(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x1; } return val; }
		}
	}
	struct MobileInputGroup
	{
		private ubyte __buffer__[24];
	public extern(D):
		@property final auto ref
		{
			ScriptArray!(MobileInputZone) AssociatedZones() { return *cast(ScriptArray!(MobileInputZone)*)(cast(size_t)&this + 12); }
			ScriptString GroupName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	struct MobileInputZoneClassMap
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			ScriptClass ClassType() { return *cast(ScriptClass*)(cast(size_t)&this + 12); }
			ScriptString Name() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	struct TouchDataEvent
	{
		private ubyte __buffer__[20];
	public extern(D):
		@property final auto ref
		{
			UObject.Double DeviceTime() { return *cast(UObject.Double*)(cast(size_t)&this + 12); }
			UObject.Vector2D Location() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 4); }
			MobileInputZone.EZoneTouchEvent EventType() { return *cast(MobileInputZone.EZoneTouchEvent*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector DeviceAccelerometerRawData() { return *cast(Vector*)(cast(size_t)cast(void*)this + 928); }
			Vector DeviceGyroRawData() { return *cast(Vector*)(cast(size_t)cast(void*)this + 916); }
			Vector DeviceMotionAttitude() { return *cast(Vector*)(cast(size_t)cast(void*)this + 844); }
			Vector DeviceMotionRotationRate() { return *cast(Vector*)(cast(size_t)cast(void*)this + 856); }
			Vector DeviceMotionGravity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 868); }
			Vector DeviceMotionAcceleration() { return *cast(Vector*)(cast(size_t)cast(void*)this + 880); }
			MobilePlayerInput.TouchData Touches() { return *cast(MobilePlayerInput.TouchData*)(cast(size_t)cast(void*)this + 380); }
			float MobileYaw() { return *cast(float*)(cast(size_t)cast(void*)this + 780); }
			float MobileYawCenter() { return *cast(float*)(cast(size_t)cast(void*)this + 784); }
			float MobileYawMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 788); }
			float MobilePitch() { return *cast(float*)(cast(size_t)cast(void*)this + 768); }
			float MobilePitchCenter() { return *cast(float*)(cast(size_t)cast(void*)this + 772); }
			float MobilePitchMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 776); }
			ScriptArray!(MobilePlayerInput.MobileInputGroup) MobileInputGroups() { return *cast(ScriptArray!(MobilePlayerInput.MobileInputGroup)*)(cast(size_t)cast(void*)this + 724); }
			ScriptArray!(MobileInputZone) MobileInputZones() { return *cast(ScriptArray!(MobileInputZone)*)(cast(size_t)cast(void*)this + 740); }
			ScriptArray!(MobilePlayerInput.MobileInputZoneClassMap) MobileInputZoneClasses() { return *cast(ScriptArray!(MobilePlayerInput.MobileInputZoneClassMap)*)(cast(size_t)cast(void*)this + 752); }
			ScriptArray!(MobileMenuScene) MobileMenuStack() { return *cast(ScriptArray!(MobileMenuScene)*)(cast(size_t)cast(void*)this + 816); }
			ScriptArray!(SeqEvent_MobileBase) MobileSeqEventHandlers() { return *cast(ScriptArray!(SeqEvent_MobileBase)*)(cast(size_t)cast(void*)this + 892); }
			ScriptArray!(SeqEvent_MobileRawInput) MobileRawInputSeqEventHandlers() { return *cast(ScriptArray!(SeqEvent_MobileRawInput)*)(cast(size_t)cast(void*)this + 904); }
			float MobileInactiveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 840); }
			ScriptString NativeDebugString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 828); }
			float ZoneTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 812); }
			float MobileTapRepeatTime() { return *cast(float*)(cast(size_t)cast(void*)this + 808); }
			float MobileMinHoldForTap() { return *cast(float*)(cast(size_t)cast(void*)this + 804); }
			float MobileDoubleTapTime() { return *cast(float*)(cast(size_t)cast(void*)this + 800); }
			float MobileYawDeadzoneSize() { return *cast(float*)(cast(size_t)cast(void*)this + 796); }
			float MobilePitchDeadzoneSize() { return *cast(float*)(cast(size_t)cast(void*)this + 792); }
			int CurrentMobileGroup() { return *cast(int*)(cast(size_t)cast(void*)this + 736); }
			MobileMenuObject InteractiveObject() { return *cast(MobileMenuObject*)(cast(size_t)cast(void*)this + 720); }
		}
		bool bDeviceHasGyroscope() { return (*cast(uint*)(cast(size_t)cast(void*)this + 764) & 0x10) != 0; }
		bool bDeviceHasGyroscope(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 764) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 764) &= ~0x10; } return val; }
		bool bDeviceHasAccelerometer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 764) & 0x20) != 0; }
		bool bDeviceHasAccelerometer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 764) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 764) &= ~0x20; } return val; }
		bool bFakeMobileTouches() { return (*cast(uint*)(cast(size_t)cast(void*)this + 764) & 0x8) != 0; }
		bool bFakeMobileTouches(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 764) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 764) &= ~0x8; } return val; }
		bool bDisableTouchInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 764) & 0x4) != 0; }
		bool bDisableTouchInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 764) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 764) &= ~0x4; } return val; }
		bool bAllowTouchesInCinematic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 764) & 0x2) != 0; }
		bool bAllowTouchesInCinematic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 764) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 764) &= ~0x2; } return val; }
		bool bSupportsAccelerometer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 764) & 0x1) != 0; }
		bool bSupportsAccelerometer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 764) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 764) &= ~0x1; } return val; }
	}
final:
	bool HasZones()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32366], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	ScriptArray!(MobileInputZone) GetCurrentZones()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32368], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(MobileInputZone)*)params.ptr;
	}
	MobileMenuScene OpenMenuScene(ScriptClass SceneClass, ScriptString Mode)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = SceneClass;
		*cast(ScriptString*)&params[4] = Mode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32638], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32759], params.ptr, cast(void*)0);
	}
	bool OnPreviewTouch(float X, float Y)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32761], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void OnTouchNotHandledInMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32763], cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32765], params.ptr, cast(void*)0);
	}
	void NativeInitializeInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32798], cast(void*)0, cast(void*)0);
	}
	void NativeInitializeInputZones()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32799], cast(void*)0, cast(void*)0);
	}
	void SendInputKey(ScriptName Key, UObject.EInputEvent Event, float AmountDepressed)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Key;
		*cast(UObject.EInputEvent*)&params[8] = Event;
		*cast(float*)&params[12] = AmountDepressed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32800], params.ptr, cast(void*)0);
	}
	void SendInputAxis(ScriptName Key, float Delta, float DeltaTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Key;
		*cast(float*)&params[8] = Delta;
		*cast(float*)&params[12] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32804], params.ptr, cast(void*)0);
	}
	void InitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32808], cast(void*)0, cast(void*)0);
	}
	void ClientInitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32809], cast(void*)0, cast(void*)0);
	}
	void InitTouchSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32810], cast(void*)0, cast(void*)0);
	}
	void InitializeInputZones()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32811], cast(void*)0, cast(void*)0);
	}
	void RefreshKismetLinks()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32816], cast(void*)0, cast(void*)0);
	}
	void AddKismetEventHandler(SeqEvent_MobileBase NewHandler)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqEvent_MobileBase*)params.ptr = NewHandler;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32821], params.ptr, cast(void*)0);
	}
	void AddKismetRawInputEventHandler(SeqEvent_MobileRawInput NewHandler)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqEvent_MobileRawInput*)params.ptr = NewHandler;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32824], params.ptr, cast(void*)0);
	}
	MobileInputZone FindZone(ScriptString ZoneName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ZoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32827], params.ptr, cast(void*)0);
		return *cast(MobileInputZone*)&params[12];
	}
	MobileInputZone FindorAddZone(ScriptString ZoneName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ZoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32831], params.ptr, cast(void*)0);
		return *cast(MobileInputZone*)&params[12];
	}
	void CloseMenuScene(MobileMenuScene SceneToClose)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobileMenuScene*)params.ptr = SceneToClose;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32842], params.ptr, cast(void*)0);
	}
	void CloseAllMenus()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32847], cast(void*)0, cast(void*)0);
	}
	void RenderMenus(Canvas pCanvas, float RenderDelta)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(float*)&params[4] = RenderDelta;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32848], params.ptr, cast(void*)0);
	}
	void PreClientTravel(ScriptString PendingURL, Actor.ETravelType TravelType, bool bIsSeamlessTravel)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PendingURL;
		*cast(Actor.ETravelType*)&params[12] = TravelType;
		*cast(bool*)&params[16] = bIsSeamlessTravel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32852], params.ptr, cast(void*)0);
	}
}
