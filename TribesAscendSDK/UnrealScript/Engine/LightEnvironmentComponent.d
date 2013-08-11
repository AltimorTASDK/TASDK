module UnrealScript.Engine.LightEnvironmentComponent;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;

extern(C++) interface LightEnvironmentComponent : ActorComponent
{
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) AffectedComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float DominantShadowFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final bool bTranslucencyShadowed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x10) != 0; }
	public @property final bool bTranslucencyShadowed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x10; } return val; }
	public @property final bool bAllowPreShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x8) != 0; }
	public @property final bool bAllowPreShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x8; } return val; }
	public @property final bool bAllowDynamicShadowsOnTranslucency() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x4) != 0; }
	public @property final bool bAllowDynamicShadowsOnTranslucency(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x4; } return val; }
	public @property final bool bForceNonCompositeDynamicLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x2) != 0; }
	public @property final bool bForceNonCompositeDynamicLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x2; } return val; }
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	final void SetEnabled(bool bNewEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11640], params.ptr, cast(void*)0);
	}
	final bool IsEnabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11642], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
