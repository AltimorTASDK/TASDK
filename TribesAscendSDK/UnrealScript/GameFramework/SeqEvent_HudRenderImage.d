module UnrealScript.GameFramework.SeqEvent_HudRenderImage;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.SeqEvent_HudRender;
import UnrealScript.Engine.HUD;

extern(C++) interface SeqEvent_HudRenderImage : SeqEvent_HudRender
{
public extern(D):
	@property final auto ref
	{
		float VL() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
		float UL() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
		float V() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
		float U() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
		float YL() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
		float XL() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
		Texture2D DisplayTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 304); }
		Vector DisplayLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 292); }
		UObject.LinearColor DisplayColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 276); }
	}
	final void Render(Canvas TargetCanvas, HUD TargetHud)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = TargetCanvas;
		*cast(HUD*)&params[4] = TargetHud;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32987], params.ptr, cast(void*)0);
	}
}
