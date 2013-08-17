module UnrealScript.TribesGame.TrAnimNodeBlendByVehicle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendByVehicle : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAnimNodeBlendByVehicle")()); }
	private static __gshared TrAnimNodeBlendByVehicle mDefaultProperties;
	@property final static TrAnimNodeBlendByVehicle DefaultProperties() { mixin(MGDPC!(TrAnimNodeBlendByVehicle, "TrAnimNodeBlendByVehicle TribesGame.Default__TrAnimNodeBlendByVehicle")()); }
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
			ScriptFunction PlayNoVehicleAnim() { mixin(MGF!("mPlayNoVehicleAnim", "Function TribesGame.TrAnimNodeBlendByVehicle.PlayNoVehicleAnim")()); }
			ScriptFunction PlayDrivingAnim() { mixin(MGF!("mPlayDrivingAnim", "Function TribesGame.TrAnimNodeBlendByVehicle.PlayDrivingAnim")()); }
			ScriptFunction PlayEnterAnim() { mixin(MGF!("mPlayEnterAnim", "Function TribesGame.TrAnimNodeBlendByVehicle.PlayEnterAnim")()); }
			ScriptFunction PlayExitAnim() { mixin(MGF!("mPlayExitAnim", "Function TribesGame.TrAnimNodeBlendByVehicle.PlayExitAnim")()); }
			ScriptFunction PlayChangeSeatAnim() { mixin(MGF!("mPlayChangeSeatAnim", "Function TribesGame.TrAnimNodeBlendByVehicle.PlayChangeSeatAnim")()); }
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
	@property final auto ref TrPawn m_TrPawn() { mixin(MGPC!(TrPawn, 292)()); }
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
