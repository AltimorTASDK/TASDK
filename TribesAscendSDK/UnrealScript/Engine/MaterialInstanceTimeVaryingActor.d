module UnrealScript.Engine.MaterialInstanceTimeVaryingActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.MaterialInstanceTimeVarying;

extern(C++) interface MaterialInstanceTimeVaryingActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialInstanceTimeVaryingActor")()); }
	private static __gshared MaterialInstanceTimeVaryingActor mDefaultProperties;
	@property final static MaterialInstanceTimeVaryingActor DefaultProperties() { mixin(MGDPC!(MaterialInstanceTimeVaryingActor, "MaterialInstanceTimeVaryingActor Engine.Default__MaterialInstanceTimeVaryingActor")()); }
	@property final auto ref MaterialInstanceTimeVarying MatInst() { mixin(MGPC!(MaterialInstanceTimeVarying, 476)()); }
}
