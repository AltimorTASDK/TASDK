module UnrealScript.Engine.ParticleLightEnvironmentComponent;

import ScriptClasses;
import UnrealScript.Engine.DynamicLightEnvironmentComponent;

extern(C++) interface ParticleLightEnvironmentComponent : DynamicLightEnvironmentComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleLightEnvironmentComponent")); }
	private static __gshared ParticleLightEnvironmentComponent mDefaultProperties;
	@property final static ParticleLightEnvironmentComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleLightEnvironmentComponent)("ParticleLightEnvironmentComponent Engine.Default__ParticleLightEnvironmentComponent")); }
	@property final
	{
		@property final auto ref int ReferenceCount() { return *cast(int*)(cast(size_t)cast(void*)this + 296); }
		bool bAllowDLESharing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 300) & 0x1) != 0; }
		bool bAllowDLESharing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 300) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 300) &= ~0x1; } return val; }
	}
}
