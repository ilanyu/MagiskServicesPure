.class Lcom/android/server/am/ActivityManagerService$ProcessInfoService;
.super Landroid/os/IProcessInfoService$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessInfoService"
.end annotation


# instance fields
.field final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .line 9446
    invoke-direct {p0}, Landroid/os/IProcessInfoService$Stub;-><init>()V

    .line 9447
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 9448
    return-void
.end method


# virtual methods
.method public getProcessStatesAndOomScoresFromPids([I[I[I)V
    .registers 5
    .param p1, "pids"    # [I
    .param p2, "states"    # [I
    .param p3, "scores"    # [I

    .line 9459
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->getProcessStatesAndOomScoresForPIDs([I[I[I)V

    .line 9461
    return-void
.end method

.method public getProcessStatesFromPids([I[I)V
    .registers 5
    .param p1, "pids"    # [I
    .param p2, "states"    # [I

    .line 9452
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessStatesAndOomScoresForPIDs([I[I[I)V

    .line 9454
    return-void
.end method
