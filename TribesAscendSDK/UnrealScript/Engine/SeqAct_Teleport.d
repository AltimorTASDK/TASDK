module UnrealScript.Engine.SeqAct_Teleport;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Volume;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Teleport : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_Teleport")()); }
	private static __gshared SeqAct_Teleport mDefaultProperties;
	@property final static SeqAct_Teleport DefaultProperties() { mixin(MGDPC!(SeqAct_Teleport, "SeqAct_Teleport Engine.Default__SeqAct_Teleport")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mShouldTeleport;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction ShouldTeleport() { mixin(MGF!("mShouldTeleport", "Function Engine.SeqAct_Teleport.ShouldTeleport")()); }
			ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_Teleport.GetObjClassVersion")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Volume) TeleportVolumes() { mixin(MGPC!(ScriptArray!(Volume), 240)()); }
			float TeleportDistance() { mixin(MGPC!(float, 236)()); }
		}
		bool bCheckOverlap() { mixin(MGBPC!(232, 0x2)()); }
		bool bCheckOverlap(bool val) { mixin(MSBPC!(232, 0x2)()); }
		bool bUpdateRotation() { mixin(MGBPC!(232, 0x1)()); }
		bool bUpdateRotation(bool val) { mixin(MSBPC!(232, 0x1)()); }
	}
final:
	bool ShouldTeleport(Actor TestActor, Vector TeleportLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = TestActor;
		*cast(Vector*)&params[4] = TeleportLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldTeleport, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
