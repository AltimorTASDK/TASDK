module UnrealScript.Engine.DecalMaterial;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Material;

extern(C++) interface DecalMaterial : Material
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DecalMaterial")); }
	private static __gshared DecalMaterial mDefaultProperties;
	@property final static DecalMaterial DefaultProperties() { mixin(MGDPC("DecalMaterial", "DecalMaterial Engine.Default__DecalMaterial")); }
}
