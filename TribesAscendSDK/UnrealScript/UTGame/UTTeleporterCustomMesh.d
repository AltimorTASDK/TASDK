module UnrealScript.UTGame.UTTeleporterCustomMesh;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Teleporter;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Actor;

extern(C++) interface UTTeleporterCustomMesh : Teleporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTTeleporterCustomMesh")()); }
	private static __gshared UTTeleporterCustomMesh mDefaultProperties;
	@property final static UTTeleporterCustomMesh DefaultProperties() { mixin(MGDPC!(UTTeleporterCustomMesh, "UTTeleporterCustomMesh UTGame.Default__UTTeleporterCustomMesh")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAccept;
			ScriptFunction mTouch;
		}
		public @property static final
		{
			ScriptFunction Accept() { mixin(MGF!("mAccept", "Function UTGame.UTTeleporterCustomMesh.Accept")()); }
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function UTGame.UTTeleporterCustomMesh.Touch")()); }
		}
	}
	@property final auto ref
	{
		float LastTime() { mixin(MGPC!("float", 744)()); }
		UTPawn LastPawn() { mixin(MGPC!("UTPawn", 740)()); }
		SoundCue TeleportingSound() { mixin(MGPC!("SoundCue", 736)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Mesh'!
	}
final:
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
}
