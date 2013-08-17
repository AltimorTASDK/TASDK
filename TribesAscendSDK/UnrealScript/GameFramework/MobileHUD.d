module UnrealScript.GameFramework.MobileHUD;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.MobileHUD")); }
	private static __gshared MobileHUD mDefaultProperties;
	@property final static MobileHUD DefaultProperties() { mixin(MGDPC("MobileHUD", "MobileHUD GameFramework.Default__MobileHUD")); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function GameFramework.MobileHUD.PostBeginPlay")); }
			ScriptFunction PostRender() { mixin(MGF("mPostRender", "Function GameFramework.MobileHUD.PostRender")); }
			ScriptFunction DrawMobileDebugString() { mixin(MGF("mDrawMobileDebugString", "Function GameFramework.MobileHUD.DrawMobileDebugString")); }
			ScriptFunction ShowMobileHud() { mixin(MGF("mShowMobileHud", "Function GameFramework.MobileHUD.ShowMobileHud")); }
			ScriptFunction RenderMobileMenu() { mixin(MGF("mRenderMobileMenu", "Function GameFramework.MobileHUD.RenderMobileMenu")); }
			ScriptFunction DrawInputZoneOverlays() { mixin(MGF("mDrawInputZoneOverlays", "Function GameFramework.MobileHUD.DrawInputZoneOverlays")); }
			ScriptFunction DrawMobileZone_Button() { mixin(MGF("mDrawMobileZone_Button", "Function GameFramework.MobileHUD.DrawMobileZone_Button")); }
			ScriptFunction DrawMobileZone_Joystick() { mixin(MGF("mDrawMobileZone_Joystick", "Function GameFramework.MobileHUD.DrawMobileZone_Joystick")); }
			ScriptFunction DrawMobileZone_Trackball() { mixin(MGF("mDrawMobileZone_Trackball", "Function GameFramework.MobileHUD.DrawMobileZone_Trackball")); }
			ScriptFunction DrawMobileTilt() { mixin(MGF("mDrawMobileTilt", "Function GameFramework.MobileHUD.DrawMobileTilt")); }
			ScriptFunction DrawMobileZone_Slider() { mixin(MGF("mDrawMobileZone_Slider", "Function GameFramework.MobileHUD.DrawMobileZone_Slider")); }
			ScriptFunction RefreshKismetLinks() { mixin(MGF("mRefreshKismetLinks", "Function GameFramework.MobileHUD.RefreshKismetLinks")); }
			ScriptFunction AddKismetRenderEvent() { mixin(MGF("mAddKismetRenderEvent", "Function GameFramework.MobileHUD.AddKismetRenderEvent")); }
			ScriptFunction RenderKismetHud() { mixin(MGF("mRenderKismetHud", "Function GameFramework.MobileHUD.RenderKismetHud")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SeqEvent_HudRender) KismetRenderEvents() { mixin(MGPC("ScriptArray!(SeqEvent_HudRender)", 1348)); }
			float MobileTiltSize() { mixin(MGPC("float", 1344)); }
			float MobileTiltY() { mixin(MGPC("float", 1340)); }
			float MobileTiltX() { mixin(MGPC("float", 1336)); }
			MobileInputZone.TextureUVs SliderUVs() { mixin(MGPC("MobileInputZone.TextureUVs", 1272)); }
			Texture2D SliderImages() { mixin(MGPC("Texture2D", 1256)); }
			MobileInputZone.TextureUVs TrackballTouchIndicatorUVs() { mixin(MGPC("MobileInputZone.TextureUVs", 1240)); }
			Texture2D TrackballTouchIndicator() { mixin(MGPC("Texture2D", 1236)); }
			MobileInputZone.TextureUVs TrackballBackgroundUVs() { mixin(MGPC("MobileInputZone.TextureUVs", 1220)); }
			Texture2D TrackballBackground() { mixin(MGPC("Texture2D", 1216)); }
			UObject.Color ButtonCaptionColor() { mixin(MGPC("UObject.Color", 1212)); }
			Font ButtonFont() { mixin(MGPC("Font", 1208)); }
			MobileInputZone.TextureUVs ButtonUVs() { mixin(MGPC("MobileInputZone.TextureUVs", 1176)); }
			Texture2D ButtonImages() { mixin(MGPC("Texture2D", 1168)); }
			MobileInputZone.TextureUVs JoystickHatUVs() { mixin(MGPC("MobileInputZone.TextureUVs", 1152)); }
			Texture2D JoystickHat() { mixin(MGPC("Texture2D", 1148)); }
			MobileInputZone.TextureUVs JoystickBackgroundUVs() { mixin(MGPC("MobileInputZone.TextureUVs", 1132)); }
			Texture2D JoystickBackground() { mixin(MGPC("Texture2D", 1128)); }
		}
		bool bShowMotionDebug() { mixin(MGBPC(1124, 0x80)); }
		bool bShowMotionDebug(bool val) { mixin(MSBPC(1124, 0x80)); }
		bool bDebugZonePresses() { mixin(MGBPC(1124, 0x40)); }
		bool bDebugZonePresses(bool val) { mixin(MSBPC(1124, 0x40)); }
		bool bDebugZones() { mixin(MGBPC(1124, 0x20)); }
		bool bDebugZones(bool val) { mixin(MSBPC(1124, 0x20)); }
		bool bDebugTouches() { mixin(MGBPC(1124, 0x10)); }
		bool bDebugTouches(bool val) { mixin(MSBPC(1124, 0x10)); }
		bool bShowMobileTilt() { mixin(MGBPC(1124, 0x8)); }
		bool bShowMobileTilt(bool val) { mixin(MSBPC(1124, 0x8)); }
		bool bForceMobileHUD() { mixin(MGBPC(1124, 0x4)); }
		bool bForceMobileHUD(bool val) { mixin(MSBPC(1124, 0x4)); }
		bool bShowMobileHud() { mixin(MGBPC(1124, 0x2)); }
		bool bShowMobileHud(bool val) { mixin(MSBPC(1124, 0x2)); }
		bool bShowGameHud() { mixin(MGBPC(1124, 0x1)); }
		bool bShowGameHud(bool val) { mixin(MSBPC(1124, 0x1)); }
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
