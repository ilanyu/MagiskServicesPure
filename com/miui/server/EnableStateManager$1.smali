.class Lcom/miui/server/EnableStateManager$1;
.super Ljava/lang/Thread;
.source "EnableStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/EnableStateManager;->registerReceiverIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 85
    # getter for: Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/miui/server/EnableStateManager;->access$100()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/server/EnableStateManager$PackageAddedReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/miui/server/EnableStateManager$PackageAddedReceiver;-><init>(Lcom/miui/server/EnableStateManager$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    return-void
.end method
