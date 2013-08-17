module UnrealScript.TribesGame.TrProj_TacticalStrike;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_CallInBase;

extern(C++) interface TrProj_TacticalStrike : TrProj_CallInBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_TacticalStrike")); }
	private static __gshared TrProj_TacticalStrike mDefaultProperties;
	@property final static TrProj_TacticalStrike DefaultProperties() { mixin(MGDPC("TrProj_TacticalStrike", "TrProj_TacticalStrike TribesGame.Default__TrProj_TacticalStrike")); }
}
