#pragma D option quiet
int g_cErrors;

dtrace:::BEGIN
{
    g_cErrors = 0;
}

dtrace:::BEGIN
/sizeof(X86CPUIDFEATECX) != 4/
{
    printf("error: sizeof(X86CPUIDFEATECX) should be 4, not %u\n", sizeof(X86CPUIDFEATECX));
    g_cErrors++;
}

dtrace:::BEGIN
/sizeof(CPUM) != 1057376/
{
    printf("error: sizeof(CPUM) should be 1057376, not %u\n", sizeof(CPUM));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUM, fHostUseFlags) != 0/
{
    printf("error: offsetof(CPUM, fHostUseFlags) should be 0, not %u\n", offsetof(CPUM, fHostUseFlags));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUM, CR4) != 4/
{
    printf("error: offsetof(CPUM, CR4) should be 4, not %u\n", offsetof(CPUM, CR4));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUM, aGuestCpuIdPatmStd) != 1057000/
{
    printf("error: offsetof(CPUM, aGuestCpuIdPatmStd) should be 1057000, not %u\n", offsetof(CPUM, aGuestCpuIdPatmStd));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUM, aGuestCpuIdPatmExt) != 1057096/
{
    printf("error: offsetof(CPUM, aGuestCpuIdPatmExt) should be 1057096, not %u\n", offsetof(CPUM, aGuestCpuIdPatmExt));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUM, aGuestCpuIdPatmCentaur) != 1057256/
{
    printf("error: offsetof(CPUM, aGuestCpuIdPatmCentaur) should be 1057256, not %u\n", offsetof(CPUM, aGuestCpuIdPatmCentaur));
    g_cErrors++;
}

