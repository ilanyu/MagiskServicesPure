.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 3178
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    .line 3179
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3180
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 3184
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_15

    .line 3186
    :cond_6
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    # invokes: Lcom/android/server/LocationManagerService;->handleLocationChanged(Landroid/location/Location;Z)V
    invoke-static {v0, v2, v1}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    .line 3189
    :goto_15
    return-void
.end method
