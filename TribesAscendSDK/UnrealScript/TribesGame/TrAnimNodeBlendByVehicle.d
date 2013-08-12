module UnrealScript.TribesGame.TrAnimNodeBlendByVehicle;

import ScriptClasses;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendByVehicle : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAnimNodeBlendByVehicle")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPlayNoVehicleAnim;
			ScriptFunction mPlayDrivingAnim;
			ScriptFunction mPlayEnterAnim;
			ScriptFunction mPlayExitAnim;
			ScriptFunction mPlayChangeSeatAnim;
		}
		public @property static final
		{
			ScriptFunction PlayNoVehicleAnim() { return mPlayNoVehicleAnim ? mPlayNoVehicleAnim : (mPlayNoVehicleAnim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByVehicle.PlayNoVehicleAnim")); }
			ScriptFunction PlayDrivingAnim() { return mPlayDrivingAnim ? mPlayDrivingAnim : (mPlayDrivingAnim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByVehicle.PlayDrivingAnim")); }
			ScriptFunction PlayEnterAnim() { return mPlayEnterAnim ? mPlayEnterAnim : (mPlayEnterAnim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByVehicle.PlayEnterAnim")); }
			ScriptFunction PlayExitAnim() { return mPlayExitAnim ? mPlayExitAnim : (mPlayExitAnim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByVehicle.PlayExitAnim")); }
			ScriptFunction PlayChangeSeatAnim() { return mPlayChangeSeatAnim ? mPlayChangeSeatAnim : (mPlayChangeSeatAnim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByVehicle.PlayChangeSeatAnim")); }
		}
	}
	enum EVehicleAnims : ubyte
	{
		VANIM_NoVehicle = 0,
		VANIM_Driving = 1,
		VANIM_Enter = 2,
		VANIM_Exit = 3,
		VANIM_ChangeSeat = 4,
		VANIM_MAX = 5,
	}
	@property final auto ref TrPawn m_TrPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 292); }
final:
	void PlayNoVehicleAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayNoVehicleAnim, cast(void*)0, cast(void*)0);
	}
	void PlayDrivingAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDrivingAnim, cast(void*)0, cast(void*)0);
	}
	void PlayEnterAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayEnterAnim, cast(void*)0, cast(void*)0);
	}
	void PlayExitAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayExitAnim, cast(void*)0, cast(void*)0);
	}
	void PlayChangeSeatAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayChangeSeatAnim, cast(void*)0, cast(void*)0);
	}
}
