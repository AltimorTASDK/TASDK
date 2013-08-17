module UnrealScript.TribesGame.TrProj_NovaColt_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_NovaColt;

extern(C++) interface TrProj_NovaColt_MKD : TrProj_NovaColt
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_NovaColt_MKD")()); }
	private static __gshared TrProj_NovaColt_MKD mDefaultProperties;
	@property final static TrProj_NovaColt_MKD DefaultProperties() { mixin(MGDPC!(TrProj_NovaColt_MKD, "TrProj_NovaColt_MKD TribesGame.Default__TrProj_NovaColt_MKD")()); }
}
