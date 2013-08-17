module UnrealScript.Engine.SeqAct_AIMoveToActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.Actor;

extern(C++) interface SeqAct_AIMoveToActor : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_AIMoveToActor")()); }
	private static __gshared SeqAct_AIMoveToActor mDefaultProperties;
	@property final static SeqAct_AIMoveToActor DefaultProperties() { mixin(MGDPC!(SeqAct_AIMoveToActor, "SeqAct_AIMoveToActor Engine.Default__SeqAct_AIMoveToActor")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPickDestination;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction PickDestination() { mixin(MGF!("mPickDestination", "Function Engine.SeqAct_AIMoveToActor.PickDestination")()); }
			ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_AIMoveToActor.GetObjClassVersion")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Actor) Destination() { mixin(MGPC!(ScriptArray!(Actor), 252)()); }
			int LastDestinationChoice() { mixin(MGPC!(int, 272)()); }
			Actor LookAt() { mixin(MGPC!(Actor, 268)()); }
			float MovementSpeedModifier() { mixin(MGPC!(float, 264)()); }
		}
		bool bPickClosest() { mixin(MGBPC!(248, 0x2)()); }
		bool bPickClosest(bool val) { mixin(MSBPC!(248, 0x2)()); }
		bool bInterruptable() { mixin(MGBPC!(248, 0x1)()); }
		bool bInterruptable(bool val) { mixin(MSBPC!(248, 0x1)()); }
	}
final:
	Actor PickDestination(Actor Requestor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Requestor;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickDestination, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
