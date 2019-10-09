.class public Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SystemReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThreeDimensionalGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SystemReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;


# direct methods
.method public constructor <init>(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    .line 219
    iput-object p1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SystemReceiver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 223
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    .line 225
    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SystemReceiver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    # setter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mScreenOn:Z
    invoke-static {v1, v2}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$802(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Z)Z

    .line 226
    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SystemReceiver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    # invokes: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->isOkToMonitorGesture()Z
    invoke-static {v1}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$000(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 227
    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SystemReceiver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    invoke-virtual {v1, v2}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->enableGesture(Z)V

    goto :goto_66

    .line 229
    :cond_20
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 230
    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SystemReceiver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    const/4 v2, 0x0

    # setter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mScreenOn:Z
    invoke-static {v1, v2}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$802(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Z)Z

    .line 231
    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SystemReceiver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    invoke-virtual {v1, v2}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->enableGesture(Z)V

    goto :goto_66

    .line 232
    :cond_34
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 233
    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SystemReceiver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    # getter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mForegroundPackage:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$100(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-static {}, Lmiui/process/ProcessManager;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 234
    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SystemReceiver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    invoke-static {}, Lmiui/process/ProcessManager;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v3

    iget-object v3, v3, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    # setter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mForegroundPackage:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$102(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    :cond_59
    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SystemReceiver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    # invokes: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->isOkToMonitorGesture()Z
    invoke-static {v1}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$000(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 237
    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$SystemReceiver;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    invoke-virtual {v1, v2}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->enableGesture(Z)V

    .line 241
    :cond_66
    :goto_66
    return-void
.end method
