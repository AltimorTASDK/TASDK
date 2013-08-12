module UnrealScript.Engine.FracturedSkinnedMeshComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.FracturedBaseComponent;

extern(C++) interface FracturedSkinnedMeshComponent : FracturedBaseComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FracturedSkinnedMeshComponent")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject.Matrix) FragmentTransforms() { return *cast(ScriptArray!(UObject.Matrix)*)(cast(size_t)cast(void*)this + 644); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) DependentComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 656); }
			UObject.Pointer ComponentSkinResources() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 640); }
		}
		bool bFragmentTransformsChanged() { return (*cast(uint*)(cast(size_t)cast(void*)this + 668) & 0x2) != 0; }
		bool bFragmentTransformsChanged(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 668) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 668) &= ~0x2; } return val; }
		bool bBecameVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 668) & 0x1) != 0; }
		bool bBecameVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 668) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 668) &= ~0x1; } return val; }
	}
}
