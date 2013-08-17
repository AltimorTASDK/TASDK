module UnrealScript.TribesGame.TrDmgType_SN7_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_SN7_MKD : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_SN7_MKD")); }
	private static __gshared TrDmgType_SN7_MKD mDefaultProperties;
	@property final static TrDmgType_SN7_MKD DefaultProperties() { mixin(MGDPC("TrDmgType_SN7_MKD", "TrDmgType_SN7_MKD TribesGame.Default__TrDmgType_SN7_MKD")); }
}
