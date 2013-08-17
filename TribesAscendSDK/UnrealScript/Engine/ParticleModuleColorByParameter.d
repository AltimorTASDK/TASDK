module UnrealScript.Engine.ParticleModuleColorByParameter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleModuleColorBase;

extern(C++) interface ParticleModuleColorByParameter : ParticleModuleColorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleColorByParameter")()); }
	private static __gshared ParticleModuleColorByParameter mDefaultProperties;
	@property final static ParticleModuleColorByParameter DefaultProperties() { mixin(MGDPC!(ParticleModuleColorByParameter, "ParticleModuleColorByParameter Engine.Default__ParticleModuleColorByParameter")()); }
	@property final auto ref
	{
		UObject.Color DefaultColor() { mixin(MGPC!(UObject.Color, 80)()); }
		ScriptName ColorParam() { mixin(MGPC!(ScriptName, 72)()); }
	}
}
