module UnrealScript.TribesGame.TrDaDShell;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpActor;

extern(C++) interface TrDaDShell : InterpActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDaDShell")); }
	private static __gshared TrDaDShell mDefaultProperties;
	@property final static TrDaDShell DefaultProperties() { mixin(MGDPC("TrDaDShell", "TrDaDShell TribesGame.Default__TrDaDShell")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReplicatedEvent;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mStartRotation;
			ScriptFunction mStopRotation;
		}
		public @property static final
		{
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function TribesGame.TrDaDShell.ReplicatedEvent")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function TribesGame.TrDaDShell.PostBeginPlay")); }
			ScriptFunction StartRotation() { mixin(MGF("mStartRotation", "Function TribesGame.TrDaDShell.StartRotation")); }
			ScriptFunction StopRotation() { mixin(MGF("mStopRotation", "Function TribesGame.TrDaDShell.StopRotation")); }
		}
	}
	@property final
	{
		auto ref
		{
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'c_ShieldMesh2'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'c_ShieldMesh1'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'c_ShieldMesh0'!
		}
		bool r_bShield0Up() { mixin(MGBPC(588, 0x1)); }
		bool r_bShield0Up(bool val) { mixin(MSBPC(588, 0x1)); }
		bool r_bShield1Up() { mixin(MGBPC(588, 0x2)); }
		bool r_bShield1Up(bool val) { mixin(MSBPC(588, 0x2)); }
		bool r_bShield2Up() { mixin(MGBPC(588, 0x4)); }
		bool r_bShield2Up(bool val) { mixin(MSBPC(588, 0x4)); }
		bool r_bIsRotating() { mixin(MGBPC(588, 0x8)); }
		bool r_bIsRotating(bool val) { mixin(MSBPC(588, 0x8)); }
	}
final:
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void StartRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartRotation, cast(void*)0, cast(void*)0);
	}
	void StopRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopRotation, cast(void*)0, cast(void*)0);
	}
}
