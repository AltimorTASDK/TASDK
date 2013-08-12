module UnrealScript.GameFramework.MobileInputZone;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.GameFramework.SeqEvent_MobileZoneBase;
import UnrealScript.GameFramework.MobilePlayerInput;

extern(C++) interface MobileInputZone : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.MobileInputZone")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnPreDrawZone;
			ScriptFunction mOnPostDrawZone;
			ScriptFunction mOnProcessSlide;
			ScriptFunction mOnDoubleTapDelegate;
			ScriptFunction mOnTapDelegate;
			ScriptFunction mOnProcessInputDelegate;
			ScriptFunction mActivateZone;
			ScriptFunction mDeactivateZone;
			ScriptFunction mAddKismetEventHandler;
		}
		public @property static final
		{
			ScriptFunction OnPreDrawZone() { return mOnPreDrawZone ? mOnPreDrawZone : (mOnPreDrawZone = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileInputZone.OnPreDrawZone")); }
			ScriptFunction OnPostDrawZone() { return mOnPostDrawZone ? mOnPostDrawZone : (mOnPostDrawZone = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileInputZone.OnPostDrawZone")); }
			ScriptFunction OnProcessSlide() { return mOnProcessSlide ? mOnProcessSlide : (mOnProcessSlide = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileInputZone.OnProcessSlide")); }
			ScriptFunction OnDoubleTapDelegate() { return mOnDoubleTapDelegate ? mOnDoubleTapDelegate : (mOnDoubleTapDelegate = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileInputZone.OnDoubleTapDelegate")); }
			ScriptFunction OnTapDelegate() { return mOnTapDelegate ? mOnTapDelegate : (mOnTapDelegate = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileInputZone.OnTapDelegate")); }
			ScriptFunction OnProcessInputDelegate() { return mOnProcessInputDelegate ? mOnProcessInputDelegate : (mOnProcessInputDelegate = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileInputZone.OnProcessInputDelegate")); }
			ScriptFunction ActivateZone() { return mActivateZone ? mActivateZone : (mActivateZone = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileInputZone.ActivateZone")); }
			ScriptFunction DeactivateZone() { return mDeactivateZone ? mDeactivateZone : (mDeactivateZone = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileInputZone.DeactivateZone")); }
			ScriptFunction AddKismetEventHandler() { return mAddKismetEventHandler ? mAddKismetEventHandler : (mAddKismetEventHandler = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileInputZone.AddKismetEventHandler")); }
		}
	}
	enum EZoneType : ubyte
	{
		ZoneType_Button = 0,
		ZoneType_Joystick = 1,
		ZoneType_Trackball = 2,
		ZoneType_Slider = 3,
		ZoneType_MAX = 4,
	}
	enum EZoneState : ubyte
	{
		ZoneState_Inactive = 0,
		ZoneState_Activating = 1,
		ZoneState_Active = 2,
		ZoneState_Deactivating = 3,
		ZoneState_MAX = 4,
	}
	enum EZoneTouchEvent : ubyte
	{
		ZoneEvent_Touch = 0,
		ZoneEvent_Update = 1,
		ZoneEvent_Stationary = 2,
		ZoneEvent_UnTouch = 3,
		ZoneEvent_Cancelled = 4,
		ZoneEvent_MAX = 5,
	}
	enum EZoneSlideType : ubyte
	{
		ZoneSlide_UpDown = 0,
		ZoneSlide_LeftRight = 1,
		ZoneSlide_MAX = 2,
	}
	struct TextureUVs
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.MobileInputZone.TextureUVs")); }
		@property final auto ref
		{
			float U() { return *cast(float*)(cast(size_t)&this + 0); }
			float V() { return *cast(float*)(cast(size_t)&this + 4); }
			float UL() { return *cast(float*)(cast(size_t)&this + 8); }
			float VL() { return *cast(float*)(cast(size_t)&this + 12); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.Color RenderColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 180); }
			float AnimatingFadeOpacity() { return *cast(float*)(cast(size_t)cast(void*)this + 376); }
			// WARNING: Property 'State' has the same name as a defined type!
			float InactiveAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
			float TransitionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 384); }
			float ActivateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
			float DeactivateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
			MobileInputZone.EZoneType Type() { return *cast(MobileInputZone.EZoneType*)(cast(size_t)cast(void*)this + 60); }
			float X() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
			float Y() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
			float SizeX() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
			float SizeY() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
			Texture2D OverrideTexture1() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 196); }
			MobileInputZone.TextureUVs OverrideUVs1() { return *cast(MobileInputZone.TextureUVs*)(cast(size_t)cast(void*)this + 212); }
			Texture2D OverrideTexture2() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 228); }
			MobileInputZone.TextureUVs OverrideUVs2() { return *cast(MobileInputZone.TextureUVs*)(cast(size_t)cast(void*)this + 244); }
			float ActiveSizeX() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
			float ActiveSizeY() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
			ScriptString Caption() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 64); }
			float CaptionXAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
			float CaptionYAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
			UObject.Vector2D CurrentCenter() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 276); }
			UObject.Vector2D CurrentLocation() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 268); }
			MobileInputZone.EZoneSlideType SlideType() { return *cast(MobileInputZone.EZoneSlideType*)(cast(size_t)cast(void*)this + 62); }
			ScriptArray!(SeqEvent_MobileZoneBase) MobileSeqEventHandlers() { return *cast(ScriptArray!(SeqEvent_MobileZoneBase)*)(cast(size_t)cast(void*)this + 396); }
			float LastWentActiveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 420); }
			float TotalActiveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 416); }
			UObject.Vector2D LastAxisValues() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 408); }
			UObject.Vector2D EscapeVelocity() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 388); }
			MobilePlayerInput InputOwner() { return *cast(MobilePlayerInput*)(cast(size_t)cast(void*)this + 380); }
			float TimeSinceLastTapRepeat() { return *cast(float*)(cast(size_t)cast(void*)this + 372); }
			float LastTouchTime() { return *cast(float*)(cast(size_t)cast(void*)this + 368); }
			int PreviousLocationCount() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
			float PreviousMoveDeltaTimes() { return *cast(float*)(cast(size_t)cast(void*)this + 340); }
			UObject.Vector2D PreviousLocations() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 292); }
			UObject.Vector2D InitialCenter() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 284); }
			UObject.Vector2D InitialLocation() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 260); }
			ScriptString OverrideTexture2Name() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
			ScriptString OverrideTexture1Name() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 200); }
			float TapDistanceConstraint() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
			float ResetCenterAfterInactivityTime() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			float Border() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
			float AuthoredGlobalScale() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
			float EscapeVelocityStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			float Smoothing() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float Acceleration() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			float HorizMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			float VertMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			ScriptName DoubleTapInputKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 100); }
			ScriptName TapInputKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 92); }
			ScriptName HorizontalInputKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 84); }
			ScriptName InputKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
		}
		bool bIsInvisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x200) != 0; }
		bool bIsInvisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x200; } return val; }
		bool bRenderGuides() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x8000) != 0; }
		bool bRenderGuides(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x8000; } return val; }
		bool bIsDoubleTapAndHold() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x10000) != 0; }
		bool bIsDoubleTapAndHold(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x10000; } return val; }
		bool bAllowFirstDeltaForTrackballZone() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x4000) != 0; }
		bool bAllowFirstDeltaForTrackballZone(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x4000; } return val; }
		bool bUseGentleTransitions() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x2000) != 0; }
		bool bUseGentleTransitions(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x2000; } return val; }
		bool bFloatingTiltZone() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1000) != 0; }
		bool bFloatingTiltZone(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1000; } return val; }
		bool bCenterOnEvent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x800) != 0; }
		bool bCenterOnEvent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x800; } return val; }
		bool bQuickDoubleTap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x400) != 0; }
		bool bQuickDoubleTap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x400; } return val; }
		bool bCenterY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x100) != 0; }
		bool bCenterY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x100; } return val; }
		bool bCenterX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x80) != 0; }
		bool bCenterX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x80; } return val; }
		bool bSizeYFromSizeX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x40) != 0; }
		bool bSizeYFromSizeX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x40; } return val; }
		bool bActiveSizeYFromX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x20) != 0; }
		bool bActiveSizeYFromX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x20; } return val; }
		bool bRelativeSizeY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x10) != 0; }
		bool bRelativeSizeY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x10; } return val; }
		bool bRelativeSizeX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x8) != 0; }
		bool bRelativeSizeX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x8; } return val; }
		bool bRelativeY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x4) != 0; }
		bool bRelativeY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x4; } return val; }
		bool bRelativeX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x2) != 0; }
		bool bRelativeX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x2; } return val; }
		bool bScalePawnMovement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
		bool bScalePawnMovement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
	}
