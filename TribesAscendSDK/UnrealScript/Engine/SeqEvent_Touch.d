module UnrealScript.Engine.SeqEvent_Touch;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Actor;

extern(C++) interface SeqEvent_Touch : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_Touch")); }
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
			ScriptFunction CheckTouchActivate() { return mCheckTouchActivate ? mCheckTouchActivate : (mCheckTouchActivate = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqEvent_Touch.CheckTouchActivate")); }
			ScriptFunction CheckUnTouchActivate() { return mCheckUnTouchActivate ? mCheckUnTouchActivate : (mCheckUnTouchActivate = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqEvent_Touch.CheckUnTouchActivate")); }
			ScriptFunction Toggled() { return mToggled ? mToggled : (mToggled = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqEvent_Touch.Toggled")); }
			ScriptFunction NotifyTouchingPawnDied() { return mNotifyTouchingPawnDied ? mNotifyTouchingPawnDied : (mNotifyTouchingPawnDied = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqEvent_Touch.NotifyTouchingPawnDied")); }
			ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqEvent_Touch.GetObjClassVersion")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptClass) ClassProximityTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 256); }
			ScriptArray!(ScriptClass) IgnoredClassProximityTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 268); }
			ScriptArray!(Actor) TouchedList() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 284); }
		}
		bool bAllowDeadPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x4) != 0; }
		bool bAllowDeadPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x4; } return val; }
		bool bUseInstigator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x2) != 0; }
		bool bUseInstigator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x2; } return val; }
		bool bForceOverlapping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x1) != 0; }
		bool bForceOverlapping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x1; } return val; }
	}
final:
	bool CheckTouchActivate(Actor InOriginator, Actor InInstigator, bool bTest)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = InOriginator;
		*cast(Actor*)&params[4] = InInstigator;
		*cast(bool*)&params[8] = bTest;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckTouchActivate, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool CheckUnTouchActivate(Actor InOriginator, Actor InInstigator, bool bTest)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = InOriginator;
		*cast(Actor*)&params[4] = InInstigator;
		*cast(bool*)&params[8] = bTest;
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
