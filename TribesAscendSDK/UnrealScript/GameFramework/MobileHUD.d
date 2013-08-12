module UnrealScript.GameFramework.MobileHUD;

import ScriptClasses;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.MobilePlayerInput;
import UnrealScript.GameFramework.MobileInputZone;
import UnrealScript.Engine.HUD;
import UnrealScript.GameFramework.SeqEvent_HudRender;
import UnrealScript.Engine.Font;

extern(C++) interface MobileHUD : HUD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.MobileHUD")); }
	private static __gshared MobileHUD mDefaultProperties;
	@property final static MobileHUD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MobileHUD)("MobileHUD GameFramework.Default__MobileHUD")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPostRender;
			ScriptFunction mDrawMobileDebugString;
			ScriptFunction mShowMobileHud;
			ScriptFunction mRenderMobileMenu;
			ScriptFunction mDrawInputZoneOverlays;
			ScriptFunction mDrawMobileZone_Button;
			ScriptFunction mDrawMobileZone_Joystick;
			ScriptFunction mDrawMobileZone_Trackball;
			ScriptFunction mDrawMobileTilt;
			ScriptFunction mDrawMobileZone_Slider;
			ScriptFunction mRefreshKismetLinks;
			ScriptFunction mAddKismetRenderEvent;
			ScriptFunction mRenderKismetHud;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileHUD.PostBeginPlay")); }
			ScriptFunction PostRender() { return mPostRender ? mPostRender : (mPostRender = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileHUD.PostRender")); }
			ScriptFunction DrawMobileDebugString() { return mDrawMobileDebugString ? mDrawMobileDebugString : (mDrawMobileDebugString = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileHUD.DrawMobileDebugString")); }
			ScriptFunction ShowMobileHud() { return mShowMobileHud ? mShowMobileHud : (mShowMobileHud = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileHUD.ShowMobileHud")); }
			ScriptFunction RenderMobileMenu() { return mRenderMobileMenu ? mRenderMobileMenu : (mRenderMobileMenu = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileHUD.RenderMobileMenu")); }
			ScriptFunction DrawInputZoneOverlays() { return mDrawInputZoneOverlays ? mDrawInputZoneOverlays : (mDrawInputZoneOverlays = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileHUD.DrawInputZoneOverlays")); }
			ScriptFunction DrawMobileZone_Button() { return mDrawMobileZone_Button ? mDrawMobileZone_Button : (mDrawMobileZone_Button = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileHUD.DrawMobileZone_Button")); }
			ScriptFunction DrawMobileZone_Joystick() { return mDrawMobileZone_Joystick ? mDrawMobileZone_Joystick : (mDrawMobileZone_Joystick = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileHUD.DrawMobileZone_Joystick")); }
			ScriptFunction DrawMobileZone_Trackball() { return mDrawMobileZone_Trackball ? mDrawMobileZone_Trackball : (mDrawMobileZone_Trackball = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileHUD.DrawMobileZone_Trackball")); }
			ScriptFunction DrawMobileTilt() { return mDrawMobileTilt ? mDrawMobileTilt : (mDrawMobileTilt = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileHUD.DrawMobileTilt")); }
			ScriptFunction DrawMobileZone_Slider() { return mDrawMobileZone_Slider ? mDrawMobileZone_Slider : (mDrawMobileZone_Slider = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileHUD.DrawMobileZone_Slider")); }
			ScriptFunction RefreshKismetLinks() { return mRefreshKismetLinks ? mRefreshKismetLinks : (mRefreshKismetLinks = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileHUD.RefreshKismetLinks")); }
			ScriptFunction AddKismetRenderEvent() { return mAddKismetRenderEvent ? mAddKismetRenderEvent : (mAddKismetRenderEvent = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileHUD.AddKismetRenderEvent")); }
			ScriptFunction RenderKismetHud() { return mRenderKismetHud ? mRenderKismetHud : (mRenderKismetHud = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileHUD.RenderKismetHud")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SeqEvent_HudRender) KismetRenderEvents() { return *cast(ScriptArray!(SeqEvent_HudRender)*)(cast(size_t)cast(void*)this + 1348); }
			float MobileTiltSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1344); }
			float MobileTiltY() { return *cast(float*)(cast(size_t)cast(void*)this + 1340); }
			float MobileTiltX() { return *cast(float*)(cast(size_t)cast(void*)this + 1336); }
			MobileInputZone.TextureUVs SliderUVs() { return *cast(MobileInputZone.TextureUVs*)(cast(size_t)cast(void*)this + 1272); }
			Texture2D SliderImages() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1256); }
			MobileInputZone.TextureUVs TrackballTouchIndicatorUVs() { return *cast(MobileInputZone.TextureUVs*)(cast(size_t)cast(void*)this + 1240); }
			Texture2D TrackballTouchIndicator() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1236); }
			MobileInputZone.TextureUVs TrackballBackgroundUVs() { return *cast(MobileInputZone.TextureUVs*)(cast(size_t)cast(void*)this + 1220); }
			Texture2D TrackballBackground() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1216); }
			UObject.Color ButtonCaptionColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1212); }
			Font ButtonFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 1208); }
			MobileInputZone.TextureUVs ButtonUVs() { return *cast(MobileInputZone.TextureUVs*)(cast(size_t)cast(void*)this + 1176); }
			Texture2D ButtonImages() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1168); }
			MobileInputZone.TextureUVs JoystickHatUVs() { return *cast(MobileInputZone.TextureUVs*)(cast(size_t)cast(void*)this + 1152); }
			Texture2D JoystickHat() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1148); }
			MobileInputZone.TextureUVs JoystickBackgroundUVs() { return *cast(MobileInputZone.TextureUVs*)(cast(size_t)cast(void*)this + 1132); }
			Texture2D JoystickBackground() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1128); }
		}
		bool bShowMotionDebug() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1124) & 0x80) != 0; }
		bool bShowMotionDebug(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1124) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1124) &= ~0x80; } return val; }
		bool bDebugZonePresses() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1124) & 0x40) != 0; }
		bool bDebugZonePresses(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1124) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1124) &= ~0x40; } return val; }
		bool bDebugZones() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1124) & 0x20) != 0; }
		bool bDebugZones(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1124) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1124) &= ~0x20; } return val; }
		bool bDebugTouches() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1124) & 0x10) != 0; }
		bool bDebugTouches(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1124) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1124) &= ~0x10; } return val; }
		bool bShowMobileTilt() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1124) & 0x8) != 0; }
		bool bShowMobileTilt(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1124) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1124) &= ~0x8; } return val; }
		bool bForceMobileHUD() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1124) & 0x4) != 0; }
		bool bForceMobileHUD(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1124) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1124) &= ~0x4; } return val; }
		bool bShowMobileHud() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1124) & 0x2) != 0; }
		bool bShowMobileHud(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1124) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1124) &= ~0x2; } return val; }
		bool bShowGameHud() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1124) & 0x1) != 0; }
		bool bShowGameHud(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1124) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRender, cast(void*)0, cast(void*)0);
	}
	void DrawMobileDebugString(float XPos, float YPos, ScriptString Str)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = XPos;
		*cast(float*)&params[4] = YPos;
		*cast(ScriptString*)&params[8] = Str;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawMobileDebugString, params.ptr, cast(void*)0);
	}
	bool ShowMobileHud()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowMobileHud, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RenderMobileMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderMobileMenu, cast(void*)0, cast(void*)0);
	}
	void DrawInputZoneOverlays()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawInputZoneOverlays, cast(void*)0, cast(void*)0);
	}
	void DrawMobileZone_Button(MobileInputZone Zone)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawMobileZone_Button, params.ptr, cast(void*)0);
	}
	void DrawMobileZone_Joystick(MobileInputZone Zone)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawMobileZone_Joystick, params.ptr, cast(void*)0);
	}
	void DrawMobileZone_Trackball(MobileInputZone Zone)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawMobileZone_Trackball, params.ptr, cast(void*)0);
	}
	void DrawMobileTilt(MobilePlayerInput MobileInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobilePlayerInput*)params.ptr = MobileInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawMobileTilt, params.ptr, cast(void*)0);
	}
	void DrawMobileZone_Slider(MobileInputZone Zone)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawMobileZone_Slider, params.ptr, cast(void*)0);
	}
	void RefreshKismetLinks()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshKismetLinks, cast(void*)0, cast(void*)0);
	}
	void AddKismetRenderEvent(SeqEvent_HudRender NewEvent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqEvent_HudRender*)params.ptr = NewEvent;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddKismetRenderEvent, params.ptr, cast(void*)0);
	}
	void RenderKismetHud()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderKismetHud, cast(void*)0, cast(void*)0);
	}
}
