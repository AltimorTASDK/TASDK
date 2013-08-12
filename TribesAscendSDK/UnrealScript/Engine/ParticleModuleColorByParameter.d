module UnrealScript.Engine.ParticleModuleColorByParameter;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleModuleColorBase;

extern(C++) interface ParticleModuleColorByParameter : ParticleModuleColorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleColorByParameter")); }
	private static __gshared ParticleModuleColorByParameter mDefaultProperties;
	@property final static ParticleModuleColorByParameter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleColorByParameter)("ParticleModuleColorByParameter Engine.Default__ParticleModuleColorByParameter")); }
	@property final auto ref
	{
		UObject.Color DefaultColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 80); }
		ScriptName ColorParam() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
	}
}
