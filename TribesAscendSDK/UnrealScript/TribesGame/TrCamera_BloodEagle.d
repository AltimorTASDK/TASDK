module UnrealScript.TribesGame.TrCamera_BloodEagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrCamera_SpectatorBookmark;

extern(C++) interface TrCamera_BloodEagle : TrCamera_SpectatorBookmark
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCamera_BloodEagle")()); }
	private static __gshared TrCamera_BloodEagle mDefaultProperties;
	@property final static TrCamera_BloodEagle DefaultProperties() { mixin(MGDPC!(TrCamera_BloodEagle, "TrCamera_BloodEagle TribesGame.Default__TrCamera_BloodEagle")()); }
}
