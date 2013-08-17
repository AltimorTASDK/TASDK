module UnrealScript.TribesGame.TrFlagCTF_BloodEagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFlagCTF;

extern(C++) interface TrFlagCTF_BloodEagle : TrFlagCTF
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFlagCTF_BloodEagle")); }
	private static __gshared TrFlagCTF_BloodEagle mDefaultProperties;
	@property final static TrFlagCTF_BloodEagle DefaultProperties() { mixin(MGDPC("TrFlagCTF_BloodEagle", "TrFlagCTF_BloodEagle TribesGame.Default__TrFlagCTF_BloodEagle")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetSpectatorName;
		public @property static final ScriptFunction GetSpectatorName() { mixin(MGF("mGetSpectatorName", "Function TribesGame.TrFlagCTF_BloodEagle.GetSpectatorName")); }
	}
	final ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
