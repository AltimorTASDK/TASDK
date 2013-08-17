module UnrealScript.Engine.PathTargetPoint;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Keypoint;

extern(C++) interface PathTargetPoint : Keypoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PathTargetPoint")); }
	private static __gshared PathTargetPoint mDefaultProperties;
	@property final static PathTargetPoint DefaultProperties() { mixin(MGDPC("PathTargetPoint", "PathTargetPoint Engine.Default__PathTargetPoint")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mShouldBeHiddenBySHOW_NavigationNodes;
		public @property static final ScriptFunction ShouldBeHiddenBySHOW_NavigationNodes() { mixin(MGF("mShouldBeHiddenBySHOW_NavigationNodes", "Function Engine.PathTargetPoint.ShouldBeHiddenBySHOW_NavigationNodes")); }
	}
	final bool ShouldBeHiddenBySHOW_NavigationNodes()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldBeHiddenBySHOW_NavigationNodes, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
