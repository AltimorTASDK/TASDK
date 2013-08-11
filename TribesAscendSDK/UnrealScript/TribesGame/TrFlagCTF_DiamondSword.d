module UnrealScript.TribesGame.TrFlagCTF_DiamondSword;

import ScriptClasses;
import UnrealScript.TribesGame.TrFlagCTF;

extern(C++) interface TrFlagCTF_DiamondSword : TrFlagCTF
{
public extern(D):
	final ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88617], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
