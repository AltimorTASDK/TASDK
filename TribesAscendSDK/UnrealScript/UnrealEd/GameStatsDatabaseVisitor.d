module UnrealScript.UnrealEd.GameStatsDatabaseVisitor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UInterface;

extern(C++) interface GameStatsDatabaseVisitor : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GameStatsDatabaseVisitor")()); }
	private static __gshared GameStatsDatabaseVisitor mDefaultProperties;
	@property final static GameStatsDatabaseVisitor DefaultProperties() { mixin(MGDPC!(GameStatsDatabaseVisitor, "GameStatsDatabaseVisitor UnrealEd.Default__GameStatsDatabaseVisitor")()); }
}
