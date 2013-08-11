module UnrealScript.TribesGame.TrAnimNodeBlendByVehicle;

import ScriptClasses;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendByVehicle : TrAnimNodeBlendList
{
	enum EVehicleAnims : ubyte
	{
		VANIM_NoVehicle = 0,
		VANIM_Driving = 1,
		VANIM_Enter = 2,
		VANIM_Exit = 3,
		VANIM_ChangeSeat = 4,
		VANIM_MAX = 5,
	}
	public @property final auto ref TrPawn m_TrPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 292); }
	final void PlayNoVehicleAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66474], cast(void*)0, cast(void*)0);
	}
	final void PlayDrivingAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66475], cast(void*)0, cast(void*)0);
	}
	final void PlayEnterAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66476], cast(void*)0, cast(void*)0);
	}
	final void PlayExitAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66477], cast(void*)0, cast(void*)0);
	}
	final void PlayChangeSeatAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66478], cast(void*)0, cast(void*)0);
	}
}
