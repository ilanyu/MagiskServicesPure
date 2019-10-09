.class Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;
.super Landroid/printservice/recommendation/IRecommendationServiceCallbacks$Stub;
.source "RemotePrintServiceRecommendationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    .line 203
    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    invoke-direct {p0}, Landroid/printservice/recommendation/IRecommendationServiceCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecommendationsUpdated(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p1, "recommendations":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    iget-object v0, v0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    # getter for: Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->access$000(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 208
    :try_start_9
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    iget-object v1, v1, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    # getter for: Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z
    invoke-static {v1}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->access$200(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    iget-object v1, v1, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    # getter for: Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;
    invoke-static {v1}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->access$100(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 209
    if-eqz p1, :cond_25

    .line 210
    const-string/jumbo v1, "recommendation"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 214
    :cond_25
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    # getter for: Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->mCallbacks:Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;
    invoke-static {v1}, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->access$300(Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;)Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;->onPrintServiceRecommendationsUpdated(Ljava/util/List;)V

    .line 217
    :cond_2e
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_30

    throw v1
.end method
