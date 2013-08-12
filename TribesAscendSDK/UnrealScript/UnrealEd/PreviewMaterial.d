module UnrealScript.UnrealEd.PreviewMaterial;

import ScriptClasses;
import UnrealScript.Engine.Material;

extern(C++) interface PreviewMaterial : Material
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PreviewMaterial")); }
	private static __gshared PreviewMaterial mDefaultProperties;
	@property final static PreviewMaterial DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PreviewMaterial)("PreviewMaterial UnrealEd.Default__PreviewMaterial")); }
}
