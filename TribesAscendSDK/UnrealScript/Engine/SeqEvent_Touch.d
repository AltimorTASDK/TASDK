module UnrealScript.Engine.SeqEvent_Touch;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Actor;

extern(C++) interface SeqEvent_Touch : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqEvent_Touch")); }
	private static __gshared SeqEvent_Touch mDefaultProperties;
	@property final static SeqEvent_Touch DefaultProperties() { mixin(MGDPC("SeqEvent_Touch", "SeqEvent_Touch Engine.Default__SeqEvent_Touch")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCheckTouchActivate;
			ScriptFunction mCheckUnTouchActivate;
			ScriptFunction mToggled;
			ScriptFunction mNotifyTouchingPawnDied;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction CheckTouchActivate() { mixin(MGF("mCheckTouchActivate", "Function Engine.SeqEvent_Touch.CheckTouchActivate")); }
			ScriptFunction CheckUnTouchActivate() { mixin(MGF("mCheckUnTouchActivate", "Function Engine.SeqEvent_Touch.CheckUnTouchActivate")); }
			ScriptFunction Toggled() { mixin(MGF("mToggled", "Function Engine.SeqEvent_Touch.Toggled")); }
			ScriptFunction NotifyTouchingPawnDied() { mixin(MGF("mNotifyTouchingPawnDied", "Function Engine.SeqEvent_Touch.NotifyTouchingPawnDied")); }
			ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function Engine.SeqEvent_Touch.GetObjClassVersion")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptClass) ClassProximityTypes() { mixin(MGPC("ScriptArray!(ScriptClass)", 256)); }
			ScriptArray!(ScriptClass) IgnoredClassProximityTypes() { mixin(MGPC("ScriptArray!(ScriptClass)", 268)); }
			ScriptArray!(Actor) TouchedList() { mixin(MGPC("ScriptArray!(Actor)", 284)); }
		}
		bool bAllowDeadPawns() { mixin(MGBPC(280, 0x4)); }
		bool bAllowDeadPawns(bool val) { mixin(MSBPC(280, 0x4)); }
		bool bUseInstigator() { mixin(MGBPC(280, 0x2)); }
		bool bUseInstigator(bool val) { mixin(MSBPC(280, 0x2)); }
		bool bForceOverlapping() { mixin(MGBPC(280, 0x1)); }
		bool bForceOverlapping(bool val) { mixin(MSBPC(280, 0x1)); }
	}
final:
	bool CheckTouchActivate(Actor InOriginator, Actor InInstigator, bool* bTest = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = InOriginator;
		*cast(Actor*)&params[4] = InInstigator;
		if (bTest !is null)
			*cast(bool*)&params[8] = *bTest;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckTouchActivate, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool CheckUnTouchActivate(Actor InOriginator, Actor InInstigator, bool* bTest = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = InOriginator;
		*cast(Actor*)&params[4] = InInstigator;
		if (bTest !is null)
			*cast(bool*)&params[8] = *bTest;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckUnTouchActivate, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void Toggled()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Toggled, cast(void*)0, cast(void*)0);
	}
	void NotifyTouchingPawnDied(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyTouchingPawnDied, params.ptr, cast(void*)0);
	}
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
