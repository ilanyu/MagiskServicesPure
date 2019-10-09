.class final Lcom/android/server/AppStateTracker$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/AppStateTracker;)V
    .registers 2

    .line 678
    iput-object p1, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/AppStateTracker;
    .param p2, "x1"    # Lcom/android/server/AppStateTracker$1;

    .line 678
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$MyReceiver;-><init>(Lcom/android/server/AppStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 681
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 682
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 683
    .local v0, "userId":I
    if-lez v0, :cond_1e

    .line 684
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/AppStateTracker$MyHandler;->doUserRemoved(I)V

    .line 686
    .end local v0    # "userId":I
    :cond_1e
    goto :goto_4c

    :cond_1f
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 687
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 688
    :try_start_32
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    const-string/jumbo v2, "plugged"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_40

    const/4 v3, 0x1

    nop

    :cond_40
    iput-boolean v3, v1, Lcom/android/server/AppStateTracker;->mIsPluggedIn:Z

    .line 689
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_49

    .line 690
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    # invokes: Lcom/android/server/AppStateTracker;->updateForceAllAppStandbyState()V
    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$300(Lcom/android/server/AppStateTracker;)V

    goto :goto_4c

    .line 689
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1

    .line 692
    :cond_4c
    :goto_4c
    return-void
.end method
