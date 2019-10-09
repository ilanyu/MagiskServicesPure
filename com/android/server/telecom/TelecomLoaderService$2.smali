.class Lcom/android/server/telecom/TelecomLoaderService$2;
.super Ljava/lang/Object;
.source "TelecomLoaderService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .line 229
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$2;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackages(I)[Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .line 232
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$2;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->access$200(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 233
    :try_start_7
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$2;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->access$700(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2d

    .line 234
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$2;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultDialerAppRequests:Landroid/util/IntArray;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->access$400(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v1

    if-nez v1, :cond_22

    .line 235
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$2;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    # setter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultDialerAppRequests:Landroid/util/IntArray;
    invoke-static {v1, v3}, Lcom/android/server/telecom/TelecomLoaderService;->access$402(Lcom/android/server/telecom/TelecomLoaderService;Landroid/util/IntArray;)Landroid/util/IntArray;

    .line 237
    :cond_22
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$2;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultDialerAppRequests:Landroid/util/IntArray;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->access$400(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 238
    monitor-exit v0

    return-object v2

    .line 240
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_42

    .line 241
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$2;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_41

    .line 243
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1

    .line 245
    :cond_41
    return-object v2

    .line 240
    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method
