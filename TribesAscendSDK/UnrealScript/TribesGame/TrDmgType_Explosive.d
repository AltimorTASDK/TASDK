module UnrealScript.TribesGame.TrDmgType_Explosive;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_Explosive : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_Explosive")()); }
	private static __gshared TrDmgType_Explosive mDefaultProperties;
	@property final static TrDmgType_Explosive DefaultProperties() { mixin(MGDPC!(TrDmgType_Explosive, "TrDmgType_Explosive TribesGame.Default__TrDmgType_Explosive")()); }
}
