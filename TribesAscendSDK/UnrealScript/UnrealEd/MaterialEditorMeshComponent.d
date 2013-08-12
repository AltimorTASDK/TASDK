module UnrealScript.UnrealEd.MaterialEditorMeshComponent;

import ScriptClasses;
import UnrealScript.Engine.StaticMeshComponent;

extern(C++) interface MaterialEditorMeshComponent : StaticMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.MaterialEditorMeshComponent")); }
	private static __gshared MaterialEditorMeshComponent mDefaultProperties;
	@property final static MaterialEditorMeshComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialEditorMeshComponent)("MaterialEditorMeshComponent UnrealEd.Default__MaterialEditorMeshComponent")); }
}
