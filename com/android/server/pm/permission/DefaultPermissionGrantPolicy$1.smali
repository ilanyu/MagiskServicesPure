.class Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;
.super Landroid/os/Handler;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;Lcom/android/server/pm/permission/PermissionManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 207
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    .line 211
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    # getter for: Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 212
    :try_start_c
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    # getter for: Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$100(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 213
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    # invokes: Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$200(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;

    move-result-object v2

    # setter for: Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;
    invoke-static {v1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$102(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    .line 215
    :cond_1f
    monitor-exit v0

    goto :goto_24

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_21

    throw v1

    .line 217
    :cond_24
    :goto_24
    return-void
.end method
