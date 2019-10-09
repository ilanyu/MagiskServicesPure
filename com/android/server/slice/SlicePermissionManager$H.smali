.class final Lcom/android/server/slice/SlicePermissionManager$H;
.super Landroid/os/Handler;
.source "SlicePermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SlicePermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final MSG_ADD_DIRTY:I = 0x1

.field private static final MSG_CLEAR_CLIENT:I = 0x4

.field private static final MSG_CLEAR_PROVIDER:I = 0x5

.field private static final MSG_PERSIST:I = 0x2

.field private static final MSG_REMOVE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/slice/SlicePermissionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/slice/SlicePermissionManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 361
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    .line 362
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 363
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 367
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_54

    goto :goto_52

    .line 383
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    # getter for: Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager;->access$800(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 384
    :try_start_d
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    # getter for: Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/slice/SlicePermissionManager;->access$800(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    monitor-exit v0

    goto :goto_52

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw v1

    .line 378
    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    # getter for: Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager;->access$700(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 379
    :try_start_24
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    # getter for: Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/slice/SlicePermissionManager;->access$700(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    monitor-exit v0

    .line 381
    goto :goto_52

    .line 380
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_31

    throw v1

    .line 375
    :pswitch_34
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    # invokes: Lcom/android/server/slice/SlicePermissionManager;->handleRemove(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V
    invoke-static {v0, v1}, Lcom/android/server/slice/SlicePermissionManager;->access$600(Lcom/android/server/slice/SlicePermissionManager;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V

    .line 376
    goto :goto_52

    .line 372
    :pswitch_3e
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    # invokes: Lcom/android/server/slice/SlicePermissionManager;->handlePersist()V
    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager;->access$500(Lcom/android/server/slice/SlicePermissionManager;)V

    .line 373
    goto :goto_52

    .line 369
    :pswitch_44
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    # getter for: Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;
    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager;->access$400(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/slice/DirtyTracker$Persistable;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 370
    nop

    .line 388
    :goto_52
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_44
        :pswitch_3e
        :pswitch_34
        :pswitch_1d
        :pswitch_6
    .end packed-switch
.end method
