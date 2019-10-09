.class Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;
.super Landroid/os/Handler;
.source "MiuiContentProviderControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MiuiContentProviderControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MiuiContentProviderControl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MiuiContentProviderControl;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 150
    iput-object p1, p0, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->this$0:Lcom/android/server/am/MiuiContentProviderControl;

    .line 151
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 152
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 158
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    goto :goto_43

    .line 168
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_43

    .line 169
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 170
    .local v0, "providerInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/StartProviderInfo;>;"
    :goto_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_43

    .line 171
    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->this$0:Lcom/android/server/am/MiuiContentProviderControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/StartProviderInfo;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/am/MiuiContentProviderControl;->enforceNotifyProviderReady(Lcom/android/server/am/StartProviderInfo;Landroid/app/ContentProviderHolder;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/am/MiuiContentProviderControl;->access$200(Lcom/android/server/am/MiuiContentProviderControl;Lcom/android/server/am/StartProviderInfo;Landroid/app/ContentProviderHolder;)V

    goto :goto_11

    .line 161
    .end local v0    # "providerInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/StartProviderInfo;>;"
    :pswitch_25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 162
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->this$0:Lcom/android/server/am/MiuiContentProviderControl;

    # getter for: Lcom/android/server/am/MiuiContentProviderControl;->mAms:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/MiuiContentProviderControl;->access$000(Lcom/android/server/am/MiuiContentProviderControl;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    monitor-enter v2

    :try_start_30
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 163
    iget-object v3, p0, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->this$0:Lcom/android/server/am/MiuiContentProviderControl;

    # invokes: Lcom/android/server/am/MiuiContentProviderControl;->rescheduleProviderListLocked(J)V
    invoke-static {v3, v0, v1}, Lcom/android/server/am/MiuiContentProviderControl;->access$100(Lcom/android/server/am/MiuiContentProviderControl;J)V

    .line 164
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_3d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 166
    .end local v0    # "now":J
    goto :goto_43

    .line 164
    .restart local v0    # "now":J
    :catchall_3d
    move-exception v3

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 177
    .end local v0    # "now":J
    :cond_43
    :goto_43
    return-void

    :pswitch_data_44
    .packed-switch 0x65
        :pswitch_25
        :pswitch_9
    .end packed-switch
.end method
