module UnrealScript.TribesGame.TrPerkList;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TrPerkList : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPerkList")()); }
	private static __gshared TrPerkList mDefaultProperties;
	@property final static TrPerkList DefaultProperties() { mixin(MGDPC!(TrPerkList, "TrPerkList TribesGame.Default__TrPerkList")()); }
	@property final auto ref
	{
		ScriptArray!(ScriptString) PerkListA() { mixin(MGPC!("ScriptArray!(ScriptString)", 60)()); }
		ScriptArray!(ScriptString) PerkListB() { mixin(MGPC!("ScriptArray!(ScriptString)", 72)()); }
	}
}
