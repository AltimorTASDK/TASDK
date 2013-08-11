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
	public @property final auto ref ScriptArray!(SeqEvent_HudRender) KismetRenderEvents() { return *cast(ScriptArray!(SeqEvent_HudRender)*)(cast(size_t)cast(void*)this + 1348); }
	public @property final auto ref float MobileTiltSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1344); }
	public @property final auto ref float MobileTiltY() { return *cast(float*)(cast(size_t)cast(void*)this + 1340); }
	public @property final auto ref float MobileTiltX() { return *cast(float*)(cast(size_t)cast(void*)this + 1336); }
	public @property final auto ref MobileInputZone.TextureUVs SliderUVs() { return *cast(MobileInputZone.TextureUVs*)(cast(size_t)cast(void*)this + 1272); }
	public @property final auto ref Texture2D SliderImages() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1256); }
	public @property final auto ref MobileInputZone.TextureUVs TrackballTouchIndicatorUVs() { return *cast(MobileInputZone.TextureUVs*)(cast(size_t)cast(void*)this + 1240); }
	public @property final auto ref Texture2D TrackballTouchIndicator() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1236); }
	public @property final auto ref MobileInputZone.TextureUVs TrackballBackgroundUVs() { return *cast(MobileInputZone.TextureUVs*)(cast(size_t)cast(void*)this + 1220); }
	public @property final auto ref Texture2D TrackballBackground() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1216); }
	public @property final auto ref UObject.Color ButtonCaptionColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1212); }
	public @property final auto ref Font ButtonFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 1208); }
	public @property final auto ref MobileInputZone.TextureUVs ButtonUVs() { return *cast(MobileInputZone.TextureUVs*)(cast(size_t)cast(void*)this + 1176); }
	public @property final auto ref Texture2D ButtonImages() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1168); }
	public @property final auto ref MobileInputZone.TextureUVs JoystickHatUVs() { return *cast(MobileInputZone.TextureUVs*)(cast(size_t)cast(void*)this + 1152); }
	public @property final auto ref Texture2D JoystickHat() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1148); }
	public @property final auto ref MobileInputZone.TextureUVs JoystickBackgroundUVs() { return *cast(MobileInputZone.TextureUVs*)(cast(size_t)cast(void*)this + 1132); }
	public @property final auto ref Texture2D JoystickBackground() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1128); }
	public @property final bool bShowMotionDebug() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1124) & 0x80) != 0; }
	public @property final bool bShowMotionDebug(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1124) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1124) &= ~0x80; } return val; }
	public @property final bool bDebugZonePresses() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1124) & 0x40) != 0; }
	public @property final bool bDebugZonePresses(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1124) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1124) &= ~0x40; } return val; }
	public @property final bool bDebugZones() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1124) & 0x20) != 0; }
	public @property final bool bDebugZones(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1124) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1124) &= ~0x20; } return val; }
	public @property final bool bDebugTouches() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1124) & 0x10) != 0; }
	public @property final bool bDebugTouches(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1124) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1124) &= ~0x10; } return val; }
	public @property final bool bShowMobileTilt() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1124) & 0x8) != 0; }
	public @property final bool bShowMobileTilt(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1124) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1124) &= ~0x8; } return val; }
	public @property final bool bForceMobileHUD() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1124) & 0x4) != 0; }
	public @property final bool bForceMobileHUD(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1124) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1124) &= ~0x4; } return val; }
	public @property final bool bShowMobileHud() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1124) & 0x2) != 0; }
	public @property final bool bShowMobileHud(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1124) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1124) &= ~0x2; } return val; }
	public @property final bool bShowGameHud() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1124) & 0x1) != 0; }
	public @property final bool bShowGameHud(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1124) &= ~0x1; } return val; }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32333], cast(void*)0, cast(void*)0);
	}
	final void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32334], cast(void*)0, cast(void*)0);
	}
	final void DrawMobileDebugString(float XPos, float YPos, ScriptString Str)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = XPos;
		*cast(float*)&params[4] = YPos;
		*cast(ScriptString*)&params[8] = Str;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32343], params.ptr, cast(void*)0);
	}
	final bool ShowMobileHud()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32347], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void RenderMobileMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32349], cast(void*)0, cast(void*)0);
	}
	final void DrawInputZoneOverlays()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32359], cast(void*)0, cast(void*)0);
	}
	final void DrawMobileZone_Button(MobileInputZone Zone)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32387], params.ptr, cast(void*)0);
	}
	final void DrawMobileZone_Joystick(MobileInputZone Zone)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32411], params.ptr, cast(void*)0);
	}
	final void DrawMobileZone_Trackball(MobileInputZone Zone)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32425], params.ptr, cast(void*)0);
	}
	final void DrawMobileTilt(MobilePlayerInput MobileInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobilePlayerInput*)params.ptr = MobileInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32429], params.ptr, cast(void*)0);
	}
	final void DrawMobileZone_Slider(MobileInputZone Zone)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32446], params.ptr, cast(void*)0);
	}
	final void RefreshKismetLinks()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32453], cast(void*)0, cast(void*)0);
	}
	final void AddKismetRenderEvent(SeqEvent_HudRender NewEvent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqEvent_HudRender*)params.ptr = NewEvent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32458], params.ptr, cast(void*)0);
	}
	final void RenderKismetHud()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32461], cast(void*)0, cast(void*)0);
	}
}
