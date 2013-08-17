module UnrealScript.TribesGame.TrProj_NJ4SMG_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_NJ4SMG;

extern(C++) interface TrProj_NJ4SMG_MKD : TrProj_NJ4SMG
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_NJ4SMG_MKD")()); }
	private static __gshared TrProj_NJ4SMG_MKD mDefaultProperties;
	@property final static TrProj_NJ4SMG_MKD DefaultProperties() { mixin(MGDPC!(TrProj_NJ4SMG_MKD, "TrProj_NJ4SMG_MKD TribesGame.Default__TrProj_NJ4SMG_MKD")()); }
}
