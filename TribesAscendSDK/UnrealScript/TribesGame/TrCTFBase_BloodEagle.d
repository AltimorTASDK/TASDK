module UnrealScript.TribesGame.TrCTFBase_BloodEagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrCTFBase;

extern(C++) interface TrCTFBase_BloodEagle : TrCTFBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCTFBase_BloodEagle")()); }
	private static __gshared TrCTFBase_BloodEagle mDefaultProperties;
	@property final static TrCTFBase_BloodEagle DefaultProperties() { mixin(MGDPC!(TrCTFBase_BloodEagle, "TrCTFBase_BloodEagle TribesGame.Default__TrCTFBase_BloodEagle")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetSpectatorName;
		public @property static final ScriptFunction GetSpectatorName() { mixin(MGF!("mGetSpectatorName", "Function TribesGame.TrCTFBase_BloodEagle.GetSpectatorName")()); }
	}
	final ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
