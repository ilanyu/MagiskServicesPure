.class public Lcom/android/server/slice/SliceManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "SliceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SliceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/slice/SliceManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 616
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 617
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 627
    const/16 v0, 0x226

    if-ne p1, v0, :cond_9

    .line 628
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    # invokes: Lcom/android/server/slice/SliceManagerService;->systemReady()V
    invoke-static {v0}, Lcom/android/server/slice/SliceManagerService;->access$100(Lcom/android/server/slice/SliceManagerService;)V

    .line 630
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 621
    new-instance v0, Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {p0}, Lcom/android/server/slice/SliceManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/slice/SliceManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    .line 622
    const-string/jumbo v0, "slice"

    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/slice/SliceManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 623
    return-void
.end method

.method public onStopUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 639
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    # invokes: Lcom/android/server/slice/SliceManagerService;->onStopUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/slice/SliceManagerService;->access$300(Lcom/android/server/slice/SliceManagerService;I)V

    .line 640
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 634
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    # invokes: Lcom/android/server/slice/SliceManagerService;->onUnlockUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/slice/SliceManagerService;->access$200(Lcom/android/server/slice/SliceManagerService;I)V

    .line 635
    return-void
.end method
