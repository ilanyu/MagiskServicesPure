.class public Lcom/android/server/am/MiuiWarnings;
.super Ljava/lang/Object;
.source "MiuiWarnings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MiuiWarnings$WarningCallback;,
        Lcom/android/server/am/MiuiWarnings$NoPreloadHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/MiuiWarnings$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/MiuiWarnings$1;

    .line 9
    invoke-direct {p0}, Lcom/android/server/am/MiuiWarnings;-><init>()V

    return-void
.end method

.method private checkService()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/server/am/MiuiWarnings;->mService:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_e

    .line 44
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/MiuiWarnings;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 46
    :cond_e
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/MiuiWarnings;
    .registers 1

    .line 25
    # getter for: Lcom/android/server/am/MiuiWarnings$NoPreloadHolder;->INSTANCE:Lcom/android/server/am/MiuiWarnings;
    invoke-static {}, Lcom/android/server/am/MiuiWarnings$NoPreloadHolder;->access$100()Lcom/android/server/am/MiuiWarnings;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    iput-object p1, p0, Lcom/android/server/am/MiuiWarnings;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public showWarningDialog(Ljava/lang/String;Lcom/android/server/am/MiuiWarnings$WarningCallback;)Z
    .registers 5
    .param p1, "packageLabel"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/server/am/MiuiWarnings$WarningCallback;

    .line 33
    invoke-direct {p0}, Lcom/android/server/am/MiuiWarnings;->checkService()V

    .line 34
    iget-object v0, p0, Lcom/android/server/am/MiuiWarnings;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 35
    new-instance v0, Lcom/android/server/am/MiuiWarningDialog;

    iget-object v1, p0, Lcom/android/server/am/MiuiWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/am/MiuiWarningDialog;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/server/am/MiuiWarnings$WarningCallback;)V

    .line 36
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 37
    const/4 v1, 0x1

    return v1

    .line 39
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method
