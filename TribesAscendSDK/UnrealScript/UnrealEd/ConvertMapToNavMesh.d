module UnrealScript.UnrealEd.ConvertMapToNavMesh;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ConvertMapToNavMesh : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ConvertMapToNavMesh")); }
	private static __gshared ConvertMapToNavMesh mDefaultProperties;
	@property final static ConvertMapToNavMesh DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ConvertMapToNavMesh)("ConvertMapToNavMesh UnrealEd.Default__ConvertMapToNavMesh")); }
}
