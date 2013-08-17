module UnrealScript.Engine.WindDirectionalSourceComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;

extern(C++) interface WindDirectionalSourceComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.WindDirectionalSourceComponent")()); }
	private static __gshared WindDirectionalSourceComponent mDefaultProperties;
	@property final static WindDirectionalSourceComponent DefaultProperties() { mixin(MGDPC!(WindDirectionalSourceComponent, "WindDirectionalSourceComponent Engine.Default__WindDirectionalSourceComponent")()); }
	@property final auto ref
	{
		float Speed() { mixin(MGPC!("float", 104)()); }
		float Frequency() { mixin(MGPC!("float", 100)()); }
		float Phase() { mixin(MGPC!("float", 96)()); }
		float Strength() { mixin(MGPC!("float", 92)()); }
		UObject.Pointer SceneProxy() { mixin(MGPC!("UObject.Pointer", 88)()); }
	}
}
