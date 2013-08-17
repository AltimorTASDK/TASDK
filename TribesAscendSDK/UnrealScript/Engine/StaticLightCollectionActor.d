module UnrealScript.Engine.StaticLightCollectionActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Light;

extern(C++) interface StaticLightCollectionActor : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.StaticLightCollectionActor")()); }
	private static __gshared StaticLightCollectionActor mDefaultProperties;
	@property final static StaticLightCollectionActor DefaultProperties() { mixin(MGDPC!(StaticLightCollectionActor, "StaticLightCollectionActor Engine.Default__StaticLightCollectionActor")()); }
	@property final auto ref
	{
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) LightComponents() { mixin(MGPC!("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 484)()); }
		int MaxLightComponents() { mixin(MGPC!("int", 496)()); }
	}
}
