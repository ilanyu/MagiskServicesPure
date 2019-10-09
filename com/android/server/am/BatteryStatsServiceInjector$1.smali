.class Lcom/android/server/am/BatteryStatsServiceInjector$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryStatsServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BatteryStatsServiceInjector;->registerReceiver(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$batteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsServiceInjector$1;->val$batteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 33
    if-nez p2, :cond_3

    .line 34
    return-void

    .line 36
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 38
    .local v1, "screenOn":Z
    # getter for: Lcom/android/server/am/BatteryStatsServiceInjector;->mScreenState:Z
    invoke-static {}, Lcom/android/server/am/BatteryStatsServiceInjector;->access$000()Z

    move-result v2

    if-eq v2, v1, :cond_23

    .line 39
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsServiceInjector$1;->val$batteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/server/am/BatteryStatsServiceInjector;->mFirstRecord:Z
    invoke-static {}, Lcom/android/server/am/BatteryStatsServiceInjector;->access$100()Z

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/android/server/am/CpuTimeCollection;->updateUidCpuTime(Lcom/android/internal/os/BatteryStatsImpl;ZZ)V

    .line 40
    # setter for: Lcom/android/server/am/BatteryStatsServiceInjector;->mScreenState:Z
    invoke-static {v1}, Lcom/android/server/am/BatteryStatsServiceInjector;->access$002(Z)Z

    .line 41
    const/4 v2, 0x0

    # setter for: Lcom/android/server/am/BatteryStatsServiceInjector;->mFirstRecord:Z
    invoke-static {v2}, Lcom/android/server/am/BatteryStatsServiceInjector;->access$102(Z)Z

    .line 43
    :cond_23
    return-void
.end method
