module UnrealScript.Engine.TriggeredPath;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;

extern(C++) interface TriggeredPath : NavigationPoint
{
	public @property final auto ref Actor MyTrigger() { return *cast(Actor*)(cast(size_t)cast(void*)this + 696); }
	public @property final bool bOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x1) != 0; }
	public @property final bool bOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x1; } return val; }
	final void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28063], params.ptr, cast(void*)0);
	}
	final Actor SpecialHandling(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28065], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	final bool SuggestMovePreparation(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28069], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
