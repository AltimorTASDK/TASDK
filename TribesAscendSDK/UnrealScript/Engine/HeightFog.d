module UnrealScript.Engine.HeightFog;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Info;

extern(C++) interface HeightFog : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.HeightFog")); }
	private static __gshared HeightFog mDefaultProperties;
	@property final static HeightFog DefaultProperties() { mixin(MGDPC("HeightFog", "HeightFog Engine.Default__HeightFog")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mOnToggle;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function Engine.HeightFog.PostBeginPlay")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function Engine.HeightFog.ReplicatedEvent")); }
			ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function Engine.HeightFog.OnToggle")); }
		}
	}
	@property final
	{
		// WARNING: Property 'Component' has the same name as a defined type!
		bool bEnabled() { mixin(MGBPC(480, 0x1)); }
		bool bEnabled(bool val) { mixin(MSBPC(480, 0x1)); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
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
