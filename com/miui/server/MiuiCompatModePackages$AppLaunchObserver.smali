.class abstract Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;
.super Landroid/app/IMiuiProcessObserver;
.source "MiuiCompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiCompatModePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AppLaunchObserver"
.end annotation


# instance fields
.field private mRunningFgActivityProcesses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 994
    invoke-direct {p0}, Landroid/app/IMiuiProcessObserver;-><init>()V

    .line 996
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;->mRunningFgActivityProcesses:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/MiuiCompatModePackages$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/miui/server/MiuiCompatModePackages$1;

    .line 994
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract onFirstLaunch(Ljava/lang/String;)V
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 1000
    if-eqz p3, :cond_1e

    .line 1001
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;->mRunningFgActivityProcesses:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1002
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;->mRunningFgActivityProcesses:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1004
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 1005
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;->onFirstLaunch(Ljava/lang/String;)V

    .line 1008
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1e
    return-void
.end method

.method public onImportanceChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .line 1012
    return-void
.end method

.method public onProcessDied(II)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1016
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;->mRunningFgActivityProcesses:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1017
    return-void
.end method

.method public onProcessStateChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I

    .line 1021
    return-void
.end method
