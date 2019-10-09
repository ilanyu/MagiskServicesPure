.class Lcom/android/server/pm/BackgroundDexOptService$4;
.super Ljava/lang/Thread;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BackgroundDexOptService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;

.field final synthetic val$pkgs:Landroid/util/ArraySet;

.field final synthetic val$pm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/app/job/JobParameters;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/pm/BackgroundDexOptService;
    .param p2, "x0"    # Ljava/lang/String;

    .line 408
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$4;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object p3, p0, Lcom/android/server/pm/BackgroundDexOptService$4;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iput-object p4, p0, Lcom/android/server/pm/BackgroundDexOptService$4;->val$pkgs:Landroid/util/ArraySet;

    iput-object p5, p0, Lcom/android/server/pm/BackgroundDexOptService$4;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 411
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$4;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService$4;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$4;->val$pkgs:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService$4;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    # invokes: Lcom/android/server/pm/BackgroundDexOptService;->idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/BackgroundDexOptService;->access$800(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I

    move-result v0

    .line 412
    .local v0, "result":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 413
    const-string v1, "BackgroundDexOptService"

    const-string v2, "Idle optimizations aborted because of space constraints."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService$4;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$4;->val$jobParams:Landroid/app/job/JobParameters;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 418
    :cond_1e
    return-void
.end method
