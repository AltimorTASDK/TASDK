module UnrealScript.Engine.ApexStaticDestructibleComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ApexStaticComponent;

extern(C++) interface ApexStaticDestructibleComponent : ApexStaticComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ApexStaticDestructibleComponent")); }
	private static __gshared ApexStaticDestructibleComponent mDefaultProperties;
	@property final static ApexStaticDestructibleComponent DefaultProperties() { mixin(MGDPC("ApexStaticDestructibleComponent", "ApexStaticDestructibleComponent Engine.Default__ApexStaticDestructibleComponent")); }
	@property final
	{
		auto ref
		{
			Pointer ApexDestructiblePreview() { mixin(MGPC("Pointer", 532)); }
			Pointer ApexDestructibleActorVar() { mixin(MGPC("Pointer", 528)); }
			float SleepDamping() { mixin(MGPC("float", 524)); }
			float SleepEnergyThreshold() { mixin(MGPC("float", 520)); }
		}
		bool bIsThumbnailComponent() { mixin(MGBPC(536, 0x1)); }
		bool bIsThumbnailComponent(bool val) { mixin(MSBPC(536, 0x1)); }
	}
}
