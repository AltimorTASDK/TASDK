module UnrealScript.Engine.Interface_NavMeshPathSwitch;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.Interface_NavMeshPathObject;

extern(C++) interface Interface_NavMeshPathSwitch : Interface_NavMeshPathObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Interface_NavMeshPathSwitch")); }
	private static __gshared Interface_NavMeshPathSwitch mDefaultProperties;
	@property final static Interface_NavMeshPathSwitch DefaultProperties() { mixin(MGDPC("Interface_NavMeshPathSwitch", "Interface_NavMeshPathSwitch Engine.Default__Interface_NavMeshPathSwitch")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mAIActivateSwitch;
		public @property static final ScriptFunction AIActivateSwitch() { mixin(MGF("mAIActivateSwitch", "Function Engine.Interface_NavMeshPathSwitch.AIActivateSwitch")); }
	}
	final bool AIActivateSwitch(AIController AI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AIController*)params.ptr = AI;
		(cast(ScriptObject)this).ProcessEvent(Functions.AIActivateSwitch, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