final:
	bool OnPreDrawZone(MobileInputZone Zone, Canvas pCanvas)
	{
		ubyte params[12];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		*cast(Canvas*)&params[4] = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPreDrawZone, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void OnPostDrawZone(MobileInputZone Zone, Canvas pCanvas)
	{
		ubyte params[8];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		*cast(Canvas*)&params[4] = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPostDrawZone, params.ptr, cast(void*)0);
	}
	bool OnProcessSlide(MobileInputZone Zone, MobileInputZone.EZoneTouchEvent EventType, int SlideValue, UObject.Vector2D ViewportSize)
	{
		ubyte params[24];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		*cast(MobileInputZone.EZoneTouchEvent*)&params[4] = EventType;
		*cast(int*)&params[8] = SlideValue;
		*cast(UObject.Vector2D*)&params[12] = ViewportSize;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnProcessSlide, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	bool OnDoubleTapDelegate(MobileInputZone Zone, MobileInputZone.EZoneTouchEvent EventType, UObject.Vector2D TouchLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		*cast(MobileInputZone.EZoneTouchEvent*)&params[4] = EventType;
		*cast(UObject.Vector2D*)&params[8] = TouchLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDoubleTapDelegate, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool OnTapDelegate(MobileInputZone Zone, MobileInputZone.EZoneTouchEvent EventType, UObject.Vector2D TouchLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		*cast(MobileInputZone.EZoneTouchEvent*)&params[4] = EventType;
		*cast(UObject.Vector2D*)&params[8] = TouchLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTapDelegate, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool OnProcessInputDelegate(MobileInputZone Zone, float DeltaTime, int Handle, MobileInputZone.EZoneTouchEvent EventType, UObject.Vector2D TouchLocation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		*cast(float*)&params[4] = DeltaTime;
		*cast(int*)&params[8] = Handle;
		*cast(MobileInputZone.EZoneTouchEvent*)&params[12] = EventType;
		*cast(UObject.Vector2D*)&params[16] = TouchLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnProcessInputDelegate, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void ActivateZone()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivateZone, cast(void*)0, cast(void*)0);
	}
	void DeactivateZone()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DeactivateZone, cast(void*)0, cast(void*)0);
	}
	void AddKismetEventHandler(SeqEvent_MobileZoneBase NewHandler)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqEvent_MobileZoneBase*)params.ptr = NewHandler;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddKismetEventHandler, params.ptr, cast(void*)0);
	}
}
