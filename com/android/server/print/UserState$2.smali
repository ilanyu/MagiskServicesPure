.class Lcom/android/server/print/UserState$2;
.super Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/UserState;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/print/UserState;
    .param p2, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p3, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 574
    iput-object p1, p0, Lcom/android/server/print/UserState$2;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;-><init>(Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V

    return-void
.end method


# virtual methods
.method public onBinderDied()V
    .registers 3

    .line 577
    iget-object v0, p0, Lcom/android/server/print/UserState$2;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/UserState;->access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 578
    :try_start_7
    iget-object v1, p0, Lcom/android/server/print/UserState$2;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/print/UserState;->access$300(Lcom/android/server/print/UserState;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 579
    iget-object v1, p0, Lcom/android/server/print/UserState$2;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/print/UserState;->access$300(Lcom/android/server/print/UserState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 581
    :cond_18
    monitor-exit v0

    .line 582
    return-void

    .line 581
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1
.end method
