module UnrealScript.GameFramework.MobileInputZone;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.GameFramework.SeqEvent_MobileZoneBase;
import UnrealScript.GameFramework.MobilePlayerInput;

extern(C++) interface MobileInputZone : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.MobileInputZone")()); }
	private static __gshared MobileInputZone mDefaultProperties;
	@property final static MobileInputZone DefaultProperties() { mixin(MGDPC!(MobileInputZone, "MobileInputZone GameFramework.Default__MobileInputZone")()); }
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
			ScriptFunction OnPreDrawZone() { mixin(MGF!("mOnPreDrawZone", "Function GameFramework.MobileInputZone.OnPreDrawZone")()); }
			ScriptFunction OnPostDrawZone() { mixin(MGF!("mOnPostDrawZone", "Function GameFramework.MobileInputZone.OnPostDrawZone")()); }
			ScriptFunction OnProcessSlide() { mixin(MGF!("mOnProcessSlide", "Function GameFramework.MobileInputZone.OnProcessSlide")()); }
			ScriptFunction OnDoubleTapDelegate() { mixin(MGF!("mOnDoubleTapDelegate", "Function GameFramework.MobileInputZone.OnDoubleTapDelegate")()); }
			ScriptFunction OnTapDelegate() { mixin(MGF!("mOnTapDelegate", "Function GameFramework.MobileInputZone.OnTapDelegate")()); }
			ScriptFunction OnProcessInputDelegate() { mixin(MGF!("mOnProcessInputDelegate", "Function GameFramework.MobileInputZone.OnProcessInputDelegate")()); }
			ScriptFunction ActivateZone() { mixin(MGF!("mActivateZone", "Function GameFramework.MobileInputZone.ActivateZone")()); }
			ScriptFunction DeactivateZone() { mixin(MGF!("mDeactivateZone", "Function GameFramework.MobileInputZone.DeactivateZone")()); }
			ScriptFunction AddKismetEventHandler() { mixin(MGF!("mAddKismetEventHandler", "Function GameFramework.MobileInputZone.AddKismetEventHandler")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.MobileInputZone.TextureUVs")()); }
		@property final auto ref
		{
			float U() { mixin(MGPS!(float, 0)()); }
			float V() { mixin(MGPS!(float, 4)()); }
			float UL() { mixin(MGPS!(float, 8)()); }
			float VL() { mixin(MGPS!(float, 12)()); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.Color RenderColor() { mixin(MGPC!(UObject.Color, 180)()); }
			float AnimatingFadeOpacity() { mixin(MGPC!(float, 376)()); }
			// WARNING: Property 'State' has the same name as a defined type!
			float InactiveAlpha() { mixin(MGPC!(float, 184)()); }
			float TransitionTime() { mixin(MGPC!(float, 384)()); }
			float ActivateTime() { mixin(MGPC!(float, 172)()); }
			float DeactivateTime() { mixin(MGPC!(float, 176)()); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnPreDrawZone__Delegate'!
			MobileInputZone.EZoneType Type() { mixin(MGPC!(MobileInputZone.EZoneType, 60)()); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnPostDrawZone__Delegate'!
			float X() { mixin(MGPC!(float, 132)()); }
			float Y() { mixin(MGPC!(float, 136)()); }
			float SizeX() { mixin(MGPC!(float, 140)()); }
			float SizeY() { mixin(MGPC!(float, 144)()); }
			Texture2D OverrideTexture1() { mixin(MGPC!(Texture2D, 196)()); }
			MobileInputZone.TextureUVs OverrideUVs1() { mixin(MGPC!(MobileInputZone.TextureUVs, 212)()); }
			Texture2D OverrideTexture2() { mixin(MGPC!(Texture2D, 228)()); }
			MobileInputZone.TextureUVs OverrideUVs2() { mixin(MGPC!(MobileInputZone.TextureUVs, 244)()); }
			float ActiveSizeX() { mixin(MGPC!(float, 148)()); }
			float ActiveSizeY() { mixin(MGPC!(float, 152)()); }
			ScriptString Caption() { mixin(MGPC!(ScriptString, 64)()); }
			float CaptionXAdjustment() { mixin(MGPC!(float, 188)()); }
			float CaptionYAdjustment() { mixin(MGPC!(float, 192)()); }
			UObject.Vector2D CurrentCenter() { mixin(MGPC!(UObject.Vector2D, 276)()); }
			UObject.Vector2D CurrentLocation() { mixin(MGPC!(UObject.Vector2D, 268)()); }
			MobileInputZone.EZoneSlideType SlideType() { mixin(MGPC!(MobileInputZone.EZoneSlideType, 62)()); }
			ScriptArray!(SeqEvent_MobileZoneBase) MobileSeqEventHandlers() { mixin(MGPC!(ScriptArray!(SeqEvent_MobileZoneBase), 396)()); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnProcessSlide__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnDoubleTapDelegate__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnTapDelegate__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnProcessInputDelegate__Delegate'!
			float LastWentActiveTime() { mixin(MGPC!(float, 420)()); }
			float TotalActiveTime() { mixin(MGPC!(float, 416)()); }
			UObject.Vector2D LastAxisValues() { mixin(MGPC!(UObject.Vector2D, 408)()); }
			UObject.Vector2D EscapeVelocity() { mixin(MGPC!(UObject.Vector2D, 388)()); }
			MobilePlayerInput InputOwner() { mixin(MGPC!(MobilePlayerInput, 380)()); }
			float TimeSinceLastTapRepeat() { mixin(MGPC!(float, 372)()); }
			float LastTouchTime() { mixin(MGPC!(float, 368)()); }
			int PreviousLocationCount() { mixin(MGPC!(int, 364)()); }
			float PreviousMoveDeltaTimes() { mixin(MGPC!(float, 340)()); }
			UObject.Vector2D PreviousLocations() { mixin(MGPC!(UObject.Vector2D, 292)()); }
			UObject.Vector2D InitialCenter() { mixin(MGPC!(UObject.Vector2D, 284)()); }
			UObject.Vector2D InitialLocation() { mixin(MGPC!(UObject.Vector2D, 260)()); }
			ScriptString OverrideTexture2Name() { mixin(MGPC!(ScriptString, 232)()); }
			ScriptString OverrideTexture1Name() { mixin(MGPC!(ScriptString, 200)()); }
			float TapDistanceConstraint() { mixin(MGPC!(float, 168)()); }
			float ResetCenterAfterInactivityTime() { mixin(MGPC!(float, 164)()); }
			float Border() { mixin(MGPC!(float, 160)()); }
			float AuthoredGlobalScale() { mixin(MGPC!(float, 156)()); }
			float EscapeVelocityStrength() { mixin(MGPC!(float, 124)()); }
			float Smoothing() { mixin(MGPC!(float, 120)()); }
			float Acceleration() { mixin(MGPC!(float, 116)()); }
			float HorizMultiplier() { mixin(MGPC!(float, 112)()); }
			float VertMultiplier() { mixin(MGPC!(float, 108)()); }
			ScriptName DoubleTapInputKey() { mixin(MGPC!(ScriptName, 100)()); }
			ScriptName TapInputKey() { mixin(MGPC!(ScriptName, 92)()); }
			ScriptName HorizontalInputKey() { mixin(MGPC!(ScriptName, 84)()); }
			ScriptName InputKey() { mixin(MGPC!(ScriptName, 76)()); }
		}
		bool bIsInvisible() { mixin(MGBPC!(128, 0x200)()); }
		bool bIsInvisible(bool val) { mixin(MSBPC!(128, 0x200)()); }
		bool bRenderGuides() { mixin(MGBPC!(128, 0x8000)()); }
		bool bRenderGuides(bool val) { mixin(MSBPC!(128, 0x8000)()); }
		bool bIsDoubleTapAndHold() { mixin(MGBPC!(128, 0x10000)()); }
		bool bIsDoubleTapAndHold(bool val) { mixin(MSBPC!(128, 0x10000)()); }
		bool bAllowFirstDeltaForTrackballZone() { mixin(MGBPC!(128, 0x4000)()); }
		bool bAllowFirstDeltaForTrackballZone(bool val) { mixin(MSBPC!(128, 0x4000)()); }
		bool bUseGentleTransitions() { mixin(MGBPC!(128, 0x2000)()); }
		bool bUseGentleTransitions(bool val) { mixin(MSBPC!(128, 0x2000)()); }
		bool bFloatingTiltZone() { mixin(MGBPC!(128, 0x1000)()); }
		bool bFloatingTiltZone(bool val) { mixin(MSBPC!(128, 0x1000)()); }
		bool bCenterOnEvent() { mixin(MGBPC!(128, 0x800)()); }
		bool bCenterOnEvent(bool val) { mixin(MSBPC!(128, 0x800)()); }
		bool bQuickDoubleTap() { mixin(MGBPC!(128, 0x400)()); }
		bool bQuickDoubleTap(bool val) { mixin(MSBPC!(128, 0x400)()); }
		bool bCenterY() { mixin(MGBPC!(128, 0x100)()); }
		bool bCenterY(bool val) { mixin(MSBPC!(128, 0x100)()); }
		bool bCenterX() { mixin(MGBPC!(128, 0x80)()); }
		bool bCenterX(bool val) { mixin(MSBPC!(128, 0x80)()); }
		bool bSizeYFromSizeX() { mixin(MGBPC!(128, 0x40)()); }
		bool bSizeYFromSizeX(bool val) { mixin(MSBPC!(128, 0x40)()); }
		bool bActiveSizeYFromX() { mixin(MGBPC!(128, 0x20)()); }
		bool bActiveSizeYFromX(bool val) { mixin(MSBPC!(128, 0x20)()); }
		bool bRelativeSizeY() { mixin(MGBPC!(128, 0x10)()); }
		bool bRelativeSizeY(bool val) { mixin(MSBPC!(128, 0x10)()); }
		bool bRelativeSizeX() { mixin(MGBPC!(128, 0x8)()); }
		bool bRelativeSizeX(bool val) { mixin(MSBPC!(128, 0x8)()); }
		bool bRelativeY() { mixin(MGBPC!(128, 0x4)()); }
		bool bRelativeY(bool val) { mixin(MSBPC!(128, 0x4)()); }
		bool bRelativeX() { mixin(MGBPC!(128, 0x2)()); }
		bool bRelativeX(bool val) { mixin(MSBPC!(128, 0x2)()); }
		bool bScalePawnMovement() { mixin(MGBPC!(128, 0x1)()); }
		bool bScalePawnMovement(bool val) { mixin(MSBPC!(128, 0x1)()); }
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
