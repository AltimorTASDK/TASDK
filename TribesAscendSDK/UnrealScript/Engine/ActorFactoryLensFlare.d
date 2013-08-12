module UnrealScript.Engine.ActorFactoryLensFlare;

import ScriptClasses;
import UnrealScript.Engine.LensFlare;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryLensFlare : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryLensFlare")); }
	private static __gshared ActorFactoryLensFlare mDefaultProperties;
	@property final static ActorFactoryLensFlare DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryLensFlare)("ActorFactoryLensFlare Engine.Default__ActorFactoryLensFlare")); }
	@property final auto ref LensFlare LensFlareObject() { return *cast(LensFlare*)(cast(size_t)cast(void*)this + 92); }
}
