module UnrealScript.TribesGame.TrDmgType_Collision;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_Collision : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_Collision")()); }
	private static __gshared TrDmgType_Collision mDefaultProperties;
	@property final static TrDmgType_Collision DefaultProperties() { mixin(MGDPC!(TrDmgType_Collision, "TrDmgType_Collision TribesGame.Default__TrDmgType_Collision")()); }
}
