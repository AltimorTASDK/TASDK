module UnrealScript.UnrealEd.GenericBrowserType_ParticleSystem;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_ParticleSystem : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_ParticleSystem")); }
	private static __gshared GenericBrowserType_ParticleSystem mDefaultProperties;
	@property final static GenericBrowserType_ParticleSystem DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_ParticleSystem)("GenericBrowserType_ParticleSystem UnrealEd.Default__GenericBrowserType_ParticleSystem")); }
}
