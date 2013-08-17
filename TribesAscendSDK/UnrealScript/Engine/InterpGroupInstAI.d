module UnrealScript.Engine.InterpGroupInstAI;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpGroupInst;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpGroupAI;

extern(C++) interface InterpGroupInstAI : InterpGroupInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpGroupInstAI")); }
	private static __gshared InterpGroupInstAI mDefaultProperties;
	@property final static InterpGroupInstAI DefaultProperties() { mixin(MGDPC("InterpGroupInstAI", "InterpGroupInstAI Engine.Default__InterpGroupInstAI")); }
	@property final
	{
		auto ref
		{
			Actor.EPhysics SavedPhysics() { mixin(MGPC("Actor.EPhysics", 84)); }
			InterpGroupAI AIGroup() { mixin(MGPC("InterpGroupAI", 80)); }
		}
		bool bSavedNoEncroachCheck() { mixin(MGBPC(88, 0x1)); }
		bool bSavedNoEncroachCheck(bool val) { mixin(MSBPC(88, 0x1)); }
	}
}
