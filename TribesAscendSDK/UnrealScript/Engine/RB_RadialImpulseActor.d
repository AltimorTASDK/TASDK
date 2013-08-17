module UnrealScript.Engine.RB_RadialImpulseActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.RigidBodyBase;

extern(C++) interface RB_RadialImpulseActor : RigidBodyBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.RB_RadialImpulseActor")); }
	private static __gshared RB_RadialImpulseActor mDefaultProperties;
	@property final static RB_RadialImpulseActor DefaultProperties() { mixin(MGDPC("RB_RadialImpulseActor", "RB_RadialImpulseActor Engine.Default__RB_RadialImpulseActor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnToggle;
			ScriptFunction mReplicatedEvent;
		}
		public @property static final
		{
			ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function Engine.RB_RadialImpulseActor.OnToggle")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function Engine.RB_RadialImpulseActor.ReplicatedEvent")); }
		}
	}
	@property final auto ref
	{
		ubyte ImpulseCount() { mixin(MGPC("ubyte", 484)); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ImpulseComponent'!
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'RenderComponent'!
	}
final:
	void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
}
