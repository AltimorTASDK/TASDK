module UnrealScript.Engine.ParticleLightEnvironmentComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DynamicLightEnvironmentComponent;

extern(C++) interface ParticleLightEnvironmentComponent : DynamicLightEnvironmentComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleLightEnvironmentComponent")); }
	private static __gshared ParticleLightEnvironmentComponent mDefaultProperties;
	@property final static ParticleLightEnvironmentComponent DefaultProperties() { mixin(MGDPC("ParticleLightEnvironmentComponent", "ParticleLightEnvironmentComponent Engine.Default__ParticleLightEnvironmentComponent")); }
	@property final
	{
		@property final auto ref int ReferenceCount() { mixin(MGPC("int", 296)); }
		bool bAllowDLESharing() { mixin(MGBPC(300, 0x1)); }
		bool bAllowDLESharing(bool val) { mixin(MSBPC(300, 0x1)); }
	}
}
