.class Lcom/android/server/am/RecentTasksInjector;
.super Ljava/lang/Object;
.source "RecentTasksInjector.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static shouldSkipTrimTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 6
    .param p0, "task"    # Lcom/android/server/am/TaskRecord;

    .line 22
    const/4 v0, 0x0

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 23
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_31

    .line 26
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 27
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "packageName":Ljava/lang/String;
    iget v3, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 29
    .local v3, "userId":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    invoke-static {v2, v3}, Lmiui/process/ProcessManager;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 33
    const/4 v0, 0x1

    return v0

    .line 35
    :cond_30
    return v0

    .line 24
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "userId":I
    :cond_31
    :goto_31
    return v0
.end method
