.class Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;
.super Landroid/database/ContentObserver;
.source "BatterySaverStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 113
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 116
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    # getter for: Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->access$000(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 117
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->refreshSettingsLocked()V

    .line 118
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
