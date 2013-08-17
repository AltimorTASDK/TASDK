module UnrealScript.Engine.Teleporter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;

extern(C++) interface Teleporter : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Teleporter")()); }
	private static __gshared Teleporter mDefaultProperties;
	@property final static Teleporter DefaultProperties() { mixin(MGDPC!(Teleporter, "Teleporter Engine.Default__Teleporter")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCanTeleport;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mAccept;
			ScriptFunction mTouch;
			ScriptFunction mPostTouch;
			ScriptFunction mSpecialHandling;
		}
		public @property static final
		{
			ScriptFunction CanTeleport() { mixin(MGF!("mCanTeleport", "Function Engine.Teleporter.CanTeleport")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.Teleporter.PostBeginPlay")()); }
			ScriptFunction Accept() { mixin(MGF!("mAccept", "Function Engine.Teleporter.Accept")()); }
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function Engine.Teleporter.Touch")()); }
			ScriptFunction PostTouch() { mixin(MGF!("mPostTouch", "Function Engine.Teleporter.PostTouch")()); }
			ScriptFunction SpecialHandling() { mixin(MGF!("mSpecialHandling", "Function Engine.Teleporter.SpecialHandling")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float LastFired() { mixin(MGPC!(float, 728)()); }
			Vector TargetVelocity() { mixin(MGPC!(Vector, 716)()); }
			ScriptName ProductRequired() { mixin(MGPC!(ScriptName, 704)()); }
			// WARNING: Property 'URL' has the same name as a defined type!
		}
		bool bCanTeleportVehicles() { mixin(MGBPC!(712, 0x40)()); }
		bool bCanTeleportVehicles(bool val) { mixin(MSBPC!(712, 0x40)()); }
		bool bEnabled() { mixin(MGBPC!(712, 0x20)()); }
		bool bEnabled(bool val) { mixin(MSBPC!(712, 0x20)()); }
		bool bReversesZ() { mixin(MGBPC!(712, 0x10)()); }
		bool bReversesZ(bool val) { mixin(MSBPC!(712, 0x10)()); }
		bool bReversesY() { mixin(MGBPC!(712, 0x8)()); }
		bool bReversesY(bool val) { mixin(MSBPC!(712, 0x8)()); }
		bool bReversesX() { mixin(MGBPC!(712, 0x4)()); }
		bool bReversesX(bool val) { mixin(MSBPC!(712, 0x4)()); }
		bool bChangesYaw() { mixin(MGBPC!(712, 0x2)()); }
		bool bChangesYaw(bool val) { mixin(MSBPC!(712, 0x2)()); }
		bool bChangesVelocity() { mixin(MGBPC!(712, 0x1)()); }
		bool bChangesVelocity(bool val) { mixin(MSBPC!(712, 0x1)()); }
	}
final:
	bool CanTeleport(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanTeleport, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	bool Accept(Actor Incoming, Actor Source)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Incoming;
		*cast(Actor*)&params[4] = Source;
		(cast(ScriptObject)this).ProcessEvent(Functions.Accept, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Touch, params.ptr, cast(void*)0);
	}
	void PostTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostTouch, params.ptr, cast(void*)0);
	}
	Actor SpecialHandling(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialHandling, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
}
