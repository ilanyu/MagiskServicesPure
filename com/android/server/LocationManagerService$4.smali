.class Lcom/android/server/LocationManagerService$4;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;

    .line 350
    iput-object p1, p0, Lcom/android/server/LocationManagerService$4;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidImportance(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "importance"    # I

    .line 353
    iget-object v0, p0, Lcom/android/server/LocationManagerService$4;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/LocationManagerService$4$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/LocationManagerService$4$1;-><init>(Lcom/android/server/LocationManagerService$4;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method
