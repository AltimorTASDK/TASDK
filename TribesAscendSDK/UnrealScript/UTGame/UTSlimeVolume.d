module UnrealScript.UTGame.UTSlimeVolume;

import ScriptClasses;
import UnrealScript.Engine.WaterVolume;

extern(C++) interface UTSlimeVolume : WaterVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSlimeVolume")); }
	private static __gshared UTSlimeVolume mDefaultProperties;
	@property final static UTSlimeVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSlimeVolume)("UTSlimeVolume UTGame.Default__UTSlimeVolume")); }
}
