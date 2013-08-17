module UnrealScript.UnrealEd.OutputAuditSummaryCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface OutputAuditSummaryCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.OutputAuditSummaryCommandlet")); }
	private static __gshared OutputAuditSummaryCommandlet mDefaultProperties;
	@property final static OutputAuditSummaryCommandlet DefaultProperties() { mixin(MGDPC("OutputAuditSummaryCommandlet", "OutputAuditSummaryCommandlet UnrealEd.Default__OutputAuditSummaryCommandlet")); }
}
