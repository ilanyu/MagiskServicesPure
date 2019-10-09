.class public Lcom/miui/server/AppRunningControlService;
.super Lmiui/security/IAppRunningControlManager$Stub;
.source "AppRunningControlService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppRunningControlService"

.field private static sNotDisallow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppsDisallowRunning:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDisallowRunningAppIntent:Landroid/content/Intent;

.field private mIsBlackListEnable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    .line 26
    sget-object v0, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    const-string v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    const-string v1, "com.android.updater"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.finddevice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lmiui/security/IAppRunningControlManager$Stub;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/server/AppRunningControlService;->mAppsDisallowRunning:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/miui/server/AppRunningControlService;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private checkPermission()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/miui/server/AppRunningControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.FORCE_STOP_PACKAGES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 128
    return-void

    .line 121
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.FORCE_STOP_PACKAGES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AppRunningControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isBlockActivity(Landroid/content/Intent;)Z
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 143
    invoke-static {}, Lcom/miui/server/SecurityManagerService;->getAppRunningControlService()Lcom/miui/server/AppRunningControlService;

    move-result-object v0

    .line 144
    .local v0, "appRunningControlService":Lcom/miui/server/AppRunningControlService;
    if-nez v0, :cond_f

    .line 145
    const-string v1, "AppRunningControlService"

    const-string v2, "AppRunningControlService is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v1, 0x0

    return v1

    .line 148
    :cond_f
    invoke-direct {v0, p0}, Lcom/miui/server/AppRunningControlService;->isBlockActivityInner(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method private isBlockActivityInner(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 111
    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/miui/server/AppRunningControlService;->mDisallowRunningAppIntent:Landroid/content/Intent;

    if-nez v0, :cond_7

    goto :goto_16

    .line 114
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/server/AppRunningControlService;->mDisallowRunningAppIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 112
    .end local v0    # "action":Ljava/lang/String;
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method private matchRuleInner(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "wakeType"    # I

    .line 100
    iget-boolean v0, p0, Lcom/miui/server/AppRunningControlService;->mIsBlackListEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 101
    return v1

    .line 104
    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    .line 105
    return v1

    .line 107
    :cond_a
    iget-object v0, p0, Lcom/miui/server/AppRunningControlService;->mAppsDisallowRunning:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getBlockActivityIntent(Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "fromActivity"    # Z
    .param p4, "requestCode"    # I

    .line 67
    iget-boolean v0, p0, Lcom/miui/server/AppRunningControlService;->mIsBlackListEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 68
    return-object v1

    .line 70
    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 71
    const-string v0, "AppRunningControlService"

    const-string v2, "getBlockActivityIntent packageName can\'t be null"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-object v1

    .line 74
    :cond_14
    iget-object v0, p0, Lcom/miui/server/AppRunningControlService;->mAppsDisallowRunning:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 75
    iget-object v0, p0, Lcom/miui/server/AppRunningControlService;->mDisallowRunningAppIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 76
    .local v0, "result":Landroid/content/Intent;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    if-eqz p2, :cond_4a

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_38

    .line 81
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    :cond_38
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    if-eqz p3, :cond_45

    .line 86
    if-ltz p4, :cond_4a

    .line 87
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_4a

    .line 91
    :cond_45
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    :cond_4a
    :goto_4a
    return-object v0

    .line 96
    .end local v0    # "result":Landroid/content/Intent;
    :cond_4b
    return-object v1
.end method

.method public getNotDisallowList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    return-object v0
.end method

.method public matchRule(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "wakeType"    # I

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/miui/server/AppRunningControlService;->matchRuleInner(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setBlackListEnable(Z)V
    .registers 2
    .param p1, "isEnable"    # Z

    .line 61
    invoke-direct {p0}, Lcom/miui/server/AppRunningControlService;->checkPermission()V

    .line 62
    iput-boolean p1, p0, Lcom/miui/server/AppRunningControlService;->mIsBlackListEnable:Z

    .line 63
    return-void
.end method

.method public setDisallowRunningList(Ljava/util/List;Landroid/content/Intent;)V
    .registers 6
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 40
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/miui/server/AppRunningControlService;->checkPermission()V

    .line 41
    if-nez p2, :cond_e

    .line 42
    const-string v0, "AppRunningControlService"

    const-string/jumbo v1, "setDisallowRunningList intent can\'t be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void

    .line 45
    :cond_e
    iput-object p2, p0, Lcom/miui/server/AppRunningControlService;->mDisallowRunningAppIntent:Landroid/content/Intent;

    .line 46
    iget-object v0, p0, Lcom/miui/server/AppRunningControlService;->mAppsDisallowRunning:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    if-eqz p1, :cond_3e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_3e

    .line 51
    :cond_1e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    .local v1, "pkgName":Ljava/lang/String;
    sget-object v2, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 53
    goto :goto_22

    .line 55
    :cond_37
    iget-object v2, p0, Lcom/miui/server/AppRunningControlService;->mAppsDisallowRunning:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v1    # "pkgName":Ljava/lang/String;
    goto :goto_22

    .line 57
    :cond_3d
    return-void

    .line 48
    :cond_3e
    :goto_3e
    const-string v0, "AppRunningControlService"

    const-string/jumbo v1, "setDisallowRunningList clear list."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method
