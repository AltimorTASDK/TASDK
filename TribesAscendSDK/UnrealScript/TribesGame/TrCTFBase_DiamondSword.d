module UnrealScript.TribesGame.TrCTFBase_DiamondSword;

import ScriptClasses;
import UnrealScript.TribesGame.TrCTFBase;

extern(C++) interface TrCTFBase_DiamondSword : TrCTFBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCTFBase_DiamondSword")); }
	private static __gshared TrCTFBase_DiamondSword mDefaultProperties;
	@property final static TrCTFBase_DiamondSword DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrCTFBase_DiamondSword)("TrCTFBase_DiamondSword TribesGame.Default__TrCTFBase_DiamondSword")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetSpectatorName;
		public @property static final ScriptFunction GetSpectatorName() { return mGetSpectatorName ? mGetSpectatorName : (mGetSpectatorName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCTFBase_DiamondSword.GetSpectatorName")); }
	}
	final ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
