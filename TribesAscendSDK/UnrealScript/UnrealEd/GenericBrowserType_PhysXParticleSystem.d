module UnrealScript.UnrealEd.GenericBrowserType_PhysXParticleSystem;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_PhysXParticleSystem : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_PhysXParticleSystem")); }
	private static __gshared GenericBrowserType_PhysXParticleSystem mDefaultProperties;
	@property final static GenericBrowserType_PhysXParticleSystem DefaultProperties() { mixin(MGDPC("GenericBrowserType_PhysXParticleSystem", "GenericBrowserType_PhysXParticleSystem UnrealEd.Default__GenericBrowserType_PhysXParticleSystem")); }
}
