.class Lcom/android/server/tv/TvInputManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/TvInputManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;

    .line 175
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private buildTvInputList([Ljava/lang/String;)V
    .registers 5
    .param p1, "packages"    # [Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 178
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->getChangingUserId()I

    move-result v2

    if-ne v1, v2, :cond_29

    .line 179
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    # invokes: Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V
    invoke-static {v1, v2, p1}, Lcom/android/server/tv/TvInputManagerService;->access$400(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    # invokes: Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)V

    .line 182
    :cond_29
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2b

    throw v1
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 190
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService$1;->buildTvInputList([Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .registers 3
    .param p1, "packages"    # [Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 201
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$1;->buildTvInputList([Ljava/lang/String;)V

    .line 203
    :cond_9
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .registers 3
    .param p1, "packages"    # [Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 214
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$1;->buildTvInputList([Ljava/lang/String;)V

    .line 216
    :cond_9
    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 2

    .line 223
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 227
    return-void

    .line 229
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService$1;->buildTvInputList([Ljava/lang/String;)V

    .line 230
    return-void
.end method
