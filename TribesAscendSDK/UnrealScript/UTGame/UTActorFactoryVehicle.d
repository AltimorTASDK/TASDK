module UnrealScript.UTGame.UTActorFactoryVehicle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ActorFactoryVehicle;

extern(C++) interface UTActorFactoryVehicle : ActorFactoryVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTActorFactoryVehicle")); }
	private static __gshared UTActorFactoryVehicle mDefaultProperties;
	@property final static UTActorFactoryVehicle DefaultProperties() { mixin(MGDPC("UTActorFactoryVehicle", "UTActorFactoryVehicle UTGame.Default__UTActorFactoryVehicle")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostCreateActor;
		public @property static final ScriptFunction PostCreateActor() { mixin(MGF("mPostCreateActor", "Function UTGame.UTActorFactoryVehicle.PostCreateActor")); }
	}
	@property final
	{
		@property final auto ref ubyte TeamNum() { mixin(MGPC("ubyte", 100)); }
		bool bKeyVehicle() { mixin(MGBPC(96, 0x2)); }
		bool bKeyVehicle(bool val) { mixin(MSBPC(96, 0x2)); }
		bool bTeamLocked() { mixin(MGBPC(96, 0x1)); }
		bool bTeamLocked(bool val) { mixin(MSBPC(96, 0x1)); }
	}
	final void PostCreateActor(Actor NewActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostCreateActor, params.ptr, cast(void*)0);
	}
}
