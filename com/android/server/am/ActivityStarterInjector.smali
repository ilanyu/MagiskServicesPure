.class Lcom/android/server/am/ActivityStarterInjector;
.super Ljava/lang/Object;
.source "ActivityStarterInjector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFreeformSupport(Lcom/android/server/am/ActivityManagerService;Landroid/app/ActivityOptions;)V
    .registers 5
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 15
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    if-nez v0, :cond_25

    if-eqz p1, :cond_25

    .line 17
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    .line 18
    const-string/jumbo v0, "persist.sys.miui_optimization"

    const-string v1, "1"

    const-string/jumbo v2, "ro.miui.cts"

    .line 20
    invoke-static {v2}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 19
    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    .line 22
    :cond_25
    return-void
.end method

.method public static getLastFrame(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 41
    const-string v0, "com.tencent.mobileqq/com.tencent.av.ui.VideoInviteActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "com.tencent.mm/.plugin.voip.ui.VideoActivity"

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "com.tencent.mobileqq/com.tencent.av.ui.AVActivity"

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "com.tencent.mobileqq/com.tencent.av.ui.AVLoadingDialogActivity"

    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "com.android.incallui/.InCallActivity"

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string/jumbo v0, "voipcalling.VoipActivityV2"

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_34

    .line 49
    :cond_32
    const/4 v0, 0x0

    return v0

    .line 47
    :cond_34
    :goto_34
    const/4 v0, 0x1

    return v0
.end method

.method public static modifyLaunchActivityOptionIfNeed(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "startingActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "options"    # Landroid/app/ActivityOptions;

    .line 26
    iget-object v0, p1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 27
    .local v0, "topActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_34

    if-eqz v0, :cond_34

    .line 29
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 31
    if-nez p3, :cond_27

    .line 32
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p3

    .line 34
    :cond_27
    invoke-virtual {p3, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 35
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;Z)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 37
    :cond_34
    return-object p3
.end method
