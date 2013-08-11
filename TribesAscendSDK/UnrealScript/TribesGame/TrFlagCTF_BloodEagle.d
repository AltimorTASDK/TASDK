module UnrealScript.TribesGame.TrFlagCTF_BloodEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrFlagCTF;

extern(C++) interface TrFlagCTF_BloodEagle : TrFlagCTF
{
	final ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88610], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
