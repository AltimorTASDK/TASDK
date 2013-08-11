module UnrealScript.UTGame.UTTeamHUD;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTHUD;

extern(C++) interface UTTeamHUD : UTHUD
{
	public @property final auto ref float TeamScaleModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 2736); }
	public @property final auto ref float OldRightScore() { return *cast(float*)(cast(size_t)cast(void*)this + 2732); }
	public @property final auto ref float OldLeftScore() { return *cast(float*)(cast(size_t)cast(void*)this + 2728); }
	public @property final auto ref float RightTeamPulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2724); }
	public @property final auto ref float LeftTeamPulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2720); }
	public @property final auto ref UObject.Vector2D TeamIconCenterPoints() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 2704); }
	public @property final auto ref int ScoreTransitionTime() { return *cast(int*)(cast(size_t)cast(void*)this + 2696); }
	public @property final auto ref int LastScores() { return *cast(int*)(cast(size_t)cast(void*)this + 2688); }
	public @property final bool bShowDirectional() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2684) & 0x1) != 0; }
	public @property final bool bShowDirectional(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2684) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2684) &= ~0x1; } return val; }
	final void DisplayScoring()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46008], cast(void*)0, cast(void*)0);
	}
	final void DisplayTeamScore()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46009], cast(void*)0, cast(void*)0);
	}
	final int GetTeamScore(ubyte TeamIndex)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46019], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final Actor GetDirectionalDest(ubyte TeamIndex)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46022], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	final void DisplayTeamLogos(ubyte TeamIndex, UObject.Vector2D pos, float DestScale)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = TeamIndex;
		*cast(UObject.Vector2D*)&params[4] = pos;
		*cast(float*)&params[12] = DestScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46025], params.ptr, cast(void*)0);
	}
	final void DisplayDirectionIndicator(ubyte TeamIndex, UObject.Vector2D pos, Actor destActor, float DestScale)
	{
		ubyte params[17];
		params[] = 0;
		params[0] = TeamIndex;
		*cast(UObject.Vector2D*)&params[4] = pos;
		*cast(Actor*)&params[12] = destActor;
		*cast(float*)&params[16] = DestScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46029], params.ptr, cast(void*)0);
	}
}
