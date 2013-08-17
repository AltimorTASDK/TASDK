module UnrealScript.Engine.Light;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;

extern(C++) interface Light : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Light")()); }
	private static __gshared Light mDefaultProperties;
	@property final static Light DefaultProperties() { mixin(MGDPC!(Light, "Light Engine.Default__Light")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReplicatedEvent;
			ScriptFunction mOnToggle;
		}
		public @property static final
		{
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function Engine.Light.ReplicatedEvent")()); }
			ScriptFunction OnToggle() { mixin(MGF!("mOnToggle", "Function Engine.Light.OnToggle")()); }
		}
	}
	@property final
	{
		// WARNING: Property 'LightComponent' has the same name as a defined type!
		bool bEnabled() { mixin(MGBPC!(480, 0x1)()); }
		bool bEnabled(bool val) { mixin(MSBPC!(480, 0x1)()); }
	}
final:
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
