module UnrealScript.Engine.FracturedSkinnedMeshComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.FracturedBaseComponent;

extern(C++) interface FracturedSkinnedMeshComponent : FracturedBaseComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.FracturedSkinnedMeshComponent")); }
	private static __gshared FracturedSkinnedMeshComponent mDefaultProperties;
	@property final static FracturedSkinnedMeshComponent DefaultProperties() { mixin(MGDPC("FracturedSkinnedMeshComponent", "FracturedSkinnedMeshComponent Engine.Default__FracturedSkinnedMeshComponent")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject.Matrix) FragmentTransforms() { mixin(MGPC("ScriptArray!(UObject.Matrix)", 644)); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) DependentComponents() { mixin(MGPC("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 656)); }
			Pointer ComponentSkinResources() { mixin(MGPC("Pointer", 640)); }
		}
		bool bFragmentTransformsChanged() { mixin(MGBPC(668, 0x2)); }
		bool bFragmentTransformsChanged(bool val) { mixin(MSBPC(668, 0x2)); }
		bool bBecameVisible() { mixin(MGBPC(668, 0x1)); }
		bool bBecameVisible(bool val) { mixin(MSBPC(668, 0x1)); }
	}
}
