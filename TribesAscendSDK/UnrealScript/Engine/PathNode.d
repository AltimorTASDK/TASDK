module UnrealScript.Engine.PathNode;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;

extern(C++) interface PathNode : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PathNode")); }
	private static __gshared PathNode mDefaultProperties;
	@property final static PathNode DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PathNode)("PathNode Engine.Default__PathNode")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetDebugAbbrev;
		public @property static final ScriptFunction GetDebugAbbrev() { return mGetDebugAbbrev ? mGetDebugAbbrev : (mGetDebugAbbrev = ScriptObject.Find!(ScriptFunction)("Function Engine.PathNode.GetDebugAbbrev")); }
	}
	final ScriptString GetDebugAbbrev()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDebugAbbrev, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
