module UnrealScript.Engine.InterpGroupInst;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpGroup;

extern(C++) interface InterpGroupInst : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpGroupInst")()); }
	private static __gshared InterpGroupInst mDefaultProperties;
	@property final static InterpGroupInst DefaultProperties() { mixin(MGDPC!(InterpGroupInst, "InterpGroupInst Engine.Default__InterpGroupInst")()); }
	@property final auto ref
	{
		ScriptArray!(InterpTrackInst) TrackInst() { mixin(MGPC!("ScriptArray!(InterpTrackInst)", 68)()); }
		Actor GroupActor() { mixin(MGPC!("Actor", 64)()); }
		InterpGroup Group() { mixin(MGPC!("InterpGroup", 60)()); }
	}
}
