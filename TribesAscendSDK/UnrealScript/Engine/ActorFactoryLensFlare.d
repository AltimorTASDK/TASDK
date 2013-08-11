module UnrealScript.Engine.ActorFactoryLensFlare;

import UnrealScript.Engine.LensFlare;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryLensFlare : ActorFactory
{
public extern(D):
	@property final auto ref LensFlare LensFlareObject() { return *cast(LensFlare*)(cast(size_t)cast(void*)this + 92); }
}
