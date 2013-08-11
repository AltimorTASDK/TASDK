module UnrealScript.GameFramework.MobileInputZone;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.GameFramework.SeqEvent_MobileZoneBase;
import UnrealScript.GameFramework.MobilePlayerInput;

extern(C++) interface MobileInputZone : UObject
{
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
		public @property final auto ref float U() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __U[4];
		public @property final auto ref float V() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __V[4];
		public @property final auto ref float UL() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __UL[4];
		public @property final auto ref float VL() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __VL[4];
	}
	public @property final bool bIsInvisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x200) != 0; }
	public @property final bool bIsInvisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x200; } return val; }
	public @property final auto ref UObject.Color RenderColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref float AnimatingFadeOpacity() { return *cast(float*)(cast(size_t)cast(void*)this + 376); }
	// WARNING: Property 'State' has the same name as a defined type!
	public @property final auto ref float InactiveAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref float TransitionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref float ActivateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref float DeactivateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref MobileInputZone.EZoneType Type() { return *cast(MobileInputZone.EZoneType*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref float X() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref float Y() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref float SizeX() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref float SizeY() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref Texture2D OverrideTexture1() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref MobileInputZone.TextureUVs OverrideUVs1() { return *cast(MobileInputZone.TextureUVs*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref Texture2D OverrideTexture2() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref MobileInputZone.TextureUVs OverrideUVs2() { return *cast(MobileInputZone.TextureUVs*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float ActiveSizeX() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref float ActiveSizeY() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref ScriptString Caption() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref float CaptionXAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref float CaptionYAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref UObject.Vector2D CurrentCenter() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref UObject.Vector2D CurrentLocation() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 268); }
	public @property final bool bRenderGuides() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x8000) != 0; }
	public @property final bool bRenderGuides(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x8000; } return val; }
	public @property final auto ref MobileInputZone.EZoneSlideType SlideType() { return *cast(MobileInputZone.EZoneSlideType*)(cast(size_t)cast(void*)this + 62); }
	public @property final auto ref ScriptArray!(SeqEvent_MobileZoneBase) MobileSeqEventHandlers() { return *cast(ScriptArray!(SeqEvent_MobileZoneBase)*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref float LastWentActiveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 420); }
	public @property final auto ref float TotalActiveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 416); }
	public @property final auto ref UObject.Vector2D LastAxisValues() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref UObject.Vector2D EscapeVelocity() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref MobilePlayerInput InputOwner() { return *cast(MobilePlayerInput*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref float TimeSinceLastTapRepeat() { return *cast(float*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref float LastTouchTime() { return *cast(float*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref int PreviousLocationCount() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref float PreviousMoveDeltaTimes() { return *cast(float*)(cast(size_t)cast(void*)this + 340); }
	public @property final auto ref UObject.Vector2D PreviousLocations() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref UObject.Vector2D InitialCenter() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref UObject.Vector2D InitialLocation() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref ScriptString OverrideTexture2Name() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref ScriptString OverrideTexture1Name() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref float TapDistanceConstraint() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float ResetCenterAfterInactivityTime() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref float Border() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref float AuthoredGlobalScale() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
	public @property final bool bIsDoubleTapAndHold() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x10000) != 0; }
	public @property final bool bIsDoubleTapAndHold(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x10000; } return val; }
	public @property final bool bAllowFirstDeltaForTrackballZone() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x4000) != 0; }
	public @property final bool bAllowFirstDeltaForTrackballZone(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x4000; } return val; }
	public @property final bool bUseGentleTransitions() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x2000) != 0; }
	public @property final bool bUseGentleTransitions(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x2000; } return val; }
	public @property final bool bFloatingTiltZone() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1000) != 0; }
	public @property final bool bFloatingTiltZone(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1000; } return val; }
	public @property final bool bCenterOnEvent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x800) != 0; }
	public @property final bool bCenterOnEvent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x800; } return val; }
	public @property final bool bQuickDoubleTap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x400) != 0; }
	public @property final bool bQuickDoubleTap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x400; } return val; }
	public @property final bool bCenterY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x100) != 0; }
	public @property final bool bCenterY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x100; } return val; }
	public @property final bool bCenterX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x80) != 0; }
	public @property final bool bCenterX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x80; } return val; }
	public @property final bool bSizeYFromSizeX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x40) != 0; }
	public @property final bool bSizeYFromSizeX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x40; } return val; }
	public @property final bool bActiveSizeYFromX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x20) != 0; }
	public @property final bool bActiveSizeYFromX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x20; } return val; }
	public @property final bool bRelativeSizeY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x10) != 0; }
	public @property final bool bRelativeSizeY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x10; } return val; }
	public @property final bool bRelativeSizeX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x8) != 0; }
	public @property final bool bRelativeSizeX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x8; } return val; }
	public @property final bool bRelativeY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x4) != 0; }
	public @property final bool bRelativeY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x4; } return val; }
	public @property final bool bRelativeX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x2) != 0; }
	public @property final bool bRelativeX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x2; } return val; }
	public @property final bool bScalePawnMovement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
	public @property final bool bScalePawnMovement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
	public @property final auto ref float EscapeVelocityStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref float Smoothing() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref float Acceleration() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float HorizMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float VertMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ScriptName DoubleTapInputKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref ScriptName TapInputKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref ScriptName HorizontalInputKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref ScriptName InputKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
	final bool OnPreDrawZone(MobileInputZone Zone, Canvas pCanvas)
	{
		ubyte params[12];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		*cast(Canvas*)&params[4] = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32378], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void OnPostDrawZone(MobileInputZone Zone, Canvas pCanvas)
	{
		ubyte params[8];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		*cast(Canvas*)&params[4] = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32471], params.ptr, cast(void*)0);
	}
	final bool OnProcessSlide(MobileInputZone Zone, MobileInputZone.EZoneTouchEvent EventType, int SlideValue, UObject.Vector2D ViewportSize)
	{
		ubyte params[21];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		*cast(MobileInputZone.EZoneTouchEvent*)&params[4] = EventType;
		*cast(int*)&params[8] = SlideValue;
		*cast(UObject.Vector2D*)&params[12] = ViewportSize;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32473], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final bool OnDoubleTapDelegate(MobileInputZone Zone, MobileInputZone.EZoneTouchEvent EventType, UObject.Vector2D TouchLocation)
	{
		ubyte params[17];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		*cast(MobileInputZone.EZoneTouchEvent*)&params[4] = EventType;
		*cast(UObject.Vector2D*)&params[8] = TouchLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32475], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool OnTapDelegate(MobileInputZone Zone, MobileInputZone.EZoneTouchEvent EventType, UObject.Vector2D TouchLocation)
	{
		ubyte params[17];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		*cast(MobileInputZone.EZoneTouchEvent*)&params[4] = EventType;
		*cast(UObject.Vector2D*)&params[8] = TouchLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32477], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool OnProcessInputDelegate(MobileInputZone Zone, float DeltaTime, int Handle, MobileInputZone.EZoneTouchEvent EventType, UObject.Vector2D TouchLocation)
	{
		ubyte params[25];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		*cast(float*)&params[4] = DeltaTime;
		*cast(int*)&params[8] = Handle;
		*cast(MobileInputZone.EZoneTouchEvent*)&params[12] = EventType;
		*cast(UObject.Vector2D*)&params[16] = TouchLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32479], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final void ActivateZone()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32522], cast(void*)0, cast(void*)0);
	}
	final void DeactivateZone()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32523], cast(void*)0, cast(void*)0);
	}
	final void AddKismetEventHandler(SeqEvent_MobileZoneBase NewHandler)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqEvent_MobileZoneBase*)params.ptr = NewHandler;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32547], params.ptr, cast(void*)0);
	}
}
