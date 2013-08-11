module UnrealScript.Engine.FracturedSkinnedMeshComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.FracturedBaseComponent;

extern(C++) interface FracturedSkinnedMeshComponent : FracturedBaseComponent
{
	public @property final auto ref ScriptArray!(UObject.Matrix) FragmentTransforms() { return *cast(ScriptArray!(UObject.Matrix)*)(cast(size_t)cast(void*)this + 644); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) DependentComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 656); }
	public @property final bool bFragmentTransformsChanged() { return (*cast(uint*)(cast(size_t)cast(void*)this + 668) & 0x2) != 0; }
	public @property final bool bFragmentTransformsChanged(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 668) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 668) &= ~0x2; } return val; }
	public @property final bool bBecameVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 668) & 0x1) != 0; }
	public @property final bool bBecameVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 668) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 668) &= ~0x1; } return val; }
	public @property final auto ref UObject.Pointer ComponentSkinResources() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 640); }
}
