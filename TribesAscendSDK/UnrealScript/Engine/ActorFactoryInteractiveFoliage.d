module UnrealScript.Engine.ActorFactoryInteractiveFoliage;

import ScriptClasses;
import UnrealScript.Engine.ActorFactoryStaticMesh;

extern(C++) interface ActorFactoryInteractiveFoliage : ActorFactoryStaticMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryInteractiveFoliage")); }
	private static __gshared ActorFactoryInteractiveFoliage mDefaultProperties;
	@property final static ActorFactoryInteractiveFoliage DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryInteractiveFoliage)("ActorFactoryInteractiveFoliage Engine.Default__ActorFactoryInteractiveFoliage")); }
}
