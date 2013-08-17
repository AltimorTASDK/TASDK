module UnrealScript.TribesGame.TrDmgType_NovaColt_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_NovaColt_MKD : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_NovaColt_MKD")()); }
	private static __gshared TrDmgType_NovaColt_MKD mDefaultProperties;
	@property final static TrDmgType_NovaColt_MKD DefaultProperties() { mixin(MGDPC!(TrDmgType_NovaColt_MKD, "TrDmgType_NovaColt_MKD TribesGame.Default__TrDmgType_NovaColt_MKD")()); }
}
