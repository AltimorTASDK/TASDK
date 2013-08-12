module UnrealScript.Engine.PendingLevel;

import ScriptClasses;
import UnrealScript.Engine.LevelBase;

extern(C++) interface PendingLevel : LevelBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PendingLevel")); }
	private static __gshared PendingLevel mDefaultProperties;
	@property final static PendingLevel DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PendingLevel)("PendingLevel Engine.Default__PendingLevel")); }
}
