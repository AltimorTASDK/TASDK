module UnrealScript.Engine.PathNode;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;

extern(C++) interface PathNode : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PathNode")); }
	private static __gshared PathNode mDefaultProperties;
	@property final static PathNode DefaultProperties() { mixin(MGDPC("PathNode", "PathNode Engine.Default__PathNode")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetDebugAbbrev;
		public @property static final ScriptFunction GetDebugAbbrev() { mixin(MGF("mGetDebugAbbrev", "Function Engine.PathNode.GetDebugAbbrev")); }
	}
	final ScriptString GetDebugAbbrev()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDebugAbbrev, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
