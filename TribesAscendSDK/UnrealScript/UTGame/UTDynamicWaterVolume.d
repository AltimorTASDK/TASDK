module UnrealScript.UTGame.UTDynamicWaterVolume;

import ScriptClasses;
import UnrealScript.UTGame.UTWaterVolume;

extern(C++) interface UTDynamicWaterVolume : UTWaterVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDynamicWaterVolume")); }
	private static __gshared UTDynamicWaterVolume mDefaultProperties;
	@property final static UTDynamicWaterVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTDynamicWaterVolume)("UTDynamicWaterVolume UTGame.Default__UTDynamicWaterVolume")); }
}
