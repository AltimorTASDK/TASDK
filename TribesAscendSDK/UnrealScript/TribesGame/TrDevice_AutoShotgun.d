module UnrealScript.TribesGame.TrDevice_AutoShotgun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Shotgun;

extern(C++) interface TrDevice_AutoShotgun : TrDevice_Shotgun
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_AutoShotgun")()); }
	private static __gshared TrDevice_AutoShotgun mDefaultProperties;
	@property final static TrDevice_AutoShotgun DefaultProperties() { mixin(MGDPC!(TrDevice_AutoShotgun, "TrDevice_AutoShotgun TribesGame.Default__TrDevice_AutoShotgun")()); }
}
