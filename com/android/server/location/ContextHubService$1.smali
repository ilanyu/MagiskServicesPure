.class Lcom/android/server/location/ContextHubService$1;
.super Landroid/hardware/location/IContextHubClientCallback$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ContextHubService;->createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ContextHubService;

.field final synthetic val$contextHubId:I


# direct methods
.method constructor <init>(Lcom/android/server/location/ContextHubService;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/location/ContextHubService;

    .line 194
    iput-object p1, p0, Lcom/android/server/location/ContextHubService$1;->this$0:Lcom/android/server/location/ContextHubService;

    iput p2, p0, Lcom/android/server/location/ContextHubService$1;->val$contextHubId:I

    invoke-direct {p0}, Landroid/hardware/location/IContextHubClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHubReset()V
    .registers 6

    .line 207
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 208
    .local v0, "data":[B
    iget-object v1, p0, Lcom/android/server/location/ContextHubService$1;->this$0:Lcom/android/server/location/ContextHubService;

    iget v2, p0, Lcom/android/server/location/ContextHubService$1;->val$contextHubId:I

    const/4 v3, 0x7

    const/4 v4, -0x1

    # invokes: Lcom/android/server/location/ContextHubService;->onMessageReceiptOldApi(III[B)I
    invoke-static {v1, v3, v2, v4, v0}, Lcom/android/server/location/ContextHubService;->access$600(Lcom/android/server/location/ContextHubService;III[B)I

    .line 209
    return-void
.end method

.method public onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V
    .registers 7
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 197
    iget-object v0, p0, Lcom/android/server/location/ContextHubService$1;->this$0:Lcom/android/server/location/ContextHubService;

    # getter for: Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;
    invoke-static {v0}, Lcom/android/server/location/ContextHubService;->access$500(Lcom/android/server/location/ContextHubService;)Lcom/android/server/location/NanoAppStateManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/ContextHubService$1;->val$contextHubId:I

    .line 198
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v2

    .line 197
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result v0

    .line 200
    .local v0, "nanoAppHandle":I
    iget-object v1, p0, Lcom/android/server/location/ContextHubService$1;->this$0:Lcom/android/server/location/ContextHubService;

    .line 201
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result v2

    iget v3, p0, Lcom/android/server/location/ContextHubService$1;->val$contextHubId:I

    .line 202
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object v4

    .line 200
    # invokes: Lcom/android/server/location/ContextHubService;->onMessageReceiptOldApi(III[B)I
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/server/location/ContextHubService;->access$600(Lcom/android/server/location/ContextHubService;III[B)I

    .line 203
    return-void
.end method

.method public onNanoAppAborted(JI)V
    .registers 4
    .param p1, "nanoAppId"    # J
    .param p3, "abortCode"    # I

    .line 213
    return-void
.end method

.method public onNanoAppDisabled(J)V
    .registers 3
    .param p1, "nanoAppId"    # J

    .line 229
    return-void
.end method

.method public onNanoAppEnabled(J)V
    .registers 3
    .param p1, "nanoAppId"    # J

    .line 225
    return-void
.end method

.method public onNanoAppLoaded(J)V
    .registers 3
    .param p1, "nanoAppId"    # J

    .line 217
    return-void
.end method

.method public onNanoAppUnloaded(J)V
    .registers 3
    .param p1, "nanoAppId"    # J

    .line 221
    return-void
.end method
