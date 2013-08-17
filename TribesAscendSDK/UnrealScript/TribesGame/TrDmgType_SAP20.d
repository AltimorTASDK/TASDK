module UnrealScript.TribesGame.TrDmgType_SAP20;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_SAP20 : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_SAP20")()); }
	private static __gshared TrDmgType_SAP20 mDefaultProperties;
	@property final static TrDmgType_SAP20 DefaultProperties() { mixin(MGDPC!(TrDmgType_SAP20, "TrDmgType_SAP20 TribesGame.Default__TrDmgType_SAP20")()); }
}
