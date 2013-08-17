module UnrealScript.TribesGame.TrAccoladeList;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TrAccoladeList : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccoladeList")()); }
	private static __gshared TrAccoladeList mDefaultProperties;
	@property final static TrAccoladeList DefaultProperties() { mixin(MGDPC!(TrAccoladeList, "TrAccoladeList TribesGame.Default__TrAccoladeList")()); }
	@property final auto ref ScriptArray!(ScriptString) accoladeList() { mixin(MGPC!("ScriptArray!(ScriptString)", 60)()); }
}
