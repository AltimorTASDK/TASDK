module UnrealScript.Engine.SeqAct_Possess;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Possess : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_Possess")); }
	private static __gshared SeqAct_Possess mDefaultProperties;
	@property final static SeqAct_Possess DefaultProperties() { mixin(MGDPC("SeqAct_Possess", "SeqAct_Possess Engine.Default__SeqAct_Possess")); }
	@property final
	{
		@property final auto ref Pawn PawnToPossess() { mixin(MGPC("Pawn", 232)); }
		bool bTryToLeaveVehicle() { mixin(MGBPC(236, 0x2)); }
		bool bTryToLeaveVehicle(bool val) { mixin(MSBPC(236, 0x2)); }
		bool bKillOldPawn() { mixin(MGBPC(236, 0x1)); }
		bool bKillOldPawn(bool val) { mixin(MSBPC(236, 0x1)); }
	}
}
