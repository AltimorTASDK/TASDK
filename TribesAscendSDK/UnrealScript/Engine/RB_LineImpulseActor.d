module UnrealScript.Engine.RB_LineImpulseActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.RigidBodyBase;

extern(C++) interface RB_LineImpulseActor : RigidBodyBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.RB_LineImpulseActor")); }
	private static __gshared RB_LineImpulseActor mDefaultProperties;
	@property final static RB_LineImpulseActor DefaultProperties() { mixin(MGDPC("RB_LineImpulseActor", "RB_LineImpulseActor Engine.Default__RB_LineImpulseActor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFireLineImpulse;
			ScriptFunction mOnToggle;
			ScriptFunction mReplicatedEvent;
		}
		public @property static final
		{
			ScriptFunction FireLineImpulse() { mixin(MGF("mFireLineImpulse", "Function Engine.RB_LineImpulseActor.FireLineImpulse")); }
			ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function Engine.RB_LineImpulseActor.OnToggle")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function Engine.RB_LineImpulseActor.ReplicatedEvent")); }
		}
	}
	@property final
	{
		auto ref
		{
			ubyte ImpulseCount() { mixin(MGPC("ubyte", 492)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Arrow'!
			float ImpulseRange() { mixin(MGPC("float", 480)); }
			float ImpulseStrength() { mixin(MGPC("float", 476)); }
		}
		bool bCauseFracture() { mixin(MGBPC(484, 0x4)); }
		bool bCauseFracture(bool val) { mixin(MSBPC(484, 0x4)); }
		bool bStopAtFirstHit() { mixin(MGBPC(484, 0x2)); }
		bool bStopAtFirstHit(bool val) { mixin(MSBPC(484, 0x2)); }
		bool bVelChange() { mixin(MGBPC(484, 0x1)); }
		bool bVelChange(bool val) { mixin(MSBPC(484, 0x1)); }
	}
final:
	void FireLineImpulse()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireLineImpulse, cast(void*)0, cast(void*)0);
	}
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
