module UnrealScript.Engine.FogVolumeDensityComponent;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface FogVolumeDensityComponent : ActorComponent
{
	public @property final auto ref ScriptArray!(Actor) FogVolumeActors() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref float StartDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref UObject.LinearColor ApproxFogLightColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref UObject.LinearColor SimpleLightColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 100); }
	public @property final bool bOnlyAffectsTranslucency() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x4) != 0; }
	public @property final bool bOnlyAffectsTranslucency(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x4; } return val; }
	public @property final bool bAffectsTranslucency() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x2) != 0; }
	public @property final bool bAffectsTranslucency(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x2; } return val; }
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	public @property final auto ref MaterialInterface DefaultFogVolumeMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref MaterialInterface FogMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 88); }
	final void SetEnabled(bool bSetEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bSetEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15852], params.ptr, cast(void*)0);
	}
}
