module UnrealScript.UTGame.UTEmit_HitEffect;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTEmitter;

extern(C++) interface UTEmit_HitEffect : UTEmitter
{
	final void AttachTo(Pawn P, ScriptName NewBoneName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(ScriptName*)&params[4] = NewBoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47370], params.ptr, cast(void*)0);
	}
	final void PawnBaseDied()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47373], cast(void*)0, cast(void*)0);
	}
}
