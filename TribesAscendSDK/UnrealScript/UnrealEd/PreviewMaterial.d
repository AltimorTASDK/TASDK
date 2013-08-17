module UnrealScript.UnrealEd.PreviewMaterial;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Material;

extern(C++) interface PreviewMaterial : Material
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.PreviewMaterial")()); }
	private static __gshared PreviewMaterial mDefaultProperties;
	@property final static PreviewMaterial DefaultProperties() { mixin(MGDPC!(PreviewMaterial, "PreviewMaterial UnrealEd.Default__PreviewMaterial")()); }
}
