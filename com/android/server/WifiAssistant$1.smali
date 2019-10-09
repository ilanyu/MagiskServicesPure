.class Lcom/android/server/WifiAssistant$1;
.super Landroid/database/ContentObserver;
.source "WifiAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiAssistant;->registerMiuiOptimizationObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiAssistant;


# direct methods
.method constructor <init>(Lcom/android/server/WifiAssistant;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/WifiAssistant;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 136
    iput-object p1, p0, Lcom/android/server/WifiAssistant$1;->this$0:Lcom/android/server/WifiAssistant;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .line 139
    const-string/jumbo v0, "persist.sys.miui_optimization"

    const-string v1, "1"

    const-string/jumbo v2, "ro.miui.cts"

    .line 140
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 139
    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/WifiAssistant;->IS_CTS_MODE:Z

    .line 141
    return-void
.end method
