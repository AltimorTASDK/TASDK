module UnrealScript.Engine.PathTargetPoint;

import ScriptClasses;
import UnrealScript.Engine.Keypoint;

extern(C++) interface PathTargetPoint : Keypoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PathTargetPoint")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mShouldBeHiddenBySHOW_NavigationNodes;
		public @property static final ScriptFunction ShouldBeHiddenBySHOW_NavigationNodes() { return mShouldBeHiddenBySHOW_NavigationNodes ? mShouldBeHiddenBySHOW_NavigationNodes : (mShouldBeHiddenBySHOW_NavigationNodes = ScriptObject.Find!(ScriptFunction)("Function Engine.PathTargetPoint.ShouldBeHiddenBySHOW_NavigationNodes")); }
	}
	final bool ShouldBeHiddenBySHOW_NavigationNodes()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldBeHiddenBySHOW_NavigationNodes, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
