module UnrealScript.TribesGame.TrCTFBase_DiamondSword;

import ScriptClasses;
import UnrealScript.TribesGame.TrCTFBase;

extern(C++) interface TrCTFBase_DiamondSword : TrCTFBase
{
	final ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78285], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
