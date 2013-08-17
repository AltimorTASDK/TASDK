module UnrealScript.Engine.InterpGroupAI;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpGroup;

extern(C++) interface InterpGroupAI : InterpGroup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpGroupAI")()); }
	private static __gshared InterpGroupAI mDefaultProperties;
	@property final static InterpGroupAI DefaultProperties() { mixin(MGDPC!(InterpGroupAI, "InterpGroupAI Engine.Default__InterpGroupAI")()); }
	@property final
	{
		auto ref
		{
			Actor StageMarkActor() { mixin(MGPC!(Actor, 120)()); }
			Pawn PreviewPawn() { mixin(MGPC!(Pawn, 116)()); }
			ScriptName StageMarkGroup() { mixin(MGPC!(ScriptName, 108)()); }
			ScriptClass PreviewPawnClass() { mixin(MGPC!(ScriptClass, 104)()); }
		}
		bool bNoEncroachmentCheck() { mixin(MGBPC!(124, 0x2)()); }
		bool bNoEncroachmentCheck(bool val) { mixin(MSBPC!(124, 0x2)()); }
		bool SnapToRootBoneLocationWhenFinished() { mixin(MGBPC!(124, 0x1)()); }
		bool SnapToRootBoneLocationWhenFinished(bool val) { mixin(MSBPC!(124, 0x1)()); }
	}
}
