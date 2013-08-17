module UnrealScript.UnrealEd.MaterialEditorSkeletalMeshComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface MaterialEditorSkeletalMeshComponent : SkeletalMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.MaterialEditorSkeletalMeshComponent")()); }
	private static __gshared MaterialEditorSkeletalMeshComponent mDefaultProperties;
	@property final static MaterialEditorSkeletalMeshComponent DefaultProperties() { mixin(MGDPC!(MaterialEditorSkeletalMeshComponent, "MaterialEditorSkeletalMeshComponent UnrealEd.Default__MaterialEditorSkeletalMeshComponent")()); }
}
