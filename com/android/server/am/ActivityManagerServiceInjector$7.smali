.class Lcom/android/server/am/ActivityManagerServiceInjector$7;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;->reportPackageForegroundEvents(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$reportEvents:Landroid/content/pm/ParceledListSlice;


# direct methods
.method constructor <init>(Landroid/content/pm/ParceledListSlice;)V
    .registers 2

    .line 1535
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$7;->val$reportEvents:Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1538
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$7;->val$reportEvents:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportPackageForegroundEvents(Landroid/content/pm/ParceledListSlice;)V

    .line 1539
    return-void
.end method
