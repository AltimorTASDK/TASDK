module UnrealScript.Engine.AnimNotify_PawnMaterialParam;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.AnimNotify_Scripted;

extern(C++) interface AnimNotify_PawnMaterialParam : AnimNotify_Scripted
{
public extern(D):
	@property final auto ref ScriptArray!(Pawn.ScalarParameterInterpStruct) ScalarParameterInterpArray() { return *cast(ScriptArray!(Pawn.ScalarParameterInterpStruct)*)(cast(size_t)cast(void*)this + 64); }
	final void Notify(Actor Owner, AnimNodeSequence AnimSeqInstigator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Owner;
		*cast(AnimNodeSequence*)&params[4] = AnimSeqInstigator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11393], params.ptr, cast(void*)0);
	}
}
