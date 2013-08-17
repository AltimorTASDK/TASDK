module UnrealScript.Engine.LightVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Volume;

extern(C++) interface LightVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.LightVolume")()); }
	private static __gshared LightVolume mDefaultProperties;
	@property final static LightVolume DefaultProperties() { mixin(MGDPC!(LightVolume, "LightVolume Engine.Default__LightVolume")()); }
}
