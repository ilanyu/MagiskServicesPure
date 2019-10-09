.class public Lcom/android/server/am/MiuiMultiTaskManager;
.super Ljava/lang/Object;
.source "MiuiMultiTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;
    }
.end annotation


# static fields
.field private static final FEATURE_SUPPORT:Z

.field public static final FLAG_LAUNCH_APP_IN_ONE_TASK_GROUP:Ljava/lang/String; = "miui_launch_app_in_one_task_group"

.field public static final TASK_RETURN_TO_TARGET:Ljava/lang/String; = "miui_task_return_to_target"

.field private static sSupportUI:[Ljava/lang/String;

.field private static sTargetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    const-string v0, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "miui.multitask.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MiuiMultiTaskManager;->FEATURE_SUPPORT:Z

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MiuiMultiTaskManager;->sTargetMap:Ljava/util/HashMap;

    .line 20
    invoke-static {}, Lcom/android/server/am/MiuiMultiTaskManager;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkMultiTaskAffinity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .registers 9
    .param p0, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "checkRecord"    # Lcom/android/server/am/ActivityRecord;

    .line 93
    sget-boolean v0, Lcom/android/server/am/MiuiMultiTaskManager;->FEATURE_SUPPORT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 94
    :cond_6
    sget-object v0, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_a
    if-ge v3, v2, :cond_2f

    aget-object v4, v0, v3

    .line 95
    .local v4, "className":Ljava/lang/String;
    if-eqz p1, :cond_2c

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_2c

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 96
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 97
    if-eqz p0, :cond_2c

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 98
    const/4 v0, 0x1

    return v0

    .line 94
    .end local v4    # "className":Ljava/lang/String;
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 102
    :cond_2f
    return v1
.end method

.method private static getLaunchAppInfoByName(Ljava/lang/String;)Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 41
    const-string v0, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "supports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v1, "com.tencent.mm.ui.chatting.ChattingUI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v1, "com.tencent.mm.plugin.sns.ui.SnsTimeLineUI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v1, "com.tencent.mm.plugin.readerapp.ui.ReaderAppUI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v1, "com.tencent.mm.ui.conversation.BizConversationUI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v1, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v1, "returnTarget":Landroid/content/ComponentName;
    new-instance v2, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;

    invoke-direct {v2, v0, v1}, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;-><init>(Ljava/util/ArrayList;Landroid/content/ComponentName;)V

    return-object v2

    .line 53
    .end local v0    # "supports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "returnTarget":Landroid/content/ComponentName;
    :cond_3a
    const/4 v0, 0x0

    return-object v0
.end method

.method private static init()V
    .registers 4

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 35
    sget-object v1, Lcom/android/server/am/MiuiMultiTaskManager;->sTargetMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 36
    invoke-static {v3}, Lcom/android/server/am/MiuiMultiTaskManager;->getLaunchAppInfoByName(Ljava/lang/String;)Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method static isMultiTaskSupport(Lcom/android/server/am/ActivityRecord;)Z
    .registers 7
    .param p0, "record"    # Lcom/android/server/am/ActivityRecord;

    .line 82
    sget-boolean v0, Lcom/android/server/am/MiuiMultiTaskManager;->FEATURE_SUPPORT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 83
    :cond_6
    sget-object v0, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_a
    if-ge v3, v2, :cond_23

    aget-object v4, v0, v3

    .line 84
    .local v4, "className":Ljava/lang/String;
    if-eqz p0, :cond_20

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 85
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 86
    const/4 v0, 0x1

    return v0

    .line 83
    .end local v4    # "className":Ljava/lang/String;
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 89
    :cond_23
    return v1
.end method

.method static isVersionSupport()Z
    .registers 2

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static updateMultiTaskInfoIfNeed(Lcom/android/server/am/ActivityStack;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V
    .registers 7
    .param p0, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 58
    sget-boolean v0, Lcom/android/server/am/MiuiMultiTaskManager;->FEATURE_SUPPORT:Z

    if-nez v0, :cond_5

    return-void

    .line 59
    :cond_5
    invoke-static {}, Lcom/android/server/am/MiuiMultiTaskManager;->isVersionSupport()Z

    move-result v0

    if-eqz v0, :cond_70

    if-eqz p1, :cond_70

    sget-object v0, Lcom/android/server/am/MiuiMultiTaskManager;->sTargetMap:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    if-eqz p2, :cond_70

    .line 61
    sget-object v0, Lcom/android/server/am/MiuiMultiTaskManager;->sTargetMap:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;

    .line 62
    .local v0, "info":Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;
    if-eqz p0, :cond_2a

    .line 63
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    .line 65
    .local v1, "topr":Lcom/android/server/am/ActivityRecord;
    :goto_2b
    :try_start_2b
    # getter for: Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->supports:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->access$000(Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_6e

    # getter for: Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->returnTarget:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->access$100(Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_6e

    if-eqz v1, :cond_6e

    .line 67
    # getter for: Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->supports:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->access$000(Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x8000001

    and-int/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    const v2, 0x8000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    const/high16 v2, 0x80000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    const-string/jumbo v2, "miui_launch_app_in_one_task_group"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    const-string/jumbo v2, "miui_task_return_to_target"

    # getter for: Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->returnTarget:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->access$100(Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_6e} :catch_6f

    .line 77
    :cond_6e
    goto :goto_70

    .line 75
    :catch_6f
    move-exception v2

    .line 79
    .end local v0    # "info":Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;
    .end local v1    # "topr":Lcom/android/server/am/ActivityRecord;
    :cond_70
    :goto_70
    return-void
.end method
