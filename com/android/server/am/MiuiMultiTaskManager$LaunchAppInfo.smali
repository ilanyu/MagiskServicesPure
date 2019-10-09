.class Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;
.super Ljava/lang/Object;
.source "MiuiMultiTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MiuiMultiTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LaunchAppInfo"
.end annotation


# instance fields
.field private returnTarget:Landroid/content/ComponentName;

.field private supports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/ComponentName;)V
    .registers 3
    .param p2, "returnTarget"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .line 27
    .local p1, "supports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->supports:Ljava/util/ArrayList;

    .line 29
    iput-object p2, p0, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->returnTarget:Landroid/content/ComponentName;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;

    .line 23
    iget-object v0, p0, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->supports:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;

    .line 23
    iget-object v0, p0, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->returnTarget:Landroid/content/ComponentName;

    return-object v0
.end method
