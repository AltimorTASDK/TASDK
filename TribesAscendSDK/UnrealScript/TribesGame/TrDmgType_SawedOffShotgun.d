module UnrealScript.TribesGame.TrDmgType_SawedOffShotgun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_SawedOffShotgun : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_SawedOffShotgun")()); }
	private static __gshared TrDmgType_SawedOffShotgun mDefaultProperties;
	@property final static TrDmgType_SawedOffShotgun DefaultProperties() { mixin(MGDPC!(TrDmgType_SawedOffShotgun, "TrDmgType_SawedOffShotgun TribesGame.Default__TrDmgType_SawedOffShotgun")()); }
}
