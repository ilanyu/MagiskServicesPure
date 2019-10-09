.class Lcom/android/server/location/GeofenceManager$1;
.super Landroid/database/ContentObserver;
.source "GeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceManager;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeofenceManager;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/location/GeofenceManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 134
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager$1;->this$0:Lcom/android/server/location/GeofenceManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 137
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager$1;->this$0:Lcom/android/server/location/GeofenceManager;

    # getter for: Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/GeofenceManager;->access$000(Lcom/android/server/location/GeofenceManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 138
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager$1;->this$0:Lcom/android/server/location/GeofenceManager;

    # invokes: Lcom/android/server/location/GeofenceManager;->updateMinInterval()V
    invoke-static {v1}, Lcom/android/server/location/GeofenceManager;->access$100(Lcom/android/server/location/GeofenceManager;)V

    .line 139
    monitor-exit v0

    .line 140
    return-void

    .line 139
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
