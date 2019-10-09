.class Lcom/miui/server/XSpaceManagerService$2;
.super Landroid/database/ContentObserver;
.source "XSpaceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/XSpaceManagerService;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Handler;

    .line 413
    iput-object p2, p0, Lcom/miui/server/XSpaceManagerService$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .param p1, "selfChange"    # Z

    .line 416
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 417
    # getter for: Lcom/miui/server/XSpaceManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/miui/server/XSpaceManagerService;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xspace_animation_status"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 419
    .local v0, "settingStatus":I
    const/4 v1, 0x1

    if-ne v0, v2, :cond_2e

    .line 420
    iget-object v2, p0, Lcom/miui/server/XSpaceManagerService$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dual_animation_switch"

    .line 421
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 420
    invoke-static {v2, v3, v4, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/miui/server/XSpaceManagerService;->sAnimStatus:Z
    invoke-static {v1}, Lcom/miui/server/XSpaceManagerService;->access$302(Z)Z

    goto :goto_38

    .line 422
    :cond_2e
    if-ne v0, v1, :cond_34

    .line 423
    # setter for: Lcom/miui/server/XSpaceManagerService;->sAnimStatus:Z
    invoke-static {v1}, Lcom/miui/server/XSpaceManagerService;->access$302(Z)Z

    goto :goto_38

    .line 425
    :cond_34
    const/4 v1, 0x0

    # setter for: Lcom/miui/server/XSpaceManagerService;->sAnimStatus:Z
    invoke-static {v1}, Lcom/miui/server/XSpaceManagerService;->access$302(Z)Z

    .line 428
    :goto_38
    # getter for: Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miui/server/XSpaceManagerService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update XSpace Animation status, sAnimStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/miui/server/XSpaceManagerService;->sAnimStatus:Z
    invoke-static {}, Lcom/miui/server/XSpaceManagerService;->access$300()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void
.end method
