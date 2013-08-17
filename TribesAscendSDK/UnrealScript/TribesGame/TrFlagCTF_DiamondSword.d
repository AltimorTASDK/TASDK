module UnrealScript.TribesGame.TrFlagCTF_DiamondSword;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFlagCTF;

extern(C++) interface TrFlagCTF_DiamondSword : TrFlagCTF
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFlagCTF_DiamondSword")); }
	private static __gshared TrFlagCTF_DiamondSword mDefaultProperties;
	@property final static TrFlagCTF_DiamondSword DefaultProperties() { mixin(MGDPC("TrFlagCTF_DiamondSword", "TrFlagCTF_DiamondSword TribesGame.Default__TrFlagCTF_DiamondSword")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetSpectatorName;
		public @property static final ScriptFunction GetSpectatorName() { mixin(MGF("mGetSpectatorName", "Function TribesGame.TrFlagCTF_DiamondSword.GetSpectatorName")); }
	}
	final ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
