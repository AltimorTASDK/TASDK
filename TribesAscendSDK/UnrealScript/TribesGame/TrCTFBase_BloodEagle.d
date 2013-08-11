module UnrealScript.TribesGame.TrCTFBase_BloodEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrCTFBase;

extern(C++) interface TrCTFBase_BloodEagle : TrCTFBase
{
	final ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78277], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
