module UnrealScript.Engine.DecalMaterial;

import ScriptClasses;
import UnrealScript.Engine.Material;

extern(C++) interface DecalMaterial : Material
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DecalMaterial")); }
	private static __gshared DecalMaterial mDefaultProperties;
	@property final static DecalMaterial DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DecalMaterial)("DecalMaterial Engine.Default__DecalMaterial")); }
}
