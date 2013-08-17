module UnrealScript.TribesGame.TrGameSearchTrStorm;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrStorm : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGameSearchTrStorm")()); }
	private static __gshared TrGameSearchTrStorm mDefaultProperties;
	@property final static TrGameSearchTrStorm DefaultProperties() { mixin(MGDPC!(TrGameSearchTrStorm, "TrGameSearchTrStorm TribesGame.Default__TrGameSearchTrStorm")()); }
}
