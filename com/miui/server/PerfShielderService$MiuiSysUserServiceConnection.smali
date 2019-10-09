.class final Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;
.super Ljava/lang/Object;
.source "PerfShielderService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/PerfShielderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MiuiSysUserServiceConnection"
.end annotation


# instance fields
.field private isServiceDisconnected:Z

.field final synthetic this$0:Lcom/miui/server/PerfShielderService;


# direct methods
.method private constructor <init>(Lcom/miui/server/PerfShielderService;)V
    .registers 2

    .line 609
    iput-object p1, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->isServiceDisconnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/miui/server/PerfShielderService;
    .param p2, "x1"    # Lcom/miui/server/PerfShielderService$1;

    .line 609
    invoke-direct {p0, p1}, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;-><init>(Lcom/miui/server/PerfShielderService;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    .line 609
    iget-boolean v0, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->isServiceDisconnected:Z

    return v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "iObj"    # Landroid/os/IBinder;

    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->isServiceDisconnected:Z

    .line 626
    invoke-static {p2}, Lcom/android/internal/app/IMiuiSysUser$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v0

    .line 627
    .local v0, "sysOpt":Lcom/android/internal/app/IMiuiSysUser;
    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setMiuiSysUser(Lcom/android/internal/app/IMiuiSysUser;)V

    .line 628
    iget-object v1, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->this$0:Lcom/miui/server/PerfShielderService;

    # getter for: Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;
    invoke-static {v1}, Lcom/miui/server/PerfShielderService;->access$700(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$BindServiceHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->removeMessages(I)V

    .line 630
    :try_start_14
    const-string v1, "PerfShielderService"

    const-string v2, "MiuiSysUser service connected!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-interface {v0}, Lcom/android/internal/app/IMiuiSysUser;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->this$0:Lcom/miui/server/PerfShielderService;

    iget-object v2, v2, Lcom/miui/server/PerfShielderService;->mMiuiSysUserDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_27} :catch_28

    .line 634
    goto :goto_2c

    .line 632
    :catch_28
    move-exception v1

    .line 633
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 635
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .line 615
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setMiuiSysUser(Lcom/android/internal/app/IMiuiSysUser;)V

    .line 616
    const-string v0, "PerfShielderService"

    const-string v1, "MiuiSysUser service disconnected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->isServiceDisconnected:Z

    .line 618
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->this$0:Lcom/miui/server/PerfShielderService;

    # getter for: Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->access$500(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 619
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->this$0:Lcom/miui/server/PerfShielderService;

    # getter for: Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->access$500(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->this$0:Lcom/miui/server/PerfShielderService;

    # getter for: Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;
    invoke-static {v1}, Lcom/miui/server/PerfShielderService;->access$800(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 621
    :cond_25
    return-void
.end method
