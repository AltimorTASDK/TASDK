module UnrealScript.TribesGame.TrFlagCTF_DiamondSword;

import ScriptClasses;
import UnrealScript.TribesGame.TrFlagCTF;

extern(C++) interface TrFlagCTF_DiamondSword : TrFlagCTF
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFlagCTF_DiamondSword")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetSpectatorName;
		public @property static final ScriptFunction GetSpectatorName() { return mGetSpectatorName ? mGetSpectatorName : (mGetSpectatorName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagCTF_DiamondSword.GetSpectatorName")); }
	}
	final ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
