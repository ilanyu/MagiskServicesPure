.class final Lcom/miui/server/EnableStateManager$PackageAddedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EnableStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/EnableStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageAddedReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/EnableStateManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/miui/server/EnableStateManager$1;

    .line 99
    invoke-direct {p0}, Lcom/miui/server/EnableStateManager$PackageAddedReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 102
    # getter for: Lcom/miui/server/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;
    invoke-static {}, Lcom/miui/server/EnableStateManager;->access$300()Ljava/util/List;

    move-result-object v0

    # invokes: Lcom/miui/server/EnableStateManager;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {p2}, Lcom/miui/server/EnableStateManager;->access$200(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 103
    invoke-static {p1}, Lcom/miui/server/EnableStateManager;->updateApplicationEnableState(Landroid/content/Context;)V

    .line 105
    :cond_11
    return-void
.end method
