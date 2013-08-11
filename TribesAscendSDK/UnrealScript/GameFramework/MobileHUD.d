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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32333], cast(void*)0, cast(void*)0);
	}
	void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32334], cast(void*)0, cast(void*)0);
	}
	void DrawMobileDebugString(float XPos, float YPos, ScriptString Str)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = XPos;
		*cast(float*)&params[4] = YPos;
		*cast(ScriptString*)&params[8] = Str;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32343], params.ptr, cast(void*)0);
	}
	bool ShowMobileHud()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32347], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RenderMobileMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32349], cast(void*)0, cast(void*)0);
	}
	void DrawInputZoneOverlays()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32359], cast(void*)0, cast(void*)0);
	}
	void DrawMobileZone_Button(MobileInputZone Zone)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32387], params.ptr, cast(void*)0);
	}
	void DrawMobileZone_Joystick(MobileInputZone Zone)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32411], params.ptr, cast(void*)0);
	}
	void DrawMobileZone_Trackball(MobileInputZone Zone)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32425], params.ptr, cast(void*)0);
	}
	void DrawMobileTilt(MobilePlayerInput MobileInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobilePlayerInput*)params.ptr = MobileInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32429], params.ptr, cast(void*)0);
	}
	void DrawMobileZone_Slider(MobileInputZone Zone)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobileInputZone*)params.ptr = Zone;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32446], params.ptr, cast(void*)0);
	}
	void RefreshKismetLinks()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32453], cast(void*)0, cast(void*)0);
	}
	void AddKismetRenderEvent(SeqEvent_HudRender NewEvent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqEvent_HudRender*)params.ptr = NewEvent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32458], params.ptr, cast(void*)0);
	}
	void RenderKismetHud()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32461], cast(void*)0, cast(void*)0);
	}
}