dtrace:::BEGIN
/sizeof(CPUMCPU) != 86592/
{
    printf("error: sizeof(CPUMCPU) should be 86592, not %u\n", sizeof(CPUMCPU));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, Hyper) != 86464/
{
    printf("error: offsetof(CPUMCPU, Hyper) should be 86464, not %u\n", offsetof(CPUMCPU, Hyper));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, Host) != 70528/
{
    printf("error: offsetof(CPUMCPU, Host) should be 70528, not %u\n", offsetof(CPUMCPU, Host));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, Guest) != 0/
{
    printf("error: offsetof(CPUMCPU, Guest) should be 0, not %u\n", offsetof(CPUMCPU, Guest));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, GuestMsrs) != 69952/
{
    printf("error: offsetof(CPUMCPU, GuestMsrs) should be 69952, not %u\n", offsetof(CPUMCPU, GuestMsrs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, fUseFlags) != 70472/
{
    printf("error: offsetof(CPUMCPU, fUseFlags) should be 70472, not %u\n", offsetof(CPUMCPU, fUseFlags));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, fChanged) != 70476/
{
    printf("error: offsetof(CPUMCPU, fChanged) should be 70476, not %u\n", offsetof(CPUMCPU, fChanged));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, u32RetCode) != 70480/
{
    printf("error: offsetof(CPUMCPU, u32RetCode) should be 70480, not %u\n", offsetof(CPUMCPU, u32RetCode));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, fCpuIdApicFeatureVisible) != 70484/
{
    printf("error: offsetof(CPUMCPU, fCpuIdApicFeatureVisible) should be 70484, not %u\n", offsetof(CPUMCPU, fCpuIdApicFeatureVisible));
    g_cErrors++;
}

dtrace:::BEGIN
/sizeof(CPUMHOSTCTX) != 15936/
{
    printf("error: sizeof(CPUMHOSTCTX) should be 15936, not %u\n", sizeof(CPUMHOSTCTX));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, XState) != 0/
{
    printf("error: offsetof(CPUMHOSTCTX, XState) should be 0, not %u\n", offsetof(CPUMHOSTCTX, XState));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, abXState) != 0/
{
    printf("error: offsetof(CPUMHOSTCTX, abXState) should be 0, not %u\n", offsetof(CPUMHOSTCTX, abXState));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, rbx) != 15616/
{
    printf("error: offsetof(CPUMHOSTCTX, rbx) should be 15616, not %u\n", offsetof(CPUMHOSTCTX, rbx));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, rdi) != 15624/
{
    printf("error: offsetof(CPUMHOSTCTX, rdi) should be 15624, not %u\n", offsetof(CPUMHOSTCTX, rdi));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, rsi) != 15632/
{
    printf("error: offsetof(CPUMHOSTCTX, rsi) should be 15632, not %u\n", offsetof(CPUMHOSTCTX, rsi));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, rbp) != 15640/
{
    printf("error: offsetof(CPUMHOSTCTX, rbp) should be 15640, not %u\n", offsetof(CPUMHOSTCTX, rbp));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, rsp) != 15648/
{
    printf("error: offsetof(CPUMHOSTCTX, rsp) should be 15648, not %u\n", offsetof(CPUMHOSTCTX, rsp));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, r10) != 15656/
{
    printf("error: offsetof(CPUMHOSTCTX, r10) should be 15656, not %u\n", offsetof(CPUMHOSTCTX, r10));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, r11) != 15664/
{
    printf("error: offsetof(CPUMHOSTCTX, r11) should be 15664, not %u\n", offsetof(CPUMHOSTCTX, r11));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, r12) != 15672/
{
    printf("error: offsetof(CPUMHOSTCTX, r12) should be 15672, not %u\n", offsetof(CPUMHOSTCTX, r12));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, r13) != 15680/
{
    printf("error: offsetof(CPUMHOSTCTX, r13) should be 15680, not %u\n", offsetof(CPUMHOSTCTX, r13));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, r14) != 15688/
{
    printf("error: offsetof(CPUMHOSTCTX, r14) should be 15688, not %u\n", offsetof(CPUMHOSTCTX, r14));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, r15) != 15696/
{
    printf("error: offsetof(CPUMHOSTCTX, r15) should be 15696, not %u\n", offsetof(CPUMHOSTCTX, r15));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, rflags) != 15704/
{
    printf("error: offsetof(CPUMHOSTCTX, rflags) should be 15704, not %u\n", offsetof(CPUMHOSTCTX, rflags));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, ss) != 15712/
{
    printf("error: offsetof(CPUMHOSTCTX, ss) should be 15712, not %u\n", offsetof(CPUMHOSTCTX, ss));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, gs) != 15716/
{
    printf("error: offsetof(CPUMHOSTCTX, gs) should be 15716, not %u\n", offsetof(CPUMHOSTCTX, gs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, fs) != 15720/
{
    printf("error: offsetof(CPUMHOSTCTX, fs) should be 15720, not %u\n", offsetof(CPUMHOSTCTX, fs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, es) != 15724/
{
    printf("error: offsetof(CPUMHOSTCTX, es) should be 15724, not %u\n", offsetof(CPUMHOSTCTX, es));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, ds) != 15728/
{
    printf("error: offsetof(CPUMHOSTCTX, ds) should be 15728, not %u\n", offsetof(CPUMHOSTCTX, ds));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, cs) != 15732/
{
    printf("error: offsetof(CPUMHOSTCTX, cs) should be 15732, not %u\n", offsetof(CPUMHOSTCTX, cs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, cr0) != 15736/
{
    printf("error: offsetof(CPUMHOSTCTX, cr0) should be 15736, not %u\n", offsetof(CPUMHOSTCTX, cr0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, cr3) != 15744/
{
    printf("error: offsetof(CPUMHOSTCTX, cr3) should be 15744, not %u\n", offsetof(CPUMHOSTCTX, cr3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, cr4) != 15752/
{
    printf("error: offsetof(CPUMHOSTCTX, cr4) should be 15752, not %u\n", offsetof(CPUMHOSTCTX, cr4));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, cr8) != 15760/
{
    printf("error: offsetof(CPUMHOSTCTX, cr8) should be 15760, not %u\n", offsetof(CPUMHOSTCTX, cr8));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, dr0) != 15768/
{
    printf("error: offsetof(CPUMHOSTCTX, dr0) should be 15768, not %u\n", offsetof(CPUMHOSTCTX, dr0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, dr1) != 15776/
{
    printf("error: offsetof(CPUMHOSTCTX, dr1) should be 15776, not %u\n", offsetof(CPUMHOSTCTX, dr1));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, dr2) != 15784/
{
    printf("error: offsetof(CPUMHOSTCTX, dr2) should be 15784, not %u\n", offsetof(CPUMHOSTCTX, dr2));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, dr3) != 15792/
{
    printf("error: offsetof(CPUMHOSTCTX, dr3) should be 15792, not %u\n", offsetof(CPUMHOSTCTX, dr3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, dr6) != 15800/
{
    printf("error: offsetof(CPUMHOSTCTX, dr6) should be 15800, not %u\n", offsetof(CPUMHOSTCTX, dr6));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, dr7) != 15808/
{
    printf("error: offsetof(CPUMHOSTCTX, dr7) should be 15808, not %u\n", offsetof(CPUMHOSTCTX, dr7));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, gdtr) != 15816/
{
    printf("error: offsetof(CPUMHOSTCTX, gdtr) should be 15816, not %u\n", offsetof(CPUMHOSTCTX, gdtr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, idtr) != 15828/
{
    printf("error: offsetof(CPUMHOSTCTX, idtr) should be 15828, not %u\n", offsetof(CPUMHOSTCTX, idtr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, ldtr) != 15840/
{
    printf("error: offsetof(CPUMHOSTCTX, ldtr) should be 15840, not %u\n", offsetof(CPUMHOSTCTX, ldtr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, tr) != 15844/
{
    printf("error: offsetof(CPUMHOSTCTX, tr) should be 15844, not %u\n", offsetof(CPUMHOSTCTX, tr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, SysEnter) != 15848/
{
    printf("error: offsetof(CPUMHOSTCTX, SysEnter) should be 15848, not %u\n", offsetof(CPUMHOSTCTX, SysEnter));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, FSbase) != 15872/
{
    printf("error: offsetof(CPUMHOSTCTX, FSbase) should be 15872, not %u\n", offsetof(CPUMHOSTCTX, FSbase));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, GSbase) != 15880/
{
    printf("error: offsetof(CPUMHOSTCTX, GSbase) should be 15880, not %u\n", offsetof(CPUMHOSTCTX, GSbase));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, efer) != 15888/
{
    printf("error: offsetof(CPUMHOSTCTX, efer) should be 15888, not %u\n", offsetof(CPUMHOSTCTX, efer));
    g_cErrors++;
}

dtrace:::BEGIN
/sizeof(CPUMCTX) != 69952/
{
    printf("error: sizeof(CPUMCTX) should be 69952, not %u\n", sizeof(CPUMCTX));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt) != 16384/
{
    printf("error: offsetof(CPUMCTX, hwvirt) should be 16384, not %u\n", offsetof(CPUMCTX, hwvirt));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.Vmcb) != 16384/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.Vmcb) should be 16384, not %u\n", offsetof(CPUMCTX, hwvirt.svm.Vmcb));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.abMsrBitmap) != 20480/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.abMsrBitmap) should be 20480, not %u\n", offsetof(CPUMCTX, hwvirt.svm.abMsrBitmap));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.abIoBitmap) != 28672/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.abIoBitmap) should be 28672, not %u\n", offsetof(CPUMCTX, hwvirt.svm.abIoBitmap));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.uMsrHSavePa) != 40960/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.uMsrHSavePa) should be 40960, not %u\n", offsetof(CPUMCTX, hwvirt.svm.uMsrHSavePa));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.GCPhysVmcb) != 40968/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.GCPhysVmcb) should be 40968, not %u\n", offsetof(CPUMCTX, hwvirt.svm.GCPhysVmcb));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.HostState) != 40976/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.HostState) should be 40976, not %u\n", offsetof(CPUMCTX, hwvirt.svm.HostState));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.uPrevPauseTick) != 41160/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.uPrevPauseTick) should be 41160, not %u\n", offsetof(CPUMCTX, hwvirt.svm.uPrevPauseTick));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.cPauseFilter) != 41168/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.cPauseFilter) should be 41168, not %u\n", offsetof(CPUMCTX, hwvirt.svm.cPauseFilter));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.cPauseFilterThreshold) != 41170/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.cPauseFilterThreshold) should be 41170, not %u\n", offsetof(CPUMCTX, hwvirt.svm.cPauseFilterThreshold));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.fInterceptEvents) != 41172/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.fInterceptEvents) should be 41172, not %u\n", offsetof(CPUMCTX, hwvirt.svm.fInterceptEvents));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.vmx.GCPhysVmxon) != 69632/
{
    printf("error: offsetof(CPUMCTX, hwvirt.vmx.GCPhysVmxon) should be 69632, not %u\n", offsetof(CPUMCTX, hwvirt.vmx.GCPhysVmxon));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.vmx.GCPhysVmcs) != 69640/
{
    printf("error: offsetof(CPUMCTX, hwvirt.vmx.GCPhysVmcs) should be 69640, not %u\n", offsetof(CPUMCTX, hwvirt.vmx.GCPhysVmcs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.vmx.enmDiag) != 69656/
{
    printf("error: offsetof(CPUMCTX, hwvirt.vmx.enmDiag) should be 69656, not %u\n", offsetof(CPUMCTX, hwvirt.vmx.enmDiag));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.vmx.enmAbort) != 69660/
{
    printf("error: offsetof(CPUMCTX, hwvirt.vmx.enmAbort) should be 69660, not %u\n", offsetof(CPUMCTX, hwvirt.vmx.enmAbort));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.vmx.uDiagAux) != 69664/
{
    printf("error: offsetof(CPUMCTX, hwvirt.vmx.uDiagAux) should be 69664, not %u\n", offsetof(CPUMCTX, hwvirt.vmx.uDiagAux));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.vmx.uAbortAux) != 69672/
{
    printf("error: offsetof(CPUMCTX, hwvirt.vmx.uAbortAux) should be 69672, not %u\n", offsetof(CPUMCTX, hwvirt.vmx.uAbortAux));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.vmx.fInVmxRootMode) != 69676/
{
    printf("error: offsetof(CPUMCTX, hwvirt.vmx.fInVmxRootMode) should be 69676, not %u\n", offsetof(CPUMCTX, hwvirt.vmx.fInVmxRootMode));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.vmx.fInVmxNonRootMode) != 69677/
{
    printf("error: offsetof(CPUMCTX, hwvirt.vmx.fInVmxNonRootMode) should be 69677, not %u\n", offsetof(CPUMCTX, hwvirt.vmx.fInVmxNonRootMode));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.vmx.fInterceptEvents) != 69678/
{
    printf("error: offsetof(CPUMCTX, hwvirt.vmx.fInterceptEvents) should be 69678, not %u\n", offsetof(CPUMCTX, hwvirt.vmx.fInterceptEvents));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.vmx.fNmiUnblockingIret) != 69679/
{
    printf("error: offsetof(CPUMCTX, hwvirt.vmx.fNmiUnblockingIret) should be 69679, not %u\n", offsetof(CPUMCTX, hwvirt.vmx.fNmiUnblockingIret));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.vmx.uFirstPauseLoopTick) != 69680/
{
    printf("error: offsetof(CPUMCTX, hwvirt.vmx.uFirstPauseLoopTick) should be 69680, not %u\n", offsetof(CPUMCTX, hwvirt.vmx.uFirstPauseLoopTick));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.vmx.uPrevPauseTick) != 69688/
{
    printf("error: offsetof(CPUMCTX, hwvirt.vmx.uPrevPauseTick) should be 69688, not %u\n", offsetof(CPUMCTX, hwvirt.vmx.uPrevPauseTick));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.vmx.uEntryTick) != 69696/
{
    printf("error: offsetof(CPUMCTX, hwvirt.vmx.uEntryTick) should be 69696, not %u\n", offsetof(CPUMCTX, hwvirt.vmx.uEntryTick));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.vmx.offVirtApicWrite) != 69704/
{
    printf("error: offsetof(CPUMCTX, hwvirt.vmx.offVirtApicWrite) should be 69704, not %u\n", offsetof(CPUMCTX, hwvirt.vmx.offVirtApicWrite));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.vmx.fVirtNmiBlocking) != 69706/
{
    printf("error: offsetof(CPUMCTX, hwvirt.vmx.fVirtNmiBlocking) should be 69706, not %u\n", offsetof(CPUMCTX, hwvirt.vmx.fVirtNmiBlocking));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.vmx.Msrs) != 69712/
{
    printf("error: offsetof(CPUMCTX, hwvirt.vmx.Msrs) should be 69712, not %u\n", offsetof(CPUMCTX, hwvirt.vmx.Msrs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.enmHwvirt) != 69936/
{
    printf("error: offsetof(CPUMCTX, hwvirt.enmHwvirt) should be 69936, not %u\n", offsetof(CPUMCTX, hwvirt.enmHwvirt));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.fGif) != 69940/
{
    printf("error: offsetof(CPUMCTX, hwvirt.fGif) should be 69940, not %u\n", offsetof(CPUMCTX, hwvirt.fGif));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.fSavedInhibit) != 69944/
{
    printf("error: offsetof(CPUMCTX, hwvirt.fSavedInhibit) should be 69944, not %u\n", offsetof(CPUMCTX, hwvirt.fSavedInhibit));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, XState) != 768/
{
    printf("error: offsetof(CPUMCTX, XState) should be 768, not %u\n", offsetof(CPUMCTX, XState));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rdi) != 56/
{
    printf("error: offsetof(CPUMCTX, rdi) should be 56, not %u\n", offsetof(CPUMCTX, rdi));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rsi) != 48/
{
    printf("error: offsetof(CPUMCTX, rsi) should be 48, not %u\n", offsetof(CPUMCTX, rsi));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rbp) != 40/
{
    printf("error: offsetof(CPUMCTX, rbp) should be 40, not %u\n", offsetof(CPUMCTX, rbp));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rax) != 0/
{
    printf("error: offsetof(CPUMCTX, rax) should be 0, not %u\n", offsetof(CPUMCTX, rax));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rbx) != 24/
{
    printf("error: offsetof(CPUMCTX, rbx) should be 24, not %u\n", offsetof(CPUMCTX, rbx));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rdx) != 16/
{
    printf("error: offsetof(CPUMCTX, rdx) should be 16, not %u\n", offsetof(CPUMCTX, rdx));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rcx) != 8/
{
    printf("error: offsetof(CPUMCTX, rcx) should be 8, not %u\n", offsetof(CPUMCTX, rcx));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rsp) != 32/
{
    printf("error: offsetof(CPUMCTX, rsp) should be 32, not %u\n", offsetof(CPUMCTX, rsp));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, es) != 128/
{
    printf("error: offsetof(CPUMCTX, es) should be 128, not %u\n", offsetof(CPUMCTX, es));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, cs) != 152/
{
    printf("error: offsetof(CPUMCTX, cs) should be 152, not %u\n", offsetof(CPUMCTX, cs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, ss) != 176/
{
    printf("error: offsetof(CPUMCTX, ss) should be 176, not %u\n", offsetof(CPUMCTX, ss));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, ds) != 200/
{
    printf("error: offsetof(CPUMCTX, ds) should be 200, not %u\n", offsetof(CPUMCTX, ds));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, fs) != 224/
{
    printf("error: offsetof(CPUMCTX, fs) should be 224, not %u\n", offsetof(CPUMCTX, fs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, gs) != 248/
{
    printf("error: offsetof(CPUMCTX, gs) should be 248, not %u\n", offsetof(CPUMCTX, gs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rflags) != 328/
{
    printf("error: offsetof(CPUMCTX, rflags) should be 328, not %u\n", offsetof(CPUMCTX, rflags));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rip) != 320/
{
    printf("error: offsetof(CPUMCTX, rip) should be 320, not %u\n", offsetof(CPUMCTX, rip));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, r8) != 64/
{
    printf("error: offsetof(CPUMCTX, r8) should be 64, not %u\n", offsetof(CPUMCTX, r8));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, r9) != 72/
{
    printf("error: offsetof(CPUMCTX, r9) should be 72, not %u\n", offsetof(CPUMCTX, r9));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, r10) != 80/
{
    printf("error: offsetof(CPUMCTX, r10) should be 80, not %u\n", offsetof(CPUMCTX, r10));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, r11) != 88/
{
    printf("error: offsetof(CPUMCTX, r11) should be 88, not %u\n", offsetof(CPUMCTX, r11));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, r12) != 96/
{
    printf("error: offsetof(CPUMCTX, r12) should be 96, not %u\n", offsetof(CPUMCTX, r12));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, r13) != 104/
{
    printf("error: offsetof(CPUMCTX, r13) should be 104, not %u\n", offsetof(CPUMCTX, r13));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, r14) != 112/
{
    printf("error: offsetof(CPUMCTX, r14) should be 112, not %u\n", offsetof(CPUMCTX, r14));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, r15) != 120/
{
    printf("error: offsetof(CPUMCTX, r15) should be 120, not %u\n", offsetof(CPUMCTX, r15));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, cr0) != 352/
{
    printf("error: offsetof(CPUMCTX, cr0) should be 352, not %u\n", offsetof(CPUMCTX, cr0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, cr2) != 360/
{
    printf("error: offsetof(CPUMCTX, cr2) should be 360, not %u\n", offsetof(CPUMCTX, cr2));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, cr3) != 368/
{
    printf("error: offsetof(CPUMCTX, cr3) should be 368, not %u\n", offsetof(CPUMCTX, cr3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, cr4) != 376/
{
    printf("error: offsetof(CPUMCTX, cr4) should be 376, not %u\n", offsetof(CPUMCTX, cr4));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, dr) != 384/
{
    printf("error: offsetof(CPUMCTX, dr) should be 384, not %u\n", offsetof(CPUMCTX, dr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, gdtr) != 454/
{
    printf("error: offsetof(CPUMCTX, gdtr) should be 454, not %u\n", offsetof(CPUMCTX, gdtr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, idtr) != 470/
{
    printf("error: offsetof(CPUMCTX, idtr) should be 470, not %u\n", offsetof(CPUMCTX, idtr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, ldtr) != 272/
{
    printf("error: offsetof(CPUMCTX, ldtr) should be 272, not %u\n", offsetof(CPUMCTX, ldtr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, tr) != 296/
{
    printf("error: offsetof(CPUMCTX, tr) should be 296, not %u\n", offsetof(CPUMCTX, tr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, SysEnter) != 480/
{
    printf("error: offsetof(CPUMCTX, SysEnter) should be 480, not %u\n", offsetof(CPUMCTX, SysEnter));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, msrEFER) != 504/
{
    printf("error: offsetof(CPUMCTX, msrEFER) should be 504, not %u\n", offsetof(CPUMCTX, msrEFER));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, msrSTAR) != 512/
{
    printf("error: offsetof(CPUMCTX, msrSTAR) should be 512, not %u\n", offsetof(CPUMCTX, msrSTAR));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, msrPAT) != 520/
{
    printf("error: offsetof(CPUMCTX, msrPAT) should be 520, not %u\n", offsetof(CPUMCTX, msrPAT));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, msrLSTAR) != 528/
{
    printf("error: offsetof(CPUMCTX, msrLSTAR) should be 528, not %u\n", offsetof(CPUMCTX, msrLSTAR));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, msrCSTAR) != 536/
{
    printf("error: offsetof(CPUMCTX, msrCSTAR) should be 536, not %u\n", offsetof(CPUMCTX, msrCSTAR));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, msrSFMASK) != 544/
{
    printf("error: offsetof(CPUMCTX, msrSFMASK) should be 544, not %u\n", offsetof(CPUMCTX, msrSFMASK));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, msrKERNELGSBASE) != 552/
{
    printf("error: offsetof(CPUMCTX, msrKERNELGSBASE) should be 552, not %u\n", offsetof(CPUMCTX, msrKERNELGSBASE));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, ldtr) != 272/
{
    printf("error: offsetof(CPUMCTX, ldtr) should be 272, not %u\n", offsetof(CPUMCTX, ldtr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, tr) != 296/
{
    printf("error: offsetof(CPUMCTX, tr) should be 296, not %u\n", offsetof(CPUMCTX, tr));
    g_cErrors++;
}

dtrace:::BEGIN
/sizeof(CPUMCTXMSRS) != 512/
{
    printf("error: sizeof(CPUMCTXMSRS) should be 512, not %u\n", sizeof(CPUMCTXMSRS));
    g_cErrors++;
}

dtrace:::BEGIN
/sizeof(APIC) != 64/
{
    printf("error: sizeof(APIC) should be 64, not %u\n", sizeof(APIC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APIC, pvApicPibR0) != 32/
{
    printf("error: offsetof(APIC, pvApicPibR0) should be 32, not %u\n", offsetof(APIC, pvApicPibR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APIC, pvApicPibR3) != 40/
{
    printf("error: offsetof(APIC, pvApicPibR3) should be 40, not %u\n", offsetof(APIC, pvApicPibR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APIC, cbApicPib) != 48/
{
    printf("error: offsetof(APIC, cbApicPib) should be 48, not %u\n", offsetof(APIC, cbApicPib));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APIC, enmMaxMode) != 60/
{
    printf("error: offsetof(APIC, enmMaxMode) should be 60, not %u\n", offsetof(APIC, enmMaxMode));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, pvApicPageR0) != 24/
{
    printf("error: offsetof(APICCPU, pvApicPageR0) should be 24, not %u\n", offsetof(APICCPU, pvApicPageR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, pvApicPageR3) != 32/
{
    printf("error: offsetof(APICCPU, pvApicPageR3) should be 32, not %u\n", offsetof(APICCPU, pvApicPageR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, cbApicPage) != 40/
{
    printf("error: offsetof(APICCPU, cbApicPage) should be 40, not %u\n", offsetof(APICCPU, cbApicPage));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, pvApicPibR0) != 64/
{
    printf("error: offsetof(APICCPU, pvApicPibR0) should be 64, not %u\n", offsetof(APICCPU, pvApicPibR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, pvApicPibR3) != 72/
{
    printf("error: offsetof(APICCPU, pvApicPibR3) should be 72, not %u\n", offsetof(APICCPU, pvApicPibR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, ApicPibLevel) != 80/
{
    printf("error: offsetof(APICCPU, ApicPibLevel) should be 80, not %u\n", offsetof(APICCPU, ApicPibLevel));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, hTimer) != 1240/
{
    printf("error: offsetof(APICCPU, hTimer) should be 1240, not %u\n", offsetof(APICCPU, hTimer));
    g_cErrors++;
}

dtrace:::BEGIN
/sizeof(VM) != 1261568/
{
    printf("error: sizeof(VM) should be 1261568, not %u\n", sizeof(VM));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, enmVMState) != 0/
{
    printf("error: offsetof(VM, enmVMState) should be 0, not %u\n", offsetof(VM, enmVMState));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, fGlobalForcedActions) != 4/
{
    printf("error: offsetof(VM, fGlobalForcedActions) should be 4, not %u\n", offsetof(VM, fGlobalForcedActions));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, paVMPagesR3) != 8/
{
    printf("error: offsetof(VM, paVMPagesR3) should be 8, not %u\n", offsetof(VM, paVMPagesR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, pSession) != 16/
{
    printf("error: offsetof(VM, pSession) should be 16, not %u\n", offsetof(VM, pSession));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, pUVM) != 24/
{
    printf("error: offsetof(VM, pUVM) should be 24, not %u\n", offsetof(VM, pUVM));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, pVMR3) != 32/
{
    printf("error: offsetof(VM, pVMR3) should be 32, not %u\n", offsetof(VM, pVMR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, pVMR0ForCall) != 40/
{
    printf("error: offsetof(VM, pVMR0ForCall) should be 40, not %u\n", offsetof(VM, pVMR0ForCall));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, pVMRC) != 48/
{
    printf("error: offsetof(VM, pVMRC) should be 48, not %u\n", offsetof(VM, pVMRC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, hSelf) != 56/
{
    printf("error: offsetof(VM, hSelf) should be 56, not %u\n", offsetof(VM, hSelf));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, cCpus) != 60/
{
    printf("error: offsetof(VM, cCpus) should be 60, not %u\n", offsetof(VM, cCpus));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, uCpuExecutionCap) != 64/
{
    printf("error: offsetof(VM, uCpuExecutionCap) should be 64, not %u\n", offsetof(VM, uCpuExecutionCap));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, cbSelf) != 68/
{
    printf("error: offsetof(VM, cbSelf) should be 68, not %u\n", offsetof(VM, cbSelf));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, bMainExecutionEngine) != 80/
{
    printf("error: offsetof(VM, bMainExecutionEngine) should be 80, not %u\n", offsetof(VM, bMainExecutionEngine));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, fHMEnabled) != 81/
{
    printf("error: offsetof(VM, fHMEnabled) should be 81, not %u\n", offsetof(VM, fHMEnabled));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, hTraceBufR3) != 88/
{
    printf("error: offsetof(VM, hTraceBufR3) should be 88, not %u\n", offsetof(VM, hTraceBufR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, hTraceBufR0) != 96/
{
    printf("error: offsetof(VM, hTraceBufR0) should be 96, not %u\n", offsetof(VM, hTraceBufR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, cpum) != 128/
{
    printf("error: offsetof(VM, cpum) should be 128, not %u\n", offsetof(VM, cpum));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, vmm) != 1194688/
{
    printf("error: offsetof(VM, vmm) should be 1194688, not %u\n", offsetof(VM, vmm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, pgm) != 1064960/
{
    printf("error: offsetof(VM, pgm) should be 1064960, not %u\n", offsetof(VM, pgm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, hm) != 1196288/
{
    printf("error: offsetof(VM, hm) should be 1196288, not %u\n", offsetof(VM, hm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, trpm) != 1201792/
{
    printf("error: offsetof(VM, trpm) should be 1201792, not %u\n", offsetof(VM, trpm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, selm) != 1203840/
{
    printf("error: offsetof(VM, selm) should be 1203840, not %u\n", offsetof(VM, selm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, mm) != 1204608/
{
    printf("error: offsetof(VM, mm) should be 1204608, not %u\n", offsetof(VM, mm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, pdm) != 1204800/
{
    printf("error: offsetof(VM, pdm) should be 1204800, not %u\n", offsetof(VM, pdm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, iom) != 1227328/
{
    printf("error: offsetof(VM, iom) should be 1227328, not %u\n", offsetof(VM, iom));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, em) != 1228480/
{
    printf("error: offsetof(VM, em) should be 1228480, not %u\n", offsetof(VM, em));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, tm) != 1233344/
{
    printf("error: offsetof(VM, tm) should be 1233344, not %u\n", offsetof(VM, tm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, dbgf) != 1243456/
{
    printf("error: offsetof(VM, dbgf) should be 1243456, not %u\n", offsetof(VM, dbgf));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, ssm) != 1245888/
{
    printf("error: offsetof(VM, ssm) should be 1245888, not %u\n", offsetof(VM, ssm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, gim) != 1246016/
{
    printf("error: offsetof(VM, gim) should be 1246016, not %u\n", offsetof(VM, gim));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, vm) != 1246592/
{
    printf("error: offsetof(VM, vm) should be 1246592, not %u\n", offsetof(VM, vm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, cfgm) != 1246624/
{
    printf("error: offsetof(VM, cfgm) should be 1246624, not %u\n", offsetof(VM, cfgm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, apic) != 1246464/
{
    printf("error: offsetof(VM, apic) should be 1246464, not %u\n", offsetof(VM, apic));
    g_cErrors++;
}

dtrace:::BEGIN
/sizeof(VMCPU) != 393216/
{
    printf("error: sizeof(VMCPU) should be 393216, not %u\n", sizeof(VMCPU));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, fLocalForcedActions) != 0/
{
    printf("error: offsetof(VMCPU, fLocalForcedActions) should be 0, not %u\n", offsetof(VMCPU, fLocalForcedActions));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, enmState) != 8/
{
    printf("error: offsetof(VMCPU, enmState) should be 8, not %u\n", offsetof(VMCPU, enmState));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, pUVCpu) != 162840/
{
    printf("error: offsetof(VMCPU, pUVCpu) should be 162840, not %u\n", offsetof(VMCPU, pUVCpu));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, pVMR3) != 162816/
{
    printf("error: offsetof(VMCPU, pVMR3) should be 162816, not %u\n", offsetof(VMCPU, pVMR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, pVCpuR0ForVtg) != 162824/
{
    printf("error: offsetof(VMCPU, pVCpuR0ForVtg) should be 162824, not %u\n", offsetof(VMCPU, pVCpuR0ForVtg));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, pVMRC) != 162832/
{
    printf("error: offsetof(VMCPU, pVMRC) should be 162832, not %u\n", offsetof(VMCPU, pVMRC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, idCpu) != 162872/
{
    printf("error: offsetof(VMCPU, idCpu) should be 162872, not %u\n", offsetof(VMCPU, idCpu));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, hNativeThread) != 162848/
{
    printf("error: offsetof(VMCPU, hNativeThread) should be 162848, not %u\n", offsetof(VMCPU, hNativeThread));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, hNativeThreadR0) != 162856/
{
    printf("error: offsetof(VMCPU, hNativeThreadR0) should be 162856, not %u\n", offsetof(VMCPU, hNativeThreadR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, fTraceGroups) != 198528/
{
    printf("error: offsetof(VMCPU, fTraceGroups) should be 198528, not %u\n", offsetof(VMCPU, fTraceGroups));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, abAdHoc) != 198533/
{
    printf("error: offsetof(VMCPU, abAdHoc) should be 198533, not %u\n", offsetof(VMCPU, abAdHoc));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, aStatAdHoc) != 198536/
{
    printf("error: offsetof(VMCPU, aStatAdHoc) should be 198536, not %u\n", offsetof(VMCPU, aStatAdHoc));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, hm) != 162880/
{
    printf("error: offsetof(VMCPU, hm) should be 162880, not %u\n", offsetof(VMCPU, hm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, em) != 339968/
{
    printf("error: offsetof(VMCPU, em) should be 339968, not %u\n", offsetof(VMCPU, em));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, iem) != 64/
{
    printf("error: offsetof(VMCPU, iem) should be 64, not %u\n", offsetof(VMCPU, iem));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, trpm) != 177472/
{
    printf("error: offsetof(VMCPU, trpm) should be 177472, not %u\n", offsetof(VMCPU, trpm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, tm) != 177600/
{
    printf("error: offsetof(VMCPU, tm) should be 177600, not %u\n", offsetof(VMCPU, tm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, vmm) != 183360/
{
    printf("error: offsetof(VMCPU, vmm) should be 183360, not %u\n", offsetof(VMCPU, vmm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, pdm) != 192896/
{
    printf("error: offsetof(VMCPU, pdm) should be 192896, not %u\n", offsetof(VMCPU, pdm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, iom) != 193152/
{
    printf("error: offsetof(VMCPU, iom) should be 193152, not %u\n", offsetof(VMCPU, iom));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, dbgf) != 193664/
{
    printf("error: offsetof(VMCPU, dbgf) should be 193664, not %u\n", offsetof(VMCPU, dbgf));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, gim) != 194176/
{
    printf("error: offsetof(VMCPU, gim) should be 194176, not %u\n", offsetof(VMCPU, gim));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, apic) != 194688/
{
    printf("error: offsetof(VMCPU, apic) should be 194688, not %u\n", offsetof(VMCPU, apic));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, pgm) != 200704/
{
    printf("error: offsetof(VMCPU, pgm) should be 200704, not %u\n", offsetof(VMCPU, pgm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, cpum) != 237568/
{
    printf("error: offsetof(VMCPU, cpum) should be 237568, not %u\n", offsetof(VMCPU, cpum));
    g_cErrors++;
}

dtrace:::BEGIN
/g_cErrors != 0/
{
    printf("%u errors!\n", g_cErrors);
    exit(1);
}

dtrace:::BEGIN
{
    printf("Success!\n");
    exit(0);
}

