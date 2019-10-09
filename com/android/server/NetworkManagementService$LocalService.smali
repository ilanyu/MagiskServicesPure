.class Lcom/android/server/NetworkManagementService$LocalService;
.super Lcom/android/server/NetworkManagementInternal;
.source "NetworkManagementService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .line 2802
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$LocalService;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Lcom/android/server/NetworkManagementInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public isNetworkRestrictedForUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 2805
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$LocalService;->this$0:Lcom/android/server/NetworkManagementService;

    # invokes: Lcom/android/server/NetworkManagementService;->isNetworkRestrictedInternal(I)Z
    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;I)Z

    move-result v0

    return v0
.end method
