module UnrealScript.Engine.SeqAct_DrawText;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.Engine.HUD;

extern(C++) interface SeqAct_DrawText : SequenceAction
{
	public @property final auto ref HUD.KismetDrawTextInfo DrawTextInfo() { return *cast(HUD.KismetDrawTextInfo*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float DisplayTimeSeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	public @property final bool bDisplayOnObject() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
	public @property final bool bDisplayOnObject(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25679], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
