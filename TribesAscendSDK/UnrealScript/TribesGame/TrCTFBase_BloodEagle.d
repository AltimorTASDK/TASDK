module UnrealScript.TribesGame.TrCTFBase_BloodEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrCTFBase;

extern(C++) interface TrCTFBase_BloodEagle : TrCTFBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCTFBase_BloodEagle")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetSpectatorName;
		public @property static final ScriptFunction GetSpectatorName() { return mGetSpectatorName ? mGetSpectatorName : (mGetSpectatorName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCTFBase_BloodEagle.GetSpectatorName")); }
	}
	final ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
