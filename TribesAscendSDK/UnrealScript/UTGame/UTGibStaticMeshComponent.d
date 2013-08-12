module UnrealScript.UTGame.UTGibStaticMeshComponent;

import ScriptClasses;
import UnrealScript.Engine.StaticMeshComponent;

extern(C++) interface UTGibStaticMeshComponent : StaticMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTGibStaticMeshComponent")); }
	private static __gshared UTGibStaticMeshComponent mDefaultProperties;
	@property final static UTGibStaticMeshComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTGibStaticMeshComponent)("UTGibStaticMeshComponent UTGame.Default__UTGibStaticMeshComponent")); }
}
