module UnrealScript.Engine.MaterialInstanceActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Actor;

extern(C++) interface MaterialInstanceActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialInstanceActor")()); }
	private static __gshared MaterialInstanceActor mDefaultProperties;
	@property final static MaterialInstanceActor DefaultProperties() { mixin(MGDPC!(MaterialInstanceActor, "MaterialInstanceActor Engine.Default__MaterialInstanceActor")()); }
	@property final auto ref MaterialInstanceConstant MatInst() { mixin(MGPC!(MaterialInstanceConstant, 476)()); }
}
