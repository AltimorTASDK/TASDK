module UnrealScript.TribesGame.TrProj_ArmoredClaymore;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Mine;
import UnrealScript.Engine.Pawn;

extern(C++) interface TrProj_ArmoredClaymore : TrProj_Mine
{
public extern(D):
	@property final auto ref float DetonationSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 900); }
	final bool MeetsDetonationRequirements(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108020], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
