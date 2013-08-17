module UnrealScript.TribesGame.TrGameSearchTrTDM;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrTDM : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGameSearchTrTDM")); }
	private static __gshared TrGameSearchTrTDM mDefaultProperties;
	@property final static TrGameSearchTrTDM DefaultProperties() { mixin(MGDPC("TrGameSearchTrTDM", "TrGameSearchTrTDM TribesGame.Default__TrGameSearchTrTDM")); }
}
