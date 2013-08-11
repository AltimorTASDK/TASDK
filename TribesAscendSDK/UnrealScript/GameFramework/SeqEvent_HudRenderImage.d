module UnrealScript.GameFramework.SeqEvent_HudRenderImage;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.SeqEvent_HudRender;
import UnrealScript.Engine.HUD;

extern(C++) interface SeqEvent_HudRenderImage : SeqEvent_HudRender
{
	public @property final auto ref float VL() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
	public @property final auto ref float UL() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
	public @property final auto ref float V() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref float U() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref float YL() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref float XL() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref Texture2D DisplayTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref Vector DisplayLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref UObject.LinearColor DisplayColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 276); }
	final void Render(Canvas TargetCanvas, HUD TargetHud)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = TargetCanvas;
		*cast(HUD*)&params[4] = TargetHud;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32987], params.ptr, cast(void*)0);
	}
}
