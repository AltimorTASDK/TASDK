module UnrealScript.TribesGame.TrRank;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TrRank : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank")()); }
	private static __gshared TrRank mDefaultProperties;
	@property final static TrRank DefaultProperties() { mixin(MGDPC!(TrRank, "TrRank TribesGame.Default__TrRank")()); }
	@property final auto ref
	{
		int IconIndex() { mixin(MGPC!("int", 64)()); }
		ScriptString FriendlyName() { mixin(MGPC!("ScriptString", 72)()); }
		int Rank() { mixin(MGPC!("int", 60)()); }
		int RequiredXP() { mixin(MGPC!("int", 68)()); }
	}
}
