module UnrealScript.UnrealEd.GameStatsDatabaseVisitor;

import ScriptClasses;
import UnrealScript.Core.UInterface;

extern(C++) interface GameStatsDatabaseVisitor : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GameStatsDatabaseVisitor")); }
	private static __gshared GameStatsDatabaseVisitor mDefaultProperties;
	@property final static GameStatsDatabaseVisitor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameStatsDatabaseVisitor)("GameStatsDatabaseVisitor UnrealEd.Default__GameStatsDatabaseVisitor")); }
}
