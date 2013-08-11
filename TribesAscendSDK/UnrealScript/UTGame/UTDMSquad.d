module UnrealScript.UTGame.UTDMSquad;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.UTGame.UTSquadAI;
import UnrealScript.Engine.HUD;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTDMSquad : UTSquadAI
{
	final void DisplayDebug(HUD pHUD, float* YL, float* YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *YL;
		*cast(float*)&params[8] = *YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47186], params.ptr, cast(void*)0);
		*YL = *cast(float*)&params[4];
		*YPos = *cast(float*)&params[8];
	}
	final bool IsDefending(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47193], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void AddBot(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47196], params.ptr, cast(void*)0);
	}
	final void RemoveBot(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47198], params.ptr, cast(void*)0);
	}
	final bool ShouldDeferTo(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47200], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CheckSquadObjectives(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47203], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool WaitAtThisPosition(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47206], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool NearFormationCenter(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47209], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool BeDevious(Pawn Enemy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Enemy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47212], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final ScriptName GetOrders()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47215], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	final bool SetEnemy(UTBot B, Pawn NewEnemy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = NewEnemy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47217], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool FriendlyToward(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47222], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool AllowContinueOnFoot(UTBot B, UTVehicle V)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(UTVehicle*)&params[4] = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47225], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final float VehicleDesireability(UTVehicle V, UTBot B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = V;
		*cast(UTBot*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47229], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final bool AssignSquadResponsibility(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47233], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
