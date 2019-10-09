.class Lcom/android/server/wm/FullScreenEventReporter$1;
.super Ljava/lang/Object;
.source "FullScreenEventReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/FullScreenEventReporter;->recordJankyFrames(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$uploadList:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    .line 300
    iput-object p1, p0, Lcom/android/server/wm/FullScreenEventReporter$1;->val$uploadList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 303
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    const-string v1, "fsJankyFrames"

    iget-object v2, p0, Lcom/android/server/wm/FullScreenEventReporter$1;->val$uploadList:Ljava/util/List;

    .line 304
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportEvents(Ljava/lang/String;Ljava/util/List;Z)V

    .line 305
    return-void
.end method
