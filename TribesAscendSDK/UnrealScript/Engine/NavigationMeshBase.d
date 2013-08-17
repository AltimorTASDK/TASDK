module UnrealScript.Engine.NavigationMeshBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface NavigationMeshBase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NavigationMeshBase")()); }
	private static __gshared NavigationMeshBase mDefaultProperties;
	@property final static NavigationMeshBase DefaultProperties() { mixin(MGDPC!(NavigationMeshBase, "NavigationMeshBase Engine.Default__NavigationMeshBase")()); }
}
