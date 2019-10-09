.class public Lcom/android/server/connectivity/tethering/SimChangeListener;
.super Landroid/net/util/VersionedBroadcastListener;
.source "SimChangeListener.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lcom/android/server/connectivity/tethering/SimChangeListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/SimChangeListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onSimCardLoadedCallback"    # Ljava/lang/Runnable;

    .line 48
    sget-object v1, Lcom/android/server/connectivity/tethering/SimChangeListener;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/connectivity/tethering/SimChangeListener;->makeIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-static {p3}, Lcom/android/server/connectivity/tethering/SimChangeListener;->makeCallback(Ljava/lang/Runnable;)Ljava/util/function/Consumer;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/net/util/VersionedBroadcastListener;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Landroid/content/IntentFilter;Ljava/util/function/Consumer;)V

    .line 49
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 43
    sget-object v0, Lcom/android/server/connectivity/tethering/SimChangeListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static makeCallback(Ljava/lang/Runnable;)Ljava/util/function/Consumer;
    .registers 2
    .param p0, "onSimCardLoadedCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/android/server/connectivity/tethering/SimChangeListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/SimChangeListener$1;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private static makeIntentFilter()Landroid/content/IntentFilter;
    .registers 2

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    return-object v0
.end method
