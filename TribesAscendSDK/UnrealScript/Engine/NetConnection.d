module UnrealScript.Engine.NetConnection;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Player;
import UnrealScript.Engine.ChildConnection;

extern(C++) interface NetConnection : Player
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NetConnection")()); }
	private static __gshared NetConnection mDefaultProperties;
	@property final static NetConnection DefaultProperties() { mixin(MGDPC!(NetConnection, "NetConnection Engine.Default__NetConnection")()); }
	@property final auto ref ScriptArray!(ChildConnection) Children() { mixin(MGPC!(ScriptArray!(ChildConnection), 20416)()); }
}
