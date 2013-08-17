module UnrealScript.Engine.FluidInfluenceActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;

extern(C++) interface FluidInfluenceActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.FluidInfluenceActor")); }
	private static __gshared FluidInfluenceActor mDefaultProperties;
	@property final static FluidInfluenceActor DefaultProperties() { mixin(MGDPC("FluidInfluenceActor", "FluidInfluenceActor Engine.Default__FluidInfluenceActor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnToggle;
			ScriptFunction mReplicatedEvent;
		}
		public @property static final
		{
			ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function Engine.FluidInfluenceActor.OnToggle")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function Engine.FluidInfluenceActor.ReplicatedEvent")); }
		}
	}
	@property final
	{
		auto ref
		{
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'InfluenceComponent'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Sprite'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'FlowDirection'!
		}
		bool bToggled() { mixin(MGBPC(488, 0x2)); }
		bool bToggled(bool val) { mixin(MSBPC(488, 0x2)); }
		bool bActive() { mixin(MGBPC(488, 0x1)); }
		bool bActive(bool val) { mixin(MSBPC(488, 0x1)); }
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
