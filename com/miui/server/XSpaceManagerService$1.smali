.class Lcom/miui/server/XSpaceManagerService$1;
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


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Handler;

    .line 403
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .line 406
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 407
    # getter for: Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/miui/server/XSpaceManagerService;->access$000()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xspace_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    .line 409
    # getter for: Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miui/server/XSpaceManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update XSpace status, active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void
.end method
