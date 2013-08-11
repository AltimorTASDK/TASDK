module UnrealScript.GameFramework.SeqEvent_HudRender;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.HUD;

extern(C++) interface SeqEvent_HudRender : SequenceEvent
{
	public @property final bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x1) != 0; }
	public @property final bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x1; } return val; }
	public @property final auto ref ScriptArray!(UObject) Targets() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref float AuthoredGlobalScale() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
	final void RegisterEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32970], cast(void*)0, cast(void*)0);
	}
	final void Render(Canvas TargetCanvas, HUD TargetHud)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = TargetCanvas;
		*cast(HUD*)&params[4] = TargetHud;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32974], params.ptr, cast(void*)0);
	}
}
