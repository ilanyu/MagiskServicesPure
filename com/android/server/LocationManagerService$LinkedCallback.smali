.class Lcom/android/server/LocationManagerService$LinkedCallback;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkedCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/location/IBatchedLocationCallback;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/location/IBatchedLocationCallback;)V
    .registers 3
    .param p2, "callback"    # Landroid/location/IBatchedLocationCallback;

    .line 1287
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LinkedCallback;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1288
    iput-object p2, p0, Lcom/android/server/LocationManagerService$LinkedCallback;->mCallback:Landroid/location/IBatchedLocationCallback;

    .line 1289
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1298
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote Batching Callback died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LinkedCallback;->mCallback:Landroid/location/IBatchedLocationCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LinkedCallback;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v0}, Lcom/android/server/LocationManagerService;->stopGnssBatch()Z

    .line 1300
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LinkedCallback;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v0}, Lcom/android/server/LocationManagerService;->removeGnssBatchingCallback()V

    .line 1301
    return-void
.end method

.method public getUnderlyingListener()Landroid/location/IBatchedLocationCallback;
    .registers 2

    .line 1293
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LinkedCallback;->mCallback:Landroid/location/IBatchedLocationCallback;

    return-object v0
.end method
