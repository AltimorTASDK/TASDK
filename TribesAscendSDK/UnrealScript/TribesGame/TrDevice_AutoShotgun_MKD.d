module UnrealScript.TribesGame.TrDevice_AutoShotgun_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoShotgun;

extern(C++) interface TrDevice_AutoShotgun_MKD : TrDevice_AutoShotgun
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_AutoShotgun_MKD")()); }
	private static __gshared TrDevice_AutoShotgun_MKD mDefaultProperties;
	@property final static TrDevice_AutoShotgun_MKD DefaultProperties() { mixin(MGDPC!(TrDevice_AutoShotgun_MKD, "TrDevice_AutoShotgun_MKD TribesGame.Default__TrDevice_AutoShotgun_MKD")()); }
}
