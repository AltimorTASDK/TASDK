module UnrealScript.Engine.MeshComponentFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponentFactory;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface MeshComponentFactory : PrimitiveComponentFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MeshComponentFactory")); }
	private static __gshared MeshComponentFactory mDefaultProperties;
	@property final static MeshComponentFactory DefaultProperties() { mixin(MGDPC("MeshComponentFactory", "MeshComponentFactory Engine.Default__MeshComponentFactory")); }
	@property final auto ref ScriptArray!(MaterialInterface) Materials() { mixin(MGPC("ScriptArray!(MaterialInterface)", 64)); }
}
