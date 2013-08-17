module UnrealScript.UnrealEd.MaterialEditorMeshComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.StaticMeshComponent;

extern(C++) interface MaterialEditorMeshComponent : StaticMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.MaterialEditorMeshComponent")); }
	private static __gshared MaterialEditorMeshComponent mDefaultProperties;
	@property final static MaterialEditorMeshComponent DefaultProperties() { mixin(MGDPC("MaterialEditorMeshComponent", "MaterialEditorMeshComponent UnrealEd.Default__MaterialEditorMeshComponent")); }
}
