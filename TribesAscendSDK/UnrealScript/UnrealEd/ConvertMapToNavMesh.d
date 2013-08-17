module UnrealScript.UnrealEd.ConvertMapToNavMesh;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ConvertMapToNavMesh : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ConvertMapToNavMesh")()); }
	private static __gshared ConvertMapToNavMesh mDefaultProperties;
	@property final static ConvertMapToNavMesh DefaultProperties() { mixin(MGDPC!(ConvertMapToNavMesh, "ConvertMapToNavMesh UnrealEd.Default__ConvertMapToNavMesh")()); }
}
