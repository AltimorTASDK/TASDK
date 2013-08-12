module UnrealScript.UTGame.UTTeleporterCustomMesh;

import ScriptClasses;
import UnrealScript.Engine.Teleporter;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Actor;

extern(C++) interface UTTeleporterCustomMesh : Teleporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTTeleporterCustomMesh")); }
	private static __gshared UTTeleporterCustomMesh mDefaultProperties;
	@property final static UTTeleporterCustomMesh DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTTeleporterCustomMesh)("UTTeleporterCustomMesh UTGame.Default__UTTeleporterCustomMesh")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAccept;
			ScriptFunction mTouch;
		}
		public @property static final
		{
			ScriptFunction Accept() { return mAccept ? mAccept : (mAccept = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeleporterCustomMesh.Accept")); }
			ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeleporterCustomMesh.Touch")); }
		}
	}
	@property final auto ref
	{
		float LastTime() { return *cast(float*)(cast(size_t)cast(void*)this + 744); }
		UTPawn LastPawn() { return *cast(UTPawn*)(cast(size_t)cast(void*)this + 740); }
		SoundCue TeleportingSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 736); }
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
