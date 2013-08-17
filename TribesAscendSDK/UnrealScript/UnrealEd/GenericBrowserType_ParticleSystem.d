module UnrealScript.UnrealEd.GenericBrowserType_ParticleSystem;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_ParticleSystem : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_ParticleSystem")()); }
	private static __gshared GenericBrowserType_ParticleSystem mDefaultProperties;
	@property final static GenericBrowserType_ParticleSystem DefaultProperties() { mixin(MGDPC!(GenericBrowserType_ParticleSystem, "GenericBrowserType_ParticleSystem UnrealEd.Default__GenericBrowserType_ParticleSystem")()); }
}
